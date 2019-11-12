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

// ============= VARIABLES ============= //

// Constants
# define GEMCOUNT 4

DEER deer;
int gemsRemaining;
int livesRemaining;
GEM gems[GEMCOUNT];

// Player state enum
enum {DCHILL, DUP, DDOWN, DLEFT, DRIGHT};

// Functions
void initGame();
void initGems(GEM*, int);

void updateGame();
void updateDeer();
void updateGems(GEM* g);

void drawGame();
void drawDeer();