; 10 SYS (2064)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $32, $30, $36, $34, $29, $00, $00, $00

*=$0810

        lda #$00
        sta $fb
        lda #$04
        sta $fc
        lda #$00
        sta $fe
again   ldy #$00
        lda ($fb),y
        sta $fd
        ldy #$01
loop    lda ($fb),y
        dey
        sta ($fb),y
        iny
        iny
        cpy #$28
        bne loop
        ldy #$27
        lda $fd
        sta ($fb),y
        lda $fb
        adc #$27
        sta $fb
        bcc jump
        inc $fc
jump    inc $fe
        ldx $fe
        cpx #$19
        bne again
        rts
