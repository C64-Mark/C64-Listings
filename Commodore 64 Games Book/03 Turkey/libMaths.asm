;-------------------------------------------------------------------------------
;LIBMATHS: Maths Libraries
;-------------------------------------------------------------------------------

;Add value to a value in an address and store it
defm LIBMATHS_ADD_8BIT_AVA ; addSource, bytValue, addTarget

        clc
        lda /1
        adc /2
        sta /3
    
        endm

;Subtract a value from an address and store it
defm LIBMATHS_SUBTRACT_8BIT_AVA ; addSource, bytValue, addTarget

        sec
        lda /1
        sbc /2
        sta /3
    
        endm

;Add value to a value in an address and store it
defm LIBMATHS_ADD_16BIT_AVVA ; addSource, bytValueLow, bytValueHigh, addTarget

        clc
        lda /1
        adc /2
        sta /4
        lda /1 + 1
        adc /3
        sta /4 + 1

        endm

;Subtract one 16-bit value from another
defm LIBMATHS_SUBTRACT_16BIT_AAA ; addValue, addSource, addTarget

        sec
        lda /1
        sbc /2
        sta /3
        lda /1 + 1
        sbc /2 + 1
        sta /3 + 1
    
        endm

;Multiply value in an address and store it
defm LIBMATHS_MULTIPLY_BY_2_AA   ; addSource, addTarget

        lda /1
        asl
        sta /2
        lda /1 + 1
        rol
        sta /2 + 1

        endm

;Multiply a 16-bit address by an 8-bit value
defm MULTIPLY_BY_8_AVA ; addSource, bytValue, addTarget

        lda /2
        asl
        asl
        asl
        pha
        lda #$00
        adc /1 + 1
        sta /3 + 1
        pla
        clc
        adc /1
        sta /3
        lda /1 + 1
        adc #$00
        sta /3 + 1

        endm

;Divide a value by 8 and return the result and remainder
defm LIBMATHS_DIVIDE_BY_8_AVV ; addSource, bytResult, bytRemainder

        lda /1
        sta /2
        lda /1 + 1
        lsr         ; Divide by 2
        ror /2
        lsr         ; Divide By 4
        ror /2
        lsr         ; Divide By 8
        ror /2
        lda /1
        and #%00000111
        sta /3

        endm

defm TWOS_COMPLEMENT_AA ; addSource, addTarget

        lda /1
        eor #$FF
        clc
        adc #$01
        sta /2

        endm

defm BCD_ADD_8BIT_AVA ; addSource, bytValue, addTarget

        sed
        clc
        lda /1
        adc /2
        sta /3
        bcs @UpperDigits
        cld
        jmp @exit
@UpperDigits
        clc
        lda /1 + 1
        adc #$01
        sta /3 + 1
@exit
        cld

        endm