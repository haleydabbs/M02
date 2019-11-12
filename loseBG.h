
//{{BLOCK(loseBG)

//======================================================================
//
//	loseBG, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 20 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 640 + 2048 = 3200
//
//	Time-stamp: 2019-11-10, 18:37:03
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSEBG_H
#define GRIT_LOSEBG_H

#define loseBGTilesLen 640
extern const unsigned short loseBGTiles[320];

#define loseBGMapLen 2048
extern const unsigned short loseBGMap[1024];

#define loseBGPalLen 512
extern const unsigned short loseBGPal[256];

#endif // GRIT_LOSEBG_H

//}}BLOCK(loseBG)
