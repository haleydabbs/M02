// Make files
#include "myLib.h"
#include "startBG.h"
#include "gameBG.h"
#include "pauseBG.h"
#include "loseBG.h"
#include "winBG.h"

// Function prototypes
void initialize();
// State functions
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

// Variables
unsigned short buttons;
unsigned short oldButtons;
int seed;
OBJ_ATTR shadowOAM[128];
enum { START, GAME, PAUSE, WIN, LOSE};
int state;

int main() {

    // Set up the game
    initialize();

    while(1) {

        // Update buttons
        oldButtons = buttons;
        buttons = BUTTONS;

        // State switch
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

// Set up the game 
void initialize() {

    // Setting up BG registers and

    // DMA-ing BG files
    // BG0 - Start
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(6) | BG_SIZE_SMALL;
    DMANow(3, startBGTiles, &CHARBLOCK[0], startBGTilesLen / 2);
    DMANow(3, startBGMap, &SCREENBLOCK[6], startBGMapLen / 2);

    // BG1 - Game
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(14) | BG_SIZE_SMALL;
    DMANow(3, gameBGTiles, &CHARBLOCK[1], gameBGTilesLen / 2);
    DMANow(3, gameBGMap, &SCREENBLOCK[14], gameBGMapLen / 2);

    // BG2 - Pause
    REG_BG2CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(22) | BG_SIZE_SMALL;
    DMANow(3, pauseBGTiles, &CHARBLOCK[2], pauseBGTilesLen / 2);
    DMANow(3, pauseBGMap, &SCREENBLOCK[22], pauseBGMapLen / 2);

    // BG3 - Win & Lose
    REG_BG3CNT = BG_CHARBLOCK(3) | BG_SCREENBLOCK(30) | BG_SIZE_SMALL;

    // Display Control Register
    REG_DISPCTL = MODE0 | SPRITE_ENABLE;

    // Loading BG palette
    DMANow(3, winBGPal, PALETTE, 256);

    goToStart();

}

// Sets up start state
void goToStart() {

    // Load start BG tiles
    REG_DISPCTL |= BG0_ENABLE;
    state = START;

}

// Runs every frame of start state
void start() {

    seed++; 

    // Start button pressed, start the game
    if (BUTTON_PRESSED(BUTTON_START)) {

        // Clear the BG0 bit to turn off start BG
        REG_DISPCTL &= ~(BG0_ENABLE);

        // Seed random - Keeping because will probably use later
        // srand(seed);

        // Initialize game, then move to game state
        // initGame();
        goToGame();

    }

}

// Sets up game state
void goToGame() {

    // Loading start BG tiles in BG 1
    REG_DISPCTL |= BG1_ENABLE | SPRITE_ENABLE;
    state = GAME;

}

// Runs every frame of game
void game() {

    // Update sprite positions in game, draw sprites, wait for vblank, and copy shadow OAM into OAM
    // updateGame();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, (((sizeof(shadowOAM))/4) | DMA_DESTINATION_INCREMENT | DMA_SOURCE_INCREMENT | DMA_32));

    // Start button pressed, start the game
    if (BUTTON_PRESSED(BUTTON_START)) {
        
        // Clear BG1_Enable bit
        REG_DISPCTL &= ~(BG1_ENABLE);
        goToPause();

    } else if (BUTTON_PRESSED(BUTTON_A)) {

        // Clear BG1_Enable bit
        REG_DISPCTL &= ~(BG1_ENABLE);
        goToWin();

    } else if (BUTTON_PRESSED(BUTTON_B)) {

        // Clear BG1_Enable bit
        REG_DISPCTL &= ~(BG1_ENABLE);
        goToLose();

    }

}

// Sets up pause state
void goToPause() {

    // Set up BG2 for pause screen
    REG_DISPCTL |= BG2_ENABLE;
    REG_DISPCTL &= ~(SPRITE_ENABLE);

    state = PAUSE;

}

// Runs every frame of pause
void pause() {

    // Start button pressed, return to game
    if (BUTTON_PRESSED(BUTTON_START)) {

        // Clear BG2 bit
        REG_DISPCTL &= ~(BG2_ENABLE);
        goToGame();

    } 

}

// Sets up win state
void goToWin() {

    // Enable BG3 for win screen
    REG_DISPCTL |= BG3_ENABLE;
    REG_DISPCTL &= ~(SPRITE_ENABLE);

    // Loading win BG tiles
    DMANow(3, winBGTiles, &CHARBLOCK[3], winBGTilesLen / 2);
    DMANow(3, winBGMap, &SCREENBLOCK[30], winBGMapLen / 2);

    state = WIN;

}

// Runs every frame of win
void win() {

    // Start button pressed, go to start
    if (BUTTON_PRESSED(BUTTON_START)) {

        // Clear BG3 bit
        REG_DISPCTL &= ~(BG3_ENABLE);
        goToStart();

    }

}

// Sets up lose state
void goToLose() {

    // Enable BG3 for lose screen
    REG_DISPCTL |= BG3_ENABLE;
    REG_DISPCTL &= ~(SPRITE_ENABLE);

    // Loading lose BG tiles
    DMANow(3, loseBGTiles, &CHARBLOCK[3], loseBGTilesLen / 2);
    DMANow(3, loseBGMap, &SCREENBLOCK[30], loseBGMapLen / 2);

    state = LOSE;

}

// Runs every grame of lose
void lose() {

    // Start button pressed, go to start
    if (BUTTON_PRESSED(BUTTON_START)) {

        // Clear BG3 bit
        REG_DISPCTL &= ~(BG3_ENABLE);
        goToStart();

    }

}