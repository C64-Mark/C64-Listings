*=$0340
        incbin "turkeysprites.bin"

*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28
        byte    $32, $30, $36, $34, $29, $00, $00, $00

Start
        ;clear screen, set background & border colour
        FILL_1000 SCREENRAM, #$20
        jsr Init_Random
        lda #$00
        sta BGCOL0
        lda #$09
        sta BDCOL

        ;initialise position of waiter and turkey
        lda #150
        sta waiterX
        sta turkeyX
        lda #185
        sta turkeyY

        ;zero score and set lives to 3
        lda #$00
        sta score
        sta score+1
        lda #$03
        sta lives

        ;set direction deltas (+ve=right,down;-ve=left,up)
        jsr Create_X_Delta
        lda #$FE
        sta yDelta

        ;enable sprites and set pointers
        lda #$03
        sta SPREN
        lda #13
        sta SPRPTR
        lda #14
        sta SPRPTR+1

        ;set sprite positions
        lda waiterX
        sta SPRPOS
        lda #200
        sta SPRPOS+1
        lda turkeyX
        sta SPRPOS+2
        lda turkeyY
        sta SPRPOS+3

        ;set title at top of screen
        ldy #$00
settitle
        lda title,y
        sta SCREENRAM,y
        lda #$01
        sta COLOURRAM,y
        iny
        cpy #34
        bne settitle
        lda #$06
        ldy #$00
setcolour
        sta COLOURRAM+15,y
        sta COLOURRAM+27,y
        iny
        cpy #$06
        bne setcolour

        ;set the game border on the screen
        ldy #25
BrdTop  lda #$05
        sta $D855,y
        lda #86
        sta $0455,y
        dey
        bpl BrdTop

        lda #$55
        sta zpLow
        sta zpLow2
        lda #$D8
        sta zpHigh
        lda #$04
        sta zpHigh2
        ldx #$14 ; no of rows of border
BrdSide ldy #$00
        lda #$05
        sta (zpLow),y
        lda #$56
        sta (zpLow2),y
        ldy #$19
        lda #$05
        sta (zpLow),y
        lda #$56
        sta (zpLow2),y
        ADD_WORD zpLow, #$28
        ADD_WORD zpLow2, #$28
        dex
        bne BrdSide

GameLoop

        ;raster delay
RasterLoop
        lda #$FF
        cmp RASTER
        bne RasterLoop

        ;update score & lives
        jsr Score_Update

        ;get keys
        jsr Get_Keys

        ;move waiter
        jsr Update_Waiter

        ;move turkey
        jsr Update_Turkey

        ;collision detection
        jsr Collision_Detection

        ;check for end of game
        lda lives
        bne GameLoop

        jmp Game_Over


;*** SUBROUTINES ***
Init_Random
        lda #$FF
        sta $D40E
        sta $D40F
        lda #$80
        sta $D412
        rts

Create_X_Delta
        lda $D41B
        cmp #$09
        bcs Create_X_Delta
        sec
        sbc #$04
        sta xDelta
        eor #$FF
        clc
        adc #$01
        sta xChange
        rts

Score_Update
        BCD_TO_SCREEN Score, $0418
        BCD_TO_SCREEN Score+1, $0416
        lda lives
        clc
        adc #$30
        sta $0421
        rts

Get_Keys
        lda $C5
        cmp #12
        beq Left
        cmp #36
        beq Right
        rts
Left    dec waiterX
        dec waiterX
        jmp ClrBuf
Right   inc waiterX
        inc waiterX
ClrBuf  lda #$00
        sta $C5
        rts

Update_Waiter
        lda waiterX
        cmp #70
        bcs ChkRght
        lda #70
        sta waiterX
ChkRght cmp #240
        bcc MoveW
        lda #240
        sta waiterX
MoveW   sta SPRPOS
        rts

Update_Turkey
        lda yDelta
        bmi TurkeyUp
        lda turkeyY
        clc
        adc #$01
        sta turkeyY
        jmp CheckX
TurkeyUp
        lda turkeyY
        sec
        sbc #$01
        sta turkeyY
CheckX
        lda xDelta
        bmi TurkeyLeft
        lda turkeyX
        clc
        adc xChange
        sta turkeyX
        jmp CheckCeiling
TurkeyLeft
        lda turkeyX
        sec
        sbc xChange
        sta turkeyX
CheckCeiling
        lda turkeyY
        cmp #70
        bcs CheckFloor
        lda #$01
        sta yDelta
        jsr Create_X_Delta
        jsr Increase_Score
        jmp MoveT
CheckFloor
        lda turkeyY
        cmp #220
        bcc CheckLeft
        lda waiterX
        sta turkeyX
        lda #185
        sta turkeyY
        lda #$FE
        sta yDelta
        dec lives
        jsr Create_X_Delta
        jmp MoveT
CheckLeft
        lda turkeyX
        cmp #70
        bcs CheckRight
        lda #70
        sta turkeyX
        jmp ChangeXd
CheckRight
        cmp #240
        bcc MoveT
        lda #240
        sta turkeyX
ChangeXd
        lda xDelta
        eor #$FF
        clc
        adc #$01
        sta xDelta
MoveT
        lda turkeyX
        sta SPRPOS+2
        lda turkeyY
        sta SPRPOS+3
        rts
       
Increase_Score
        sed
        clc
        lda Score
        adc #$01
        sta Score
        bcs UpperDigits
        cld
        rts
UpperDigits
        clc
        lda Score+1
        adc #$01
        sta Score+1
        cld
        rts

Collision_Detection
        clc
        lda turkeyY
        adc #20
        sta turkeyYLB
        clc
        lda turkeyX
        adc #2
        sta turkeyXLB
        clc
        adc #20
        sta turkeyXUB
        clc
        lda waiterX
        adc #5
        sta waiterXLB
        clc
        adc #15
        sta waiterXUB

        lda turkeyYLB
        cmp #207
        bne Collision_Exit
        lda turkeyXUB
        cmp waiterXLB
        bcc Collision_Exit
        lda turkeyXLB
        cmp waiterXUB
        bcs Collision_Exit
        lda #$FE
        sta yDelta
        jsr Create_X_Delta
        jsr Increase_Score
        jsr Increase_Score
Collision_Exit
        rts

Game_Over
        lda #$00
        sta SPREN
        ldy #$00
Restart lda gameover,y
        sta $0546,y
        lda tryagain,y
        sta $0596,y
        lda #$02
        sta $D946,y
        lda #$04
        sta $D996,y
        iny
        cpy #24
        bne Restart

YorN
        lda $C5
        cmp #25
        beq NewGame
        cmp #39
        beq EndGame
        jmp YorN
NewGame
        jmp Start
EndGame
        FILL_1000 SCREENRAM, #$20
        lda #$00
        sta $C6
        rts
