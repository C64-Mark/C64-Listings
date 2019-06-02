;Game Variables
waiterX         byte    00
turkeyX         byte    00
turkeyY         byte    00
xDelta          byte    00
xChange         byte    00
yDelta          byte    00
score           byte    00,00
lives           byte    00
title           text    'super waiter!  score:0000  lives:0'
gameover        text    'the turkey is inedible!!'
tryagain        text    'want to try again? (y/n)'

;use for collision
turkeyYLB       byte    00
waiterYUB       byte    00
turkeyXLB       byte    00
turkeyXUB       byte    00
waiterXLB       byte    00
waiterXUB       byte    00

;Global Variables

zpLow           = $00FB
zpHigh          = $00FC
zpLow2          = $00FD
zpHigh2         = $00FE

SCREENRAM       = $0400 ;1024 - start of screen ram
SPRPTR          = $07F8 ;sprite pointers

SPRPOS          = $D000 ;53248 - start of sprite xy positions
RASTER          = $D012 ;raster
SPREN           = $D015 ;enable sprites
BDCOL           = $D020 ;VIC+32 - border colour
BGCOL0          = $D021 ;VIC+33 - backgroung colour 0

COLOURRAM       = $D800 ;start of screen colour ram
