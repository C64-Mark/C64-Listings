;Subroutines

;Initialisation
Initialise
        LIBGENERAL_INITRAND
        LIBSCREEN_SETCOLOURS_VV Black, Black
        LIBSCREEN_SETVIC_AV VMCR, #$08
        LIBSCREEN_SETVIC_AV VCR1, #$20
        LIBSCREEN_SET1000_AV SCREENRAM, #$01
        LIBSCREEN_SET1000_AV BITMAP0, #$00
        LIBSCREEN_SET1000_AV BITMAP1, #$00
        LIBSCREEN_SET1000_AV BITMAP2, #$00
        LIBSCREEN_SET1000_AV BITMAP3, #$00
        LIBSCREEN_SET1000_AV BITMAP4, #$00
        LIBSCREEN_SET1000_AV BITMAP5, #$00
        LIBSCREEN_SET1000_AV BITMAP6, #$00
        LIBSCREEN_SET1000_AV BITMAP7, #$00

;Plot points revolving around x,y
PlotPointsXY
        LIBGENERAL_COPY_WORD_AA yPos, y1Pos
        LIBGENERAL_COPY_WORD_AA xPos, x1Pos
        jsr Plot
        LIBMATHS_SUBTRACT_16BIT_AAA xConst, xPos, x1Pos
        jsr Plot
        LIBMATHS_SUBTRACT_16BIT_AAA yConst, yPos, y1Pos
        jsr Plot
        LIBGENERAL_COPY_WORD_AA xPos, x1Pos
        jsr Plot
        LIBMATHS_MULTIPLY_BY_2_AA yPos, y1Pos
        LIBMATHS_MULTIPLY_BY_2_AA xPos, x1Pos
        jsr Plot
        LIBMATHS_SUBTRACT_16BIT_AAA yConst, y1Pos, y1Pos
        LIBMATHS_SUBTRACT_16BIT_AAA xConst, x1Pos, x1Pos
        jsr Plot
        rts

;Change x,y and check if in screens size
CheckXYBoundaries
        LIBMATHS_ADD_8BIT_AVA xPos, dx, xPos 
        LIBMATHS_ADD_8BIT_AVA yPos, dy, yPos
        lda xPos + 1
        bmi XOutOfBounds ;x<0
        lda xPos
        cmp #160 ;x>159
        bcs XOutOfBounds
        jmp CheckYPos
XOutOfBounds
        TWOS_COMPLEMENT_AA dx, dx
        jmp CheckXYBoundaries
CheckYPos
        lda yPos + 1
        bmi YOutOfBounds ;y<0
        lda yPos
        cmp #100 ;y>99
        bcs YOutOfBounds
        rts
YOutOfBounds
        TWOS_COMPLEMENT_AA dy, dy
        jmp CheckXYBoundaries

;Randomly calculate DX,DY
CalculateDXDY
        lda SIDRAND
        cmp #225 ;>90%
        bcc RandDY
        LIBGENERAL_CREATE_DELTA_A dx
RandDY
        lda SIDRAND
        cmp #225
        bcc CompareDXDY
        LIBGENERAL_CREATE_DELTA_A dy
CompareDXDY
        lda dx
        bne Exit
        lda dy
        bne Exit
        jmp ReDelta
ReDelta
        LIBGENERAL_CREATE_DELTA_A dx
        LIBGENERAL_CREATE_DELTA_A dy
        lda dx
        bne Exit
        lda dy
        bne Exit
        jmp ReDelta
Exit
        rts

;Subroutine plot X1,Y1
Plot
        LIBMATHS_DIVIDE_BY_8_AVV y1Pos, yA, yB
        LIBMATHS_DIVIDE_BY_8_AVV x1Pos, xA, xB
        lda #$00
        sta pPos
        lda #$20
        sta pPos + 1
        ldy yA
        beq MultiplyXA
MultiplyYA
        LIBMATHS_ADD_16BIT_AVVA pPos, #$40, #$01, pPos
        dey
        bne MultiplyYA
MultiplyXA
        MULTIPLY_BY_8_AVA pPos, xA, pPos
        LIBMATHS_ADD_16BIT_AVVA pPos, yB, #$00, pPos
        ldy xB
        lda gPArray,y
        sta xC
        LIBGENERAL_COPY_WORD_AA pPos, zpLow
        ldy #$00
        lda (zpLow),y
        ora xC
        sta (zpLow),y
        rts
