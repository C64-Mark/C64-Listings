;-------------------------------------------------------------------------------
; Zero Page $0000-$00FF
;-------------------------------------------------------------------------------

; $00-$01       Reserved for IO
zpTemp          = $02 ;Unused byte

; $03-$8F       Reserved for BASIC                

; $90-$FA       Reserved for Kernal

zpLow           = $FB
zpHigh          = $FC
zpLow2          = $FD
zpHigh2         = $FE

; $FF           Reserved for Kernal

;-------------------------------------------------------------------------------
; Stack $0100-$01FF
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
; RAM $0200-$9FFF
;-------------------------------------------------------------------------------

SCREENRAM       = $0400 ;Default screen ram
SPRPTR0         = $07F8 ;Sprite pointers

;Start of graphics ram for bitmap mode (default)
BITMAP0        = $2000
BITMAP1        = $23E8
BITMAP2        = $27D0
BITMAP3        = $2BB8
BITMAP4        = $2FA0
BITMAP5        = $3388
BITMAP6        = $3770
BITMAP7        = $3B58

;-------------------------------------------------------------------------------
; BASIC ROM $A000-$BFFF
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
; RAM $C000-$CFFF
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
; IO $D000-$DFFF
;-------------------------------------------------------------------------------

;*** VIC ***
SPRX0           = $D000 ;Sprite 0 x-position
SPRY0           = $D001 ;Sprite 0 y-position
SPRXMSB         = $D010 ;Sprite x most significant bit
VCR1            = $D011 ;VIC Control Register 1
RASTER          = $D012 ;Raster
LPX             = $D013 ;Light-pen x-position
LPY             = $D014 ;Light-pen y-position
SPREN           = $D015 ;Sprite display enable
VCR2            = $D016 ;VIC Control Register 2
SPRYEX          = $D017 ;Sprite Y vertical expand
VMCR            = $D018 ;VIC Memory Control Register
VICINT          = $D019 ;VIC Interrupt Flag Register
                 ;$D020 unused
IRQMR           = $D01A ;IRQ Mask Register
SPRDP           = $D01B ;Sprite/data priority
SPRMCS          = $D01C ;Sprite multi-colour select
SPRXEX          = $D01D ;Sprite X horizontal expand
SPRCSP          = $D01E ;Sprite to sprite collision
SPRCBG          = $D01F ;Sprite to background collision
BDCOL           = $D020 ;Screen border colour
BGCOL0          = $D021 ;Screen background colour 1
BGCOL1          = $D022 ;Screen background colour 2
BGCOL2          = $D023 ;Screen background colour 3
BGCOL3          = $D024 ;Screen background colour 4
SPRMC0          = $D025 ;Sprite multi-colour register 1
SPRMC1          = $D026 ;Sprite multi-colour register 2
SPRCOL0         = $D027 ;Sprite 0 colour

;*** SID ***
FREL1           = $D400 ;V1 frequency low-byte
FREH1           = $D401 ;V1 frequency high-byte
PWL1            = $D402 ;V1 pulse waveform low-byte
PWH1            = $D403 ;V1 pulse waveform high-byte
VCREG1          = $D404 ;V1 control register
ATDCY1          = $D405 ;V1 attack/decay
SUREL1          = $D406 ;V1 sustain/release
FREL2           = $D407 ;V2 frequency low-byte
FREH2           = $D408 ;V2 frequency high-byte
PWL2            = $D409 ;V2 pulse waveform low-byte
PWH2            = $D40A ;V2 pulse waveform high-byte
VCREG2          = $D40B ;V2 control register
ATDCY2          = $D40C ;V2 attack/decay
SUREL2          = $D40D ;V2 sustain/release
FREL3           = $D40E ;V3 frequency low-byte
FREH3           = $D40F ;V3 frequency high-byte
PWL3            = $D410 ;V3 pulse waveform low-byte
PWH3            = $D411 ;V3 pulse waveform high-byte
VCREG3          = $D412 ;V3 control register
ATDCY3          = $D413 ;V3 attack/decay
SUREL3          = $D414 ;V3 sustain/release
SIDVOL          = $D418 ;Volume
SIDRAND         = $D41B ;Oscillator 3 random number generator
      
COLORRAM        = $D800 ;start of default colour RAM
CIAPRA          = $DC00
CIAPRB          = $DC01

;-------------------------------------------------------------------------------
; KERNAL ROM $E000-$FFFF
;-------------------------------------------------------------------------------
