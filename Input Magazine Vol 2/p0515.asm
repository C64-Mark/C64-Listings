; 10 SYS (49152)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $39, $31, $35, $32, $29, $00, $00, $00

*=$c000

        sei
        lda #$0d
        sta $0314
        lda #$c0
        sta $0315
        cli
        rts
        lda #$01
        ldx $d021
        cpx #$f1
        bne COL
        lda #$00
COL     sta $ff
        lda #$00
        sta $fe
        lda $39
        sta $fb
        lda $3a
        sta $fc
        ldy #$07
DIG     ldx #$30
FIG     sec
        lda $fb
        sbc NUMS-1,y
        pha
        dey
        lda $fc
        sbc NUMS+1,y
        bcc OUT
        sta $fc
        pla
        sta $fb
        inx
        iny
        bne FIG
OUT     pla
        txa
        sty $fd
        inc $fe
        ldy $fe
        sta $0420,y
        lda $ff
        sta $d820,y
        ldy $fd
        dey
        bpl DIG
        lda $fb
        ora #$30
        sta $0425
        lda $ff
        sta $d825
        lda $c5
        cmp #$04
        bne QUIT
        ldx #$00
AGAIN   ldy #$00
BACK    iny
        bne BACK
        inx
        bne AGAIN
QUIT    jmp $ea31

NUMS    word 10
        word 100
        word 1000
        word 10000
