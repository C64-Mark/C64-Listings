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

;*** CREATE A DELTA VALUE BETWEEN -1 and 1
defm CREATE_DELTA ; bytTarget

@redo   lda $D41B
        and #$03
        cmp #$03
        beq @redo
        sec
        sbc #$01
        sta /1
    
        endm

; copy two bytes from one location to another
defm COPY_WORD ; Source, Target

        lda /1
        sta /2
        lda /1 + 1
        sta /2 + 1

        endm

;*** SUBRTRACT SOURCE FROM NUMBER AND STORE IN TARGET ***
defm SUBTRACT_WORD ; number, source, target

        lda #</1
        sec
        sbc /2
        sta /3
        lda #>/1
        sbc /2 + 1
        sta /3 + 1
    
        endm

defm MULTIPLY_BY_2  ; Source, Target

        lda /1
        asl
        sta /2
        lda /1 + 1
        rol
        sta /2 + 1

        endm

defm ADD_8BIT_SIGNED ; Source, Addition, Target

        clc
        lda /2
        adc /1
        sta /3
        lda /2
        bpl @JumpCLC
        clc
@JumpCLC
        lda #0
        ;   adc /1 + 1
        adc #0          ; We dont have a hi Byte for a BYTE Parameter, so this is to 
        sta /3 + 1      ; Add the carry over to the HiByte of the wrdTarget
    
        endm

defm DIVIDE_BY_8 ; Source, Result, Remainder

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
