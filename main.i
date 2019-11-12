# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"

# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "myLib.h"
void hideSprites();
# 178 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 189 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 229 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 3 "main.c" 2
# 1 "startBG.h" 1
# 22 "startBG.h"
extern const unsigned short startBGTiles[320];


extern const unsigned short startBGMap[1024];


extern const unsigned short startBGPal[256];
# 4 "main.c" 2
# 1 "gameBG.h" 1
# 22 "gameBG.h"
extern const unsigned short gameBGTiles[304];


extern const unsigned short gameBGMap[1024];


extern const unsigned short gameBGPal[256];
# 5 "main.c" 2
# 1 "pauseBG.h" 1
# 22 "pauseBG.h"
extern const unsigned short pauseBGTiles[384];


extern const unsigned short pauseBGMap[1024];


extern const unsigned short pauseBGPal[256];
# 6 "main.c" 2
# 1 "loseBG.h" 1
# 22 "loseBG.h"
extern const unsigned short loseBGTiles[320];


extern const unsigned short loseBGMap[1024];


extern const unsigned short loseBGPal[256];
# 7 "main.c" 2
# 1 "winBG.h" 1
# 22 "winBG.h"
extern const unsigned short winBGTiles[288];


extern const unsigned short winBGMap[1024];


extern const unsigned short winBGPal[256];
# 8 "main.c" 2


void initialize();

void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToLose();
void lose();
void goToWin();
void win();


unsigned short buttons;
unsigned short oldButtons;
int seed;
OBJ_ATTR shadowOAM[128];
enum { START, GAME, PAUSE, WIN, LOSE};
int state;

int main() {


    initialize();

    while(1) {


        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);


        switch (state) {

            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;

        }

    }

    return 0;

}


void initialize() {





    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((6)<<8) | (0<<14);
    DMANow(3, startBGTiles, &((charblock *)0x6000000)[0], 640 / 2);
    DMANow(3, startBGMap, &((screenblock *)0x6000000)[6], 2048 / 2);


    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((14)<<8) | (0<<14);
    DMANow(3, gameBGTiles, &((charblock *)0x6000000)[1], 608 / 2);
    DMANow(3, gameBGMap, &((screenblock *)0x6000000)[14], 2048 / 2);


    (*(volatile unsigned short*)0x400000C) = ((2)<<2) | ((22)<<8) | (0<<14);
    DMANow(3, pauseBGTiles, &((charblock *)0x6000000)[2], 768 / 2);
    DMANow(3, pauseBGMap, &((screenblock *)0x6000000)[22], 2048 / 2);


    (*(volatile unsigned short*)0x400000E) = ((3)<<2) | ((30)<<8) | (0<<14);


    (*(unsigned short *)0x4000000) = 0 | (1<<12);


    DMANow(3, winBGPal, ((unsigned short *)0x5000000), 256);

    goToStart();

}


void goToStart() {


    (*(unsigned short *)0x4000000) |= (1<<8);
    state = START;

}


void start() {

    seed++;


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {


        (*(unsigned short *)0x4000000) &= ~((1<<8));






        goToGame();

    }

}


void goToGame() {


    (*(unsigned short *)0x4000000) |= (1<<9) | (1<<12);
    state = GAME;

}


void game() {



    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), (((sizeof(shadowOAM))/4) | (0 << 21) | (0 << 23) | (1 << 26)));


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {


        (*(unsigned short *)0x4000000) &= ~((1<<9));
        goToPause();

    } else if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {


        (*(unsigned short *)0x4000000) &= ~((1<<9));
        goToWin();

    } else if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))) {


        (*(unsigned short *)0x4000000) &= ~((1<<9));
        goToLose();

    }

}


void goToPause() {


    (*(unsigned short *)0x4000000) |= (1<<10);
    (*(unsigned short *)0x4000000) &= ~((1<<12));

    state = PAUSE;

}


void pause() {


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {


        (*(unsigned short *)0x4000000) &= ~((1<<10));
        goToGame();

    }

}


void goToWin() {


    (*(unsigned short *)0x4000000) |= (1<<11);
    (*(unsigned short *)0x4000000) &= ~((1<<12));


    DMANow(3, winBGTiles, &((charblock *)0x6000000)[3], 576 / 2);
    DMANow(3, winBGMap, &((screenblock *)0x6000000)[30], 2048 / 2);

    state = WIN;

}


void win() {


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {


        (*(unsigned short *)0x4000000) &= ~((1<<11));
        goToStart();

    }

}


void goToLose() {


    (*(unsigned short *)0x4000000) |= (1<<11);
    (*(unsigned short *)0x4000000) &= ~((1<<12));


    DMANow(3, loseBGTiles, &((charblock *)0x6000000)[3], 640 / 2);
    DMANow(3, loseBGMap, &((screenblock *)0x6000000)[30], 2048 / 2);

    state = LOSE;

}


void lose() {


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {


        (*(unsigned short *)0x4000000) &= ~((1<<11));
        goToStart();

    }

}
