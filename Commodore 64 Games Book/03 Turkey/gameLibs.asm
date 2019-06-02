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

;*** CONVERT BCD VALUE TO SCREEN CODE AND WRITE TO LOCATION ***
defm BCD_TO_SCREEN ; bytValue, WrdLocation

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

;*** ADD A BYTE TO A SOURCE AND STORE IT OVER ITSELF
defm ADD_WORD ; wrdSource, bytValue

        clc
        lda /1
        adc /2
        sta /1
        lda /1 + 1
        adc #$00
        sta /1 + 1

        endm
