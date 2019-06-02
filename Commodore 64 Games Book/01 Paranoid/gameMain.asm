*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28
        byte    $32, $30, $36, $34, $29, $00, $00, $00

Start
        jsr Init_Random

        ;0 background=1
        lda #$01
        sta gBackground
        ;5 poke 55,255:poke 56,31 - ignore, basic related
        ;6 dim p(7):for i=0 to 7:p(i)=2^(7-i):next - ignore, stored in mem

        ;10 v=53248:poke v+32,0:poke v+33,0
        lda #$00
        sta BDCOL
        sta BGCOL0

        ;30 poke v+24,peek(v+24) or 8
        lda VMCR
        ora #$08
        sta VMCR

        ;40 poke v+17,peek(v+17) or 32
        lda VCR
        ora #$20
        sta VCR

        ;50 for i=1024 to 2024:poke i,ba:next
        FILL_1000 SCREENRAM, gBackground

        ;60 for i=8192 to 8192+8*1024:poke i,0:next
        FILL_1000 GFXRAM0, #$00
        FILL_1000 GFXRAM1, #$00
        FILL_1000 GFXRAM2, #$00
        FILL_1000 GFXRAM3, #$00
        FILL_1000 GFXRAM4, #$00
        FILL_1000 GFXRAM5, #$00
        FILL_1000 GFXRAM6, #$00
        FILL_1000 GFXRAM7, #$00
        
Line100
        ;100 x=79:y=49:dx=int(rnd(1)*3-1):dy=int(rnd(1)*3-1):if dx=0 and dy=0 then 100
        ldx #$4F
        stx xPos
        ldy #$31
        sty yPos
        lda #$00
        sta xPos+1
        sta yPos+1

        CREATE_DELTA dx
        CREATE_DELTA dy

        lda dx
        bne Line105
        lda dy
        bne Line105
        jmp Line100

Line105
        ;105 y1=y:x1=x:gosub 1000:x1=319-x:gosub 1000:y1=199-y:gosub 1000:x1=x:gosub 1000
        COPY_WORD yPos, y1Pos
        COPY_WORD xPos, x1Pos
        jsr Line1000
        
        SUBTRACT_WORD $013F, xPos, x1Pos
        jsr Line1000
        SUBTRACT_WORD $00C7, yPos, y1Pos
        jsr Line1000

        COPY_WORD xPos, x1Pos
        jsr Line1000

        ;107 y1=y*2:x1=x*2:gosub 1000:y1=199-y1:x1=319-x1:gosub 1000
        MULTIPLY_BY_2 yPos, y1Pos
        MULTIPLY_BY_2 xPos, x1Pos
        jsr Line1000
        SUBTRACT_WORD $00C7, y1Pos, y1Pos
        SUBTRACT_WORD $013F, x1Pos, x1Pos
        jsr Line1000

        ;110 x=x+dx:y=y+dy:if x<0 or x>159 then dx=-dx:goto 110
Line110
        ADD_8BIT_SIGNED xPos, dx, xPos
        ADD_8BIT_SIGNED yPos, dy, yPos
        
        lda xPos + 1
        bmi Line110b
        lda xPos
        cmp #159
        bcs Line110b
        jmp Line115

Line110b
        lda dx
        eor #$FF
        clc
        adc #$01
        sta dx
        jmp Line110

Line115
        ;115 if y<0 or y>99 then dy=-dy:goto 110
        lda yPos + 1
        bmi Line115b
        lda yPos
        cmp #99
        bcs Line115b
        jmp Line120

Line115b
        lda dy
        eor #$FF
        clc
        adc #$01
        sta dy
        jmp Line110

Line120
        ;120 if rnd(1)>.9 then dx=int(rnd(1)*3-1)
        lda $D41B
        cmp #225
        bcc Line130
        CREATE_DELTA dx

Line130
        ;130 if rnd(1)>.9 then dy=int(rnd(1)*3-1)
        lda $D41B
        cmp #225
        bcc Line135
        CREATE_DELTA dy

Line135
        ;135 if dx<>0ordy<>0 then 105
        lda dx
        bne Line135b
        lda dy
        bne Line135b
        jmp Line140
Line135b
        jmp Line105

Line140
        ;140 dx=int(rnd(1)*3-1):dy=int(rnd(1)*3-1):if dx=0 and dy=0 then 140
        CREATE_DELTA dx
        CREATE_DELTA dy
        lda dx
        bne Line150
        lda dy
        bne Line150
        jmp Line140

Line150
        ;150 goto 105
        jmp Line105

Line1000
        ;1000 ya=int(y1/8):yb=y1-ya*8:xa=int(x1/8):xb=x1-xa*8
        DIVIDE_BY_8 y1Pos, yA, yB
        DIVIDE_BY_8 x1Pos, xA, xB

        ;1005 p=8*1024+ya*320+xa*8+yb:xc=p(xb)
        ;8*1024 = $2000
        lda #$00
        sta pPos
        lda #$20
        sta pPos + 1

        ;ya*320 ($0140)
        ldy yA
myA     clc
        lda #$40
        adc pPos
        sta pPos
        lda #$01
        adc pPos + 1
        sta pPos + 1
        dey
        bne myA

        ;xa*8
        lda xA
        asl
        asl
        asl
        pha ;hold on stock temporarily
        lda #$00
        adc pPos + 1
        sta pPos + 1
        pla ;pull original value back
        clc
        adc pPos
        sta pPos
        lda pPos + 1 ;deal with any carry from low byte multi
        adc #$00
        sta pPos + 1

        ;yB
        lda yB
        clc
        adc pPos
        sta pPos
        lda #$00
        adc pPos + 1
        sta pPos + 1

        ;xC=p(xB)
        ldy xB
        lda gPArray,y
        sta xC

        ;1010 poke p,peek(p) or xc:return
        lda pPos
        sta zpLow
        lda pPos + 1
        sta zpHigh
        ldy #$00
        lda (zpLow),y
        ora xC
        sta (zpLow),y
        rts

;Compute! rand initialiser using SID
Init_Random
        lda #$FF ; maximum frequency value
        sta $D40E ; voice 3 frequency low byte
        sta $D40F ; voice 3 frequency high byte
        lda #$80  ; noise SIRENform, gate bit off
        sta $D412 ; voice 3 control register
        rts
