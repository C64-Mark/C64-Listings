;-------------------------------------------------------------------------------
;LIBSCREEN: Screen Libraries
;-------------------------------------------------------------------------------

;Sets 1000 bytes of memory from start address with a value
defm    LIBSCREEN_SET1000_AV    ; addTarget, bytValue

        lda #/2
        ldx #250
@loop   dex
        sta /1,x
        sta /1+250,x
        sta /1+500,x
        sta /1+750,x
        bne @loop

        endm

;Set border and background colour 0
defm LIBSCREEN_SETCOLOURS_VV ;bytBorder, bytBackground0

        lda #/1
        sta BDCOL
        lda #/2
        sta BGCOL0

        endm

;Set video modes
defm LIBSCREEN_SETVIC_AV ;addRegister, bytValue

        lda /1
        ora /2
        sta /1

        endm

;Write text to a location on the screen
defm LIBSCREEN_WRITE_VAA ;bytLength, addText, addTarget

        ldy /1
@loop   dey
        lda /2,y
        sta /3,y
        cpy #$00
        bne @loop

        endm

;Write a single char repeatedly to the screen
defm LIBSCREEN_WRITECHAR_VVA ;bytLength, bytValue, addTarget

        ldy /1
@loop   dey
        lda /2
        sta /3,y
        cpy #$00
        bne @loop

        endm

;Set the colour of text on the screen
defm LIBSCREEN_TEXTCOLOUR_VVA ;bytLength, bytColour, addTarget

        ldy /1
@loop   dey
        lda /2
        sta /3,y
        cpy #$00
        bne @loop

        endm

;Wait for given raster line
defm    LIBSCREEN_WAIT_V  ;bytValue

@loop   lda #/1
        cmp RASTER
        bne @loop

        endm

;Convert a BCD value to consecutive screen code values
defm LIBSCREEN_DISPLAY_BCD_VA ; bytValue, addTarget

        ;low bytes
        lda /1
        sed
        and #$0F
        cld
        clc
        adc #$30
        sta /2
        ;high bytes
        lda /1
        sed
        lsr
        lsr
        lsr
        lsr
        and #$0F
        cld
        clc
        adc #$30
        sta /2-1

        endm
