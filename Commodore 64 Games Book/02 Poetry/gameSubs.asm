;Game Subroutines

;Initialise screen
Initialise
        LIBGENERAL_INITRAND
        LIBSCREEN_SET1000_AV SCREENRAM, Space
        LIBSCREEN_WRITE_VAV #12, title, $040E

        lda #$80
        sta MODE

        ;set position of first line on screen
        lda #$50
        sta ScnAdr
        lda #$04
        sta ScnAdr + 1

        rts

;Set up for new poem 55-60(loop)
InitialisePoem

        lda #$00
        sta fl
        sta NewLine
        LIBGENERAL_GENERATE_8BIT_RAND #0, #2, mo
        LIBGENERAL_GENERATE_8BIT_RAND #4, #7, i
        rts

;Choose words 60(post loop)-70
ChooseWords
        LIBGENERAL_STORE_ADDRESS_AA ajTxt, ajPtr
        LIBGENERAL_STORE_ADDRESS_AA avTxt, avPtr
        LIBGENERAL_GENERATE_8BIT_RAND #0, #9, av
Randaj  LIBGENERAL_GENERATE_8BIT_RAND #0, #9, aj
        cmp av
        beq Randaj
        ldy mo
SelectMood ;jumps multiples of 160 chars to select 'mood' bank of words
        cpy #$00
        beq WordStep2
        LIBMATHS_ADD_16BIT_AVVA ajPtr, #$A0, #$00, ajPtr
        LIBMATHS_ADD_16BIT_AVVA avPtr, #$A0, #$00, avPtr
        dey
        jmp SelectMood
WordStep2
        ldy aj
SelectAdjective ;jumps multiples of 16 chars to next adjective in bank
        cpy #$00
        beq WordStep3
        LIBMATHS_ADD_16BIT_AVVA ajPtr, #$10, #$00, ajPtr
        dey
        jmp SelectAdjective
WordStep3
        ldy av
SelectAdverb ;jumps multiples of 16 chars to next adverb in bank
        cpy #$00
        beq ExitChooseWords
        LIBMATHS_ADD_16BIT_AVVA avPtr, #$10, #$00, avPtr
        dey
        jmp SelectAdverb
ExitChooseWords
        rts

;Choose lines 75
ChooseLines
        LIBGENERAL_GENERATE_8BIT_RAND #0, #10, poemPtr
        LIBGENERAL_STORE_ADDRESS_AA poemTxt, zpLow
        ldy #$00
SelectSentence ;uses the random number to select one of 11 sentences
        cpy poemPtr
        beq ExitChooseLines
        LIBMATHS_ADD_16BIT_AVVA zpLow, #$30, #$00, zpLow
        iny
        jmp SelectSentence
ExitChooseLines
        rts

;Print lines of poetry 80-130
PrintLines
        lda #$00
        sta ScnPos ; ScnPos points to current char position on screen
        sta ChrPos ; ChrPos points to current char position in selected poemTxt sentence
BuildSentence
        ldy ChrPos
        lda (zpLow),y
        cmp #$00 ; @ = end of sentence
        beq ExitPrintLines
        cmp #$25 ; % = adjective
        beq InsertAdjective
        cmp #$23 ; # = adverb
        beq InsertAdverb
        ldy ScnPos
        sta (ScnAdr),y
        inc ScnPos
        inc ChrPos
        jmp BuildSentence
InsertAdjective
        LIBGENERAL_COPY_WORD_AA ajPtr, zpLow2
        lda #$00
        sta WrdPos
BuildAdjective
        ldy WrdPos
        lda (zpLow2),y
        cmp #$00 ; @ = end of adjective
        bne WriteAdjective
        inc ChrPos ; leave a space for next word
        jmp BuildSentence
WriteAdjective
        ldy ScnPos
        sta (ScnAdr),y
        inc ScnPos
        inc WrdPos
        jmp BuildAdjective
InsertAdverb
        LIBGENERAL_COPY_WORD_AA avPtr, zpLow2
        lda #$00
        sta WrdPos
BuildAdverb
        ldy WrdPos
        lda (zpLow2),y
        cmp #$00 ; if we find @ then word has ended
        bne WriteAdverb
        inc ChrPos
        jmp BuildSentence
WriteAdverb
        ldy ScnPos
        sta (ScnAdr),y
        inc ScnPos
        inc WrdPos
        jmp BuildAdverb 
ExitPrintLines
        rts

;Go again? 500-515
GoAgain
        LIBMATHS_ADD_16BIT_AVVA ScnAdr, #$50, #$00, ScnAdr
        ldx i
        dex
        beq AnotherLine
        stx i
        rts
AnotherLine
        lda fl
        cmp #$00
        bne PoemEnded
        lda SIDRAND
        cmp #$80 ; random number is less than 128, i.e. <0.5 of 255
        bmi PoemEnded
        lda #$01
        sta fl
        rts
PoemEnded
        lda #$FF
        sta NewLine
        rts

;Ask user for another poem
AnotherPoem
        LIBSCREEN_WRITE_VAV #17, NewPoem, $0770
        lda #$FF
        sta DDRA
        lda #$00
        sta DDRB
        lda #$F7
        sta CIAPRA
        lda CIAPRB
        and #$02
        beq ExitAnotherPoem
        lda #$EF
        sta CIAPRA
        lda CIAPRB
        and #$80
        beq ExitGame
        jmp AnotherPoem
ExitGame
        lda #$00
        sta MODE ; enable shift+commodore
        LIBSCREEN_SET1000_AV SCREENRAM, space
        lda #$00
        sta LSTX
        sta NDX
        brk
ExitAnotherPoem
        rts
