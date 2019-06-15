;-------------------------------------------------------------------------------
;LIBGENERAL: General Libraries
;-------------------------------------------------------------------------------

;Initialise the SID random number generator
defm LIBGENERAL_INITRAND

        lda #$FF
        sta FREL3
        sta FREH3
        lda #$80
        sta VCREG3

        endm

;Create a random number between -1 and 1
defm LIBGENERAL_CREATE_DELTA_A  ; addTarget

@redo   lda SIDRAND
        and #$03
        cmp #$03
        beq @redo
        sec
        sbc #$01
        sta /1
    
        endm

;Copy two bytes from one location to another
defm LIBGENERAL_COPY_WORD_AA    ; addSource, addTarget

        lda /1
        sta /2
        lda /1 + 1
        sta /2 + 1

        endm
