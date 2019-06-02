*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28
        byte    $32, $30, $36, $34, $29, $00, $00, $00

Start
        jsr Init_Random

        ;10 rem ** poetry **
        ;20 dim aj$(9,2),av$(9,2):for i=0 to 9
        ;30 read aj$(i,0),aj$(i,1),aj$(i,2),av$(i,0),av$(i,1),av$(i,2):next
        ;initialised as variables above

        ;50 print"{clear}";spc(14);"** poetry **{down}";chr$(8)
Line50  FILL_1000 SCREENRAM, #$20
        ldy #11
Line50b lda title,y
        sta $040E,y
        dey
        bpl Line50b

        lda #$80
        sta $0291 ; disable shift+commodore

        ;set position of first line on screen
        lda #$50
        sta ScnAdr
        lda #$04
        sta ScnAdr + 1

        ;55 fl=0:mo=int(rnd(1)*3)
        lda #$00
        sta fl
Line55  lda $D41B
        and #$03 ; gives us 0 to 3
        beq Line55 ; we just want 1 to 3
        sec
        sbc #$01 ; gives us 0 to 2
        sta mo

        ;60 for i=1to4+int(rnd(1)*4):
        lda $D41B
        and #$03 ; gives us 0 to 3
        clc
        adc #$04 ; makes i between 4 and 7
        sta i
        
Line60  
        ;reset pointers for aj and av
        lda #<ajTxt
        sta ajPtr
        lda #>ajTxt
        sta ajPtr+1

        lda #<avTxt
        sta avPtr
        lda #>avTxt
        sta avPtr+1

        ; av=int(rnd(1)*10)
        lda $D41B
        and #$0F
        cmp #$0A ; we only want values 0 to 9
        bcs Line60
        sta av

        ;65 aj=int(rnd(1)*10):
Line65  lda $D41B
        and #$0F
        cmp #$0A ; we only want values 0 to 9
        bcs Line65
        ;if aj=av then 65
        cmp av
        beq Line65
        sta aj

        ;70 aj$=aj$(aj,mo):av$=av$(av,mo)
        ldy mo
Line70  cpy #$00
        beq Line70b
        ADD_WORD ajPtr, #$A0 ;next aj word bank (10 words x 16 chars = 160)
        ADD_WORD avPtr, #$A0 ;next av word bank (10 words x 16 chars = 160)
        dey
        jmp Line70

Line70b
        ldy aj
ajLoop  cpy #$00
        beq Line70c
        ADD_WORD ajPtr, #$10 ;point to next aj word (16 chars)
        dey
        jmp ajLoop

Line70c
        ldy av
avLoop  cpy #$00
        beq Line75
        ADD_WORD avPtr, #$10 ;point to next av word (16 chars)
        dey
        jmp avLoop

        ;75 on int(rnd(1)*11+1) goto 80,85,90,95,100,105,110,115,120,125,130
Line75  lda $D41B
        and #$0F
        cmp #$0A ; we use 0 to 10 here as it's used as an offset
        bcs Line75
        sta poemPtr ; offset for poemtxt

        ;set pointer to first poem sentence
        lda #<poemTxt
        sta zpLow
        lda #>poemTxt
        sta zpHigh

        ldy #$00
Line75b cpy poemPtr ;use the offset as a count
        beq Line80
        clc
        ADD_WORD zpLow, #$30 ; point to next poem sentence (48 chars)
        iny
        jmp Line75b

Line80
        lda #$00
        sta ScnPos ; ScnPos points to current char position on screen
        sta ChrPos ; ChrPos points to current char position in selected poemTxt sentence
Line80b ldy ChrPos
        lda (zpLow),y
        cmp #$00 ; if we find @ then sentence has ended
        beq Line500
        cmp #$25 ; if we find % then add in random word 1
        beq Word1
        cmp #$23 ; if we find # then add in random word 2
        beq Word2
        ldy ScnPos
        sta (ScnAdr),y
        inc ScnPos
        inc ChrPos
        jmp Line80b

        ;loops through avTxt to find selected first random word
Word1
        COPY_WORD ajPtr, zpLow2
        lda #$00
        sta WrdPos
W1Loop  ldy WrdPos
        lda (zpLow2),y
        cmp #$00 ; if we find @ then word has ended
        bne W1Out
        inc ChrPos
        jmp Line80b
W1Out
        ldy ScnPos
        sta (ScnAdr),y
        inc ScnPos
        inc WrdPos
        jmp W1Loop

        ;loops through ajTxt to find selected second random word
Word2
        COPY_WORD avPtr, zpLow2
        lda #$00
        sta WrdPos
W2Loop  ldy WrdPos
        lda (zpLow2),y
        cmp #$00 ; if we find @ then word has ended
        bne W2Out
        inc ChrPos
        jmp Line80b
W2Out
        ldy ScnPos
        sta (ScnAdr),y
        inc ScnPos
        inc WrdPos
        jmp W2Loop        

Line500
        ;500 next i:if fl=0 and rnd (1)>.5 then fl=1:goto 60
        ADD_WORD ScnAdr, #$50
        ldx i
        dex
        beq Line500b ;end of loop
        stx i
        jmp Line60 ;get another line of poem
Line500b
        lda fl
        cmp #$00
        bne Line505
        lda $D41B
        cmp #$80 ; random number is less than 128, i.e. <0.5 of 255
        bmi Line505
        lda #$01
        sta fl
        jmp Line60 ;get another line of poem

Line505 ;505 get a$:if a$="n" then print chr$(9):end
        ;510 if a$="" then 505
        lda $C5
        cmp #39
        beq End
        cmp #64
        beq Line505

Line515 ;515 goto 50
        lda #$00
        sta $C6 ;clear keyboard buffer
        lda #64
        sta $C5
        jmp Line50

End
        lda #$00
        sta $0291 ; enable shift+commodore
        FILL_1000 SCREENRAM, #$20
        lda #$00
        sta $C6
        rts

Init_Random
        lda #$FF
        sta $D40E
        sta $D40F
        lda #$80
        sta $D412
        rts
