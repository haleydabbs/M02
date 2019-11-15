#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "myLib.h"
#include "FinalGameSprites.h"
#include "game.h"
#include "collisionMap.h"

// Initialize the game
void initGame() {

    // Counter variables
    gemsRemaining = GEMCOUNT;

    // Set up sprite palette
    DMANow(3, FinalGameSpritesTiles, &CHARBLOCK[4], FinalGameSpritesTilesLen/2);
    DMANow(3, FinalGameSpritesPal, SPRITEPALETTE, FinalGameSpritesPalLen/2);

    // Hide dem sprites
    hideSprites();

    // Initialize deer sprite
    deer.width = 32;
    deer.height = 32;
    // deer.screenCol = SCREENWIDTH/2 - deer.width/2;
    // deer.screenRow = 118;
    deer.worldRow = MAPHEIGHT - SCREENWIDTH - deer.height - 35;
    deer.worldCol = (SCREENWIDTH/2) - (deer.width/2) + hOff;
    deer.aniCounter = 0;
    deer.aniState = DRIGHT;
    deer.cvel = 1;
    deer.rvel = 0;

    // Initialize countdown num
    countDownNum.width = 8;
    countDownNum.height = 8;
    countDownNum.oamPos = 9;
    countDownNum.spriteSheetCol = 16;
    countDownNum.spriteSheetRow = 9;
    countDownNum.row = 8;
    countDownNum.col = 21;

    // Initialize gems
    for (int i = 0; i < GEMCOUNT; i++) {
        initGems(&gems[i], i);
    }

    // Initialize hearts
    for (int i = 0; i < LIFECOUNT; i++) {
        initHearts(&hearts[i], i);
    }

    // Initialize screen offsets
    vOff = MAPHEIGHT - SCREENHEIGHT;
    hOff = 0;

}

// Helper to init gems
void initGems(GEM* g, int i) {

    g -> height = 8;
    g -> width = 8;
    g -> active = 1;
    g -> oamPos = 1 + i;

    if (i == 4) {
        g -> col = 10;
        g -> row = 8;
    } else {
        g -> col = 220 - (i * 15);
        g -> row = 160 - ( 20 );
    }

}

// Helper to init hearts
void initHearts(HEART* h, int i) {

    h -> height = 8;
    h -> width = 8;
    h -> col = 220 - (i * 10);
    h -> row = 8;
    h -> oamPos = 6 + i;
    h -> active = 1;

}

// Update game
void updateGame() {

    // Update deer sprite
    updateDeer();

    // Update gems
    for (int i = 0; i < GEMCOUNT; i++) {
        updateGems(&gems[i]);
    }

    // Update hearts
    for (int i = 0; i < LIFECOUNT; i++) {
        updateHearts(&hearts[i]);
    }

}

// Update deer sprite
void updateDeer() {

    // Movement controls
    if(BUTTON_HELD(BUTTON_LEFT)) {

        deer.aniState = DLEFT;  

        // Check that pikachu doesn't go off of map
        if ((deer.worldCol > 0)
        && (collisionMapBitmap[OFFSET(deer.worldCol - 1, deer.worldRow, MAPWIDTH)])
        && (collisionMapBitmap[OFFSET(deer.worldCol - deer.cvel, deer.worldRow + deer.height - 1, MAPWIDTH)])) {

            // Update world position
            deer.worldCol --;

            if ((hOff > 0) && (deer.screenCol < 120 /*120 = Screenwidth/2*/)) {
                hOff--;
            }
        }

    } if(BUTTON_HELD(BUTTON_RIGHT)) {

        deer.aniState = DRIGHT;

        // Check that pikachu doesn't go off the map
        if ((deer.worldCol < SCREENWIDTH)
        /*&& (collisionMapBitmap[OFFSET(deer.worldCol + deer.width, deer.worldRow, MAPWIDTH)])*/
        /*&& (collisionMapBitmap[OFFSET(deer.worldCol + deer.width, deer.worldRow + deer.height - 1, MAPWIDTH)])*/) {

            // Update world position
            deer.worldCol ++;

            if ((hOff < (MAPWIDTH - SCREENWIDTH)) && (deer.screenCol > 120 /*120 = Screenwidth/2*/)) {
                hOff++;
            }
        }

    } if(BUTTON_PRESSED(BUTTON_UP)) {

        // Add Jump logic here

    }

    deer.screenRow = deer.worldRow - vOff;
    deer.screenCol = deer.worldCol - hOff;

}

// Helper to update gems
void updateGems(GEM* g) {

    if (g -> active) {

        shadowOAM[g->oamPos].attr0 = (ROWMASK & g -> row);
        shadowOAM[g->oamPos].attr1 = (COLMASK & g -> col) | ATTR1_TINY;
        shadowOAM[g->oamPos].attr2 = ATTR2_TILEID(16, 0) | ATTR2_PALROW(0) | ATTR2_PRIORITY(0);
    
        // Check for collision with player
        if (collision(deer.screenCol, deer.screenRow, deer.height, deer.width,
        g -> col, g -> row, g -> width, g -> height)) {
            
            // In case of collision, turn active to 0
            g -> active = 0;

            // Hide the sprite
            shadowOAM[g -> oamPos].attr0 = ATTR0_HIDE;

            // Decrement gems remaining
            gemsRemaining--;

            updateGemsRemaining();

        }

    }

}

// Helper to update hearts
void updateHearts(HEART* h) {

    if (h -> active) {

        shadowOAM[h->oamPos].attr0 = (ROWMASK & h -> row);
        shadowOAM[h->oamPos].attr1 = (COLMASK & h -> col) | ATTR1_TINY;
        shadowOAM[h->oamPos].attr2 = ATTR2_TILEID(16, 4) | ATTR2_PALROW(1) | ATTR2_PRIORITY(0);

    }

}

// Helper to update gems remaining number sprite
void updateGemsRemaining() {

    // Check to makesure you arent at 1
    if (countDownNum.spriteSheetRow > 4) {

    countDownNum.spriteSheetRow--;  

    }  

}

// Draw sprites
void drawGame() {

    // Call helper to draw deer
    drawDeer();

    // Call helper to draw gems remaining number sprite
    drawGemsRemaining();

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);

    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;

}

// Helper to draw deer
void drawDeer() {

    shadowOAM[0].attr0 = (ROWMASK & deer.screenRow) | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (COLMASK & deer.screenCol) | ATTR1_MEDIUM;
    shadowOAM[0].attr2 = ATTR2_TILEID(deer.aniState * 4, 0) | ATTR2_PALROW(0) | ATTR2_PRIORITY(0);
    
}

// Helper to draw gems remaining number sprite
void drawGemsRemaining() {

    shadowOAM[countDownNum.oamPos].attr0 = (ROWMASK & countDownNum.row);
    shadowOAM[countDownNum.oamPos].attr1 = (COLMASK & countDownNum.col) | ATTR1_TINY;
    shadowOAM[countDownNum.oamPos].attr2 = ATTR2_TILEID(countDownNum.spriteSheetCol, countDownNum.spriteSheetRow) | ATTR2_PALROW(0) | ATTR2_PRIORITY(0);

}