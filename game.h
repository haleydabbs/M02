// ============= STRUCTS ============= //

// Player
typedef struct {
    int row;
    int col;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int rvel;
    int cvel;
} DEER;

// Gems
typedef struct {
    int row;
    int col;
    int width;
    int height;
    int oamPos;
    int active;
} GEM;

// Wolves
typedef struct {
    int row;
    int col;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int vel;
} WOLF;

// Hearts
typedef struct {
    int row;
    int col;
    int width;
    int height;
    int active;
    int oamPos;
} HEART;

// Countdown nums
typedef struct {
    int row;
    int col;
    int width;
    int height;
    int oamPos;
    int spriteSheetCol;
    int spriteSheetRow;
} NUM;

// ============= VARIABLES ============= //

// Constants
# define GEMCOUNT 5
# define LIFECOUNT 3

DEER deer;
NUM countDownNum;
int gemsRemaining;
int livesRemaining;
GEM gems[GEMCOUNT];
HEART hearts[LIFECOUNT];

// Player state enum
enum {DCHILL, DUP, DDOWN, DLEFT, DRIGHT};

// Functions
void initGame();
void initGems(GEM*, int);
void initHearts(HEART*, int);

void updateGame();
void updateDeer();
void updateGems(GEM* g);
void updateHearts(HEART* h);
void updateGemsRemaining();

void drawGame();
void drawDeer();
void drawGemsRemaining();