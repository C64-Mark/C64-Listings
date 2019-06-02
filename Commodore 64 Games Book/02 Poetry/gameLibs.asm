;Common Libraries

;*** FILL 1024 BYTES WITH A VALUE ***
defm FILL_1000 ; start, value

        lda /2
        ldx #$00
@loop   sta /1,x
        sta /1+$0100,x
        sta /1+$0200,x
        sta /1+$0300,x
        dex
        bne @loop

        endm

defm ADD_WORD ; wrdSource, bytValue

        clc
        lda /1
        adc /2
        sta /1
        lda /1 + 1
        adc #$00
        sta /1 + 1

        endm

; copy two bytes from one location to another
defm COPY_WORD ; Source, Target

        lda /1
        sta /2
        lda /1 + 1
        sta /2 + 1

        endm
