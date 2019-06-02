;game variables
gBackground     byte    $00
xPos            Word    $00
yPos            Word    $00
x1Pos           Word    $00
y1Pos           Word    $00
dx              byte    $00
dy              byte    $00
xA              byte    $00
xB              byte    $00
xC              byte    $00
yA              byte    $00
yB              byte    $00
pPos            byte    $00,$00
gPArray         byte    $80,$40,$20,$10,$08,$04,$02,$01

;Global Variables
zpLow           = $00FB
zpHigh          = $00FC

SCREENRAM       = $0400 ;1024 - start of screen ram
GFXRAM0         = $2000 ;8192 - start of graphics ram
GFXRAM1         = $2400
GFXRAM2         = $2800
GFXRAM3         = $2C00
GFXRAM4         = $3000
GFXRAM5         = $3400
GFXRAM6         = $3800
GFXRAM7         = $3C00

VCR             = $D011 ;VIC+17 - vic control register
VMCR            = $D018 ;VIC+24 - vic memory control register
BDCOL           = $D020 ;VIC+32 - border colour
BGCOL0          = $D021 ;VIC+33 - backgroung colour 0
