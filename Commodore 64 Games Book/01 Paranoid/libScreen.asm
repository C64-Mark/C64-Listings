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
