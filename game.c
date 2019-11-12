#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "myLib.h"
#include "FinalGameSprites.h"
#include "game.h"

// Initialize the game
void initGame() {

    // Set up sprite palette
    DMANow(3, FinalGameSpritesTiles, &CHARBLOCK[4], FinalGameSpritesTilesLen/2);
    DMANow(3, FinalGameSpritesPal, SPRITEPALETTE, FinalGameSpritesPalLen/2);

    // Hide dem sprites
    hideSprites();

    // Initialize deer sprite
    deer.width = 32;
    deer.height = 32;
    deer.col = SCREENWIDTH/2 - deer.width/2;
    deer.row = 120;
    deer.aniCounter = 0;
    deer.aniState = DCHILL;
    deer.cvel = 2;
    deer.rvel = 0;

    // Initialize gems
    for (int i = 0; i < GEMCOUNT; i++) {
        initGems(&gems[i], i);
    }

}

// Helper to init gems
void initGems(GEM* g, int i) {

    g -> height = 8;
    g -> width = 8;
    g -> col = (i * 15) + 4;
    g -> row = 120 + deer.height - g -> height;
    g -> active = 1;
    g -> oamPos = 1 + i;

}

// Update game
void updateGame() {

    // Update deer sprite
    updateDeer();

    // Update gems
    for (int i = 0; i < GEMCOUNT; i++) {
        updateGems(&gems[i]);
    }

}

// Update deer sprite
void updateDeer() {

    // Movement controls
    if(BUTTON_HELD(BUTTON_LEFT)) {

        // Move deer left
        if (deer.col > 0) {
            deer.col -= deer.cvel;
        }  

    } if(BUTTON_HELD(BUTTON_RIGHT)) {

        // Move deer right
        if (deer.col + deer.width < 240) {
            deer.col += deer.cvel;
        }

    } if(BUTTON_PRESSED(BUTTON_UP)) {

        // Add Jump logic here

    }

}

// Helper to update gems
void updateGems(GEM* g) {

    if (g -> active) {

        shadowOAM[g->oamPos].attr0 = (ROWMASK & g -> row);
        shadowOAM[g->oamPos].attr1 = (COLMASK & g -> col) | ATTR1_TINY;
        shadowOAM[g->oamPos].attr2 = ATTR2_TILEID(16, 0) | ATTR2_PALROW(0) | ATTR2_PRIORITY(0);
    
        // Check for collision with player
        if (collision(deer.col, deer.row, deer.height, deer.width,
        g -> col, g -> row, g -> width, g -> height)) {
            
            // In case of collision, turn active to 0
            g -> active = 0;
            shadowOAM[g -> oamPos].attr0 = ATTR0_HIDE;

        }

    }

}

// Draw sprites
void drawGame() {

    // Call helper to draw deer
    drawDeer();

}

// Helper to draw dere
void drawDeer() {

    shadowOAM[0].attr0 = (ROWMASK & deer.row);
    shadowOAM[0].attr1 = (COLMASK & deer.col) | ATTR1_MEDIUM;
    shadowOAM[0].attr2 = ATTR2_TILEID(0, 0) | ATTR2_PALROW(0) | ATTR2_PRIORITY(0);
    
}