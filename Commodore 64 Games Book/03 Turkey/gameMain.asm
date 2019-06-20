*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28
        byte    $32, $30, $36, $34, $29, $00, $00, $00

Start
        jsr initialise
GameLoop
        LIBSCREEN_WAIT_V #$FF
        jsr Score_Update
        jsr Get_Keys
        jsr Update_Waiter
        jsr Update_Turkey
        jsr Collision_Detection
        lda lives
        bne GameLoop
Game_Over
        lda #$00
        sta SPREN
        LIBSCREEN_WRITE_VAA #24, gameover, $0546
        LIBSCREEN_TEXTCOLOUR_VVA #24, green, $D946
        LIBSCREEN_WRITE_VAA #24, tryagain, $0596
        LIBSCREEN_TEXTCOLOUR_VVA #24, purple, $D996
YorN
        lda $C5
        cmp #25
        beq Start
        cmp #39
        beq EndGame
        jmp YorN
EndGame
        LIBSCREEN_SET1000_AV SCREENRAM, space
        lda #$00
        sta $C6
        rts