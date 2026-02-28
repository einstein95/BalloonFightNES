; NES ROM Disassembly
; PRG CRC32 checksum: bd2e9025
; CHR CRC32 checksum: c642a1df
; Overall CRC32 checksum: 401349a8
; Code base address: $c000

.setcpu "6502x"

.macro TilemapDraw addr, str, len
    .dbyt addr
    .byte len
    .byte str
.endmacro

.segment "HEADER"

.byte "NES", $1a
.ifdef animal_crossing
.byte $02
.else
.byte $01
.endif
.byte $01
.byte $00
.byte $08
.byte $00
.byte $00
.byte $00
.byte $00
.ifndef pal
.byte $00
.else
.byte $01
.endif
.byte $00
.byte $00
.byte $01

APU_DMC_RAW = $4011
APU_FRAME = $4017
APU_NOISE_HI = $400F
APU_NOISE_LO = $400E
APU_NOISE_VOL = $400C
APU_PL1_HI = $4003
APU_PL1_LO = $4002
APU_PL1_SWEEP = $4001
APU_PL1_VOL = $4000
APU_PL2_LO = $4006
APU_PL2_SWEEP = $4005
APU_PL2_VOL = $4004
APU_SND_CHN = $4015
APU_TRI_LINEAR = $4008
JOYPAD1 = $4016
JOYPAD2 = $4017
OAM_ADDR = $2003
OAM_DMA = $4014
PPU_ADDR = $2006
PPU_CTRL = $2000
PPU_DATA = $2007
PPU_MASK = $2001
PPU_SCROLL = $2005
PPU_STATUS = $2002


_var_0000_indexed = $0000
_var_0001 = $0001
_var_0002_indexed = $0002
_var_0003_indexed = $0003
_var_0004_indexed = $0004
_var_0005_indexed = $0005
_var_0006_indexed = $0006
_var_0007_indexed = $0007
_var_0008_indexed = $0008
_var_000d_indexed = $000D
_var_0012 = $0012
_var_0013 = $0013
_var_0014 = $0014
_var_0015 = $0015
_var_0016 = $0016
_var_0017 = $0017
_var_0018 = $0018
_var_0019 = $0019
_var_001b = $001B
_var_001c = $001C
_var_001d_indexed = $001D
_var_001e = $001E
_var_001f_indexed = $001F
_var_0020 = $0020
_var_0021_indexed = $0021
_var_0022 = $0022
_var_0023_indexed = $0023
_var_0024 = $0024
_var_0025_indexed = $0025
_var_0026 = $0026
_var_0027_indexed = $0027
_var_0029_indexed = $0029
_var_002b = $002B
_var_002c = $002C
_var_002d = $002D
_var_002e = $002E
_var_002f = $002F
_var_0030 = $0030
_var_0031_indexed = $0031
_var_003a = $003A
_var_003b = $003B
_var_003c = $003C
_var_003d = $003D
_var_003e = $003E
_var_003f = $003F
_var_0040 = $0040
_var_0041_indexed = $0041
_var_0042 = $0042
_var_0043 = $0043
_var_0044 = $0044
_var_0045 = $0045
_var_0046 = $0046
_var_0047 = $0047
_var_0048 = $0048
_var_0049 = $0049
_var_004a = $004A
_var_004b = $004B
_var_004c = $004C
_var_004f = $004F
_var_0050 = $0050
_var_0051 = $0051
_var_0052 = $0052
_var_0053 = $0053
_var_0054 = $0054
_var_0055 = $0055
_var_0056 = $0056
_var_0057_indexed = $0057
_var_0058_indexed = $0058
_var_0059_indexed = $0059
_var_005a_indexed = $005A
_var_005b = $005B
_var_005c = $005C
_var_0072_indexed = $0072
_var_007f_indexed = $007F
_var_0081_indexed = $0081
_var_0087 = $0087
_var_0088_indexed = $0088
_var_008a_indexed = $008A
_var_0091_indexed = $0091
_var_0093_indexed = $0093
_var_0099 = $0099
_var_009a_indexed = $009A
_var_009c_indexed = $009C
_var_00a2 = $00A2
_var_00a3 = $00A3
_var_00a4 = $00A4
_var_00a5 = $00A5
_var_00a6_indexed = $00A6
_var_00a9_indexed = $00A9
_var_00ac_indexed = $00AC
_var_00af_indexed = $00AF
_var_00b2_indexed = $00B2
_var_00b5_indexed = $00B5
_var_00b8 = $00B8
_var_00ba = $00BA
_var_00bb = $00BB
_var_00bc = $00BC
_var_00bd_indexed = $00BD
_var_00bf_indexed = $00BF
_var_00c1_indexed = $00C1
_var_00c3_indexed = $00C3
_var_00c5 = $00C5
_var_00c6 = $00C6
_var_00c7 = $00C7
_var_00c8 = $00C8
_var_00c9 = $00C9
_var_00ca = $00CA
_var_00cb = $00CB
_var_00cc = $00CC
_var_00cd = $00CD
_var_00d0_indexed = $00D0
_var_00d4_indexed = $00D4
_var_00d8_indexed = $00D8
_var_00dc_indexed = $00DC
_var_00df_indexed = $00DF
_var_00e0_indexed = $00E0
_var_00e1_indexed = $00E1
_var_00e8_indexed = $00E8
_var_00ec_indexed = $00EC
_var_00f0_indexed = $00F0
_var_00f1 = $00F1
_var_00f2 = $00F2
_var_00f3 = $00F3
_var_00f4 = $00F4
_var_00f5 = $00F5
_var_00f6 = $00F6
_var_00f7 = $00F7
_var_00f9_indexed = $00F9
_var_00fb_indexed = $00FB
_var_00fd = $00FD
_var_00fe_indexed = $00FE
_var_0200_indexed = $0200
_var_0201_indexed = $0201
_var_0202_indexed = $0202
_var_0203_indexed = $0203
_var_0204_indexed = $0204
_var_0205_indexed = $0205
_var_0206_indexed = $0206
_var_0207_indexed = $0207
_var_0208_indexed = $0208
_var_0209_indexed = $0209
_var_020a_indexed = $020A
_var_020b_indexed = $020B
_var_020c_indexed = $020C
_var_020d_indexed = $020D
_var_020e_indexed = $020E
_var_020f_indexed = $020F
_var_0210_indexed = $0210
_var_0214_indexed = $0214
_var_0250_indexed = $0250
_var_0251_indexed = $0251
_var_0252_indexed = $0252
_var_0253_indexed = $0253
_var_0254_indexed = $0254
_var_0255_indexed = $0255
_var_0256_indexed = $0256
_var_0257_indexed = $0257
_var_0258_indexed = $0258
_var_0259_indexed = $0259
_var_025a_indexed = $025A
_var_025b_indexed = $025B
_var_02b0_indexed = $02B0
_var_02b1_indexed = $02B1
_var_02b2_indexed = $02B2
_var_02b3_indexed = $02B3
_var_02e0_indexed = $02E0
_var_02e4 = $02E4
_var_02e8 = $02E8
_var_02f0_indexed = $02F0
_var_02f1_indexed = $02F1
_var_02f2_indexed = $02F2
_var_02f3_indexed = $02F3
_var_02f4_indexed = $02F4
_var_02f5_indexed = $02F5
_var_02f6_indexed = $02F6
_var_02f7_indexed = $02F7
_var_0300_indexed = $0300
_var_0400_indexed = $0400
_var_0409_indexed = $0409
_var_0412_indexed = $0412
_var_041b_indexed = $041B
_var_0424_indexed = $0424
_var_042d_indexed = $042D
_var_0436_indexed = $0436
_var_043f_indexed = $043F
_var_0441_indexed = $0441
_var_0448_indexed = $0448
_var_0450 = $0450
_var_0451_indexed = $0451
_var_0453_indexed = $0453
_var_045a_indexed = $045A
_var_0463_indexed = $0463
_var_046c_indexed = $046C
_var_0475_indexed = $0475
_var_047e_indexed = $047E
_var_0487 = $0487
_var_0488 = $0488
_var_0489 = $0489
_var_048a = $048A
_var_048b = $048B
_var_048c = $048C
_var_048d = $048D
_var_0490_indexed = $0490
_var_04a4_indexed = $04A4
_var_04b8_indexed = $04B8
_var_04cc_indexed = $04CC
_var_04e0_indexed = $04E0
_var_04f4_indexed = $04F4
_var_0508_indexed = $0508
_var_051c_indexed = $051C
_var_0530_indexed = $0530
_var_0544_indexed = $0544
_var_0558 = $0558
_var_0559 = $0559
_var_055a = $055A
_var_055b = $055B
_var_055c = $055C
_var_055d_indexed = $055D
_var_055e = $055E
_var_0567_indexed = $0567
_var_0571_indexed = $0571
_var_057b_indexed = $057B
_var_0585_indexed = $0585
_var_058f_indexed = $058F
_var_0599_indexed = $0599
_var_05b7_indexed = $05B7
_var_05c1_indexed = $05C1
_var_05cb = $05CB
_var_05cc = $05CC
_var_05cd_indexed = $05CD
_var_05ce = $05CE
_var_05d1 = $05D1
_var_05d2_indexed = $05D2
_var_05dc_indexed = $05DC
_var_05e6_indexed = $05E6
_var_05f0_indexed = $05F0
_var_05fa_indexed = $05FA
_var_0604_indexed = $0604
_var_060e_indexed = $060E
_var_0618_indexed = $0618
_var_061a_indexed = $061A
_var_061c_indexed = $061C
_var_061e_indexed = $061E
_var_0620_indexed = $0620
_var_0629_indexed = $0629
.ifndef japan
apu_vibrato_counter = $07E0
apu_vibrato_period = $07E1
apu_portamento_counter = $07E4
sfx_trigger = $07E8
sfx_prev_flags = $07E9
apu_note_playing = $07F0
apu_drum_counter = $07F1
apu_drum_subcounter = $07F3
sfx_mode = $07F5
tremolo_step = $07F6
fade_in_counter = $07F7
pl2_sweep_counter = $07F9
dmc_fx_state = $07FA
dmc_fx_step = $07FB
detune_counter = $07FC
detune_pl2 = $07FD
detune_pl1 = $07FE
_var_7fa = $07FA
.else
apu_vibrato_counter = $06E0
apu_vibrato_period = $06E1
apu_portamento_counter = $06E4
sfx_trigger = $06E8
sfx_prev_flags = $06E9
apu_note_playing = $06F0
apu_drum_counter = $06F1
apu_drum_subcounter = $06F3
sfx_mode = $06F5
tremolo_step = $06F6
fade_in_counter = $06F7
pl2_sweep_counter = $06F9
dmc_fx_state = $06FA
dmc_fx_step = $06FB
detune_counter = $06FC
detune_pl2 = $06FD
detune_pl1 = $06FE
_var_7fa = $07FA
.endif
_var_0700_indexed = $0700

.segment "AC"
.ifdef animal_crossing
.res $3FD0
_func_bfd0:
  nop                            ; $BFD0  EA
  nop                            ; $BFD1  EA
  nop                            ; $BFD2  EA
  nop                            ; $BFD3  EA
  nop                            ; $BFD4  EA
  nop                            ; $BFD5  EA
  nop                            ; $BFD6  EA
  nop                            ; $BFD7  EA
  nop                            ; $BFD8  EA
  nop                            ; $BFD9  EA
  nop                            ; $BFDA  EA
  nop                            ; $BFDB  EA
  nop                            ; $BFDC  EA
  nop                            ; $BFDD  EA
  nop                            ; $BFDE  EA
  nop                            ; $BFDF  EA
  nop                            ; $BFE0  EA
  nop                            ; $BFE1  EA
  nop                            ; $BFE2  EA
  nop                            ; $BFE3  EA
  nop                            ; $BFE4  EA
  nop                            ; $BFE5  EA
  nop                            ; $BFE6  EA
  nop                            ; $BFE7  EA
  nop                            ; $BFE8  EA
  nop                            ; $BFE9  EA
  nop                            ; $BFEA  EA
  lda z:_var_0002_indexed        ; $BFEB  A5 02
  beq _func_bfd0                 ; $BFED  F0 E1
  rts                            ; $BFEF  60

_func_bff0:
  txa                            ; $BFF0  8A
  and #$08                       ; $BFF1  29 08
  lsr a                          ; $BFF3  4A
  lsr a                          ; $BFF4  4A
  lsr a                          ; $BFF5  4A
  sec                            ; $BFF6  38
  adc z:_var_003f                ; $BFF7  65 3F
  cmp #$03                       ; $BFF9  C9 03
  bcc @+                      ; $BFFB  90 02
  sbc #$03                       ; $BFFD  E9 03

@:
  rts                            ; $BFFF  60
.endif

.segment "CODE"

Reset:
  lda #$00                       ; $C000  A9 00
  sta PPU_CTRL                   ; $C002  8D 00 20
  sta PPU_MASK                   ; $C005  8D 01 20

_label_c008:
  lda PPU_STATUS                 ; $C008  AD 02 20
  bpl _label_c008                ; $C00B  10 FB

.ifndef japan
_label_c00d:
  lda PPU_STATUS                 ; $C00D  AD 02 20
  bmi _label_c00d                ; $C010  30 FB

_label_c012:
  lda PPU_STATUS                 ; $C012  AD 02 20
  bpl _label_c012                ; $C015  10 FB
.endif
  sei                            ; $C017  78
  cld                            ; $C018  D8
  ldx #$FF                       ; $C019  A2 FF
  txs                            ; $C01B  9A
  ldx #$12                       ; $C01C  A2 12
  lda #$00                       ; $C01E  A9 00

_label_c020:
  sta z:_var_0000_indexed,X      ; $C020  95 00
  inx                            ; $C022  E8
  bne _label_c020                ; $C023  D0 FB
  ldx #$02                       ; $C025  A2 02

_label_c027:
  lda a:_var_7fa,X               ; $C027  BD FA 07
  cmp a:_data_c082_indexed,X     ; $C02A  DD 82 C0
  bne _label_c034                ; $C02D  D0 05
  dex                            ; $C02F  CA
  bpl _label_c027                ; $C030  10 F5  unconditional branch pattern (complementary branches)
  bmi _label_c077                ; $C032  30 43

_label_c034:
  ldx #$00                       ; $C034  A2 00
  txa                            ; $C036  8A

_label_c037:
  sta z:_var_0000_indexed,X      ; $C037  95 00
  sta a:_var_0700_indexed,X      ; $C039  9D 00 07
  inx                            ; $C03C  E8
  bne _label_c037                ; $C03D  D0 F8
  lda #$32                       ; $C03F  A9 32
  sta z:_var_0015                ; $C041  85 15

_label_c043:
  lda #$32                       ; $C043  A9 32
  jsr _func_d6de                 ; $C045  20 DE D6
  lda #$00                       ; $C048  A9 00
  sta z:_var_0046                ; $C04A  85 46
  jsr _func_c579                 ; $C04C  20 79 C5
  dec z:_var_0015                ; $C04F  C6 15
  bne _label_c043                ; $C051  D0 F0
  ldx #$0E                       ; $C053  A2 0E

_label_c055:
  lda a:_data_c085_indexed,X     ; $C055  BD 85 C0
  sta a:_var_0629_indexed,X      ; $C058  9D 29 06
  dex                            ; $C05B  CA
  bpl _label_c055                ; $C05C  10 F7
  ldx #$04                       ; $C05E  A2 04

_label_c060:
  lda #$00                       ; $C060  A9 00
  sta z:_var_0003_indexed,X      ; $C062  95 03
  dex                            ; $C064  CA
  bpl _label_c060                ; $C065  10 F9
  lda #$00                       ; $C067  A9 00
  jsr _func_d6de                 ; $C069  20 DE D6
  ldx #$02                       ; $C06C  A2 02

_label_c06e:
  lda a:_data_c082_indexed,X     ; $C06E  BD 82 C0
  sta a:_var_7fa,X               ; $C071  9D FA 07
  dex                            ; $C074  CA
  bpl _label_c06e                ; $C075  10 F7

_label_c077:
  lda #$1E                       ; $C077  A9 1E
  sta z:_var_0001                ; $C079  85 01
  lda #$90                       ; $C07B  A9 90
  sta z:_var_0000_indexed        ; $C07D  85 00
  jmp _label_f1d4                ; $C07F  4C D4 F1

_data_c082_indexed:
.byte $48, $41, $4c              ; $C082

_data_c085_indexed:
.byte $00, $00, $00, $01, $00, $00, $00, $00, $01, $00, $00, $00, $05, $02, $00 ; $C085

NMI:
  pha                            ; $C094  48
  txa                            ; $C095  8A
  pha                            ; $C096  48
  tya                            ; $C097  98
  pha                            ; $C098  48
  lda #$00                       ; $C099  A9 00
  sta OAM_ADDR                   ; $C09B  8D 03 20
  lda #$02                       ; $C09E  A9 02
  sta OAM_DMA                    ; $C0A0  8D 14 40
  lda z:_var_0052                ; $C0A3  A5 52
  cmp z:_var_0053                ; $C0A5  C5 53
  beq _label_c0ac                ; $C0A7  F0 03
  jsr _func_c17c                 ; $C0A9  20 7C C1

_label_c0ac:
  jsr _func_d60d                 ; $C0AC  20 0D D6
  jsr _func_d798                 ; $C0AF  20 98 D7
  inc z:_var_0019                ; $C0B2  E6 19
  lda #$20                       ; $C0B4  A9 20
  sta PPU_ADDR                   ; $C0B6  8D 06 20
  lda #$00                       ; $C0B9  A9 00
  sta PPU_ADDR                   ; $C0BB  8D 06 20
  lda #$00                       ; $C0BE  A9 00
  sta PPU_SCROLL                 ; $C0C0  8D 05 20
  sta PPU_SCROLL                 ; $C0C3  8D 05 20
  jsr _func_fff7                 ; $C0C6  20 F7 FF
  lda #$01                       ; $C0C9  A9 01
  sta z:_var_0002_indexed        ; $C0CB  85 02
  lda z:_var_0016                ; $C0CD  A5 16
  beq _label_c0f1                ; $C0CF  F0 20

_label_c0d1:
  lda PPU_STATUS                 ; $C0D1  AD 02 20
  bmi _label_c0d1                ; $C0D4  30 FB
.if .defined(vc)
  ldx #$04
  ldy #$A6
.elseif .defined(pal)
  ldx #$08
  ldy #$10
.else
  ldx #$04
  ldy #$C6
.endif

_label_c0da:
  dey                            ; $C0DA  88
  bne _label_c0da                ; $C0DB  D0 FD
  dex                            ; $C0DD  CA
  bne _label_c0da                ; $C0DE  D0 FA
  lda z:_var_0018                ; $C0E0  A5 18
  ora z:_var_0000_indexed        ; $C0E2  05 00
  sta PPU_CTRL                   ; $C0E4  8D 00 20
  lda z:_var_0017                ; $C0E7  A5 17
  sta PPU_SCROLL                 ; $C0E9  8D 05 20
  lda #$00                       ; $C0EC  A9 00
  sta PPU_SCROLL                 ; $C0EE  8D 05 20

_label_c0f1:
  pla                            ; $C0F1  68
  tay                            ; $C0F2  A8
  pla                            ; $C0F3  68
  tax                            ; $C0F4  AA
  pla                            ; $C0F5  68
  rti                            ; $C0F6  40

IRQ:
  jmp IRQ                        ; $C0F7  4C F7 C0

_func_c0fa:
  lda z:_var_0000_indexed        ; $C0FA  A5 00
  and #$7F                       ; $C0FC  29 7F

_label_c0fe:
  sta PPU_CTRL                   ; $C0FE  8D 00 20
  sta z:_var_0000_indexed        ; $C101  85 00
  rts                            ; $C103  60

_func_c104:
  lda z:_var_0000_indexed        ; $C104  A5 00
  ora #$80                       ; $C106  09 80
  bne _label_c0fe                ; $C108  D0 F4

_func_c10a:
  lda #$00                       ; $C10A  A9 00

_label_c10c:
  pha                            ; $C10C  48
  jsr _func_f465                 ; $C10D  20 65 F4
  pla                            ; $C110  68
  sta PPU_MASK                   ; $C111  8D 01 20
  rts                            ; $C114  60

_func_c115:
  lda z:_var_0001                ; $C115  A5 01
  bne _label_c10c                ; $C117  D0 F3

_func_c119:
  jsr _func_c154                 ; $C119  20 54 C1
  ldy #$00                       ; $C11C  A0 00

_label_c11e:
  lda a:_var_0057_indexed,Y      ; $C11E  B9 57 00
  sta a:_var_0300_indexed,X      ; $C121  9D 00 03
  inx                            ; $C124  E8
  iny                            ; $C125  C8
  cpy z:_var_0056                ; $C126  C4 56
  bne _label_c11e                ; $C128  D0 F4
  stx z:_var_0053                ; $C12A  86 53
  rts                            ; $C12C  60

_func_c12d:
  lda #$57                       ; $C12D  A9 57
  ldy #$00                       ; $C12F  A0 00

_func_c131:
  sta z:_var_0021_indexed        ; $C131  85 21
  sty z:_var_0022                ; $C133  84 22
  txa                            ; $C135  8A
  pha                            ; $C136  48
  ldy #$02                       ; $C137  A0 02
  lda (_var_0021_indexed),Y      ; $C139  B1 21
  clc                            ; $C13B  18
  adc #$03                       ; $C13C  69 03
  sta z:_var_0012                ; $C13E  85 12
  ldx z:_var_0053                ; $C140  A6 53
  ldy #$00                       ; $C142  A0 00

_label_c144:
  lda (_var_0021_indexed),Y      ; $C144  B1 21
  sta a:_var_0300_indexed,X      ; $C146  9D 00 03
  inx                            ; $C149  E8
  iny                            ; $C14A  C8
  cpy z:_var_0012                ; $C14B  C4 12
  bne _label_c144                ; $C14D  D0 F5
  stx z:_var_0053                ; $C14F  86 53
  pla                            ; $C151  68
  tax                            ; $C152  AA
  rts                            ; $C153  60

_func_c154:
  ldx z:_var_0053                ; $C154  A6 53
  lda #$00                       ; $C156  A9 00
  sta z:_var_0012                ; $C158  85 12
  lda z:_var_0055                ; $C15A  A5 55
  asl a                          ; $C15C  0A
  asl a                          ; $C15D  0A
  asl a                          ; $C15E  0A
  asl a                          ; $C15F  0A
  rol z:_var_0012                ; $C160  26 12
  asl a                          ; $C162  0A
  rol z:_var_0012                ; $C163  26 12
  ora z:_var_0054                ; $C165  05 54
  pha                            ; $C167  48
  lda z:_var_0012                ; $C168  A5 12
  ora #$20                       ; $C16A  09 20
  sta a:_var_0300_indexed,X      ; $C16C  9D 00 03
  inx                            ; $C16F  E8
  pla                            ; $C170  68
  sta a:_var_0300_indexed,X      ; $C171  9D 00 03
  inx                            ; $C174  E8
  lda z:_var_0056                ; $C175  A5 56
  sta a:_var_0300_indexed,X      ; $C177  9D 00 03
  inx                            ; $C17A  E8
  rts                            ; $C17B  60

_func_c17c:
  tya                            ; $C17C  98
  pha                            ; $C17D  48
  txa                            ; $C17E  8A
  pha                            ; $C17F  48
  jsr _func_c188                 ; $C180  20 88 C1
  pla                            ; $C183  68
  tax                            ; $C184  AA
  pla                            ; $C185  68
  tay                            ; $C186  A8
  rts                            ; $C187  60

_func_c188:
  ldx z:_var_0052                ; $C188  A6 52
  lda a:_var_0300_indexed,X      ; $C18A  BD 00 03
  inx                            ; $C18D  E8
  sta z:_var_0050                ; $C18E  85 50
  sta PPU_ADDR                   ; $C190  8D 06 20
  lda a:_var_0300_indexed,X      ; $C193  BD 00 03
  inx                            ; $C196  E8
  sta PPU_ADDR                   ; $C197  8D 06 20
  ldy a:_var_0300_indexed,X      ; $C19A  BC 00 03
  inx                            ; $C19D  E8

_label_c19e:
  lda a:_var_0300_indexed,X      ; $C19E  BD 00 03
  inx                            ; $C1A1  E8
  sta PPU_DATA                   ; $C1A2  8D 07 20
  dey                            ; $C1A5  88
  bne _label_c19e                ; $C1A6  D0 F6
  lda z:_var_0050                ; $C1A8  A5 50
  cmp #$3F                       ; $C1AA  C9 3F
  bne _label_c1be                ; $C1AC  D0 10
  lda #$3F                       ; $C1AE  A9 3F
  sta PPU_ADDR                   ; $C1B0  8D 06 20
  lda #$00                       ; $C1B3  A9 00
  sta PPU_ADDR                   ; $C1B5  8D 06 20
  sta PPU_ADDR                   ; $C1B8  8D 06 20
  sta PPU_ADDR                   ; $C1BB  8D 06 20

_label_c1be:
  stx z:_var_0052                ; $C1BE  86 52
  cpx z:_var_0053                ; $C1C0  E4 53
  bne _func_c188                 ; $C1C2  D0 C4
  rts                            ; $C1C4  60

_label_c1c5:
  lda #$20                       ; $C1C5  A9 20
  sta z:_var_00f2                ; $C1C7  85 F2
  jsr _func_c527                 ; $C1C9  20 27 C5
  jsr _func_c539                 ; $C1CC  20 39 C5
  lda #$FF                       ; $C1CF  A9 FF
  sta z:_var_00cd                ; $C1D1  85 CD
.ifndef japan
  lda #$AD                       ; $C1D3  A9 AD
.else
  lda #$A3
.endif
  sta z:_var_0023_indexed        ; $C1D5  85 23
  lda #$C4                       ; $C1D7  A9 C4
  sta z:_var_0024                ; $C1D9  85 24
  lda #$80                       ; $C1DB  A9 80
  sta z:_var_0091_indexed        ; $C1DD  85 91
  sta a:_var_0488                ; $C1DF  8D 88 04
  lda #$70                       ; $C1E2  A9 70
  sta z:_var_009a_indexed        ; $C1E4  85 9A
  jsr _func_cd4a                 ; $C1E6  20 4A CD
  lda #$00                       ; $C1E9  A9 00
  sta z:_var_0041_indexed        ; $C1EB  85 41
  sta z:_var_00c9                ; $C1ED  85 C9
  sta z:_var_00ca                ; $C1EF  85 CA
  sta z:_var_00ba                ; $C1F1  85 BA
  sta z:_var_00c5                ; $C1F3  85 C5
  sta z:_var_00c8                ; $C1F5  85 C8
  jsr _func_f4a5                 ; $C1F7  20 A5 F4
  ldx #$13                       ; $C1FA  A2 13

_label_c1fc:
  lda #$FF                       ; $C1FC  A9 FF
  sta a:_var_0530_indexed,X      ; $C1FE  9D 30 05
  lda #$F0                       ; $C201  A9 F0
  sta a:_var_04a4_indexed,X      ; $C203  9D A4 04
  dex                            ; $C206  CA
  bpl _label_c1fc                ; $C207  10 F3

_label_c209:
  jsr _func_f470                 ; $C209  20 70 F4
  jsr _func_e691                 ; $C20C  20 91 E6
  lda z:_var_00c5                ; $C20F  A5 C5
  bne _label_c216                ; $C211  D0 03
  jsr _func_c6f9                 ; $C213  20 F9 C6

_label_c216:
  lda z:_var_0019                ; $C216  A5 19
  lsr a                          ; $C218  4A
  bcs _label_c21e                ; $C219  B0 03
  jmp _label_c2d0                ; $C21B  4C D0 C2

_label_c21e:
  lda z:_var_00c5                ; $C21E  A5 C5
  beq _label_c227                ; $C220  F0 05
  dec z:_var_00c5                ; $C222  C6 C5
  jmp _label_c2d0                ; $C224  4C D0 C2

_label_c227:
  lda z:_var_0017                ; $C227  A5 17
  bne _label_c231                ; $C229  D0 06
  lda z:_var_0018                ; $C22B  A5 18
  eor #$01                       ; $C22D  49 01
  sta z:_var_0018                ; $C22F  85 18

_label_c231:
  dec z:_var_0017                ; $C231  C6 17
  lda a:_var_0488                ; $C233  AD 88 04
  beq _label_c24d                ; $C236  F0 15
  inc a:_var_0488                ; $C238  EE 88 04
  lda a:_var_0488                ; $C23B  AD 88 04
  cmp #$F0                       ; $C23E  C9 F0
  bcc _label_c247                ; $C240  90 05
  lda #$00                       ; $C242  A9 00
  sta a:_var_0488                ; $C244  8D 88 04

_label_c247:
  lda z:_var_00bd_indexed        ; $C247  A5 BD
  beq _label_c24d                ; $C249  F0 02
  inc z:_var_0091_indexed        ; $C24B  E6 91

_label_c24d:
  ldx #$07                       ; $C24D  A2 07

_label_c24f:
  lda a:_var_055d_indexed,X      ; $C24F  BD 5D 05
  bmi _label_c26d                ; $C252  30 19
  inc a:_var_0567_indexed,X      ; $C254  FE 67 05
  lda a:_var_0567_indexed,X      ; $C257  BD 67 05
  cmp #$F8                       ; $C25A  C9 F8
  bne _label_c26d                ; $C25C  D0 0F
  lda #$FF                       ; $C25E  A9 FF
  sta a:_var_055d_indexed,X      ; $C260  9D 5D 05
  lda #$F0                       ; $C263  A9 F0
  sta a:_var_057b_indexed,X      ; $C265  9D 7B 05
  lda #$00                       ; $C268  A9 00
  sta a:_var_05ce                ; $C26A  8D CE 05

_label_c26d:
  dex                            ; $C26D  CA
  bpl _label_c24f                ; $C26E  10 DF
  ldx #$13                       ; $C270  A2 13

_label_c272:
  lda a:_var_0530_indexed,X      ; $C272  BD 30 05
  bmi _label_c289                ; $C275  30 12
  inc a:_var_0490_indexed,X      ; $C277  FE 90 04
  lda a:_var_0490_indexed,X      ; $C27A  BD 90 04
  cmp #$F8                       ; $C27D  C9 F8
  bcc _label_c289                ; $C27F  90 08
  lda #$F0                       ; $C281  A9 F0
  sta a:_var_04a4_indexed,X      ; $C283  9D A4 04
  sta a:_var_0530_indexed,X      ; $C286  9D 30 05

_label_c289:
  dex                            ; $C289  CA
  bpl _label_c272                ; $C28A  10 E6
  lda z:_var_0017                ; $C28C  A5 17
  and #$07                       ; $C28E  29 07
  bne _label_c2d0                ; $C290  D0 3E
  ldx z:_var_0088_indexed        ; $C292  A6 88
  dex                            ; $C294  CA
  bmi _label_c2d0                ; $C295  30 39
  lda #$00                       ; $C297  A9 00
  sta z:_var_003e                ; $C299  85 3E
  lda #$01                       ; $C29B  A9 01
  jsr _func_d6de                 ; $C29D  20 DE D6
  inc z:_var_00c9                ; $C2A0  E6 C9
  lda z:_var_00c9                ; $C2A2  A5 C9
  and #$1F                       ; $C2A4  29 1F
  bne _label_c2bc                ; $C2A6  D0 14
  inc z:_var_00ca                ; $C2A8  E6 CA
  lda z:_var_00ca                ; $C2AA  A5 CA
  cmp #$0A                       ; $C2AC  C9 0A
  bne _label_c2bc                ; $C2AE  D0 0C
  lda #$02                       ; $C2B0  A9 02
  sta z:_var_00ca                ; $C2B2  85 CA
  ldy z:_var_00ba                ; $C2B4  A4 BA
  iny                            ; $C2B6  C8
  tya                            ; $C2B7  98
  and #$03                       ; $C2B8  29 03
  sta z:_var_00ba                ; $C2BA  85 BA

_label_c2bc:
  ldx z:_var_00ca                ; $C2BC  A6 CA
  lda a:_data_c3bf_indexed,X     ; $C2BE  BD BF C3
  asl a                          ; $C2C1  0A
  tay                            ; $C2C2  A8
  lda a:_data_c3b5_indexed,Y     ; $C2C3  B9 B5 C3
  sta z:_var_0025_indexed        ; $C2C6  85 25
  lda a:_data_c3b5_indexed+1,Y   ; $C2C8  B9 B6 C3
  sta z:_var_0026                ; $C2CB  85 26
  jsr _jump_engine_c3b2          ; $C2CD  20 B2 C3

_label_c2d0:
  ldx #$07                       ; $C2D0  A2 07

_label_c2d2:
  lda a:_var_055d_indexed,X      ; $C2D2  BD 5D 05
  bmi _label_c2ef                ; $C2D5  30 18
  jsr _func_cece                 ; $C2D7  20 CE CE
  lda a:_var_05cd_indexed        ; $C2DA  AD CD 05
  beq _label_c2ef                ; $C2DD  F0 10
  dec a:_var_05cd_indexed        ; $C2DF  CE CD 05
  inc a:_var_05ce                ; $C2E2  EE CE 05
  txa                            ; $C2E5  8A
  pha                            ; $C2E6  48
  lda a:_var_0559                ; $C2E7  AD 59 05
  jsr _func_d6de                 ; $C2EA  20 DE D6
  pla                            ; $C2ED  68
  tax                            ; $C2EE  AA

_label_c2ef:
  jsr _func_ce2f                 ; $C2EF  20 2F CE
  dex                            ; $C2F2  CA
  bpl _label_c2d2                ; $C2F3  10 DD
  ldx #$13                       ; $C2F5  A2 13

_label_c2f7:
  lda a:_var_0530_indexed,X      ; $C2F7  BD 30 05
  bmi _label_c317                ; $C2FA  30 1B
  lda z:_var_00c5                ; $C2FC  A5 C5
  bne _label_c314                ; $C2FE  D0 14
  jsr _func_c9b6                 ; $C300  20 B6 C9
  lda a:_var_04a4_indexed,X      ; $C303  BD A4 04
  cmp #$02                       ; $C306  C9 02
  bcs _label_c30d                ; $C308  B0 03
  jsr _func_ca4f                 ; $C30A  20 4F CA

_label_c30d:
  cmp #$D8                       ; $C30D  C9 D8
  bcc _label_c314                ; $C30F  90 03
  jsr _func_ca4f                 ; $C311  20 4F CA

_label_c314:
  jsr _func_cb1c                 ; $C314  20 1C CB

_label_c317:
  lda z:_var_0019                ; $C317  A5 19
  and #$07                       ; $C319  29 07
  lsr a                          ; $C31B  4A
  tay                            ; $C31C  A8
  lda a:_data_c9dd_indexed,Y     ; $C31D  B9 DD C9
  pha                            ; $C320  48
  lda z:_var_0019                ; $C321  A5 19
  lsr a                          ; $C323  4A
  txa                            ; $C324  8A
  bcc _label_c32d                ; $C325  90 06
  sta z:_var_0012                ; $C327  85 12
  lda #$13                       ; $C329  A9 13
  sbc z:_var_0012                ; $C32B  E5 12

_label_c32d:
  asl a                          ; $C32D  0A
  asl a                          ; $C32E  0A
  tay                            ; $C32F  A8
  pla                            ; $C330  68
  sta a:_var_02b1_indexed,Y      ; $C331  99 B1 02
  lda a:_var_04a4_indexed,X      ; $C334  BD A4 04
  sta a:_var_02b0_indexed,Y      ; $C337  99 B0 02
  lda a:_var_0490_indexed,X      ; $C33A  BD 90 04
  sta a:_var_02b3_indexed,Y      ; $C33D  99 B3 02
  lda #$00                       ; $C340  A9 00
  sta a:_var_02b2_indexed,Y      ; $C342  99 B2 02
  dex                            ; $C345  CA
  bpl _label_c2f7                ; $C346  10 AF
  lda a:_var_05ce                ; $C348  AD CE 05
  cmp #$14                       ; $C34B  C9 14
  bcc _label_c36f                ; $C34D  90 20
  inc z:_var_0047                ; $C34F  E6 47
  lda #$00                       ; $C351  A9 00
  jsr _func_d6de                 ; $C353  20 DE D6
  dec z:_var_0047                ; $C356  C6 47
  lda #$10                       ; $C358  A9 10
  sta z:_var_00f2                ; $C35A  85 F2
  inc z:_var_00c8                ; $C35C  E6 C8
  jsr _func_d3ed                 ; $C35E  20 ED D3
  jsr _func_c527                 ; $C361  20 27 C5
  dec z:_var_00c8                ; $C364  C6 C8
  ldx #$64                       ; $C366  A2 64
  jsr _func_f45e                 ; $C368  20 5E F4
  lda #$20                       ; $C36B  A9 20
  sta z:_var_00f2                ; $C36D  85 F2

_label_c36f:
  ldx #$F0                       ; $C36F  A2 F0
  lda a:_var_0488                ; $C371  AD 88 04
  beq _label_c378                ; $C374  F0 02
  ldx #$88                       ; $C376  A2 88

_label_c378:
  stx a:_var_0200_indexed        ; $C378  8E 00 02
  stx a:_var_0204_indexed        ; $C37B  8E 04 02
  sta a:_var_0203_indexed        ; $C37E  8D 03 02
  clc                            ; $C381  18
  adc #$08                       ; $C382  69 08
  sta a:_var_0207_indexed        ; $C384  8D 07 02
  lda z:_var_0019                ; $C387  A5 19
  and #$03                       ; $C389  29 03
  sta a:_var_0202_indexed        ; $C38B  8D 02 02
  sta a:_var_0206_indexed        ; $C38E  8D 06 02
  ldx #$E3                       ; $C391  A2 E3
  stx a:_var_0201_indexed        ; $C393  8E 01 02
  inx                            ; $C396  E8
  stx a:_var_0205_indexed        ; $C397  8E 05 02
  lda z:_var_0088_indexed        ; $C39A  A5 88
  bmi _label_c3a1                ; $C39C  30 03
  jmp _label_c209                ; $C39E  4C 09 C2

_label_c3a1:
  jsr _func_c579                 ; $C3A1  20 79 C5
  lda #$01                       ; $C3A4  A9 01
  sta z:_var_00f0_indexed        ; $C3A6  85 F0
  jsr _func_f465                 ; $C3A8  20 65 F4
  lda #$02                       ; $C3AB  A9 02
  sta z:_var_00f2                ; $C3AD  85 F2
  jmp _label_f36a                ; $C3AF  4C 6A F3

_jump_engine_c3b2:               ; jump engine detected
  jmp (_var_0025_indexed)        ; $C3B2  6C 25 00

_data_c3b5_indexed:
.addr _func_c3c9
.addr _func_c3f7
.addr _func_c43e
.addr _func_c45f
.addr _func_c45e

_data_c3bf_indexed:
.byte $00, $00, $02, $02, $02, $02, $02, $04, $03, $01

_func_c3c9: ; C3C9
  ldy #$00
  lda ($23), y
  inc $23
  bne _label_c3d3
  inc $24
_label_c3d3:
  tax
  beq _label_c3f6
  asl a
  asl a
  asl a
  sta $15
  lda #$00
  sta $14
  txa
  and #$c0
  cmp #$80
  bne _label_c3ec
  jsr _func_c46b
  jmp _func_c3c9
_label_c3ec:
  cmp #$00
  bne _label_c3f6
  jsr _func_c486
  jmp _func_c3c9
_label_c3f6:
  rts


_func_c3f7: ; c3f7
  jsr _func_f1b3
  and #$7f
  cmp #$04
  bcc _label_c40c
  cmp #$18
  bcs _label_c40c
  asl a
  asl a
  asl a
  sta $15
  jsr _func_c46b
_label_c40c:
  jsr _func_f1b3
  and #$3f
  cmp #$02
  bcc _label_c439
  cmp #$18
  bcs _label_c439
  asl a
  asl a
  asl a
  sta $15
  jsr _func_f1b3
  and #$3f
  ldx $ba
  adc _data_c43a, x
  sta $14
  jsr _func_c486
  jsr _func_f1b3
  lsr a
  bcc _label_c40c
  jsr _func_ca4f
  jmp _label_c40c
_label_c439:
  rts

_data_c43a:
  .byte $20, $30, $40, $60

_func_c43e: ; c43e
  jsr _func_f1b3
  and #$cf
  bne _func_c3f7
  ldy $89
  iny
  bne _func_c3f7
  lda #$e6
  sta $9b
  lda $1b
  and #$7f
  adc #$40
  sta $92
  lda #$80
  sta $89
  lda #$00
  sta $80
_func_c45e:
  rts

_func_c45f: ; c45f
  jsr _label_c40c
  jsr _func_f1b3
  and #$7f
  sta _var_0508_indexed, x
  rts

_func_c46b:
  ldx #$07
_label_c46d:
  lda _var_055d_indexed, x
  bmi _func_c476
  dex
  bpl _label_c46d
  rts

_func_c476:
  lda #$01
  sta _var_055d_indexed, x
  lda #$00
  sta _var_0567_indexed, x
  lda $15
  sta _var_057b_indexed, x
  rts

_func_c486:
  ldx #$13
_label_c488:
  lda _var_0530_indexed, x
  bmi _func_c491
  dex
  bpl _label_c488
  rts

_func_c491:
  lda #$00
  sta _var_0530_indexed, x
  sta _var_0490_indexed, x
  sta _var_04f4_indexed, x
  sta _var_0508_indexed, x
  sta _var_04e0_indexed, x
  lda $14
  sta _var_051c_indexed, x
  lda $15
  sta _var_04a4_indexed, x
  rts

.byte $00, $00, $09, $00, $08, $8C, $00, $07, $18, $00, $18, $00, $19, $00, $1A, $00
.byte $84, $94, $1A, $00, $1A, $00, $1A, $00, $0B, $12, $00, $0C, $13, $00, $0D, $14
.byte $00, $14, $00, $00, $90, $00, $07, $00, $07, $8C, $96, $00, $08, $00, $09, $00
.byte $00, $18, $00, $17, $00, $16, $00, $00, $00, $00, $00, $00, $8A, $90, $00, $00
.byte $00, $08, $00, $09, $98, $00, $0A, $00, $00, $00, $86, $8A, $15, $00, $14, $00
.byte $8E, $13, $00, $00, $03, $0D, $00, $0D, $0E, $00, $0C, $0D, $00, $0D, $19, $00
.byte $86, $92, $00, $00, $98, $00, $00, $0A, $12, $00, $09, $13, $00, $08, $14, $00
.byte $07, $15, $00, $07, $16, $00, $07, $00, $00, $00

_func_c527:
  jsr _func_d0e2                 ; $C527  20 E2 D0
  asl a:_var_0559                ; $C52A  0E 59 05
  lda a:_var_0559                ; $C52D  AD 59 05
  asl a                          ; $C530  0A
  asl a                          ; $C531  0A
  adc a:_var_0559                ; $C532  6D 59 05
  sta a:_var_0559                ; $C535  8D 59 05
  rts                            ; $C538  60

_func_c539:
  lda #$00                       ; $C539  A9 00
  sta z:_var_0012                ; $C53B  85 12

_label_c53d:
  lda z:_var_0012                ; $C53D  A5 12
  asl a                          ; $C53F  0A
  asl a                          ; $C540  0A
  adc z:_var_0012                ; $C541  65 12
  sta z:_var_001d_indexed        ; $C543  85 1D
  lda #$07                       ; $C545  A9 07
  sta z:_var_001e                ; $C547  85 1E
  ldy #$04                       ; $C549  A0 04

_label_c54b:
  lda (_var_001d_indexed),Y      ; $C54B  B1 1D
  cmp a:_var_0003_indexed,Y      ; $C54D  D9 03 00
  bcc _label_c563                ; $C550  90 11
  bne _label_c559                ; $C552  D0 05
  dey                            ; $C554  88
  bpl _label_c54b                ; $C555  10 F4  unconditional branch pattern (complementary branches)
  bmi _label_c563                ; $C557  30 0A

_label_c559:
  inc z:_var_0012                ; $C559  E6 12
  lda z:_var_0012                ; $C55B  A5 12
  cmp #$32                       ; $C55D  C9 32
  bne _label_c53d                ; $C55F  D0 DC
  dec z:_var_0012                ; $C561  C6 12

_label_c563:
  inc z:_var_0012                ; $C563  E6 12
  lda z:_var_0012                ; $C565  A5 12
  pha                            ; $C567  48
  sta z:_var_0043                ; $C568  85 43
  ldy #$0A                       ; $C56A  A0 0A
  jsr _func_d77c                 ; $C56C  20 7C D7
  sta z:_var_004a                ; $C56F  85 4A
  lda z:_var_0043                ; $C571  A5 43
  sta z:_var_0049                ; $C573  85 49
  pla                            ; $C575  68
  sta z:_var_0012                ; $C576  85 12
  rts                            ; $C578  60

_func_c579:
  jsr _func_c539                 ; $C579  20 39 C5
  dec z:_var_0012                ; $C57C  C6 12
  lda #$31                       ; $C57E  A9 31
  sec                            ; $C580  38
  sbc z:_var_0012                ; $C581  E5 12
  sta z:_var_0013                ; $C583  85 13
  asl a                          ; $C585  0A
  asl a                          ; $C586  0A
  adc z:_var_0013                ; $C587  65 13
  tay                            ; $C589  A8
  lda z:_var_0012                ; $C58A  A5 12
  asl a                          ; $C58C  0A
  asl a                          ; $C58D  0A
  adc z:_var_0012                ; $C58E  65 12
  sta z:_var_001d_indexed        ; $C590  85 1D
  clc                            ; $C592  18
  adc #$05                       ; $C593  69 05
  sta z:_var_001f_indexed        ; $C595  85 1F
  lda #$07                       ; $C597  A9 07
  sta z:_var_001e                ; $C599  85 1E
  sta z:_var_0020                ; $C59B  85 20
  tya                            ; $C59D  98
  beq _label_c5ac                ; $C59E  F0 0C
  dey                            ; $C5A0  88

_label_c5a1:
  lda (_var_001d_indexed),Y      ; $C5A1  B1 1D
  sta (_var_001f_indexed),Y      ; $C5A3  91 1F
  dey                            ; $C5A5  88
  bne _label_c5a1                ; $C5A6  D0 F9
  lda (_var_001d_indexed),Y      ; $C5A8  B1 1D
  sta (_var_001f_indexed),Y      ; $C5AA  91 1F

_label_c5ac:
  ldy #$04                       ; $C5AC  A0 04

_label_c5ae:
  lda a:_var_0003_indexed,Y      ; $C5AE  B9 03 00
  sta (_var_001d_indexed),Y      ; $C5B1  91 1D
  dey                            ; $C5B3  88
  bpl _label_c5ae                ; $C5B4  10 F8
  rts                            ; $C5B6  60

_data_c5b7_indexed:
.byte $01, $02, $03, $03         ; $C5B7

_data_c5bb_indexed:
.byte $02, $01, $ff, $03, $04, $05, $06, $ff ; $C5BB

_label_c5c3:
  lda a:_var_048d                ; $C5C3  AD 8D 04
  lsr a                          ; $C5C6  4A
  lsr a                          ; $C5C7  4A
  lsr a                          ; $C5C8  4A
  tax                            ; $C5C9  AA
  lda a:_var_048a                ; $C5CA  AD 8A 04
  bne _label_c5d5                ; $C5CD  D0 06
  lda a:_data_c5b7_indexed,X     ; $C5CF  BD B7 C5
  jmp _label_c5d8                ; $C5D2  4C D8 C5

_label_c5d5:
  lda a:_data_c5bb_indexed,X     ; $C5D5  BD BB C5

_label_c5d8:
  sta z:_var_0087                ; $C5D8  85 87
  ldx #$08                       ; $C5DA  A2 08
  jsr _func_e3a4                 ; $C5DC  20 A4 E3
  lda a:_var_048c                ; $C5DF  AD 8C 04
  beq _label_c613                ; $C5E2  F0 2F
  ldx a:_var_048b                ; $C5E4  AE 8B 04
  lda a:_var_048d                ; $C5E7  AD 8D 04
  cmp #$20                       ; $C5EA  C9 20
  bne _label_c5f4                ; $C5EC  D0 06
  lda #$FF                       ; $C5EE  A9 FF
  sta z:_var_0088_indexed,X      ; $C5F0  95 88
  bmi _label_c610                ; $C5F2  30 1C

_label_c5f4:
  bcs _label_c613                ; $C5F4  B0 1D
  lda a:_var_0450                ; $C5F6  AD 50 04
  bne _label_c602                ; $C5F9  D0 07
  lda z:_var_0099                ; $C5FB  A5 99
  clc                            ; $C5FD  18
  adc #$04                       ; $C5FE  69 04
  bne _label_c607                ; $C600  D0 05

_label_c602:
  lda z:_var_0099                ; $C602  A5 99
  sec                            ; $C604  38
  sbc #$04                       ; $C605  E9 04

_label_c607:
  sta z:_var_0091_indexed,X      ; $C607  95 91
  lda z:_var_00a2                ; $C609  A5 A2
  sec                            ; $C60B  38
  sbc #$0A                       ; $C60C  E9 0A
  sta z:_var_009a_indexed,X      ; $C60E  95 9A

_label_c610:
  jsr _func_e3a4                 ; $C610  20 A4 E3

_label_c613:
  rts                            ; $C613  60

_func_c614:
  lda #$FF                       ; $C614  A9 FF
  sta a:_var_048b                ; $C616  8D 8B 04
  ldx #$07                       ; $C619  A2 07

_label_c61b:
  lda z:_var_0088_indexed,X      ; $C61B  B5 88
  bmi _label_c62b                ; $C61D  30 0C
  lda z:_var_009a_indexed,X      ; $C61F  B5 9A
  cmp #$B4                       ; $C621  C9 B4
  bcc _label_c62b                ; $C623  90 06
  lda z:_var_0091_indexed,X      ; $C625  B5 91
  cmp z:_var_0099                ; $C627  C5 99
  beq _label_c62f                ; $C629  F0 04

_label_c62b:
  dex                            ; $C62B  CA
  bpl _label_c61b                ; $C62C  10 ED
  rts                            ; $C62E  60

_label_c62f:
  stx a:_var_048b                ; $C62F  8E 8B 04
  lda a:_var_0448_indexed,X      ; $C632  BD 48 04
  sta a:_var_0450                ; $C635  8D 50 04
  lda #$00                       ; $C638  A9 00
  sta a:_var_048a                ; $C63A  8D 8A 04
  sta a:_var_048d                ; $C63D  8D 8D 04
  sta a:_var_048c                ; $C640  8D 8C 04
  sta a:_var_0489                ; $C643  8D 89 04
  lda #$DC                       ; $C646  A9 DC
  sta z:_var_00a2                ; $C648  85 A2
  rts                            ; $C64A  60

_func_c64b:
  inc z:_var_0099                ; $C64B  E6 99
  lda z:_var_0099                ; $C64D  A5 99
  cmp #$B1                       ; $C64F  C9 B1
  bcc _label_c657                ; $C651  90 04
  lda #$40                       ; $C653  A9 40
  sta z:_var_0099                ; $C655  85 99

_label_c657:
  rts                            ; $C657  60

_func_c658:
  lda a:_var_0489                ; $C658  AD 89 04
  bne _label_c66f                ; $C65B  D0 12
  dec z:_var_00a2                ; $C65D  C6 A2
  lda z:_var_00a2                ; $C65F  A5 A2
  cmp #$C4                       ; $C661  C9 C4
  bcs _label_c671                ; $C663  B0 0C
  inc z:_var_00a2                ; $C665  E6 A2
  inc a:_var_048a                ; $C667  EE 8A 04
  inc a:_var_0489                ; $C66A  EE 89 04
  bne _label_c671                ; $C66D  D0 02

_label_c66f:
  inc z:_var_00a2                ; $C66F  E6 A2

_label_c671:
  inc a:_var_048d                ; $C671  EE 8D 04
  lda a:_var_048d                ; $C674  AD 8D 04
  cmp #$18                       ; $C677  C9 18
  bne _label_c6a3                ; $C679  D0 28
  ldx a:_var_048b                ; $C67B  AE 8B 04
  lda z:_var_0088_indexed,X      ; $C67E  B5 88
  bmi _label_c6a3                ; $C680  30 21
  lda z:_var_009a_indexed,X      ; $C682  B5 9A
  clc                            ; $C684  18
  adc #$10                       ; $C685  69 10
  cmp z:_var_00a2                ; $C687  C5 A2
  bcc _label_c6a3                ; $C689  90 18
  ldy a:_var_0451_indexed,X      ; $C68B  BC 51 04
  lda a:_data_c6b8_indexed,Y     ; $C68E  B9 B8 C6
  sta a:_var_0451_indexed,X      ; $C691  9D 51 04
  lda #$00                       ; $C694  A9 00
  sta z:_var_007f_indexed,X      ; $C696  95 7F
  sta z:_var_0088_indexed,X      ; $C698  95 88
  lda z:_var_00f2                ; $C69A  A5 F2
  ora #$40                       ; $C69C  09 40
  sta z:_var_00f2                ; $C69E  85 F2
  inc a:_var_048c                ; $C6A0  EE 8C 04

_label_c6a3:
  lda a:_var_048a                ; $C6A3  AD 8A 04
  beq _label_c6b7                ; $C6A6  F0 0F
  lda a:_var_048d                ; $C6A8  AD 8D 04
  cmp #$28                       ; $C6AB  C9 28
  beq _label_c6b3                ; $C6AD  F0 04
  cmp #$30                       ; $C6AF  C9 30
  bne _label_c6b7                ; $C6B1  D0 04

_label_c6b3:
  lda #$CC                       ; $C6B3  A9 CC
  sta z:_var_00a2                ; $C6B5  85 A2

_label_c6b7:
  rts                            ; $C6B7  60

_data_c6b8_indexed:
.byte $08, $09, $0a, $0b, $08, $09, $0a, $0b, $08, $09, $0a, $0b ; $C6B8

_func_c6c4:
  lda a:_var_0489                ; $C6C4  AD 89 04
  bne _label_c6f8                ; $C6C7  D0 2F
  ldx a:_var_048b                ; $C6C9  AE 8B 04
  lda z:_var_0088_indexed,X      ; $C6CC  B5 88
  bmi _label_c6e0                ; $C6CE  30 10
  lda z:_var_009a_indexed,X      ; $C6D0  B5 9A
  cmp #$B4                       ; $C6D2  C9 B4
  bcc _label_c6e0                ; $C6D4  90 0A
  lda z:_var_0091_indexed,X      ; $C6D6  B5 91
  cmp #$40                       ; $C6D8  C9 40
  bcc _label_c6e0                ; $C6DA  90 04
  cmp #$B1                       ; $C6DC  C9 B1
  bcc _label_c6ee                ; $C6DE  90 0E

_label_c6e0:
  lda #$30                       ; $C6E0  A9 30
  sec                            ; $C6E2  38
  sbc a:_var_048d                ; $C6E3  ED 8D 04
  sta a:_var_048d                ; $C6E6  8D 8D 04
  inc a:_var_0489                ; $C6E9  EE 89 04
  bne _label_c6f8                ; $C6EC  D0 0A

_label_c6ee:
  lda z:_var_0091_indexed,X      ; $C6EE  B5 91
  sta z:_var_0099                ; $C6F0  85 99
  lda a:_var_0448_indexed,X      ; $C6F2  BD 48 04
  sta a:_var_0450                ; $C6F5  8D 50 04

_label_c6f8:
  rts                            ; $C6F8  60

_func_c6f9:
  lda z:_var_0087                ; $C6F9  A5 87
  bpl _label_c70d                ; $C6FB  10 10
  jsr _func_c64b                 ; $C6FD  20 4B C6
  jsr _func_c614                 ; $C700  20 14 C6
  lda a:_var_048b                ; $C703  AD 8B 04
  bpl _label_c709                ; $C706  10 01
  rts                            ; $C708  60

_label_c709:
  lda #$40                       ; $C709  A9 40
  sta z:_var_00f3                ; $C70B  85 F3

_label_c70d:
  jsr _func_c6c4                 ; $C70D  20 C4 C6
  jsr _func_c658                 ; $C710  20 58 C6
  jmp _label_c5c3                ; $C713  4C C3 C5

_func_c716:
  ldx #$01                       ; $C716  A2 01

_label_c718:
  lda #$FF                       ; $C718  A9 FF
  sta a:_var_0530_indexed,X      ; $C71A  9D 30 05
  sta a:_var_0544_indexed,X      ; $C71D  9D 44 05
  dex                            ; $C720  CA
  bpl _label_c718                ; $C721  10 F5
  jsr _func_c77a                 ; $C723  20 7A C7

_func_c726:
  ldx z:_var_003c                ; $C726  A6 3C
  cpx #$18                       ; $C728  E0 18
  bcc _label_c72e                ; $C72A  90 02
  ldx #$18                       ; $C72C  A2 18

_label_c72e:
  lda a:_data_c748_indexed,X     ; $C72E  BD 48 C7
  sta z:_var_00ba                ; $C731  85 BA
  lda a:_data_c761_indexed,X     ; $C733  BD 61 C7
  sta z:_var_00b8                ; $C736  85 B8
  lda #$F0                       ; $C738  A9 F0
  sta a:_var_02e0_indexed        ; $C73A  8D E0 02
  sta a:_var_02e4                ; $C73D  8D E4 02
  sta a:_var_02e8                ; $C740  8D E8 02
  lda #$03                       ; $C743  A9 03
  jmp _func_c856                 ; $C745  4C 56 C8

_data_c748_indexed:
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01 ; $C748
.byte $02, $01, $01, $01, $01, $01, $01, $01, $01 ; $C758

_data_c761_indexed:
.byte $0f, $0f, $0c, $0c, $0c, $0c, $0a, $0a, $0a, $0a, $0c, $0c, $0a, $0a, $0a, $08 ; $C761
.byte $0a, $0a, $08, $08, $08, $08, $08, $08, $05 ; $C771

_func_c77a:
  lda z:_var_00a3                ; $C77A  A5 A3
  bpl _label_c781                ; $C77C  10 03

_label_c77e:
  sta z:_var_00a4                ; $C77E  85 A4
  rts                            ; $C780  60

_label_c781:
  jsr _func_f1b3                 ; $C781  20 B3 F1

_label_c784:
  cmp z:_var_00a3                ; $C784  C5 A3
  bcc _label_c77e                ; $C786  90 F6
  beq _label_c77e                ; $C788  F0 F4
  clc                            ; $C78A  18
  sbc z:_var_00a3                ; $C78B  E5 A3
  jmp _label_c784                ; $C78D  4C 84 C7

_func_c790:
  lda z:_var_0019                ; $C790  A5 19
  and #$7F                       ; $C792  29 7F
  beq _label_c797                ; $C794  F0 01

_label_c796:
  rts                            ; $C796  60

_label_c797:
  dec z:_var_00b8                ; $C797  C6 B8
  bne _label_c796                ; $C799  D0 FB
  ldx #$00                       ; $C79B  A2 00
  lda a:_var_0530_indexed,X      ; $C79D  BD 30 05
  bmi _label_c7ad                ; $C7A0  30 0B
  inx                            ; $C7A2  E8
  lda a:_var_0530_indexed,X      ; $C7A3  BD 30 05
  bmi _label_c7ad                ; $C7A6  30 05
  lda #$01                       ; $C7A8  A9 01
  sta z:_var_00b8                ; $C7AA  85 B8
  rts                            ; $C7AC  60

_label_c7ad:
  ldy z:_var_00a4                ; $C7AD  A4 A4
  sty z:_var_00a5                ; $C7AF  84 A5
  bpl _label_c7b4                ; $C7B1  10 01
  rts                            ; $C7B3  60

_label_c7b4:
  lda #$80                       ; $C7B4  A9 80
  sta a:_var_04b8_indexed,X      ; $C7B6  9D B8 04
  sta a:_var_04cc_indexed,X      ; $C7B9  9D CC 04
  lda #$00                       ; $C7BC  A9 00
  sta a:_var_0530_indexed,X      ; $C7BE  9D 30 05
  lda a:_var_00b2_indexed,Y      ; $C7C1  B9 B2 00
  sta a:_var_0490_indexed,X      ; $C7C4  9D 90 04
  lda a:_var_00b5_indexed,Y      ; $C7C7  B9 B5 00
  sta a:_var_04a4_indexed,X      ; $C7CA  9D A4 04
  ldy z:_var_00ba                ; $C7CD  A4 BA
  jsr _func_f1b3                 ; $C7CF  20 B3 F1
  and #$1F                       ; $C7D2  29 1F
  adc a:_data_c89f_indexed,Y     ; $C7D4  79 9F C8
  sta a:_var_0508_indexed,X      ; $C7D7  9D 08 05
  lda a:_data_c8ab_indexed,Y     ; $C7DA  B9 AB C8
  sta a:_var_051c_indexed,X      ; $C7DD  9D 1C 05
  lda a:_data_c8a5_indexed,Y     ; $C7E0  B9 A5 C8
  sta a:_var_04e0_indexed,X      ; $C7E3  9D E0 04
  lda a:_data_c8b1_indexed,Y     ; $C7E6  B9 B1 C8
  sta a:_var_04f4_indexed,X      ; $C7E9  9D F4 04
  jsr _func_f1b3                 ; $C7EC  20 B3 F1
  and #$03                       ; $C7EF  29 03
  sta a:_var_0544_indexed,X      ; $C7F1  9D 44 05
  tay                            ; $C7F4  A8
  lda a:_data_c897_indexed,Y     ; $C7F5  B9 97 C8
  clc                            ; $C7F8  18
  adc a:_var_0490_indexed,X      ; $C7F9  7D 90 04
  sta a:_var_0490_indexed,X      ; $C7FC  9D 90 04
  lda a:_data_c89b_indexed,Y     ; $C7FF  B9 9B C8
  clc                            ; $C802  18
  adc a:_var_04a4_indexed,X      ; $C803  7D A4 04
  sta a:_var_04a4_indexed,X      ; $C806  9D A4 04
  lda a:_data_c88f_indexed,Y     ; $C809  B9 8F C8
  beq _label_c811                ; $C80C  F0 03
  jsr _func_ca3d                 ; $C80E  20 3D CA

_label_c811:
  lda a:_data_c893_indexed,Y     ; $C811  B9 93 C8
  beq _label_c819                ; $C814  F0 03
  jsr _func_ca55                 ; $C816  20 55 CA

_label_c819:
  lda z:_var_00ba                ; $C819  A5 BA
  cmp #$05                       ; $C81B  C9 05
  bcs _label_c821                ; $C81D  B0 02
  inc z:_var_00ba                ; $C81F  E6 BA

_label_c821:
  lda #$06                       ; $C821  A9 06
  sec                            ; $C823  38
  sbc z:_var_00ba                ; $C824  E5 BA
  sta z:_var_00b8                ; $C826  85 B8
  lda z:_var_00f0_indexed        ; $C828  A5 F0
  ora #$04                       ; $C82A  09 04
  sta z:_var_00f0_indexed        ; $C82C  85 F0
  jmp _func_c77a                 ; $C82E  4C 7A C7

_func_c831:
  lda z:_var_00b8                ; $C831  A5 B8
  cmp #$01                       ; $C833  C9 01
  bne _label_c88a                ; $C835  D0 53
  lda a:_var_0530_indexed        ; $C837  AD 30 05
  bmi _label_c846                ; $C83A  30 0A
  lda a:$0531                    ; $C83C  AD 31 05
  bmi _label_c846                ; $C83F  30 05
  lda #$02                       ; $C841  A9 02
  sta z:_var_00b8                ; $C843  85 B8
  rts                            ; $C845  60

_label_c846:
  lda z:_var_0019                ; $C846  A5 19
  and #$7F                       ; $C848  29 7F
  cmp #$40                       ; $C84A  C9 40
  bcc _label_c88a                ; $C84C  90 3C
  bne _func_c856                 ; $C84E  D0 06
  lda z:_var_00f1                ; $C850  A5 F1
  ora #$08                       ; $C852  09 08
  sta z:_var_00f1                ; $C854  85 F1

_func_c856:
  and #$03                       ; $C856  29 03
  tax                            ; $C858  AA
  lda a:_data_c88b_indexed,X     ; $C859  BD 8B C8
  sta z:_var_005a_indexed        ; $C85C  85 5A
  ldx z:_var_00a4                ; $C85E  A6 A4
  bmi _label_c88a                ; $C860  30 28
  lda #$23                       ; $C862  A9 23
  sta z:_var_0057_indexed        ; $C864  85 57
  lda z:_var_00a6_indexed,X      ; $C866  B5 A6
  sta z:_var_0058_indexed        ; $C868  85 58
  lda #$01                       ; $C86A  A9 01
  sta z:_var_0059_indexed        ; $C86C  85 59
  jsr _func_c883                 ; $C86E  20 83 C8
  lda z:_var_00a9_indexed,X      ; $C871  B5 A9
  sta z:_var_0058_indexed        ; $C873  85 58
  jsr _func_c883                 ; $C875  20 83 C8
  lda z:_var_00ac_indexed,X      ; $C878  B5 AC
  sta z:_var_0058_indexed        ; $C87A  85 58
  jsr _func_c883                 ; $C87C  20 83 C8
  lda z:_var_00af_indexed,X      ; $C87F  B5 AF
  sta z:_var_0058_indexed        ; $C881  85 58

_func_c883:
  lda #$57                       ; $C883  A9 57
  ldy #$00                       ; $C885  A0 00
  jmp _func_c131                 ; $C887  4C 31 C1

_label_c88a:
  rts                            ; $C88A  60

_data_c88b_indexed:
.byte $55, $ff, $00, $ff         ; $C88B

_data_c88f_indexed:
.byte $00, $00, $ff, $ff         ; $C88F

_data_c893_indexed:
.byte $ff, $00, $00, $ff         ; $C893

_data_c897_indexed:
.byte $10, $10, $f0, $f0         ; $C897

_data_c89b_indexed:
.byte $de, $22, $22, $de         ; $C89B

_data_c89f_indexed:
.byte $60, $70, $80, $90, $a0, $b0 ; $C89F

_data_c8a5_indexed:
.byte $00, $00, $00, $00, $00, $00 ; $C8A5

_data_c8ab_indexed:
.byte $c0, $f0, $20, $50, $80, $b0 ; $C8AB

_data_c8b1_indexed:
.byte $00, $00, $01, $01, $01, $01 ; $C8B1

_func_c8b7:
  ldx #$01                       ; $C8B7  A2 01

_label_c8b9:
  lda a:_var_0530_indexed,X      ; $C8B9  BD 30 05
  bpl _label_c8c1                ; $C8BC  10 03
  jmp _label_c9af                ; $C8BE  4C AF C9

_label_c8c1:
  lda a:_var_0544_indexed,X      ; $C8C1  BD 44 05
  bmi _label_c941                ; $C8C4  30 7B
  tay                            ; $C8C6  A8
  txa                            ; $C8C7  8A
  pha                            ; $C8C8  48
  ldx z:_var_00a5                ; $C8C9  A6 A5
  lda z:_var_00b2_indexed,X      ; $C8CB  B5 B2
  adc a:_data_c9e5_indexed,Y     ; $C8CD  79 E5 C9
  sta a:$02E3                    ; $C8D0  8D E3 02
  sta a:$02E7                    ; $C8D3  8D E7 02
  sta a:$02EB                    ; $C8D6  8D EB 02
  lda z:_var_00b5_indexed,X      ; $C8D9  B5 B5
  adc a:_data_c9f5_indexed,Y     ; $C8DB  79 F5 C9
  sta a:_var_02e0_indexed        ; $C8DE  8D E0 02
  adc a:_data_ca05_indexed,Y     ; $C8E1  79 05 CA
  sta a:_var_02e4                ; $C8E4  8D E4 02
  adc a:_data_ca05_indexed,Y     ; $C8E7  79 05 CA
  sta a:_var_02e8                ; $C8EA  8D E8 02
  tya                            ; $C8ED  98
  and #$03                       ; $C8EE  29 03
  tax                            ; $C8F0  AA
  tya                            ; $C8F1  98
  lsr a                          ; $C8F2  4A
  lsr a                          ; $C8F3  4A
  tay                            ; $C8F4  A8
  lda z:_var_0019                ; $C8F5  A5 19
  lsr a                          ; $C8F7  4A
  lsr a                          ; $C8F8  4A
  bcs _label_c8ff                ; $C8F9  B0 04
  tya                            ; $C8FB  98
  adc #$05                       ; $C8FC  69 05
  tay                            ; $C8FE  A8

_label_c8ff:
  lda a:_data_ca15_indexed,Y     ; $C8FF  B9 15 CA
  sta a:$02E1                    ; $C902  8D E1 02
  lda a:_data_ca1f_indexed,Y     ; $C905  B9 1F CA
  sta a:$02E5                    ; $C908  8D E5 02
  lda a:_data_ca29_indexed,Y     ; $C90B  B9 29 CA
  sta a:$02E9                    ; $C90E  8D E9 02
  lda a:_data_ca33_indexed,X     ; $C911  BD 33 CA
  sta a:$02E2                    ; $C914  8D E2 02
  sta a:$02E6                    ; $C917  8D E6 02
  sta a:$02EA                    ; $C91A  8D EA 02
  pla                            ; $C91D  68
  tax                            ; $C91E  AA
  lda z:_var_0019                ; $C91F  A5 19
  and #$07                       ; $C921  29 07
  bne _label_c937                ; $C923  D0 12
  lda a:_var_0544_indexed,X      ; $C925  BD 44 05
  clc                            ; $C928  18
  adc #$04                       ; $C929  69 04
  sta a:_var_0544_indexed,X      ; $C92B  9D 44 05
  cmp #$14                       ; $C92E  C9 14
  bcc _label_c937                ; $C930  90 05
  lda #$FF                       ; $C932  A9 FF
  sta a:_var_0544_indexed,X      ; $C934  9D 44 05

_label_c937:
  lda a:_var_0544_indexed,X      ; $C937  BD 44 05
  cmp #$10                       ; $C93A  C9 10
  bcs _label_c941                ; $C93C  B0 03
  jmp _label_c9af                ; $C93E  4C AF C9

_label_c941:
  jsr _func_c9b6                 ; $C941  20 B6 C9
  lda a:_var_0490_indexed,X      ; $C944  BD 90 04
  cmp #$02                       ; $C947  C9 02
  bcs _label_c94e                ; $C949  B0 03
  jsr _func_ca37                 ; $C94B  20 37 CA

_label_c94e:
  lda a:_var_0490_indexed,X      ; $C94E  BD 90 04
  cmp #$F7                       ; $C951  C9 F7
  bcc _label_c958                ; $C953  90 03
  jsr _func_ca37                 ; $C955  20 37 CA

_label_c958:
  lda a:_var_04a4_indexed,X      ; $C958  BD A4 04
  cmp #$02                       ; $C95B  C9 02
  bcs _label_c962                ; $C95D  B0 03
  jsr _func_ca4f                 ; $C95F  20 4F CA

_label_c962:
  lda a:_var_04a4_indexed,X      ; $C962  BD A4 04
  cmp #$E0                       ; $C965  C9 E0
  bcc _label_c976                ; $C967  90 0D
  lda #$FF                       ; $C969  A9 FF
  sta a:_var_0530_indexed,X      ; $C96B  9D 30 05
  lda #$F0                       ; $C96E  A9 F0
  sta a:_var_04a4_indexed,X      ; $C970  9D A4 04
  jmp _label_c9af                ; $C973  4C AF C9

_label_c976:
  jsr _func_ca67                 ; $C976  20 67 CA
  jsr _func_cb1c                 ; $C979  20 1C CB
  ldy a:_var_0530_indexed,X      ; $C97C  BC 30 05
  iny                            ; $C97F  C8
  tya                            ; $C980  98
  and #$07                       ; $C981  29 07
  sta a:_var_0530_indexed,X      ; $C983  9D 30 05
  ldy a:_var_0530_indexed,X      ; $C986  BC 30 05
  lda a:_data_c9dd_indexed,Y     ; $C989  B9 DD C9
  sta z:_var_0012                ; $C98C  85 12
  txa                            ; $C98E  8A
  asl a                          ; $C98F  0A
  asl a                          ; $C990  0A
  clc                            ; $C991  18
  tay                            ; $C992  A8
  lda a:_var_04a4_indexed,X      ; $C993  BD A4 04
  cmp #$D0                       ; $C996  C9 D0
  sta a:_var_0200_indexed,Y      ; $C998  99 00 02
  lda a:_var_0490_indexed,X      ; $C99B  BD 90 04
  sta a:_var_0203_indexed,Y      ; $C99E  99 03 02
  lda z:_var_0012                ; $C9A1  A5 12
  sta a:_var_0201_indexed,Y      ; $C9A3  99 01 02
  lda #$00                       ; $C9A6  A9 00
  bcc _label_c9ac                ; $C9A8  90 02
  lda #$20                       ; $C9AA  A9 20

_label_c9ac:
  sta a:_var_0202_indexed,Y      ; $C9AC  99 02 02

_label_c9af:
  dex                            ; $C9AF  CA
  bmi _label_c9b5                ; $C9B0  30 03
  jmp _label_c8b9                ; $C9B2  4C B9 C8

_label_c9b5:
  rts                            ; $C9B5  60

_func_c9b6:
  lda a:_var_0508_indexed,X      ; $C9B6  BD 08 05
  clc                            ; $C9B9  18
  adc a:_var_04b8_indexed,X      ; $C9BA  7D B8 04
  sta a:_var_04b8_indexed,X      ; $C9BD  9D B8 04
  lda a:_var_04e0_indexed,X      ; $C9C0  BD E0 04
  adc a:_var_0490_indexed,X      ; $C9C3  7D 90 04
  sta a:_var_0490_indexed,X      ; $C9C6  9D 90 04
  lda a:_var_051c_indexed,X      ; $C9C9  BD 1C 05
  clc                            ; $C9CC  18
  adc a:_var_04cc_indexed,X      ; $C9CD  7D CC 04
  sta a:_var_04cc_indexed,X      ; $C9D0  9D CC 04
  lda a:_var_04f4_indexed,X      ; $C9D3  BD F4 04
  adc a:_var_04a4_indexed,X      ; $C9D6  7D A4 04
  sta a:_var_04a4_indexed,X      ; $C9D9  9D A4 04
  rts                            ; $C9DC  60

_data_c9dd_indexed:
.byte $9d, $9e, $9f, $9e, $9d, $a0, $a1, $a0 ; $C9DD

_data_c9e5_indexed:
.byte $08, $08, $f0, $f0, $08, $08, $f0, $f0, $08, $08, $f0, $f0, $08, $08, $f0, $f0 ; $C9E5

_data_c9f5_indexed:
.byte $ee, $0a, $0a, $ee, $ee, $0a, $0a, $ee, $ee, $0a, $0a, $ee, $ee, $0a, $0a, $ee ; $C9F5

_data_ca05_indexed:
.byte $f8, $08, $08, $f8, $f8, $08, $08, $f8, $f8, $08, $08, $f8, $f8, $08, $08, $f8 ; $CA05

_data_ca15_indexed:
.byte $91, $93, $97, $97, $fc, $92, $95, $9a, $9a, $fc ; $CA15

_data_ca1f_indexed:
.byte $fc, $94, $98, $98, $fc, $fc, $96, $9b, $9b, $fc ; $CA1F

_data_ca29_indexed:
.byte $fc, $fc, $99, $99, $fc, $fc, $fc, $9c, $9c, $fc ; $CA29

_data_ca33_indexed:
.byte $c0, $40, $00, $80         ; $CA33

_func_ca37:
  lda z:_var_00f3                ; $CA37  A5 F3
  ora #$80                       ; $CA39  09 80
  sta z:_var_00f3                ; $CA3B  85 F3

_func_ca3d:
  lda #$00                       ; $CA3D  A9 00
  sec                            ; $CA3F  38
  sbc a:_var_0508_indexed,X      ; $CA40  FD 08 05
  sta a:_var_0508_indexed,X      ; $CA43  9D 08 05
  lda #$00                       ; $CA46  A9 00
  sbc a:_var_04e0_indexed,X      ; $CA48  FD E0 04
  sta a:_var_04e0_indexed,X      ; $CA4B  9D E0 04
  rts                            ; $CA4E  60

_func_ca4f:
  lda z:_var_00f3                ; $CA4F  A5 F3
  ora #$80                       ; $CA51  09 80
  sta z:_var_00f3                ; $CA53  85 F3

_func_ca55:
  lda #$00                       ; $CA55  A9 00
  sec                            ; $CA57  38
  sbc a:_var_051c_indexed,X      ; $CA58  FD 1C 05
  sta a:_var_051c_indexed,X      ; $CA5B  9D 1C 05
  lda #$00                       ; $CA5E  A9 00
  sbc a:_var_04f4_indexed,X      ; $CA60  FD F4 04
  sta a:_var_04f4_indexed,X      ; $CA63  9D F4 04
  rts                            ; $CA66  60

_func_ca67:
  ldy z:_var_00cd                ; $CA67  A4 CD

_label_ca69:
  lda #$00                       ; $CA69  A9 00
  sta z:_var_00cc                ; $CA6B  85 CC
  lda (_var_0027_indexed),Y      ; $CA6D  B1 27
  sec                            ; $CA6F  38
  sbc #$08                       ; $CA70  E9 08
  cmp a:_var_04a4_indexed,X      ; $CA72  DD A4 04
  bcs _label_cadd                ; $CA75  B0 66
  adc #$03                       ; $CA77  69 03
  cmp a:_var_04a4_indexed,X      ; $CA79  DD A4 04
  bcc _label_ca82                ; $CA7C  90 04
  lda #$01                       ; $CA7E  A9 01
  bne _label_ca92                ; $CA80  D0 10

_label_ca82:
  lda (_var_0029_indexed),Y      ; $CA82  B1 29
  cmp a:_var_04a4_indexed,X      ; $CA84  DD A4 04
  bcc _label_cadd                ; $CA87  90 54
  sbc #$03                       ; $CA89  E9 03
  cmp a:_var_04a4_indexed,X      ; $CA8B  DD A4 04
  bcs _label_caad                ; $CA8E  B0 1D
  lda #$02                       ; $CA90  A9 02

_label_ca92:
  sta z:_var_00cc                ; $CA92  85 CC
  lda (_var_0023_indexed),Y      ; $CA94  B1 23
  cmp #$10                       ; $CA96  C9 10
  beq _label_caa2                ; $CA98  F0 08
  sec                            ; $CA9A  38
  sbc #$04                       ; $CA9B  E9 04
  cmp a:_var_0490_indexed,X      ; $CA9D  DD 90 04
  bcs _label_caa9                ; $CAA0  B0 07

_label_caa2:
  lda (_var_0025_indexed),Y      ; $CAA2  B1 25
  cmp a:_var_0490_indexed,X      ; $CAA4  DD 90 04
  bcs _label_caad                ; $CAA7  B0 04

_label_caa9:
  lda #$00                       ; $CAA9  A9 00
  sta z:_var_00cc                ; $CAAB  85 CC

_label_caad:
  lda (_var_0023_indexed),Y      ; $CAAD  B1 23
  cmp #$10                       ; $CAAF  C9 10
  beq _label_cac8                ; $CAB1  F0 15
  sec                            ; $CAB3  38
  sbc #$08                       ; $CAB4  E9 08
  cmp a:_var_0490_indexed,X      ; $CAB6  DD 90 04
  bcs _label_cadd                ; $CAB9  B0 22
  adc #$03                       ; $CABB  69 03
  cmp a:_var_0490_indexed,X      ; $CABD  DD 90 04
  bcc _label_cac8                ; $CAC0  90 06
  lda z:_var_00cc                ; $CAC2  A5 CC
  ora #$04                       ; $CAC4  09 04
  bne _label_cadb                ; $CAC6  D0 13

_label_cac8:
  lda (_var_0025_indexed),Y      ; $CAC8  B1 25
  cmp #$FF                       ; $CACA  C9 FF
  beq _label_cadd                ; $CACC  F0 0F
  cmp a:_var_0490_indexed,X      ; $CACE  DD 90 04
  bcc _label_cadd                ; $CAD1  90 0A
  sbc #$03                       ; $CAD3  E9 03
  bcs _label_cadd                ; $CAD5  B0 06
  lda z:_var_00cc                ; $CAD7  A5 CC
  ora #$08                       ; $CAD9  09 08

_label_cadb:
  sta z:_var_00cc                ; $CADB  85 CC

_label_cadd:
  lda z:_var_00cc                ; $CADD  A5 CC
  bne _label_cae8                ; $CADF  D0 07

_label_cae1:
  dey                            ; $CAE1  88
  bmi _label_cae7                ; $CAE2  30 03
  jmp _label_ca69                ; $CAE4  4C 69 CA

_label_cae7:
  rts                            ; $CAE7  60

_label_cae8:
  lsr z:_var_00cc                ; $CAE8  46 CC
  bcc _label_caf4                ; $CAEA  90 08
  lda a:_var_04f4_indexed,X      ; $CAEC  BD F4 04
  bmi _label_caf4                ; $CAEF  30 03
  jsr _func_ca4f                 ; $CAF1  20 4F CA

_label_caf4:
  lsr z:_var_00cc                ; $CAF4  46 CC
  bcc _label_cb00                ; $CAF6  90 08
  lda a:_var_04f4_indexed,X      ; $CAF8  BD F4 04
  bpl _label_cb00                ; $CAFB  10 03
  jsr _func_ca4f                 ; $CAFD  20 4F CA

_label_cb00:
  lsr z:_var_00cc                ; $CB00  46 CC
  bcc _label_cb0c                ; $CB02  90 08
  lda a:_var_04e0_indexed,X      ; $CB04  BD E0 04
  bmi _label_cb0c                ; $CB07  30 03
  jsr _func_ca37                 ; $CB09  20 37 CA

_label_cb0c:
  lsr z:_var_00cc                ; $CB0C  46 CC
  bcc _label_cb18                ; $CB0E  90 08
  lda a:_var_04e0_indexed,X      ; $CB10  BD E0 04
  bpl _label_cb18                ; $CB13  10 03
  jsr _func_ca37                 ; $CB15  20 37 CA

_label_cb18:
  jmp _label_cae1                ; $CB18  4C E1 CA

.byte $60                        ; $CB1B

_func_cb1c:
  ldy #$01                       ; $CB1C  A0 01

_label_cb1e:
  lda a:_var_0088_indexed,Y      ; $CB1E  B9 88 00
  bmi _label_cb70                ; $CB21  30 4D
  beq _label_cb70                ; $CB23  F0 4B
  lda a:_var_00bd_indexed,Y      ; $CB25  B9 BD 00
  bne _label_cb70                ; $CB28  D0 46
  lda a:_var_0490_indexed,X      ; $CB2A  BD 90 04
  sec                            ; $CB2D  38
  sbc a:_var_0091_indexed,Y      ; $CB2E  F9 91 00
  jsr _func_f08e                 ; $CB31  20 8E F0
  cmp #$08                       ; $CB34  C9 08
  bcs _label_cb70                ; $CB36  B0 38
  lda a:_var_04a4_indexed,X      ; $CB38  BD A4 04
  sec                            ; $CB3B  38
  sbc a:_var_009a_indexed,Y      ; $CB3C  F9 9A 00
  sec                            ; $CB3F  38
  sbc #$08                       ; $CB40  E9 08
  jsr _func_f08e                 ; $CB42  20 8E F0
  cmp #$0C                       ; $CB45  C9 0C
  bcs _label_cb70                ; $CB47  B0 27
  lda #$00                       ; $CB49  A9 00
  sta a:_var_0088_indexed,Y      ; $CB4B  99 88 00
  lda #$01                       ; $CB4E  A9 01
  sta a:_var_007f_indexed,Y      ; $CB50  99 7F 00
  sta a:_var_00c1_indexed,Y      ; $CB53  99 C1 00
  lda #$0B                       ; $CB56  A9 0B
  sta a:_var_0451_indexed,Y      ; $CB58  99 51 04
  lda #$20                       ; $CB5B  A9 20
  sta a:_var_045a_indexed,Y      ; $CB5D  99 5A 04
  lda z:_var_00f0_indexed        ; $CB60  A5 F0
  ora #$80                       ; $CB62  09 80
  sta z:_var_00f0_indexed        ; $CB64  85 F0
  lda #$F0                       ; $CB66  A9 F0
  sta a:_var_04a4_indexed,X      ; $CB68  9D A4 04
  lda #$FF                       ; $CB6B  A9 FF
  sta a:_var_0530_indexed,X      ; $CB6D  9D 30 05

_label_cb70:
  dey                            ; $CB70  88
  bpl _label_cb1e                ; $CB71  10 AB
  rts                            ; $CB73  60

_func_cb74:
  ldx a:_var_05d1                ; $CB74  AE D1 05
  bmi _label_cba7                ; $CB77  30 2E

_label_cb79:
  jsr _func_cba8                 ; $CB79  20 A8 CB
  lda a:_var_0604_indexed,X      ; $CB7C  BD 04 06
  beq _label_cba4                ; $CB7F  F0 23
  txa                            ; $CB81  8A
  eor z:_var_0019                ; $CB82  45 19
  and #$01                       ; $CB84  29 01
  bne _label_cba4                ; $CB86  D0 1C
  ldy a:_var_05fa_indexed,X      ; $CB88  BC FA 05
  iny                            ; $CB8B  C8
  tya                            ; $CB8C  98
  and #$03                       ; $CB8D  29 03
  sta a:_var_05fa_indexed,X      ; $CB8F  9D FA 05
  jsr _func_cccb                 ; $CB92  20 CB CC
  lda a:_var_05fa_indexed,X      ; $CB95  BD FA 05
  cmp #$01                       ; $CB98  C9 01
  bne _label_cba4                ; $CB9A  D0 08
  dec a:_var_060e_indexed,X      ; $CB9C  DE 0E 06
  bne _label_cba4                ; $CB9F  D0 03
  dec a:_var_0604_indexed,X      ; $CBA1  DE 04 06

_label_cba4:
  dex                            ; $CBA4  CA
  bpl _label_cb79                ; $CBA5  10 D2

_label_cba7:
  rts                            ; $CBA7  60

_func_cba8:
  ldy #$07                       ; $CBA8  A0 07
  lda a:_var_0604_indexed,X      ; $CBAA  BD 04 06
  bne _label_cbb2                ; $CBAD  D0 03
  jmp _label_cc3a                ; $CBAF  4C 3A CC

_label_cbb2:
  lda a:_var_0088_indexed,Y      ; $CBB2  B9 88 00
  bmi _label_cc2f                ; $CBB5  30 78
  beq _label_cc2f                ; $CBB7  F0 76
  cpy #$02                       ; $CBB9  C0 02
  bcc _label_cbc1                ; $CBBB  90 04
  cmp #$01                       ; $CBBD  C9 01
  beq _label_cc2f                ; $CBBF  F0 6E

_label_cbc1:
  lda a:_var_0091_indexed,Y      ; $CBC1  B9 91 00
  clc                            ; $CBC4  18
  adc #$08                       ; $CBC5  69 08
  sec                            ; $CBC7  38
  sbc a:_var_05d2_indexed,X      ; $CBC8  FD D2 05
  sta z:_var_0012                ; $CBCB  85 12
  jsr _func_f08e                 ; $CBCD  20 8E F0
  cmp #$12                       ; $CBD0  C9 12
  bcs _label_cc2f                ; $CBD2  B0 5B
  lda a:_var_009a_indexed,Y      ; $CBD4  B9 9A 00
  clc                            ; $CBD7  18
  adc #$0C                       ; $CBD8  69 0C
  sec                            ; $CBDA  38
  sbc a:_var_05dc_indexed,X      ; $CBDB  FD DC 05
  sta z:_var_0013                ; $CBDE  85 13
  jsr _func_f08e                 ; $CBE0  20 8E F0
  cmp #$12                       ; $CBE3  C9 12
  bcs _label_cc2f                ; $CBE5  B0 48
  lda z:_var_0012                ; $CBE7  A5 12
  bmi _label_cbfc                ; $CBE9  30 11
  cmp #$03                       ; $CBEB  C9 03
  bcc _label_cc0b                ; $CBED  90 1C
  lda #$02                       ; $CBEF  A9 02
  sta a:_var_041b_indexed,Y      ; $CBF1  99 1B 04
  jsr _func_cc33                 ; $CBF4  20 33 CC
  jsr _func_ebbb                 ; $CBF7  20 BB EB
  bne _label_cc0b                ; $CBFA  D0 0F

_label_cbfc:
  cmp #$FD                       ; $CBFC  C9 FD
  bcs _label_cc0b                ; $CBFE  B0 0B
  lda #$FE                       ; $CC00  A9 FE
  sta a:_var_041b_indexed,Y      ; $CC02  99 1B 04
  jsr _func_ebbb                 ; $CC05  20 BB EB
  jsr _func_cc33                 ; $CC08  20 33 CC

_label_cc0b:
  lda z:_var_0013                ; $CC0B  A5 13
  bmi _label_cc20                ; $CC0D  30 11
  cmp #$03                       ; $CC0F  C9 03
  bcc _label_cc2f                ; $CC11  90 1C
  lda #$02                       ; $CC13  A9 02
  sta a:_var_042d_indexed,Y      ; $CC15  99 2D 04
  jsr _func_ebb2                 ; $CC18  20 B2 EB
  jsr _func_cc33                 ; $CC1B  20 33 CC
  bne _label_cc2f                ; $CC1E  D0 0F

_label_cc20:
  cmp #$FD                       ; $CC20  C9 FD
  bcs _label_cc2f                ; $CC22  B0 0B
  lda #$FE                       ; $CC24  A9 FE
  sta a:_var_042d_indexed,Y      ; $CC26  99 2D 04
  jsr _func_ebb2                 ; $CC29  20 B2 EB
  jsr _func_cc33                 ; $CC2C  20 33 CC

_label_cc2f:
  dey                            ; $CC2F  88
  bpl _label_cbb2                ; $CC30  10 80
  rts                            ; $CC32  60

_func_cc33:
  lda z:_var_00f1                ; $CC33  A5 F1
  ora #$02                       ; $CC35  09 02
  sta z:_var_00f1                ; $CC37  85 F1
  rts                            ; $CC39  60

_label_cc3a:
  lda a:_var_0088_indexed,Y      ; $CC3A  B9 88 00
  bmi _label_ccb8                ; $CC3D  30 79
  beq _label_ccb8                ; $CC3F  F0 77
  cpy #$02                       ; $CC41  C0 02
  bcc _label_cc73                ; $CC43  90 2E
  lda a:_var_05fa_indexed,X      ; $CC45  BD FA 05
  cmp #$03                       ; $CC48  C9 03
  bne _label_cc73                ; $CC4A  D0 27
  lda a:_var_05d2_indexed,X      ; $CC4C  BD D2 05
  sec                            ; $CC4F  38
  sbc #$0A                       ; $CC50  E9 0A
  cmp a:_var_0091_indexed,Y      ; $CC52  D9 91 00
  bcs _label_cc73                ; $CC55  B0 1C
  adc #$04                       ; $CC57  69 04
  cmp a:_var_0091_indexed,Y      ; $CC59  D9 91 00
  bcc _label_cc73                ; $CC5C  90 15
  lda a:_var_05dc_indexed,X      ; $CC5E  BD DC 05
  sec                            ; $CC61  38
  sbc #$1C                       ; $CC62  E9 1C
  cmp a:_var_009a_indexed,Y      ; $CC64  D9 9A 00
  bcs _label_cc73                ; $CC67  B0 0A
  adc #$04                       ; $CC69  69 04
  cmp a:_var_009a_indexed,Y      ; $CC6B  D9 9A 00
  bcc _label_cc73                ; $CC6E  90 03
  jsr _func_ccbf                 ; $CC70  20 BF CC

_label_cc73:
  lda a:_var_0091_indexed,Y      ; $CC73  B9 91 00
  clc                            ; $CC76  18
  adc #$08                       ; $CC77  69 08
  sec                            ; $CC79  38
  sbc a:_var_05d2_indexed,X      ; $CC7A  FD D2 05
  jsr _func_f08e                 ; $CC7D  20 8E F0
  sta z:_var_0012                ; $CC80  85 12
  lda a:_var_009a_indexed,Y      ; $CC82  B9 9A 00
  clc                            ; $CC85  18
  adc #$0C                       ; $CC86  69 0C
  sec                            ; $CC88  38
  sbc a:_var_05dc_indexed,X      ; $CC89  FD DC 05
  jsr _func_f08e                 ; $CC8C  20 8E F0
  sta z:_var_0013                ; $CC8F  85 13
  lda a:_var_05fa_indexed,X      ; $CC91  BD FA 05
  cmp #$03                       ; $CC94  C9 03
  beq _label_cca2                ; $CC96  F0 0A
  lda z:_var_0012                ; $CC98  A5 12
  pha                            ; $CC9A  48
  lda z:_var_0013                ; $CC9B  A5 13
  sta z:_var_0012                ; $CC9D  85 12
  pla                            ; $CC9F  68
  sta z:_var_0013                ; $CCA0  85 13

_label_cca2:
  lda z:_var_0012                ; $CCA2  A5 12
  cmp #$14                       ; $CCA4  C9 14
  bcs _label_ccb8                ; $CCA6  B0 10
  lda z:_var_0013                ; $CCA8  A5 13
  cmp #$0B                       ; $CCAA  C9 0B
  bcs _label_ccb8                ; $CCAC  B0 0A
  lda #$01                       ; $CCAE  A9 01
  sta a:_var_0604_indexed,X      ; $CCB0  9D 04 06
  lda #$32                       ; $CCB3  A9 32
  sta a:_var_060e_indexed,X      ; $CCB5  9D 0E 06

_label_ccb8:
  dey                            ; $CCB8  88
  bmi _label_ccbe                ; $CCB9  30 03
  jmp _label_cc3a                ; $CCBB  4C 3A CC

_label_ccbe:
  rts                            ; $CCBE  60

_func_ccbf:
  txa                            ; $CCBF  8A
  pha                            ; $CCC0  48
  tya                            ; $CCC1  98
  tax                            ; $CCC2  AA
  inc z:_var_00cb                ; $CCC3  E6 CB
  jsr _func_e983                 ; $CCC5  20 83 E9
  pla                            ; $CCC8  68
  tax                            ; $CCC9  AA
  rts                            ; $CCCA  60

_func_cccb:
  lda a:_var_05f0_indexed,X      ; $CCCB  BD F0 05
  sta z:_var_0057_indexed        ; $CCCE  85 57
  lda a:_var_05e6_indexed,X      ; $CCD0  BD E6 05
  sta z:_var_0058_indexed        ; $CCD3  85 58
  lda #$03                       ; $CCD5  A9 03
  sta z:_var_0059_indexed        ; $CCD7  85 59
  ldy a:_var_05fa_indexed,X      ; $CCD9  BC FA 05
  lda a:_data_cd26_indexed,Y     ; $CCDC  B9 26 CD
  sta z:_var_005a_indexed        ; $CCDF  85 5A
  lda a:_data_cd2a_indexed,Y     ; $CCE1  B9 2A CD
  sta z:_var_005b                ; $CCE4  85 5B
  lda a:_data_cd2e_indexed,Y     ; $CCE6  B9 2E CD
  sta z:_var_005c                ; $CCE9  85 5C
  jsr _func_cd0f                 ; $CCEB  20 0F CD
  lda a:_data_cd32_indexed,Y     ; $CCEE  B9 32 CD
  sta z:_var_005a_indexed        ; $CCF1  85 5A
  lda a:_data_cd36_indexed,Y     ; $CCF3  B9 36 CD
  sta z:_var_005b                ; $CCF6  85 5B
  lda a:_data_cd3a_indexed,Y     ; $CCF8  B9 3A CD
  sta z:_var_005c                ; $CCFB  85 5C
  jsr _func_cd0f                 ; $CCFD  20 0F CD
  lda a:_data_cd3e_indexed,Y     ; $CD00  B9 3E CD
  sta z:_var_005a_indexed        ; $CD03  85 5A
  lda a:_data_cd42_indexed,Y     ; $CD05  B9 42 CD
  sta z:_var_005b                ; $CD08  85 5B
  lda a:_data_cd46_indexed,Y     ; $CD0A  B9 46 CD
  sta z:_var_005c                ; $CD0D  85 5C

_func_cd0f:
  tya                            ; $CD0F  98
  pha                            ; $CD10  48
  lda #$57                       ; $CD11  A9 57
  ldy #$00                       ; $CD13  A0 00
  jsr _func_c131                 ; $CD15  20 31 C1
  pla                            ; $CD18  68
  tay                            ; $CD19  A8
  lda z:_var_0058_indexed        ; $CD1A  A5 58
  clc                            ; $CD1C  18
  adc #$20                       ; $CD1D  69 20
  sta z:_var_0058_indexed        ; $CD1F  85 58
  bcc _label_cd25                ; $CD21  90 02
  inc z:_var_0057_indexed        ; $CD23  E6 57

_label_cd25:
  rts                            ; $CD25  60

_data_cd26_indexed:
.byte $a1, $24, $24, $24         ; $CD26

_data_cd2a_indexed:
.byte $a2, $9e, $ab, $24         ; $CD2A

_data_cd2e_indexed:
.byte $24, $24, $ac, $24         ; $CD2E

_data_cd32_indexed:
.byte $a3, $24, $ad, $a8         ; $CD32

_data_cd36_indexed:
.byte $a4, $9f, $ae, $a9         ; $CD36

_data_cd3a_indexed:
.byte $a5, $24, $af, $aa         ; $CD3A

_data_cd3e_indexed:
.byte $24, $24, $b0, $24         ; $CD3E

_data_cd42_indexed:
.byte $a6, $a0, $b1, $24         ; $CD42

_data_cd46_indexed:
.byte $a7, $24, $24, $24         ; $CD46

_func_cd4a:
  ldx #$09                       ; $CD4A  A2 09

_label_cd4c:
  lda #$FF                       ; $CD4C  A9 FF
  sta a:_var_055d_indexed,X      ; $CD4E  9D 5D 05
  lda #$F0                       ; $CD51  A9 F0
  sta a:_var_057b_indexed,X      ; $CD53  9D 7B 05
  dex                            ; $CD56  CA
  bpl _label_cd4c                ; $CD57  10 F3
  rts                            ; $CD59  60

_func_cd5a:
  dec a:_var_05cc                ; $CD5A  CE CC 05
  beq _label_cd60                ; $CD5D  F0 01
  rts                            ; $CD5F  60

_label_cd60:
  lda z:_var_001b                ; $CD60  A5 1B
  and #$3F                       ; $CD62  29 3F
  adc #$28                       ; $CD64  69 28
  sta a:_var_05cc                ; $CD66  8D CC 05
  ldx #$09                       ; $CD69  A2 09

_label_cd6b:
  lda a:_var_055d_indexed,X      ; $CD6B  BD 5D 05
  bmi _label_cd74                ; $CD6E  30 04
  dex                            ; $CD70  CA
  bpl _label_cd6b                ; $CD71  10 F8
  rts                            ; $CD73  60

_label_cd74:
  lda #$00                       ; $CD74  A9 00
  sta a:_var_055d_indexed,X      ; $CD76  9D 5D 05
  sta a:_var_0599_indexed,X      ; $CD79  9D 99 05
  sta a:_var_058f_indexed,X      ; $CD7C  9D 8F 05
  lda #$80                       ; $CD7F  A9 80
  sta a:_var_0571_indexed,X      ; $CD81  9D 71 05
  sta a:_var_0585_indexed,X      ; $CD84  9D 85 05
  lda #$D0                       ; $CD87  A9 D0
  sta a:_var_057b_indexed,X      ; $CD89  9D 7B 05
  jsr _func_f1b3                 ; $CD8C  20 B3 F1
  and #$03                       ; $CD8F  29 03
  tay                            ; $CD91  A8
  lda a:_data_ceae_indexed,Y     ; $CD92  B9 AE CE
  sta a:_var_0567_indexed,X      ; $CD95  9D 67 05
  ldy #$00                       ; $CD98  A0 00
  lda z:_var_001b                ; $CD9A  A5 1B
  sta a:_var_05b7_indexed,X      ; $CD9C  9D B7 05
  bpl _label_cda2                ; $CD9F  10 01
  dey                            ; $CDA1  88

_label_cda2:
  tya                            ; $CDA2  98
  sta a:_var_05c1_indexed,X      ; $CDA3  9D C1 05
  dec a:_var_05cb                ; $CDA6  CE CB 05
  rts                            ; $CDA9  60

_func_cdaa:
  ldx #$09                       ; $CDAA  A2 09

_label_cdac:
  lda a:_var_055d_indexed,X      ; $CDAC  BD 5D 05
  bmi _label_ce22                ; $CDAF  30 71
  beq _label_cdfc                ; $CDB1  F0 49
  lda a:_var_0599_indexed,X      ; $CDB3  BD 99 05
  sta z:_var_0012                ; $CDB6  85 12
  lda a:_var_058f_indexed,X      ; $CDB8  BD 8F 05
  sta z:_var_0013                ; $CDBB  85 13
  jsr _func_f1a6                 ; $CDBD  20 A6 F1
  lda a:_var_05b7_indexed,X      ; $CDC0  BD B7 05
  clc                            ; $CDC3  18
  adc z:_var_0012                ; $CDC4  65 12
  sta a:_var_05b7_indexed,X      ; $CDC6  9D B7 05
  sta z:_var_0012                ; $CDC9  85 12
  lda a:_var_05c1_indexed,X      ; $CDCB  BD C1 05
  adc z:_var_0013                ; $CDCE  65 13
  sta a:_var_05c1_indexed,X      ; $CDD0  9D C1 05
  sta z:_var_0013                ; $CDD3  85 13
  jsr _func_f1a6                 ; $CDD5  20 A6 F1
  lda a:_var_0599_indexed,X      ; $CDD8  BD 99 05
  sec                            ; $CDDB  38
  sbc z:_var_0012                ; $CDDC  E5 12
  sta a:_var_0599_indexed,X      ; $CDDE  9D 99 05
  lda a:_var_058f_indexed,X      ; $CDE1  BD 8F 05
  sbc z:_var_0013                ; $CDE4  E5 13
  sta a:_var_058f_indexed,X      ; $CDE6  9D 8F 05
  lda a:_var_0571_indexed,X      ; $CDE9  BD 71 05
  clc                            ; $CDEC  18
  adc a:_var_0599_indexed,X      ; $CDED  7D 99 05
  sta a:_var_0571_indexed,X      ; $CDF0  9D 71 05
  lda a:_var_0567_indexed,X      ; $CDF3  BD 67 05
  adc a:_var_058f_indexed,X      ; $CDF6  7D 8F 05
  sta a:_var_0567_indexed,X      ; $CDF9  9D 67 05

_label_cdfc:
  lda a:_var_0585_indexed,X      ; $CDFC  BD 85 05
  sec                            ; $CDFF  38
  sbc a:_var_055a                ; $CE00  ED 5A 05
  sta a:_var_0585_indexed,X      ; $CE03  9D 85 05
  bcs _label_ce0b                ; $CE06  B0 03
  dec a:_var_057b_indexed,X      ; $CE08  DE 7B 05

_label_ce0b:
  lda a:_var_057b_indexed,X      ; $CE0B  BD 7B 05
  cmp #$F0                       ; $CE0E  C9 F0
  beq _label_ce1d                ; $CE10  F0 0B
  cmp #$A8                       ; $CE12  C9 A8
  bcs _label_ce22                ; $CE14  B0 0C
  lda #$01                       ; $CE16  A9 01
  sta a:_var_055d_indexed,X      ; $CE18  9D 5D 05
  bne _label_ce22                ; $CE1B  D0 05

_label_ce1d:
  lda #$FF                       ; $CE1D  A9 FF
  sta a:_var_055d_indexed,X      ; $CE1F  9D 5D 05

_label_ce22:
  jsr _func_ce2f                 ; $CE22  20 2F CE
  jsr _func_cece                 ; $CE25  20 CE CE
  dex                            ; $CE28  CA
  bmi _label_ce2e                ; $CE29  30 03
  jmp _label_cdac                ; $CE2B  4C AC CD

_label_ce2e:
  rts                            ; $CE2E  60

_func_ce2f:
  ldy a:_var_055d_indexed,X      ; $CE2F  BC 5D 05
  iny                            ; $CE32  C8
  lda a:_data_ceb2_indexed,Y     ; $CE33  B9 B2 CE
  sta z:_var_0013                ; $CE36  85 13
  txa                            ; $CE38  8A
  sta z:_var_0012                ; $CE39  85 12
  asl a                          ; $CE3B  0A
  adc z:_var_0012                ; $CE3C  65 12
  asl a                          ; $CE3E  0A
  asl a                          ; $CE3F  0A
  tay                            ; $CE40  A8
  lda a:_var_057b_indexed,X      ; $CE41  BD 7B 05
  sta a:_var_0250_indexed,Y      ; $CE44  99 50 02
  sta a:_var_0254_indexed,Y      ; $CE47  99 54 02
  clc                            ; $CE4A  18
  adc #$08                       ; $CE4B  69 08
  sta a:_var_0258_indexed,Y      ; $CE4D  99 58 02
  lda a:_var_0567_indexed,X      ; $CE50  BD 67 05
  sta a:_var_0253_indexed,Y      ; $CE53  99 53 02
  clc                            ; $CE56  18
  adc #$04                       ; $CE57  69 04
  sta a:_var_025b_indexed,Y      ; $CE59  99 5B 02
  clc                            ; $CE5C  18
  adc #$04                       ; $CE5D  69 04
  sta a:_var_0257_indexed,Y      ; $CE5F  99 57 02
  lda z:_var_0013                ; $CE62  A5 13
  sta a:_var_0252_indexed,Y      ; $CE64  99 52 02
  sta a:_var_0256_indexed,Y      ; $CE67  99 56 02
  sta a:_var_025a_indexed,Y      ; $CE6A  99 5A 02
  lda a:_var_055d_indexed,X      ; $CE6D  BD 5D 05
  bmi _label_ce99                ; $CE70  30 27
  lda #$A8                       ; $CE72  A9 A8
  sta a:_var_0251_indexed,Y      ; $CE74  99 51 02
  lda #$A9                       ; $CE77  A9 A9
  sta a:_var_0255_indexed,Y      ; $CE79  99 55 02
  lda z:_var_0019                ; $CE7C  A5 19
  lsr a                          ; $CE7E  4A
  lsr a                          ; $CE7F  4A
  lsr a                          ; $CE80  4A
  lsr a                          ; $CE81  4A
  and #$07                       ; $CE82  29 07
  stx z:_var_0013                ; $CE84  86 13
  tax                            ; $CE86  AA
  lda a:_data_ceb5_indexed,X     ; $CE87  BD B5 CE
  sta a:_var_0259_indexed,Y      ; $CE8A  99 59 02
  lda a:_var_025a_indexed,Y      ; $CE8D  B9 5A 02
  eor a:_data_cebd_indexed,X     ; $CE90  5D BD CE
  sta a:_var_025a_indexed,Y      ; $CE93  99 5A 02
  ldx z:_var_0013                ; $CE96  A6 13
  rts                            ; $CE98  60

_label_ce99:
  lda #$F0                       ; $CE99  A9 F0
  sta a:_var_057b_indexed,X      ; $CE9B  9D 7B 05
  lda #$AC                       ; $CE9E  A9 AC
  sta a:_var_0251_indexed,Y      ; $CEA0  99 51 02
  lda #$AD                       ; $CEA3  A9 AD
  sta a:_var_0255_indexed,Y      ; $CEA5  99 55 02
  lda #$FC                       ; $CEA8  A9 FC
  sta a:_var_0259_indexed,Y      ; $CEAA  99 59 02
  rts                            ; $CEAD  60

_data_ceae_indexed:
.byte $20, $50, $a0, $d0         ; $CEAE

_data_ceb2_indexed:
.byte $02, $22, $02              ; $CEB2

_data_ceb5_indexed:
.byte $aa, $ab, $ab, $aa, $aa, $ab, $ab, $aa ; $CEB5

_data_cebd_indexed:
.byte $00, $00, $40, $40, $40, $40, $00, $00, $fc, $fc, $df, $fc, $fc, $e0, $e2, $e1 ; $CEBD
.byte $fc                        ; $CECD

_func_cece:
  ldy #$01                       ; $CECE  A0 01

_label_ced0:
  lda a:_var_0088_indexed,Y      ; $CED0  B9 88 00
  bmi _label_cf0f                ; $CED3  30 3A
  beq _label_cf0f                ; $CED5  F0 38
  lda a:_var_055d_indexed,X      ; $CED7  BD 5D 05
  bmi _label_cf12                ; $CEDA  30 36
  lda a:_var_009a_indexed,Y      ; $CEDC  B9 9A 00
  cmp #$C0                       ; $CEDF  C9 C0
  bcs _label_cf0f                ; $CEE1  B0 2C
  sec                            ; $CEE3  38
  sbc a:_var_057b_indexed,X      ; $CEE4  FD 7B 05
  jsr _func_f08e                 ; $CEE7  20 8E F0
  cmp #$18                       ; $CEEA  C9 18
  bcs _label_cf0f                ; $CEEC  B0 21
  lda a:_var_0091_indexed,Y      ; $CEEE  B9 91 00
  sec                            ; $CEF1  38
  sbc a:_var_0567_indexed,X      ; $CEF2  FD 67 05
  jsr _func_f08e                 ; $CEF5  20 8E F0
  cmp #$10                       ; $CEF8  C9 10
  bcs _label_cf0f                ; $CEFA  B0 13
  lda #$FF                       ; $CEFC  A9 FF
  sta a:_var_055d_indexed,X      ; $CEFE  9D 5D 05
  lda a:_var_05cd_indexed,Y      ; $CF01  B9 CD 05
  clc                            ; $CF04  18
  adc #$01                       ; $CF05  69 01
  sta a:_var_05cd_indexed,Y      ; $CF07  99 CD 05
  lda #$02                       ; $CF0A  A9 02
  sta z:_var_00f0_indexed        ; $CF0C  85 F0
  rts                            ; $CF0E  60

_label_cf0f:
  dey                            ; $CF0F  88
  bpl _label_ced0                ; $CF10  10 BE

_label_cf12:
  rts                            ; $CF12  60

_label_cf13:
  lda #$20                       ; $CF13  A9 20
  sta z:_var_00f2                ; $CF15  85 F2
  jsr _func_d0e2                 ; $CF17  20 E2 D0
  jsr _func_cd4a                 ; $CF1A  20 4A CD
  ldx z:_var_0040                ; $CF1D  A6 40

_label_cf1f:
  lda z:_var_0041_indexed,X      ; $CF1F  B5 41
  bmi _label_cf26                ; $CF21  30 03
  jsr _func_f3b0                 ; $CF23  20 B0 F3

_label_cf26:
  dex                            ; $CF26  CA
  bpl _label_cf1f                ; $CF27  10 F6
  ldx #$00                       ; $CF29  A2 00
  stx z:_var_00bd_indexed        ; $CF2B  86 BD
  stx z:$BE                      ; $CF2D  86 BE
  lda #$14                       ; $CF2F  A9 14
  sta a:_var_05cb                ; $CF31  8D CB 05

_label_cf34:
  jsr _func_f470                 ; $CF34  20 70 F4
  inc z:_var_004c                ; $CF37  E6 4C
  jsr _func_d8dd                 ; $CF39  20 DD D8
  jsr _func_e691                 ; $CF3C  20 91 E6
  lda a:_var_05cb                ; $CF3F  AD CB 05
  beq _label_cf47                ; $CF42  F0 03
  jsr _func_cd5a                 ; $CF44  20 5A CD

_label_cf47:
  jsr _func_cdaa                 ; $CF47  20 AA CD
  lda a:_var_05cb                ; $CF4A  AD CB 05
  bne _label_cf34                ; $CF4D  D0 E5
  ldx #$09                       ; $CF4F  A2 09

_label_cf51:
  lda a:_var_055d_indexed,X      ; $CF51  BD 5D 05
  bpl _label_cf34                ; $CF54  10 DE
  dex                            ; $CF56  CA
  bpl _label_cf51                ; $CF57  10 F8
  lda z:_var_0019                ; $CF59  A5 19
  bne _label_cf34                ; $CF5B  D0 D7
  jsr _func_d246                 ; $CF5D  20 46 D2
  ldx #$02                       ; $CF60  A2 02
  stx z:_var_0046                ; $CF62  86 46
  jsr _func_f45e                 ; $CF64  20 5E F4
.ifndef japan
  lda #$2B                       ; $CF67  A9 2B
.else
  lda #$21                       ; $CF5D  A9 21
.endif
  ldy #$D1                       ; $CF69  A0 D1
  jsr _func_c131                 ; $CF6B  20 31 C1
.ifndef japan
  lda #$5A                       ; $CF6E  A9 5A
.else
  lda #$50                       ; $CF64  A9 50
.endif
  ldy #$D1                       ; $CF70  A0 D1
  jsr _func_c131                 ; $CF72  20 31 C1
.ifndef japan
  lda #$65                       ; $CF75  A9 65
.else
  lda #$5B                       ; $CF6B  A9 5B
.endif
  ldy #$D1                       ; $CF77  A0 D1
  jsr _func_c131                 ; $CF79  20 31 C1
  ldx z:_var_0040                ; $CF7C  A6 40

_label_cf7e:
  lda #$20                       ; $CF7E  A9 20
  sta z:_var_0091_indexed,X      ; $CF80  95 91
  lda a:_data_d19e_indexed,X     ; $CF82  BD 9E D1
  sta z:_var_009a_indexed,X      ; $CF85  95 9A
  lda #$03                       ; $CF87  A9 03
  sta z:_var_007f_indexed,X      ; $CF89  95 7F
  lda #$01                       ; $CF8B  A9 01
  sta a:_var_0448_indexed,X      ; $CF8D  9D 48 04
  jsr _func_f3b0                 ; $CF90  20 B0 F3
  jsr _func_e3a4                 ; $CF93  20 A4 E3
  dex                            ; $CF96  CA
  bpl _label_cf7e                ; $CF97  10 E5
  lda #$44                       ; $CF99  A9 44
  sta a:_var_0567_indexed        ; $CF9B  8D 67 05
  sta a:$0568                    ; $CF9E  8D 68 05
  lda #$54                       ; $CFA1  A9 54
  sta a:_var_057b_indexed        ; $CFA3  8D 7B 05
  lda #$74                       ; $CFA6  A9 74
  sta a:$057C                    ; $CFA8  8D 7C 05
  lda #$01                       ; $CFAB  A9 01
  sta a:_var_055d_indexed        ; $CFAD  8D 5D 05
  sta a:_var_055e                ; $CFB0  8D 5E 05
  ldx z:_var_0040                ; $CFB3  A6 40

_label_cfb5:
  jsr _func_ce2f                 ; $CFB5  20 2F CE
  dex                            ; $CFB8  CA
  bpl _label_cfb5                ; $CFB9  10 FA
  jsr _func_f45c                 ; $CFBB  20 5C F4
  lda #$2B                       ; $CFBE  A9 2B
  sta z:_var_0057_indexed        ; $CFC0  85 57
  lda #$24                       ; $CFC2  A9 24
  sta z:_var_0058_indexed        ; $CFC4  85 58
  sta z:_var_0059_indexed        ; $CFC6  85 59
  lda #$0C                       ; $CFC8  A9 0C
  sta z:_var_0054                ; $CFCA  85 54
  lda #$0B                       ; $CFCC  A9 0B
  sta z:_var_0055                ; $CFCE  85 55
  lda #$05                       ; $CFD0  A9 05
  sta z:_var_0056                ; $CFD2  85 56
  lda a:_var_05cd_indexed        ; $CFD4  AD CD 05
  jsr _func_d1c9                 ; $CFD7  20 C9 D1
  lda z:_var_0040                ; $CFDA  A5 40
  beq _label_cfe8                ; $CFDC  F0 0A
  lda #$0F                       ; $CFDE  A9 0F
  sta z:_var_0055                ; $CFE0  85 55
  lda a:_var_05ce                ; $CFE2  AD CE 05
  jsr _func_d1c9                 ; $CFE5  20 C9 D1

_label_cfe8:
  jsr _func_f45c                 ; $CFE8  20 5C F4
  lda a:_var_0559                ; $CFEB  AD 59 05
  sta z:_var_0057_indexed        ; $CFEE  85 57
  lda #$00                       ; $CFF0  A9 00
  sta z:_var_0058_indexed        ; $CFF2  85 58
  sta z:_var_0059_indexed        ; $CFF4  85 59
  lda #$08                       ; $CFF6  A9 08
  sta z:_var_0054                ; $CFF8  85 54
  lda #$0B                       ; $CFFA  A9 0B
  sta z:_var_0055                ; $CFFC  85 55
  lda #$03                       ; $CFFE  A9 03
  sta z:_var_0056                ; $D000  85 56
  lda a:_var_0559                ; $D002  AD 59 05
  jsr _func_c119                 ; $D005  20 19 C1
  lda z:_var_0040                ; $D008  A5 40
  beq _label_d013                ; $D00A  F0 07
  lda #$0F                       ; $D00C  A9 0F
  sta z:_var_0055                ; $D00E  85 55
  jsr _func_c119                 ; $D010  20 19 C1

_label_d013:
  lda #$FF                       ; $D013  A9 FF
  sta a:_var_055d_indexed        ; $D015  8D 5D 05
  sta a:_var_055e                ; $D018  8D 5E 05
  ldx z:_var_0040                ; $D01B  A6 40

_label_d01d:
  jsr _func_ce2f                 ; $D01D  20 2F CE
  dex                            ; $D020  CA
  bpl _label_d01d                ; $D021  10 FA
  lda #$02                       ; $D023  A9 02
  sta z:_var_00f0_indexed        ; $D025  85 F0
  ldx #$02                       ; $D027  A2 02
  jsr _func_f45e                 ; $D029  20 5E F4
  ldx z:_var_0040                ; $D02C  A6 40

_label_d02e:
  jsr _func_ce2f                 ; $D02E  20 2F CE
  dex                            ; $D031  CA
  bpl _label_d02e                ; $D032  10 FA
  jsr _func_d1a0                 ; $D034  20 A0 D1
  jsr _func_f45c                 ; $D037  20 5C F4
  lda #$01                       ; $D03A  A9 01
  sta z:_var_00f0_indexed        ; $D03C  85 F0
  jsr _func_d121                 ; $D03E  20 21 D1
  bne _label_d068                ; $D041  D0 25
.ifndef japan
  lda #$70                       ; $D043  A9 70
.else
  lda #$66                       ; $D039  A9 66
.endif
  ldy #$D1                       ; $D045  A0 D1
  jsr _func_c131                 ; $D047  20 31 C1
  jsr _func_f465                 ; $D04A  20 65 F4
  ldx #$1A                       ; $D04D  A2 1A

_label_d04f:
  lda a:_data_d184_indexed,X     ; $D04F  BD 84 D1
  sta z:_var_0057_indexed,X      ; $D052  95 57
  dex                            ; $D054  CA
  bpl _label_d04f                ; $D055  10 F8
  lda a:_var_055b                ; $D057  AD 5B 05
  sta z:$68                      ; $D05A  85 68
  lda a:_var_055c                ; $D05C  AD 5C 05
  sta z:$69                      ; $D05F  85 69
  jsr _func_c12d                 ; $D061  20 2D C1
  lda #$10                       ; $D064  A9 10
  sta z:_var_00f2                ; $D066  85 F2

_label_d068:
  ldx #$78                       ; $D068  A2 78
  jsr _func_f45e                 ; $D06A  20 5E F4
  jsr _func_d1a0                 ; $D06D  20 A0 D1

_label_d070:
  lda #$00                       ; $D070  A9 00
  sta z:_var_003e                ; $D072  85 3E
  ldx #$04                       ; $D074  A2 04
  jsr _func_d213                 ; $D076  20 13 D2
  jsr _func_c12d                 ; $D079  20 2D C1
  lda z:_var_0040                ; $D07C  A5 40
  beq _label_d08e                ; $D07E  F0 0E
  inc z:_var_003e                ; $D080  E6 3E
  ldx #$12                       ; $D082  A2 12
  jsr _func_d213                 ; $D084  20 13 D2
  lda #$65                       ; $D087  A9 65
  ldy #$00                       ; $D089  A0 00
  jsr _func_c131                 ; $D08B  20 31 C1

_label_d08e:
  lda #$01                       ; $D08E  A9 01
  sta z:_var_00f1                ; $D090  85 F1
  ldx #$02                       ; $D092  A2 02
  jsr _func_f45e                 ; $D094  20 5E F4
  lda z:$5D                      ; $D097  A5 5D
  cmp #$24                       ; $D099  C9 24
  bne _label_d070                ; $D09B  D0 D3
  lda z:_var_0040                ; $D09D  A5 40
  beq _label_d0a8                ; $D09F  F0 07
  lda a:$006B                    ; $D0A1  AD 6B 00
  cmp #$24                       ; $D0A4  C9 24
  bne _label_d070                ; $D0A6  D0 C8

_label_d0a8:
  ldx #$0A                       ; $D0A8  A2 0A
  jsr _func_f45e                 ; $D0AA  20 5E F4
  jsr _func_d121                 ; $D0AD  20 21 D1
  bne _label_d0ce                ; $D0B0  D0 1C
  lda a:_var_055b                ; $D0B2  AD 5B 05
  sta z:_var_0047                ; $D0B5  85 47
  lda a:_var_055c                ; $D0B7  AD 5C 05
  sta z:_var_0048                ; $D0BA  85 48
  lda z:_var_0040                ; $D0BC  A5 40
  sta z:_var_003e                ; $D0BE  85 3E

_label_d0c0:
  jsr _func_d6dc                 ; $D0C0  20 DC D6
  dec z:_var_003e                ; $D0C3  C6 3E
  bpl _label_d0c0                ; $D0C5  10 F9
  lda #$01                       ; $D0C7  A9 01
  sta z:_var_00f1                ; $D0C9  85 F1
  jsr _func_f45c                 ; $D0CB  20 5C F4

_label_d0ce:
  lda #$00                       ; $D0CE  A9 00
  sta z:_var_0047                ; $D0D0  85 47
  sta z:_var_0048                ; $D0D2  85 48
  ldx #$01                       ; $D0D4  A2 01

_label_d0d6:
  lda z:_var_0041_indexed,X      ; $D0D6  B5 41
  bpl _label_d0dc                ; $D0D8  10 02
  sta z:_var_0088_indexed,X      ; $D0DA  95 88

_label_d0dc:
  dex                            ; $D0DC  CA
  bpl _label_d0d6                ; $D0DD  10 F7
  jmp _label_f353                ; $D0DF  4C 53 F3

_func_d0e2:
  ldx a:_var_0558                ; $D0E2  AE 58 05
  lda a:_data_d10d_indexed,X     ; $D0E5  BD 0D D1
  sta a:_var_0559                ; $D0E8  8D 59 05
  lda a:_data_d112_indexed,X     ; $D0EB  BD 12 D1
  sta a:_var_055a                ; $D0EE  8D 5A 05
  lda a:_data_d117_indexed,X     ; $D0F1  BD 17 D1
  sta a:_var_055b                ; $D0F4  8D 5B 05
  lda a:_data_d11c_indexed,X     ; $D0F7  BD 1C D1
  sta a:_var_055c                ; $D0FA  8D 5C 05
  cpx #$04                       ; $D0FD  E0 04
  bcs _label_d104                ; $D0FF  B0 03
  inc a:_var_0558                ; $D101  EE 58 05

_label_d104:
  lda #$00                       ; $D104  A9 00
  sta a:_var_05cd_indexed        ; $D106  8D CD 05
  sta a:_var_05ce                ; $D109  8D CE 05
  rts                            ; $D10C  60

_data_d10d_indexed:
.byte $03, $05, $07, $07, $07    ; $D10D

_data_d112_indexed:
.byte $80, $90, $98, $a0, $a8    ; $D112

_data_d117_indexed:
.byte $01, $01, $02, $02, $03    ; $D117

_data_d11c_indexed:
.byte $00, $05, $00, $05, $00    ; $D11C

_func_d121:
  lda a:_var_05cd_indexed        ; $D121  AD CD 05
  clc                            ; $D124  18
  adc a:_var_05ce                ; $D125  6D CE 05
  cmp #$14                       ; $D128  C9 14
  rts                            ; $D12A  60

.byte $3f, $00, $10, $0f, $30, $30, $30, $0f, $30, $27, $15, $0f, $30, $02, $21, $0f ; $D12B
.byte $16, $16, $16              ; $D13B

_data_d13e_indexed:
.byte $21, $73, $0b, $29, $00, $00, $00, $00, $00, $24, $19, $1d, $1c, $26, $21, $f3 ; $D13E
.byte $0b, $29, $00, $00, $00, $00, $00, $24, $19, $1d, $1c, $26, $23, $e8, $08, $ff ; $D14E
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $23, $c0, $08, $40, $50, $50, $50, $50, $90 ; $D15E
.byte $a0, $a0, $22, $88, $11, $19, $24, $0e, $24, $1b, $24, $0f, $24, $0e, $24, $0c ; $D16E
.byte $24, $1d, $24, $2c, $2c, $2c ; $D17E

_data_d184_indexed:
.byte $22, $c6, $17, $1c, $1e, $19, $0e, $1b, $24, $0b, $18, $17, $1e, $1c, $24, $24 ; $D184
.byte $24, $01, $00, $00, $00, $00, $19, $1d, $1c, $2c ; $D194

_data_d19e_indexed:
.byte $50, $70                   ; $D19E

_func_d1a0:
  ldx #$1C                       ; $D1A0  A2 1C

_label_d1a2:
  lda a:_data_d13e_indexed,X     ; $D1A2  BD 3E D1
  sta z:_var_0057_indexed,X      ; $D1A5  95 57
  dex                            ; $D1A7  CA
  bpl _label_d1a2                ; $D1A8  10 F8
  ldx #$04                       ; $D1AA  A2 04
  ldy a:_var_05cd_indexed        ; $D1AC  AC CD 05
  jsr _func_d1dc                 ; $D1AF  20 DC D1
  ldx #$12                       ; $D1B2  A2 12
  ldy a:_var_05ce                ; $D1B4  AC CE 05
  jsr _func_d1dc                 ; $D1B7  20 DC D1
  jsr _func_c12d                 ; $D1BA  20 2D C1
  lda z:_var_0040                ; $D1BD  A5 40
  bne _label_d1c2                ; $D1BF  D0 01
  rts                            ; $D1C1  60

_label_d1c2:
  lda #$65                       ; $D1C2  A9 65
  ldy #$00                       ; $D1C4  A0 00
  jmp _func_c131                 ; $D1C6  4C 31 C1

_func_d1c9:
  ldy #$00                       ; $D1C9  A0 00

_label_d1cb:
  cmp #$0A                       ; $D1CB  C9 0A
  bcc _label_d1d5                ; $D1CD  90 06
  iny                            ; $D1CF  C8
  sbc #$0A                       ; $D1D0  E9 0A
  jmp _label_d1cb                ; $D1D2  4C CB D1

_label_d1d5:
  sty z:_var_005a_indexed        ; $D1D5  84 5A
  sta z:_var_005b                ; $D1D7  85 5B
  jmp _func_c119                 ; $D1D9  4C 19 C1

_func_d1dc:
  dey                            ; $D1DC  88
  bmi _label_d1fe                ; $D1DD  30 1F
  lda a:_var_0559                ; $D1DF  AD 59 05
  clc                            ; $D1E2  18
  adc z:_var_0059_indexed,X      ; $D1E3  75 59
  cmp #$0A                       ; $D1E5  C9 0A
  bcc _label_d1ed                ; $D1E7  90 04
  sbc #$0A                       ; $D1E9  E9 0A
  inc z:_var_0058_indexed,X      ; $D1EB  F6 58

_label_d1ed:
  sta z:_var_0059_indexed,X      ; $D1ED  95 59
  lda z:_var_0058_indexed,X      ; $D1EF  B5 58
  cmp #$0A                       ; $D1F1  C9 0A
  bcc _label_d1fb                ; $D1F3  90 06
  sbc #$0A                       ; $D1F5  E9 0A
  inc z:_var_0057_indexed,X      ; $D1F7  F6 57
  sta z:_var_0058_indexed,X      ; $D1F9  95 58

_label_d1fb:
  jmp _func_d1dc                 ; $D1FB  4C DC D1

_label_d1fe:
  ldy #$00                       ; $D1FE  A0 00

_label_d200:
  lda z:_var_0057_indexed,X      ; $D200  B5 57
  beq _label_d208                ; $D202  F0 04
  cmp #$24                       ; $D204  C9 24
  bne _label_d212                ; $D206  D0 0A

_label_d208:
  lda #$24                       ; $D208  A9 24
  sta z:_var_0057_indexed,X      ; $D20A  95 57
  inx                            ; $D20C  E8
  iny                            ; $D20D  C8
  cpy #$04                       ; $D20E  C0 04
  bne _label_d200                ; $D210  D0 EE

_label_d212:
  rts                            ; $D212  60

_func_d213:
  lda z:_var_0059_indexed,X      ; $D213  B5 59
  cmp #$24                       ; $D215  C9 24
  beq _label_d243                ; $D217  F0 2A
  tay                            ; $D219  A8
  bne _label_d238                ; $D21A  D0 1C
  lda z:_var_0058_indexed,X      ; $D21C  B5 58
  cmp #$24                       ; $D21E  C9 24
  beq _label_d243                ; $D220  F0 21
  lda z:_var_0058_indexed,X      ; $D222  B5 58
  bne _label_d232                ; $D224  D0 0C
  lda z:_var_0057_indexed,X      ; $D226  B5 57
  cmp #$24                       ; $D228  C9 24
  beq _label_d243                ; $D22A  F0 17
  lda #$0A                       ; $D22C  A9 0A
  sta z:_var_0058_indexed,X      ; $D22E  95 58
  dec z:_var_0057_indexed,X      ; $D230  D6 57

_label_d232:
  lda #$0A                       ; $D232  A9 0A
  sta z:_var_0059_indexed,X      ; $D234  95 59
  dec z:_var_0058_indexed,X      ; $D236  D6 58

_label_d238:
  dec z:_var_0059_indexed,X      ; $D238  D6 59
  txa                            ; $D23A  8A
  pha                            ; $D23B  48
  lda #$0A                       ; $D23C  A9 0A
  jsr _func_d6de                 ; $D23E  20 DE D6
  pla                            ; $D241  68
  tax                            ; $D242  AA

_label_d243:
  jmp _label_d1fe                ; $D243  4C FE D1

_func_d246:
  jsr _func_c10a                 ; $D246  20 0A C1
  jsr _func_c0fa                 ; $D249  20 FA C0
  lda #$20                       ; $D24C  A9 20
  sta PPU_ADDR                   ; $D24E  8D 06 20
  lda #$00                       ; $D251  A9 00
  sta PPU_ADDR                   ; $D253  8D 06 20
  jsr _func_d275                 ; $D256  20 75 D2
  jsr _func_d275                 ; $D259  20 75 D2
  jsr _func_c104                 ; $D25C  20 04 C1
  jsr _func_c115                 ; $D25F  20 15 C1
  ldx #$3F                       ; $D262  A2 3F
  ldy #$00                       ; $D264  A0 00
  sty z:_var_004c                ; $D266  84 4C

_label_d268:
  lda #$F0                       ; $D268  A9 F0
  sta a:_var_0200_indexed,Y      ; $D26A  99 00 02
  iny                            ; $D26D  C8
  iny                            ; $D26E  C8
  iny                            ; $D26F  C8
  iny                            ; $D270  C8
  dex                            ; $D271  CA
  bpl _label_d268                ; $D272  10 F4
  rts                            ; $D274  60

_func_d275:
  ldx #$F0                       ; $D275  A2 F0
  lda #$24                       ; $D277  A9 24

_label_d279:
  sta PPU_DATA                   ; $D279  8D 07 20
  sta PPU_DATA                   ; $D27C  8D 07 20
  sta PPU_DATA                   ; $D27F  8D 07 20
  sta PPU_DATA                   ; $D282  8D 07 20
  dex                            ; $D285  CA
  bne _label_d279                ; $D286  D0 F1
  ldx #$40                       ; $D288  A2 40
  lda #$00                       ; $D28A  A9 00

_label_d28c:
  sta PPU_DATA                   ; $D28C  8D 07 20
  dex                            ; $D28F  CA
  bne _label_d28c                ; $D290  D0 FA
  rts                            ; $D292  60

_func_d293:
  jsr _func_c10a                 ; $D293  20 0A C1
  jsr _func_c0fa                 ; $D296  20 FA C0
  lda z:_var_0016                ; $D299  A5 16
  beq _label_d2a0                ; $D29B  F0 03
  jmp _label_d572                ; $D29D  4C 72 D5

_label_d2a0:
  ldy z:_var_003b                ; $D2A0  A4 3B
  lda a:_data_db2a_indexed,Y     ; $D2A2  B9 2A DB
  sta z:_var_001d_indexed        ; $D2A5  85 1D
  lda a:_data_db3a_indexed,Y     ; $D2A7  B9 3A DB
  sta z:_var_001e                ; $D2AA  85 1E
  jsr _func_d497                 ; $D2AC  20 97 D4
  ldx #$00                       ; $D2AF  A2 00

_label_d2b1:
  jsr _func_d4e5                 ; $D2B1  20 E5 D4
  cmp #$FF                       ; $D2B4  C9 FF
  beq _label_d322                ; $D2B6  F0 6A
  sta z:_var_0054                ; $D2B8  85 54
  jsr _func_d4e5                 ; $D2BA  20 E5 D4
  sta z:_var_0055                ; $D2BD  85 55
  ldy #$03                       ; $D2BF  A0 03

_label_d2c1:
  jsr _func_d4fb                 ; $D2C1  20 FB D4
  lda #$04                       ; $D2C4  A9 04
  sta z:_var_0012                ; $D2C6  85 12
  lda a:_data_d493_indexed,Y     ; $D2C8  B9 93 D4

_label_d2cb:
  sta PPU_DATA                   ; $D2CB  8D 07 20
  clc                            ; $D2CE  18
  adc #$04                       ; $D2CF  69 04
  dec z:_var_0012                ; $D2D1  C6 12
  bne _label_d2cb                ; $D2D3  D0 F6
  inc z:_var_0055                ; $D2D5  E6 55
  dey                            ; $D2D7  88
  bpl _label_d2c1                ; $D2D8  10 E7
  lda z:_var_0055                ; $D2DA  A5 55
  sec                            ; $D2DC  38
  sbc #$04                       ; $D2DD  E9 04
  sta z:_var_0055                ; $D2DF  85 55
  jsr _func_d51c                 ; $D2E1  20 1C D5
  sta z:_var_00a6_indexed,X      ; $D2E4  95 A6
  inc z:_var_0054                ; $D2E6  E6 54
  inc z:_var_0054                ; $D2E8  E6 54
  jsr _func_d51c                 ; $D2EA  20 1C D5
  sta z:_var_00a9_indexed,X      ; $D2ED  95 A9
  inc z:_var_0055                ; $D2EF  E6 55
  inc z:_var_0055                ; $D2F1  E6 55
  jsr _func_d51c                 ; $D2F3  20 1C D5
  sta z:_var_00af_indexed,X      ; $D2F6  95 AF
  dec z:_var_0054                ; $D2F8  C6 54
  dec z:_var_0054                ; $D2FA  C6 54
  jsr _func_d51c                 ; $D2FC  20 1C D5
  sta z:_var_00ac_indexed,X      ; $D2FF  95 AC
  stx z:_var_00a4                ; $D301  86 A4
  lda #$03                       ; $D303  A9 03
  jsr _func_c856                 ; $D305  20 56 C8
  jsr _func_c17c                 ; $D308  20 7C C1
  ldx z:_var_00a4                ; $D30B  A6 A4
  lda z:_var_0054                ; $D30D  A5 54
  asl a                          ; $D30F  0A
  asl a                          ; $D310  0A
  asl a                          ; $D311  0A
  clc                            ; $D312  18
  adc #$10                       ; $D313  69 10
  sta z:_var_00b2_indexed,X      ; $D315  95 B2
  lda z:_var_0055                ; $D317  A5 55
  asl a                          ; $D319  0A
  asl a                          ; $D31A  0A
  asl a                          ; $D31B  0A
  sta z:_var_00b5_indexed,X      ; $D31C  95 B5
  inx                            ; $D31E  E8
  jmp _label_d2b1                ; $D31F  4C B1 D2

_label_d322:
  dex                            ; $D322  CA
  stx z:_var_00a3                ; $D323  86 A3
  ldx #$00                       ; $D325  A2 00

_label_d327:
  jsr _func_d4e5                 ; $D327  20 E5 D4
  cmp #$FF                       ; $D32A  C9 FF
  beq _label_d37e                ; $D32C  F0 50
  sta z:_var_0054                ; $D32E  85 54
  jsr _func_d4e5                 ; $D330  20 E5 D4
  sta z:_var_0055                ; $D333  85 55
  jsr _func_d4e5                 ; $D335  20 E5 D4
  sta a:_var_05fa_indexed,X      ; $D338  9D FA 05
  lda z:_var_0054                ; $D33B  A5 54
  asl a                          ; $D33D  0A
  asl a                          ; $D33E  0A
  asl a                          ; $D33F  0A
  adc #$0C                       ; $D340  69 0C
  sta a:_var_05d2_indexed,X      ; $D342  9D D2 05
  lda z:_var_0055                ; $D345  A5 55
  asl a                          ; $D347  0A
  asl a                          ; $D348  0A
  asl a                          ; $D349  0A
  adc #$0C                       ; $D34A  69 0C
  sta a:_var_05dc_indexed,X      ; $D34C  9D DC 05
  lda #$00                       ; $D34F  A9 00
  sta a:_var_0604_indexed,X      ; $D351  9D 04 06
  jsr _func_d4fb                 ; $D354  20 FB D4
  sta a:_var_05e6_indexed,X      ; $D357  9D E6 05
  lda z:_var_0013                ; $D35A  A5 13
  sta a:_var_05f0_indexed,X      ; $D35C  9D F0 05
  jsr _func_d56c                 ; $D35F  20 6C D5
  jsr _func_d53c                 ; $D362  20 3C D5
  inc z:_var_0054                ; $D365  E6 54
  inc z:_var_0054                ; $D367  E6 54
  jsr _func_d53c                 ; $D369  20 3C D5
  inc z:_var_0055                ; $D36C  E6 55
  inc z:_var_0055                ; $D36E  E6 55
  jsr _func_d53c                 ; $D370  20 3C D5
  dec z:_var_0054                ; $D373  C6 54
  dec z:_var_0054                ; $D375  C6 54
  jsr _func_d53c                 ; $D377  20 3C D5
  inx                            ; $D37A  E8
  jmp _label_d327                ; $D37B  4C 27 D3

_label_d37e:
  dex                            ; $D37E  CA
  stx a:_var_05d1                ; $D37F  8E D1 05
  jsr _func_d4e5                 ; $D382  20 E5 D4
  sta z:_var_001f_indexed        ; $D385  85 1F
  jsr _func_d4e5                 ; $D387  20 E5 D4
  sta z:_var_0020                ; $D38A  85 20
  ldy #$00                       ; $D38C  A0 00
  lda (_var_001f_indexed),Y      ; $D38E  B1 1F
  tax                            ; $D390  AA
  dex                            ; $D391  CA
  bpl _label_d399                ; $D392  10 05
  inc z:_var_00c8                ; $D394  E6 C8
  jmp _label_d3ba                ; $D396  4C BA D3

_label_d399:
  iny                            ; $D399  C8

_label_d39a:
  lda (_var_001f_indexed),Y      ; $D39A  B1 1F
  iny                            ; $D39C  C8
  sta z:_var_0093_indexed,X      ; $D39D  95 93
  lda (_var_001f_indexed),Y      ; $D39F  B1 1F
  iny                            ; $D3A1  C8
  sta z:_var_009c_indexed,X      ; $D3A2  95 9C
  lda (_var_001f_indexed),Y      ; $D3A4  B1 1F
  iny                            ; $D3A6  C8
  sta a:_var_0453_indexed,X      ; $D3A7  9D 53 04
  lda #$02                       ; $D3AA  A9 02
  sta z:_var_0081_indexed,X      ; $D3AC  95 81
  lda #$01                       ; $D3AE  A9 01
  sta z:_var_008a_indexed,X      ; $D3B0  95 8A
  lda z:_var_00c6                ; $D3B2  A5 C6
  sta a:_var_0441_indexed,X      ; $D3B4  9D 41 04
  dex                            ; $D3B7  CA
  bpl _label_d39a                ; $D3B8  10 E0

_label_d3ba:
  jsr _func_d4e5                 ; $D3BA  20 E5 D4
  sta z:_var_00cd                ; $D3BD  85 CD
  jsr _func_d4e5                 ; $D3BF  20 E5 D4
  sta z:_var_0023_indexed        ; $D3C2  85 23
  jsr _func_d4e5                 ; $D3C4  20 E5 D4
  tay                            ; $D3C7  A8
  sta z:_var_0024                ; $D3C8  85 24
  lda z:_var_0023_indexed        ; $D3CA  A5 23
  jsr _func_d48c                 ; $D3CC  20 8C D4
  sta z:_var_0025_indexed        ; $D3CF  85 25
  sty z:_var_0026                ; $D3D1  84 26
  jsr _func_d48c                 ; $D3D3  20 8C D4
  sta z:_var_0027_indexed        ; $D3D6  85 27
  sty z:$28                      ; $D3D8  84 28
  jsr _func_d48c                 ; $D3DA  20 8C D4
  sta z:_var_0029_indexed        ; $D3DD  85 29
  sty z:$2A                      ; $D3DF  84 2A

_label_d3e1:
  jsr _func_d5d9                 ; $D3E1  20 D9 D5
  jsr _func_d3ed                 ; $D3E4  20 ED D3
  jsr _func_c104                 ; $D3E7  20 04 C1
  jmp _func_c115                 ; $D3EA  4C 15 C1

_func_d3ed:
  ldx #$22                       ; $D3ED  A2 22

_label_d3ef:
  lda a:_data_d437_indexed,X     ; $D3EF  BD 37 D4
  sta z:_var_0057_indexed,X      ; $D3F2  95 57
  dex                            ; $D3F4  CA
  bpl _label_d3ef                ; $D3F5  10 F8
  lda z:_var_00c8                ; $D3F7  A5 C8
  bne _label_d410                ; $D3F9  D0 15
  lda z:_var_003b                ; $D3FB  A5 3B
  and #$0C                       ; $D3FD  29 0C
  ora #$03                       ; $D3FF  09 03
  tay                            ; $D401  A8
  ldx #$03                       ; $D402  A2 03

_label_d404:
  lda a:_data_d45a_indexed,Y     ; $D404  B9 5A D4
  sta z:_var_005a_indexed,X      ; $D407  95 5A
  dey                            ; $D409  88
  dex                            ; $D40A  CA
  bpl _label_d404                ; $D40B  10 F7

_label_d40d:
  jmp _func_c12d                 ; $D40D  4C 2D C1

_label_d410:
  ldx a:_var_0558                ; $D410  AE 58 05
  lda a:_data_d46a_indexed,X     ; $D413  BD 6A D4
  sta z:_var_001d_indexed        ; $D416  85 1D
  lda a:_data_d46f_indexed,X     ; $D418  BD 6F D4
  sta z:_var_001e                ; $D41B  85 1E
  ldx #$03                       ; $D41D  A2 03
  ldy #$07                       ; $D41F  A0 07

_label_d421:
  lda (_var_001d_indexed),Y      ; $D421  B1 1D
  sta z:_var_0072_indexed,X      ; $D423  95 72
  dey                            ; $D425  88
  dex                            ; $D426  CA
  bpl _label_d421                ; $D427  10 F8
  lda z:_var_0016                ; $D429  A5 16
  bne _label_d40d                ; $D42B  D0 E0

_label_d42d:
  lda (_var_001d_indexed),Y      ; $D42D  B1 1D
  sta a:_var_005a_indexed,Y      ; $D42F  99 5A 00
  dey                            ; $D432  88
  bpl _label_d42d                ; $D433  10 F8  unconditional branch pattern (complementary branches)
  bmi _label_d40d                ; $D435  30 D6

_data_d437_indexed:
.byte $3f, $00, $20, $0f, $2a, $09, $07, $0f, $30, $27, $15, $0f, $30, $02, $21, $0f ; $D437
.byte $30, $00, $10, $0f, $16, $12, $37, $0f, $12, $16, $37, $0f, $17, $11, $35, $0f ; $D447
.byte $17, $11, $2b              ; $D457

_data_d45a_indexed:
.byte $0f, $2a, $09, $07, $0f, $26, $06, $07, $0f, $1b, $0c, $07, $0f, $2c, $01, $06 ; $D45A

_data_d46a_indexed:
.ifndef japan
.byte $74, $7c, $84, $84, $84    ; $D46A
.else
.byte $6A, $72, $7A, $7A, $7A
.endif

_data_d46f_indexed:
.byte $d4, $d4, $d4, $d4, $d4, $0f, $02, $08, $06, $0f, $2b, $30, $12, $0f, $07, $0a ; $D46F
.byte $19, $0f, $26, $30, $2b, $0f, $07, $0c, $1c, $0f, $15, $30, $26 ; $D47F

_func_d48c:
  sec                            ; $D48C  38
  adc z:_var_00cd                ; $D48D  65 CD
  bcc _label_d492                ; $D48F  90 01
  iny                            ; $D491  C8

_label_d492:
  rts                            ; $D492  60

_data_d493_indexed:
.byte $7f, $7e, $7d, $7c         ; $D493

_func_d497:
  jsr _func_d4e5                 ; $D497  20 E5 D4
  sta z:_var_001f_indexed        ; $D49A  85 1F
  jsr _func_d4e5                 ; $D49C  20 E5 D4
  sta z:_var_0020                ; $D49F  85 20
  tax                            ; $D4A1  AA
  beq _label_d4e4                ; $D4A2  F0 40

_label_d4a4:
  jsr _func_d4f0                 ; $D4A4  20 F0 D4
  tax                            ; $D4A7  AA
  beq _func_d497                 ; $D4A8  F0 ED
  and #$7F                       ; $D4AA  29 7F
  sta PPU_ADDR                   ; $D4AC  8D 06 20
  jsr _func_d4f0                 ; $D4AF  20 F0 D4
  sta PPU_ADDR                   ; $D4B2  8D 06 20
  jsr _func_d4f0                 ; $D4B5  20 F0 D4
  sta z:_var_0012                ; $D4B8  85 12
  txa                            ; $D4BA  8A
  and #$80                       ; $D4BB  29 80
  lsr a                          ; $D4BD  4A
  lsr a                          ; $D4BE  4A
  lsr a                          ; $D4BF  4A
  lsr a                          ; $D4C0  4A
  lsr a                          ; $D4C1  4A
  ora z:_var_0000_indexed        ; $D4C2  05 00
  sta PPU_CTRL                   ; $D4C4  8D 00 20
  txa                            ; $D4C7  8A
  and #$40                       ; $D4C8  29 40
  bne _label_d4d8                ; $D4CA  D0 0C

_label_d4cc:
  jsr _func_d4f0                 ; $D4CC  20 F0 D4
  sta PPU_DATA                   ; $D4CF  8D 07 20
  dec z:_var_0012                ; $D4D2  C6 12
  bne _label_d4cc                ; $D4D4  D0 F6  unconditional branch pattern (complementary branches)
  beq _label_d4a4                ; $D4D6  F0 CC

_label_d4d8:
  jsr _func_d4f0                 ; $D4D8  20 F0 D4

_label_d4db:
  sta PPU_DATA                   ; $D4DB  8D 07 20
  dec z:_var_0012                ; $D4DE  C6 12
  bne _label_d4db                ; $D4E0  D0 F9  unconditional branch pattern (complementary branches)
  beq _label_d4a4                ; $D4E2  F0 C0

_label_d4e4:
  rts                            ; $D4E4  60

_func_d4e5:
  ldy #$00                       ; $D4E5  A0 00
  lda (_var_001d_indexed),Y      ; $D4E7  B1 1D
  inc z:_var_001d_indexed        ; $D4E9  E6 1D
  bne _label_d4ef                ; $D4EB  D0 02
  inc z:_var_001e                ; $D4ED  E6 1E

_label_d4ef:
  rts                            ; $D4EF  60

_func_d4f0:
  ldy #$00                       ; $D4F0  A0 00
  lda (_var_001f_indexed),Y      ; $D4F2  B1 1F
  inc z:_var_001f_indexed        ; $D4F4  E6 1F
  bne _label_d4fa                ; $D4F6  D0 02
  inc z:_var_0020                ; $D4F8  E6 20

_label_d4fa:
  rts                            ; $D4FA  60

_func_d4fb:
  lda z:_var_0055                ; $D4FB  A5 55
  sta z:_var_0012                ; $D4FD  85 12
  lda #$00                       ; $D4FF  A9 00
  asl z:_var_0012                ; $D501  06 12
  asl z:_var_0012                ; $D503  06 12
  asl z:_var_0012                ; $D505  06 12
  asl z:_var_0012                ; $D507  06 12
  rol a                          ; $D509  2A
  asl z:_var_0012                ; $D50A  06 12
  rol a                          ; $D50C  2A
  ora #$20                       ; $D50D  09 20
  sta PPU_ADDR                   ; $D50F  8D 06 20
  sta z:_var_0013                ; $D512  85 13
  lda z:_var_0012                ; $D514  A5 12
  ora z:_var_0054                ; $D516  05 54
  sta PPU_ADDR                   ; $D518  8D 06 20
  rts                            ; $D51B  60

_func_d51c:
  lda z:_var_0055                ; $D51C  A5 55
  and #$FC                       ; $D51E  29 FC
  asl a                          ; $D520  0A
  sta z:_var_0012                ; $D521  85 12
  lda z:_var_0054                ; $D523  A5 54
  lsr a                          ; $D525  4A
  lsr a                          ; $D526  4A
  ora z:_var_0012                ; $D527  05 12
  ora #$C0                       ; $D529  09 C0
  pha                            ; $D52B  48
  lda z:_var_0055                ; $D52C  A5 55
  and #$02                       ; $D52E  29 02
  sta z:_var_0012                ; $D530  85 12
  lda z:_var_0054                ; $D532  A5 54
  and #$02                       ; $D534  29 02
  lsr a                          ; $D536  4A
  ora z:_var_0012                ; $D537  05 12
  tay                            ; $D539  A8
  pla                            ; $D53A  68
  rts                            ; $D53B  60

_func_d53c:
  lda #$23                       ; $D53C  A9 23
  sta PPU_ADDR                   ; $D53E  8D 06 20
  jsr _func_d51c                 ; $D541  20 1C D5
  sta PPU_ADDR                   ; $D544  8D 06 20
  lda PPU_DATA                   ; $D547  AD 07 20
  lda PPU_DATA                   ; $D54A  AD 07 20
  and a:_data_d564_indexed,Y     ; $D54D  39 64 D5
  ora a:_data_d568_indexed,Y     ; $D550  19 68 D5
  pha                            ; $D553  48
  lda #$23                       ; $D554  A9 23
  sta PPU_ADDR                   ; $D556  8D 06 20
  jsr _func_d51c                 ; $D559  20 1C D5
  sta PPU_ADDR                   ; $D55C  8D 06 20
  pla                            ; $D55F  68
  sta PPU_DATA                   ; $D560  8D 07 20
  rts                            ; $D563  60

_data_d564_indexed:
.byte $fc, $f3, $cf, $3f         ; $D564

_data_d568_indexed:
.byte $01, $04, $10, $40         ; $D568

_func_d56c:
  jsr _func_cccb                 ; $D56C  20 CB CC
  jmp _func_c17c                 ; $D56F  4C 7C C1

_label_d572:
  lda #$C0                       ; $D572  A9 C0
  ldy #$23                       ; $D574  A0 23
  jsr _func_d593                 ; $D576  20 93 D5
  lda #$C0                       ; $D579  A9 C0
  ldy #$27                       ; $D57B  A0 27
  jsr _func_d593                 ; $D57D  20 93 D5
  ldy #$23                       ; $D580  A0 23
  lda #$60                       ; $D582  A9 60
  jsr _func_d5b8                 ; $D584  20 B8 D5
  ldy #$27                       ; $D587  A0 27
  lda #$60                       ; $D589  A9 60
  jsr _func_d5b8                 ; $D58B  20 B8 D5
  inc z:_var_00c8                ; $D58E  E6 C8
  jmp _label_d3e1                ; $D590  4C E1 D3

_func_d593:
  sty PPU_ADDR                   ; $D593  8C 06 20
  sta PPU_ADDR                   ; $D596  8D 06 20
  ldx #$00                       ; $D599  A2 00

_label_d59b:
  lda a:_data_dcae_indexed,X     ; $D59B  BD AE DC
  sta PPU_DATA                   ; $D59E  8D 07 20
  inx                            ; $D5A1  E8
  cpx #$08                       ; $D5A2  E0 08
  bne _label_d59b                ; $D5A4  D0 F5
  lda #$00                       ; $D5A6  A9 00
  ldx #$28                       ; $D5A8  A2 28
  jsr _func_d5b1                 ; $D5AA  20 B1 D5
  lda #$AA                       ; $D5AD  A9 AA
  ldx #$10                       ; $D5AF  A2 10

_func_d5b1:
  sta PPU_DATA                   ; $D5B1  8D 07 20
  dex                            ; $D5B4  CA
  bne _func_d5b1                 ; $D5B5  D0 FA
  rts                            ; $D5B7  60

_func_d5b8:
  sty PPU_ADDR                   ; $D5B8  8C 06 20
  sta PPU_ADDR                   ; $D5BB  8D 06 20
  ldx #$20                       ; $D5BE  A2 20
  lda #$58                       ; $D5C0  A9 58
  jsr _func_d5c9                 ; $D5C2  20 C9 D5
  ldx #$40                       ; $D5C5  A2 40
  lda #$5C                       ; $D5C7  A9 5C

_func_d5c9:
  sta z:_var_0012                ; $D5C9  85 12

_label_d5cb:
  txa                            ; $D5CB  8A
  and #$03                       ; $D5CC  29 03
  eor #$03                       ; $D5CE  49 03
  ora z:_var_0012                ; $D5D0  05 12
  sta PPU_DATA                   ; $D5D2  8D 07 20
  dex                            ; $D5D5  CA
  bne _label_d5cb                ; $D5D6  D0 F3
  rts                            ; $D5D8  60

_func_d5d9:
  ldx #$00                       ; $D5D9  A2 00

_label_d5db:
  jsr _func_d651                 ; $D5DB  20 51 D6
  jsr _func_d5f1                 ; $D5DE  20 F1 D5
  lda z:_var_0051                ; $D5E1  A5 51
  ora #$04                       ; $D5E3  09 04
  sta z:_var_0051                ; $D5E5  85 51
  jsr _func_d5f1                 ; $D5E7  20 F1 D5
  inx                            ; $D5EA  E8
  inx                            ; $D5EB  E8
  cpx #$80                       ; $D5EC  E0 80
  bne _label_d5db                ; $D5EE  D0 EB
  rts                            ; $D5F0  60

_func_d5f1:
  lda z:_var_0051                ; $D5F1  A5 51
  sta PPU_ADDR                   ; $D5F3  8D 06 20
  lda z:_var_0050                ; $D5F6  A5 50
  sta PPU_ADDR                   ; $D5F8  8D 06 20
  lda PPU_DATA                   ; $D5FB  AD 07 20
  lda PPU_DATA                   ; $D5FE  AD 07 20
  cmp #$24                       ; $D601  C9 24
  bne _label_d60c                ; $D603  D0 07
  txa                            ; $D605  8A
  and #$03                       ; $D606  29 03
  tay                            ; $D608  A8
  jmp _label_d63b                ; $D609  4C 3B D6

_label_d60c:
  rts                            ; $D60C  60

_func_d60d:
  lda z:_var_004c                ; $D60D  A5 4C
  beq _label_d63a                ; $D60F  F0 29
  dec z:_var_004c                ; $D611  C6 4C
  lda z:_var_004f                ; $D613  A5 4F
  clc                            ; $D615  18
  adc #$02                       ; $D616  69 02
  and #$3F                       ; $D618  29 3F
  sta z:_var_004f                ; $D61A  85 4F
  tax                            ; $D61C  AA
  jsr _func_d651                 ; $D61D  20 51 D6
  lda z:_var_0051                ; $D620  A5 51
  sta PPU_ADDR                   ; $D622  8D 06 20
  lda z:_var_0050                ; $D625  A5 50
  sta PPU_ADDR                   ; $D627  8D 06 20
  lda PPU_DATA                   ; $D62A  AD 07 20
  lda PPU_DATA                   ; $D62D  AD 07 20
  ldy #$03                       ; $D630  A0 03

_label_d632:
  cmp a:_data_d64c_indexed,Y     ; $D632  D9 4C D6
  beq _label_d63b                ; $D635  F0 04
  dey                            ; $D637  88
  bpl _label_d632                ; $D638  10 F8

_label_d63a:
  rts                            ; $D63A  60

_label_d63b:
  lda z:_var_0051                ; $D63B  A5 51
  sta PPU_ADDR                   ; $D63D  8D 06 20
  lda z:_var_0050                ; $D640  A5 50
  sta PPU_ADDR                   ; $D642  8D 06 20
  lda a:_data_d64d_indexed,Y     ; $D645  B9 4D D6
  sta PPU_DATA                   ; $D648  8D 07 20
  rts                            ; $D64B  60

_data_d64c_indexed:
.byte $24                        ; $D64C

_data_d64d_indexed:
.byte $ed, $ee, $ef, $24         ; $D64D

_func_d651:
  lda a:_data_d65c_indexed,X     ; $D651  BD 5C D6
  sta z:_var_0050                ; $D654  85 50
  lda a:_data_d65d_indexed,X     ; $D656  BD 5D D6
  sta z:_var_0051                ; $D659  85 51
  rts                            ; $D65B  60

_data_d65c_indexed:
.byte $63                        ; $D65C

_data_d65d_indexed:
.byte $21, $a5, $21, $cb, $20, $b7, $20, $7d, $21, $9b, $22, $f2, $20, $49, $22, $6d ; $D65D
.byte $21, $0b, $22, $92, $22, $95, $21, $1c, $21, $48, $21, $e0, $20, $0b, $23, $ce ; $D66D
.byte $20, $d0, $21, $06, $21, $19, $21, $30, $22, $8a, $22, $88, $22, $a4, $20, $42 ; $D67D
.byte $22, $68, $21, $3c, $22, $36, $21, $ca, $21, $bc, $20, $96, $21, $4c, $21, $35 ; $D68D
.byte $22, $ef, $20, $68, $22, $a6, $20, $bb, $21, $7a, $21, $ea, $20, $f1, $21, $c2 ; $D69D
.byte $20, $77, $21, $54, $21, $ba, $20, $c5, $22, $be, $20, $fa, $20, $ae, $21, $46 ; $D6AD
.byte $21, $9a, $21, $d2, $20, $3d, $21, $2b, $22, $b0, $20, $b6, $21, $ac, $20, $b3 ; $D6BD
.byte $20, $db, $20, $f6, $20, $2c, $21, $e7, $20, $62, $21, $e4, $21, $4e, $21 ; $D6CD

_func_d6dc:
  lda #$00                       ; $D6DC  A9 00

_func_d6de:
  sta z:_var_0043                ; $D6DE  85 43
  lda z:_var_003a                ; $D6E0  A5 3A
  beq _label_d6e5                ; $D6E2  F0 01

_label_d6e4:
  rts                            ; $D6E4  60

_label_d6e5:
  ldx z:_var_003e                ; $D6E5  A6 3E
  cpx #$02                       ; $D6E7  E0 02
  bcs _label_d6e4                ; $D6E9  B0 F9
  lda z:_var_0041_indexed,X      ; $D6EB  B5 41
  bmi _label_d6e4                ; $D6ED  30 F5
  ldy #$64                       ; $D6EF  A0 64
  jsr _func_d77c                 ; $D6F1  20 7C D7
  clc                            ; $D6F4  18
  adc z:_var_0048                ; $D6F5  65 48
  sta z:_var_0045                ; $D6F7  85 45
  ldy #$0A                       ; $D6F9  A0 0A
  jsr _func_d77c                 ; $D6FB  20 7C D7
  sta z:_var_0044                ; $D6FE  85 44
  ldx z:_var_003f                ; $D700  A6 3F
  lda a:_data_d779_indexed,X     ; $D702  BD 79 D7
  sta z:_var_0021_indexed        ; $D705  85 21
  lda #$06                       ; $D707  A9 06
  sta z:_var_0022                ; $D709  85 22
  lda z:_var_003e                ; $D70B  A5 3E
  asl a                          ; $D70D  0A
  asl a                          ; $D70E  0A
  ora z:_var_003e                ; $D70F  05 3E
  tax                            ; $D711  AA
  clc                            ; $D712  18
  lda z:_var_0003_indexed,X      ; $D713  B5 03
  adc z:_var_0043                ; $D715  65 43
  jsr _func_d78f                 ; $D717  20 8F D7
  sta z:_var_0003_indexed,X      ; $D71A  95 03
  lda z:_var_0004_indexed,X      ; $D71C  B5 04
  adc z:_var_0044                ; $D71E  65 44
  jsr _func_d78f                 ; $D720  20 8F D7
  sta z:_var_0004_indexed,X      ; $D723  95 04
  lda z:_var_0005_indexed,X      ; $D725  B5 05
  adc z:_var_0045                ; $D727  65 45
  jsr _func_d78f                 ; $D729  20 8F D7
  sta z:_var_0005_indexed,X      ; $D72C  95 05
  lda z:_var_0006_indexed,X      ; $D72E  B5 06
  adc z:_var_0047                ; $D730  65 47
  jsr _func_d78f                 ; $D732  20 8F D7
  sta z:_var_0006_indexed,X      ; $D735  95 06
  lda z:_var_0007_indexed,X      ; $D737  B5 07
  adc #$00                       ; $D739  69 00
  jsr _func_d78f                 ; $D73B  20 8F D7
  sta z:_var_0007_indexed,X      ; $D73E  95 07
  inx                            ; $D740  E8
  inx                            ; $D741  E8
  inx                            ; $D742  E8
  inx                            ; $D743  E8
  ldy #$04                       ; $D744  A0 04

_label_d746:
  lda z:_var_0003_indexed,X      ; $D746  B5 03
  cmp (_var_0021_indexed),Y      ; $D748  D1 21
  bcc _label_d765                ; $D74A  90 19
  bne _label_d752                ; $D74C  D0 04
  dex                            ; $D74E  CA
  dey                            ; $D74F  88
  bpl _label_d746                ; $D750  10 F4

_label_d752:
  ldy #$00                       ; $D752  A0 00
  lda z:_var_003e                ; $D754  A5 3E
  asl a                          ; $D756  0A
  asl a                          ; $D757  0A
  ora z:_var_003e                ; $D758  05 3E
  tax                            ; $D75A  AA

_label_d75b:
  lda z:_var_0003_indexed,X      ; $D75B  B5 03
  sta (_var_0021_indexed),Y      ; $D75D  91 21
  inx                            ; $D75F  E8
  iny                            ; $D760  C8
  cpy #$05                       ; $D761  C0 05
  bne _label_d75b                ; $D763  D0 F6

_label_d765:
  ldy #$04                       ; $D765  A0 04

_label_d767:
  lda (_var_0021_indexed),Y      ; $D767  B1 21
  sta a:_var_000d_indexed,Y      ; $D769  99 0D 00
  dey                            ; $D76C  88
  bpl _label_d767                ; $D76D  10 F8
  inc z:_var_0046                ; $D76F  E6 46
  lda z:_var_0016                ; $D771  A5 16
  beq _label_d778                ; $D773  F0 03
  jsr _func_c539                 ; $D775  20 39 C5

_label_d778:
  rts                            ; $D778  60

_data_d779_indexed:
.byte $29, $2e, $33              ; $D779

_func_d77c:
  sty z:_var_0012                ; $D77C  84 12
  ldx #$FF                       ; $D77E  A2 FF
  lda z:_var_0043                ; $D780  A5 43

_label_d782:
  sec                            ; $D782  38
  sbc z:_var_0012                ; $D783  E5 12
  inx                            ; $D785  E8
  bcs _label_d782                ; $D786  B0 FA
  clc                            ; $D788  18
  adc z:_var_0012                ; $D789  65 12
  sta z:_var_0043                ; $D78B  85 43
  txa                            ; $D78D  8A
  rts                            ; $D78E  60

_func_d78f:
  cmp #$0A                       ; $D78F  C9 0A
  bcs _label_d794                ; $D791  B0 01
  rts                            ; $D793  60

_label_d794:
  sec                            ; $D794  38
  sbc #$0A                       ; $D795  E9 0A
  rts                            ; $D797  60

_func_d798:
  ldy z:_var_0046                ; $D798  A4 46
  dey                            ; $D79A  88
  beq _label_d7a0                ; $D79B  F0 03
  bpl _label_d805                ; $D79D  10 66
  rts                            ; $D79F  60

_label_d7a0:
  lda #$20                       ; $D7A0  A9 20
  sta PPU_ADDR                   ; $D7A2  8D 06 20
  lda #$43                       ; $D7A5  A9 43
  sta PPU_ADDR                   ; $D7A7  8D 06 20
  lda #$8E                       ; $D7AA  A9 8E
  sta PPU_DATA                   ; $D7AC  8D 07 20
  ldx #$04                       ; $D7AF  A2 04

_label_d7b1:
  lda z:_var_0003_indexed,X      ; $D7B1  B5 03
  sta PPU_DATA                   ; $D7B3  8D 07 20
  dex                            ; $D7B6  CA
  bpl _label_d7b1                ; $D7B7  10 F8
  lda #$00                       ; $D7B9  A9 00
  sta PPU_DATA                   ; $D7BB  8D 07 20
  lda #$24                       ; $D7BE  A9 24
  sta PPU_DATA                   ; $D7C0  8D 07 20
  sta PPU_DATA                   ; $D7C3  8D 07 20
  ldx #$8C                       ; $D7C6  A2 8C
  stx PPU_DATA                   ; $D7C8  8E 07 20
  inx                            ; $D7CB  E8
  stx PPU_DATA                   ; $D7CC  8E 07 20
  ldx #$04                       ; $D7CF  A2 04

_label_d7d1:
  lda z:_var_000d_indexed,X      ; $D7D1  B5 0D
  sta PPU_DATA                   ; $D7D3  8D 07 20
  dex                            ; $D7D6  CA
  bpl _label_d7d1                ; $D7D7  10 F8
  lda #$00                       ; $D7D9  A9 00
  sta PPU_DATA                   ; $D7DB  8D 07 20
  lda #$24                       ; $D7DE  A9 24
  sta PPU_DATA                   ; $D7E0  8D 07 20
  sta PPU_DATA                   ; $D7E3  8D 07 20
  lda z:_var_0016                ; $D7E6  A5 16
  bne _label_d854                ; $D7E8  D0 6A
  lda z:_var_0040                ; $D7EA  A5 40
  beq _label_d802                ; $D7EC  F0 14
  lda #$8F                       ; $D7EE  A9 8F
  sta PPU_DATA                   ; $D7F0  8D 07 20
  ldx #$04                       ; $D7F3  A2 04

_label_d7f5:
  lda z:_var_0008_indexed,X      ; $D7F5  B5 08
  sta PPU_DATA                   ; $D7F7  8D 07 20
  dex                            ; $D7FA  CA
  bpl _label_d7f5                ; $D7FB  10 F8
  lda #$00                       ; $D7FD  A9 00
  sta PPU_DATA                   ; $D7FF  8D 07 20

_label_d802:
  dec z:_var_0046                ; $D802  C6 46
  rts                            ; $D804  60

_label_d805:
  dec z:_var_0046                ; $D805  C6 46
  lda #$20                       ; $D807  A9 20
  sta PPU_ADDR                   ; $D809  8D 06 20
  lda #$62                       ; $D80C  A9 62
  sta PPU_ADDR                   ; $D80E  8D 06 20
  lda z:_var_0041_indexed        ; $D811  A5 41
  jsr _func_d826                 ; $D813  20 26 D8
  lda z:_var_0040                ; $D816  A5 40
  beq _label_d83a                ; $D818  F0 20
  lda #$20                       ; $D81A  A9 20
  sta PPU_ADDR                   ; $D81C  8D 06 20
  lda #$75                       ; $D81F  A9 75
  sta PPU_ADDR                   ; $D821  8D 06 20
  lda z:_var_0042                ; $D824  A5 42

_func_d826:
  bmi _label_d83b                ; $D826  30 13

_label_d828:
  sta z:_var_0050                ; $D828  85 50
  ldx #$06                       ; $D82A  A2 06

_label_d82c:
  lda #$24                       ; $D82C  A9 24
  cpx z:_var_0050                ; $D82E  E4 50
  bcs _label_d834                ; $D830  B0 02
  lda #$2A                       ; $D832  A9 2A

_label_d834:
  sta PPU_DATA                   ; $D834  8D 07 20
  dex                            ; $D837  CA
  bpl _label_d82c                ; $D838  10 F2

_label_d83a:
  rts                            ; $D83A  60

_label_d83b:
  lda z:_var_0040                ; $D83B  A5 40
  beq _label_d828                ; $D83D  F0 E9
  ldx #$08                       ; $D83F  A2 08

_label_d841:
  lda a:_data_d84b_indexed,X     ; $D841  BD 4B D8
  sta PPU_DATA                   ; $D844  8D 07 20
  dex                            ; $D847  CA
  bpl _label_d841                ; $D848  10 F7
  rts                            ; $D84A  60

_data_d84b_indexed:
.byte $1b, $0e, $1f, $18, $24, $0e, $16, $0a, $10 ; $D84B

_label_d854:
  ldy #$04                       ; $D854  A0 04

_label_d856:
  lda a:_data_d86c_indexed,Y     ; $D856  B9 6C D8
  sta PPU_DATA                   ; $D859  8D 07 20
  dey                            ; $D85C  88
  bpl _label_d856                ; $D85D  10 F7
  lda z:_var_004a                ; $D85F  A5 4A
  sta PPU_DATA                   ; $D861  8D 07 20
  lda z:_var_0049                ; $D864  A5 49
  sta PPU_DATA                   ; $D866  8D 07 20
  dec z:_var_0046                ; $D869  C6 46
  rts                            ; $D86B  60

_data_d86c_indexed:
.byte $fb, $fa, $f9, $f8, $f7    ; $D86C

_func_d871:
  sta z:_var_0012                ; $D871  85 12
  stx z:_var_0013                ; $D873  86 13
  sty z:_var_0014                ; $D875  84 14
  ldx #$01                       ; $D877  A2 01

_label_d879:
  lda a:_var_061a_indexed,X      ; $D879  BD 1A 06
  bmi _label_d88c                ; $D87C  30 0E
  dex                            ; $D87E  CA
  bpl _label_d879                ; $D87F  10 F8
  ldx #$01                       ; $D881  A2 01
  lda a:$0619                    ; $D883  AD 19 06
  cmp a:_var_0618_indexed        ; $D886  CD 18 06
  bcc _label_d88c                ; $D889  90 01
  dex                            ; $D88B  CA

_label_d88c:
  lda #$64                       ; $D88C  A9 64
  sta a:_var_0618_indexed,X      ; $D88E  9D 18 06
  lda z:_var_0012                ; $D891  A5 12
  sta a:_var_061a_indexed,X      ; $D893  9D 1A 06
  tay                            ; $D896  A8
  txa                            ; $D897  8A
  asl a                          ; $D898  0A
  asl a                          ; $D899  0A
  asl a                          ; $D89A  0A
  tax                            ; $D89B  AA
  lda a:_data_d8d1_indexed,Y     ; $D89C  B9 D1 D8
  sta a:_var_02f1_indexed,X      ; $D89F  9D F1 02
  lda a:_data_d8d7_indexed,Y     ; $D8A2  B9 D7 D8
  sta a:_var_02f5_indexed,X      ; $D8A5  9D F5 02
  ldy z:_var_0013                ; $D8A8  A4 13
  lda a:_var_009a_indexed,Y      ; $D8AA  B9 9A 00
  sec                            ; $D8AD  38
  sbc #$08                       ; $D8AE  E9 08
  sta a:_var_02f0_indexed,X      ; $D8B0  9D F0 02
  sta a:_var_02f4_indexed,X      ; $D8B3  9D F4 02
  lda a:_var_0091_indexed,Y      ; $D8B6  B9 91 00
  sta a:_var_02f3_indexed,X      ; $D8B9  9D F3 02
  clc                            ; $D8BC  18
  adc #$08                       ; $D8BD  69 08
  sta a:_var_02f7_indexed,X      ; $D8BF  9D F7 02
  lda z:_var_003e                ; $D8C2  A5 3E
  sta a:_var_02f2_indexed,X      ; $D8C4  9D F2 02
  sta a:_var_02f6_indexed,X      ; $D8C7  9D F6 02
  ldy z:_var_0014                ; $D8CA  A4 14
  ldx z:_var_0013                ; $D8CC  A6 13
  lda z:_var_0012                ; $D8CE  A5 12
  rts                            ; $D8D0  60

_data_d8d1_indexed:
.byte $f4, $f5, $f6, $f7, $f8, $f9 ; $D8D1

_data_d8d7_indexed:
.byte $fb, $fb, $fa, $fb, $fb, $fb ; $D8D7

_func_d8dd:
  ldx #$01                       ; $D8DD  A2 01

_label_d8df:
  lda a:_var_061a_indexed,X      ; $D8DF  BD 1A 06
  bmi _label_d8fb                ; $D8E2  30 17
  dec a:_var_0618_indexed,X      ; $D8E4  DE 18 06
  bne _label_d8fb                ; $D8E7  D0 12
  lda #$FF                       ; $D8E9  A9 FF
  sta a:_var_061a_indexed,X      ; $D8EB  9D 1A 06
  txa                            ; $D8EE  8A
  asl a                          ; $D8EF  0A
  asl a                          ; $D8F0  0A
  asl a                          ; $D8F1  0A
  tay                            ; $D8F2  A8
  lda #$F0                       ; $D8F3  A9 F0
  sta a:_var_02f0_indexed,Y      ; $D8F5  99 F0 02
  sta a:_var_02f4_indexed,Y      ; $D8F8  99 F4 02

_label_d8fb:
  dex                            ; $D8FB  CA
  bpl _label_d8df                ; $D8FC  10 E1
  rts                            ; $D8FE  60

_func_d8ff:
  ldx #$01                       ; $D8FF  A2 01

_label_d901:
  lda #$00                       ; $D901  A9 00
  sta a:_var_0618_indexed,X      ; $D903  9D 18 06
  lda #$FF                       ; $D906  A9 FF
  sta a:_var_061a_indexed,X      ; $D908  9D 1A 06
  dex                            ; $D90B  CA
  bpl _label_d901                ; $D90C  10 F3
  rts                            ; $D90E  60

_func_d90f:
  jsr _func_d246                 ; $D90F  20 46 D2
  jsr _func_c10a                 ; $D912  20 0A C1
  jsr _func_f465                 ; $D915  20 65 F4
  jsr _func_c0fa                 ; $D918  20 FA C0
.ifndef japan
  lda #$2C                       ; $D91B  A9 2C
.else
  lda #$22                       ; $D911  A9 22
.endif
  sta z:_var_001d_indexed        ; $D91D  85 1D
  lda #$D9                       ; $D91F  A9 D9
  sta z:_var_001e                ; $D921  85 1E
  jsr _func_d497                 ; $D923  20 97 D4
  jsr _func_c104                 ; $D926  20 04 C1
  jmp _func_c115                 ; $D929  4C 15 C1

_data_d92c:
.addr _table
.byte $00, $00

_table:
.byte $3f, $00
.byte $04, $0f, $30, $27, $2a, $3f, $18, $04, $0f, $16, $30, $21

; Balloon Fight logo
; The first entry is longer as it starts on the previous row with the ™ and wraps around
TilemapDraw $207c, {$f0, $f1, $24, $24, $24, $24, $e0, $e1, $e1, $e2, $e0, $e1, $e1, $e2, $e0, $e2, $24, $e0, $e2, $24, $e0, $e1, $e1, $e2, $e0, $e1, $e1, $e2, $e0, $ec, $24, $e0, $e2}, 33
TilemapDraw $20a2, {$e3, $e3, $e3, $e5, $e3, $e3, $e3, $e5, $e3, $e5, $24, $e3, $e5, $24, $e3, $e3, $e3, $e5, $e3, $e3, $e3, $e5, $e3, $e3, $f3, $e3, $e5}, 27
TilemapDraw $20c2, {$e3, $e4, $e3, $e7, $e3, $e4, $e3, $e5, $e3, $e5, $24, $e3, $e5, $24, $e3, $e4, $e3, $e5, $e3, $e4, $e3, $e5, $e3, $e3, $e3, $e3, $e5}, 27
TilemapDraw $20e2, {$e3, $e3, $e3, $e2, $e3, $e3, $e3, $e5, $e3, $e5, $24, $e3, $e5, $24, $e3, $e3, $e3, $e5, $e3, $e3, $e3, $e5, $e3, $e3, $e3, $e3, $e5}, 27
TilemapDraw $2102, {$e3, $e4, $e3, $e5, $e3, $f2, $e3, $e5, $e3, $e3, $e2, $e3, $e3, $e2, $e3, $e3, $e3, $e5, $e3, $e3, $e3, $e5, $e3, $f2, $e3, $e3, $e5}, 27
TilemapDraw $2122, {$e6, $e3, $e3, $e7, $eb, $24, $e6, $e7, $e6, $e3, $e7, $e6, $e3, $e7, $e6, $e3, $e3, $e7, $e6, $e3, $e3, $e7, $eb, $24, $e6, $e3, $e7}, 27
TilemapDraw $214c, {$e0, $e1, $e1, $e2, $e0, $e2, $e0, $e1, $e1, $e2, $e8, $24, $e0, $e2, $e0, $e1, $e1, $e2}, 18
TilemapDraw $216c, {$e3, $e3, $e3, $e7, $e3, $e5, $e3, $f5, $f6, $e7, $e3, $f3, $e3, $e5, $e6, $e3, $e3, $e7}, 18
TilemapDraw $218c, {$e3, $e3, $ef, $24, $e3, $e5, $e3, $24, $24, $24, $e3, $e3, $e3, $e5, $24, $e3, $e5, $24}, 18
TilemapDraw $21ac, {$e3, $e3, $e1, $ea, $e3, $e5, $e3, $e9, $e3, $e2, $e3, $e3, $e3, $e5, $24, $e3, $e5, $24}, 18
TilemapDraw $21cc, {$e3, $e3, $ef, $24, $e3, $e5, $e3, $f3, $e3, $e5, $e3, $f2, $e3, $e5, $24, $e3, $e5, $24}, 18
TilemapDraw $21ec, {$e6, $e7, $24, $24, $e6, $e7, $e6, $e7, $e6, $e7, $eb, $24, $e6, $e7, $24, $e6, $e7, $24}, 18

TilemapDraw $2248, {$0a, $24, $24, $01, $25, $19, $15, $0a, $22, $0e, $1b, $24, $10, $0a, $16, $0e}, 16 ; "A  1-PLAYER GAME"
.ifndef ereader
TilemapDraw $2288, {$0b, $24, $24, $02, $25, $19, $15, $0a, $22, $0e, $1b, $24, $10, $0a, $16, $0e}, 16 ; "B  2-PLAYER GAME"
TilemapDraw $22c8, {$0c, $24, $24, $0b, $0a, $15, $15, $18, $18, $17, $24, $24, $1d, $1b, $12, $19}, 16 ; "C  BALLOON  TRIP"
.else
TilemapDraw $2288, {$24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24}, 16 ; "                "
TilemapDraw $22c8, {$0b, $24, $24, $0b, $0a, $15, $15, $18, $18, $17, $24, $24, $1d, $1b, $12, $19}, 16 ; "B  BALLOON  TRIP"
.endif
.ifndef pirate
TilemapDraw $2349, {$f4, $01, $09, $08, $04, $24, $17, $12, $17, $1d, $0e, $17, $0d, $18}, 14           ; "©1984 NINTENDO"
.else
TilemapDraw $2349, {$f4, $01, $09, $08, $08, $24, $17, $1d, $0d, $0e, $0c, $24, $24, $24}, 14           ; "©1988 NTDEC   "
.endif
.byte $00

_func_dac1:
  jsr _func_c104                 ; $DAC1  20 04 C1
  jsr _func_d90f                 ; $DAC4  20 0F D9
  lda #$00                       ; $DAC7  A9 00
  sta z:_var_0019                ; $DAC9  85 19

_label_dacb:
  jsr _func_f465                 ; $DACB  20 65 F4
  lda z:_var_0019                ; $DACE  A5 19
  beq _label_daf1                ; $DAD0  F0 1F
  jsr _func_db08                 ; $DAD2  20 08 DB
  jsr _func_e768                 ; $DAD5  20 68 E7
  tax                            ; $DAD8  AA
  and #$10                       ; $DAD9  29 10
  bne _label_daf0                ; $DADB  D0 13
  txa                            ; $DADD  8A
.ifndef animal_crossing
  and #$20                       ; $DADE  29 20
.else
  and #$2C
.endif
  beq _label_daed                ; $DAE0  F0 0B
  lda #$00                       ; $DAE2  A9 00
  sta z:_var_0019                ; $DAE4  85 19
.ifndef animal_crossing
  ldx z:_var_003f                ; $DAE6  A6 3F
  lda a:_data_db05_indexed,X     ; $DAE8  BD 05 DB
.else
  jsr _func_bff0                 ; $DADC  20 F0 BF
  ldx z:_var_003a                ; $DADF  A6 3A
.endif
  sta z:_var_003f                ; $DAEB  85 3F

_label_daed:
  jmp _label_dacb                ; $DAED  4C CB DA

_label_daf0:
  rts                            ; $DAF0  60

_label_daf1:
  inc z:_var_003a                ; $DAF1  E6 3A
  inc z:_var_0040                ; $DAF3  E6 40
  lda #$00                       ; $DAF5  A9 00
  sta APU_SND_CHN                ; $DAF7  8D 15 40
  sta z:_var_0016                ; $DAFA  85 16
  jsr _func_f1f2                 ; $DAFC  20 F2 F1
  lda #$00                       ; $DAFF  A9 00
  sta z:_var_003a                ; $DB01  85 3A
  beq _func_dac1                 ; $DB03  F0 BC

_data_db05_indexed:
.ifndef ereader
.byte $01, $02, $00              ; $DB05
.else
.byte $02, $02, $00              ; $DB05
.endif

_func_db08:
  lda z:_var_003f                ; $DB08  A5 3F
  lsr a                          ; $DB0A  4A
  sta z:_var_0016                ; $DB0B  85 16
  lda z:_var_003f                ; $DB0D  A5 3F
  tax                            ; $DB0F  AA
  and #$01                       ; $DB10  29 01
  sta z:_var_0040                ; $DB12  85 40
  lda a:_data_db27_indexed,X     ; $DB14  BD 27 DB
  sta a:_var_057b_indexed        ; $DB17  8D 7B 05
  lda #$2C                       ; $DB1A  A9 2C
  sta a:_var_0567_indexed        ; $DB1C  8D 67 05
  ldx #$00                       ; $DB1F  A2 00
  stx a:_var_055d_indexed        ; $DB21  8E 5D 05
  jmp _func_ce2f                 ; $DB24  4C 2F CE

_data_db27_indexed:
.byte $8c, $9c, $ac              ; $DB27

_data_db2a_indexed:
.ifndef japan
.byte $4a, $59, $f2, $6c, $77, $88, $e1, $6c, $99, $03, $ca, $6c, $ad, $17, $e1, $6c ; $DB2A
.else
.byte $40, $4f, $e8, $62, $6d, $7e, $d7, $62, $8f, $f9, $c0, $62, $a3, $0d, $d7, $62 ; $DB20
.endif

_data_db3a_indexed:
.ifndef japan
.byte $db, $db, $db, $db, $db, $db, $db, $db, $db, $dc, $db, $db, $db, $dc, $db, $db ; $DB3A
.byte $2b, $dc, $39, $dd, $00, $00, $10, $06, $ff, $ff, $96, $df, $02, $7a, $de, $2b ; $DB4A
.byte $dc, $39, $dd, $4b, $dd, $00, $00, $18, $0c, $04, $0e, $ff, $ff, $a0, $df, $04 ; $DB5A
.byte $86, $de, $ca, $dc, $00, $00, $ff, $ff, $b0, $df, $00, $9a, $de, $2b, $dc, $5e ; $DB6A
.byte $dd, $00, $00, $08, $06, $18, $0a, $ff, $ff, $b1, $df, $06, $9e, $de, $2b, $dc ; $DB7A
.byte $7d, $dd, $00, $00, $04, $06, $12, $08, $ff, $ff, $c1, $df, $07, $ba, $de, $2b ; $DB8A
.byte $dc, $a3, $dd, $00, $00, $06, $06, $14, $10, $ff, $0f, $0d, $01, $ff, $d4, $df ; $DB9A
.byte $09, $da, $de, $2b, $dc, $ce, $dd, $00, $00, $04, $06, $10, $0e, $ff, $08, $0e ; $DBAA
.byte $03, $0d, $09, $03, $12, $08, $03, $17, $0d, $03, $ff, $e7, $df, $03, $02, $df ; $DBBA
.byte $2b, $dc, $5e, $dd, $00, $00, $10, $06, $1a, $0c, $ff, $08, $08, $01, $18, $04 ; $DBCA
.byte $01, $ff, $b1, $df, $06, $9e, $de, $2b, $dc, $db, $dd, $00, $00, $0e, $06, $0c ; $DBDA
.byte $14, $ff, $ff, $f7, $df, $06, $12, $df, $2b, $dc, $01, $de, $00, $00, $04, $08 ; $DBEA
.byte $16, $10, $ff, $ff, $07, $e0, $09, $2e, $df, $2b, $dc, $32, $de, $00, $00, $04 ; $DBFA
.byte $10, $18, $10, $ff, $0e, $06, $01, $ff, $17, $e0, $07, $56, $df, $2b, $dc, $5b ; $DC0A
.byte $de, $00, $00, $04, $08, $0e, $10, $ff, $10, $07, $01, $ff, $2a, $e0, $07, $76 ; $DC1A
.else
.byte $db, $db, $db, $db, $db, $db, $db, $db, $db, $db, $db, $db, $db, $dc, $db, $db ; $DB30
.byte $21, $dc, $2f, $dd, $00, $00, $10, $06, $ff, $ff, $8c, $df, $02, $70, $de, $21 ; $DB40
.byte $dc, $2f, $dd, $41, $dd, $00, $00, $18, $0c, $04, $0e, $ff, $ff, $96, $df, $04 ; $DB50
.byte $7c, $de, $c0, $dc, $00, $00, $ff, $ff, $a6, $df, $00, $90, $de, $21, $dc, $54 ; $DB60
.byte $dd, $00, $00, $08, $06, $18, $0a, $ff, $ff, $a7, $df, $06, $94, $de, $21, $dc ; $DB70
.byte $73, $dd, $00, $00, $04, $06, $12, $08, $ff, $ff, $b7, $df, $07, $b0, $de, $21 ; $DB80
.byte $dc, $99, $dd, $00, $00, $06, $06, $14, $10, $ff, $0f, $0d, $01, $ff, $ca, $df ; $DB90
.byte $09, $d0, $de, $21, $dc, $c4, $dd, $00, $00, $04, $06, $10, $0e, $ff, $08, $0e ; $DBA0
.byte $03, $0d, $09, $03, $12, $08, $03, $17, $0d, $03, $ff, $dd, $df, $03, $f8, $de ; $DBB0
.byte $21, $dc, $54, $dd, $00, $00, $10, $06, $1a, $0c, $ff, $08, $08, $01, $18, $04 ; $DBC0
.byte $01, $ff, $a7, $df, $06, $94, $de, $21, $dc, $d1, $dd, $00, $00, $0e, $06, $0c ; $DBD0
.byte $14, $ff, $ff, $ed, $df, $06, $08, $df, $21, $dc, $f7, $dd, $00, $00, $04, $08 ; $DBE0
.byte $16, $10, $ff, $ff, $fd, $df, $09, $24, $df, $21, $dc, $28, $de, $00, $00, $04 ; $DBF0
.byte $10, $18, $10, $ff, $0e, $06, $01, $ff, $0d, $e0, $07, $4c, $df, $21, $dc, $51 ; $DC00
.byte $de, $00, $00, $04, $08, $0e, $10, $ff, $10, $07, $01, $ff, $20, $e0, $07, $6c ; $DC10
.endif
.byte $df, $23, $40, $88, $39, $38, $39, $38, $39, $38, $39, $33, $24, $24, $24, $24 ; $DC2A
.byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $30, $38, $39, $38 ; $DC3A
.byte $39, $38, $39, $38, $3c, $3b, $3c, $3b, $3c, $3b, $3c, $3d, $58, $59, $5a, $5b ; $DC4A
.byte $58, $59, $5a, $5b, $58, $59, $5a, $5b, $58, $59, $5a, $5b, $3a, $3b, $3c, $3b ; $DC5A
.byte $3c, $3b, $3c, $3b, $60, $61, $62, $63, $60, $61, $62, $63, $5c, $5d, $5e, $5f ; $DC6A
.byte $5c, $5d, $5e, $5f, $5c, $5d, $5e, $5f, $5c, $5d, $5e, $5f, $60, $61, $62, $63 ; $DC7A
.byte $60, $61, $62, $63, $5c, $5d, $5e, $5f, $5c, $5d, $5e, $5f, $5c, $5d, $5e, $5f ; $DC8A
.byte $5c, $5d, $5e, $5f, $5c, $5d, $5e, $5f, $5c, $5d, $5e, $5f, $5c, $5d, $5e, $5f ; $DC9A
.byte $5c, $5d, $5e, $5f         ; $DCAA

_data_dcae_indexed:
.byte $40, $50, $50, $50, $50, $90, $a0, $a0, $23, $f0, $10, $00, $00, $a0, $a0, $a0 ; $DCAE
.byte $a0, $00, $00, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $00, $a3, $04, $04, $93 ; $DCBE
.byte $94, $94, $94, $a3, $05, $04, $95, $96, $96, $96, $a2, $ea, $05, $93, $94, $94 ; $DCCE
.byte $94, $94, $a2, $eb, $05, $95, $96, $96, $96, $96, $a3, $34, $03, $93, $94, $94 ; $DCDE
.byte $a3, $35, $03, $95, $96, $96, $a3, $1a, $04, $93, $94, $94, $94, $a3, $1b, $04 ; $DCEE
.byte $95, $96, $96, $96, $63, $80, $20, $97, $23, $a0, $20, $98, $99, $98, $99, $98 ; $DCFE
.byte $99, $98, $99, $98, $99, $98, $99, $98, $99, $98, $99, $98, $99, $98, $99, $98 ; $DD0E
.byte $99, $98, $99, $98, $99, $98, $99, $98, $99, $98, $99, $23, $c0, $08, $40, $50 ; $DD1E
.byte $50, $50, $50, $90, $a0, $a0, $63, $e8, $10, $ff, $00, $22, $49, $0e, $30, $31 ; $DD2E
.byte $32, $31, $32, $31, $32, $31, $32, $31, $32, $31, $32, $33, $00, $21, $57, $06 ; $DD3E
.byte $30, $31, $32, $31, $32, $33, $21, $65, $06, $30, $31, $32, $31, $32, $33, $00 ; $DD4E
.byte $21, $90, $03, $30, $31, $33, $22, $26, $03, $30, $31, $33, $22, $57, $03, $30 ; $DD5E
.byte $31, $33, $22, $6c, $03, $30, $31, $33, $22, $f2, $03, $30, $31, $33, $00, $20 ; $DD6E
.byte $cb, $03, $30, $31, $33, $a1, $6d, $03, $3e, $3f, $40, $a1, $59, $04, $3e, $3f ; $DD7E
.byte $3f, $40, $a1, $a5, $03, $3e, $3f, $40, $22, $aa, $03, $30, $31, $33, $22, $b3 ; $DD8E
.byte $03, $30, $31, $33, $00, $20, $e2, $02, $30, $33, $20, $fb, $02, $30, $33, $21 ; $DD9E
.byte $57, $02, $30, $33, $21, $93, $02, $30, $33, $22, $0b, $02, $30, $33, $22, $47 ; $DDAE
.byte $02, $30, $33, $22, $83, $02, $30, $33, $22, $cf, $04, $30, $31, $32, $33, $00 ; $DDBE
.byte $22, $ca, $03, $30, $31, $33, $22, $d2, $03, $30, $31, $33, $00, $21, $08, $04 ; $DDCE
.byte $30, $31, $32, $33, $21, $14, $04, $30, $31, $32, $33, $a1, $a5, $04, $3e, $3f ; $DDDE
.byte $3f, $40, $a1, $ba, $04, $3e, $3f, $3f, $40, $22, $6c, $06, $30, $31, $32, $31 ; $DDEE
.byte $32, $33, $00, $22, $ee, $04, $30, $31, $32, $33, $20, $f9, $03, $30, $31, $33 ; $DDFE
.byte $a1, $1a, $03, $3f, $3f, $40, $21, $90, $03, $30, $31, $33, $a1, $b1, $03, $3f ; $DE0E
.byte $3f, $40, $22, $28, $03, $30, $31, $33, $a2, $49, $03, $3f, $3f, $40, $20, $ea ; $DE1E
.byte $02, $30, $33, $00, $a2, $6c, $03, $3e, $3f, $40, $a2, $73, $03, $3e, $3f, $40 ; $DE2E
.byte $20, $e4, $04, $30, $31, $32, $33, $20, $f8, $04, $30, $31, $32, $33, $21, $a8 ; $DE3E
.byte $04, $30, $31, $32, $33, $21, $b5, $04, $30, $31, $32, $33, $00, $22, $64, $02 ; $DE4E
.byte $30, $33, $22, $08, $02, $30, $33, $21, $ac, $02, $30, $33, $21, $b4, $02, $30 ; $DE5E
.byte $33, $22, $18, $02, $30, $33, $22, $7c, $02, $30, $33, $00, $10, $c8, $48, $38 ; $DE6E
.byte $ff, $b8, $cf, $cf, $8f, $e0, $e0, $98, $10, $c4, $48, $b8, $28, $3c, $ff, $b8 ; $DE7E
.byte $e8, $58, $cf, $cf, $8f, $4f, $57, $e0, $e0, $98, $58, $60, $10, $ff, $df, $ec ; $DE8E
.byte $10, $c8, $80, $30, $b8, $60, $90, $38, $ff, $98, $48, $d0, $78, $a8, $cf, $cf ; $DE9E
.byte $5f, $87, $8f, $97, $b7, $e0, $e0, $68, $90, $98, $a0, $c0, $10, $c8, $58, $68 ; $DEAE
.byte $c8, $28, $50, $98, $38, $ff, $70, $78, $d0, $30, $68, $b0, $cf, $cf, $2f, $57 ; $DEBE
.byte $4f, $67, $a7, $a7, $e0, $e0, $38, $6c, $6c, $7c, $b0, $b0, $10, $c8, $12, $da ; $DECE
.byte $ba, $9a, $5a, $3a, $1a, $7a, $38, $ff, $1e, $e6, $c6, $a6, $66, $46, $26, $96 ; $DEDE
.byte $cf, $cf, $37, $37, $4f, $5f, $7f, $8f, $9f, $af, $e0, $e0, $40, $40, $58, $68 ; $DEEE
.byte $88, $98, $a8, $b8, $10, $c8, $52, $92, $38, $ff, $66, $a6, $cf, $cf, $af, $af ; $DEFE
.byte $e0, $e0, $b8, $b8, $10, $c8, $40, $a0, $28, $d0, $60, $38, $ff, $60, $c0, $30 ; $DF0E
.byte $d8, $90, $cf, $cf, $3f, $3f, $67, $67, $97, $e0, $e0, $48, $48, $88, $88, $a0 ; $DF1E
.byte $10, $c8, $50, $c8, $88, $40, $70, $d0, $88, $48, $38, $ff, $60, $e0, $98, $58 ; $DF2E
.byte $90, $d8, $90, $50, $cf, $cf, $37, $37, $5f, $87, $b7, $3c, $64, $8c, $e0, $e0 ; $DF3E
.byte $40, $40, $68, $90, $c0, $60, $80, $a8, $10, $c8, $20, $c0, $40, $a8, $60, $98 ; $DF4E
.byte $38, $ff, $40, $e0, $60, $c8, $68, $a0, $cf, $cf, $37, $37, $67, $67, $97, $97 ; $DF5E
.byte $e0, $e0, $40, $40, $70, $70, $b0, $b0, $10, $c8, $20, $40, $60, $a0, $c0, $e0 ; $DF6E
.byte $38, $ff, $30, $50, $70, $b0, $d0, $f0, $cf, $cf, $97, $7f, $67, $67, $7f, $97 ; $DF7E
.byte $e0, $e0, $a0, $88, $70, $70, $88, $a0, $03, $58, $78, $04, $78, $78, $04, $98 ; $DF8E
.byte $78, $04, $05, $c8, $38, $05, $38, $40, $05, $58, $78, $04, $78, $78, $04, $98 ; $DF9E
.byte $78, $04, $00, $05, $94, $a0, $06, $84, $48, $05, $34, $70, $04, $64, $80, $04 ; $DFAE
.byte $bc, $78, $04, $06, $5c, $18, $06, $24, $50, $05, $64, $40, $05, $c4, $38, $05 ; $DFBE
.byte $54, $90, $04, $9c, $90, $04, $06, $10, $20, $06, $d8, $20, $06, $b8, $38, $05 ; $DFCE
.byte $98, $48, $05, $58, $68, $05, $38, $78, $04, $05, $54, $98, $05, $94, $98, $05 ; $DFDE
.byte $6c, $39, $06, $94, $31, $06, $bc, $59, $06, $05, $50, $28, $06, $a8, $28, $06 ; $DFEE
.byte $24, $50, $06, $cc, $50, $06, $70, $80, $04, $05, $50, $20, $06, $c8, $20, $06 ; $DFFE
.byte $84, $48, $05, $44, $70, $05, $78, $a0, $04, $06, $28, $20, $06, $c8, $20, $06 ; $E00E
.byte $48, $50, $05, $b0, $50, $05, $5c, $80, $04, $94, $80, $04, $06, $20, $80, $04 ; $E01E
.byte $40, $68, $05, $60, $50, $06, $a0, $50, $06, $c0, $68, $05, $e0, $80, $04 ; $E02E

_data_e03d_indexed:
.byte $08, $08, $f0, $08, $08, $00, $00, $00, $00, $08, $08, $08, $00, $00, $01, $08 ; $E03D
.byte $08, $09, $00, $00, $ff, $08, $08, $07, $fe, $00, $00, $06, $08, $08, $02, $00 ; $E04D
.byte $00, $0a, $08, $08, $02, $00, $01, $0a, $08, $09, $04, $00, $00, $0c, $08, $08 ; $E05D
.byte $00, $00, $fe, $08, $08, $06, $fd, $fd, $fd, $05, $05, $05, $08, $08, $08, $00 ; $E06D
.byte $00, $00, $08, $08, $07, $00, $00, $ff, $08, $08, $09, $00, $00, $01, $0a, $08 ; $E07D
.byte $08, $02, $00, $00, $06, $08, $08, $fe, $00, $00, $06, $08, $07, $fe, $00, $ff ; $E08D
.byte $04, $08, $08, $fc, $00, $00, $08, $08, $0a, $00, $00, $02, $0b, $0b, $0b, $03 ; $E09D
.byte $03, $03, $00, $00, $01, $02, $03, $04, $05, $00, $00, $01, $02, $03, $06, $07 ; $E0AD
.byte $00, $00, $01, $02, $03, $06, $08, $00, $09, $0a, $02, $0b, $0c, $05, $00, $00 ; $E0BD
.byte $01, $02, $03, $04, $05, $00, $00, $01, $02, $0d, $0e, $05, $00, $1a, $1b, $1c ; $E0CD
.byte $1d, $1e, $1f, $01, $1a, $1b, $20, $1d, $1e, $fc, $00, $1a, $21, $22, $1d, $23 ; $E0DD
.byte $24, $00, $00, $38, $35, $0d, $39, $37, $00, $00, $34, $35, $03, $36, $37, $00 ; $E0ED
.byte $09, $3a, $35, $0b, $3b, $37, $00, $ce, $cf, $d0, $d1, $d2, $d3, $00, $25, $26 ; $E0FD
.byte $27, $28, $29, $2a, $01, $28, $29, $2c, $25, $26, $2b, $00, $4c, $cc, $02, $4d ; $E10D
.byte $cd, $05, $00, $4c, $2f, $22, $4d, $30, $24, $07, $4c, $2f, $35, $4d, $30, $37 ; $E11D
.byte $02, $4c, $2f, $27, $4d, $30, $2a, $07, $4c, $2f, $2b, $4d, $30, $2c, $00, $0f ; $E12D
.byte $10, $02, $11, $12, $05, $00, $0f, $10, $02, $11, $19, $07, $00, $0f, $10, $02 ; $E13D
.byte $11, $19, $08, $00, $13, $14, $02, $15, $16, $05, $00, $0f, $10, $02, $11, $12 ; $E14D
.byte $05, $03, $13, $17, $02, $15, $18, $05, $04, $13, $2d, $1c, $15, $2e, $1f, $05 ; $E15D
.byte $13, $2d, $20, $15, $2e, $fc, $04, $13, $2f, $22, $15, $30, $24, $00, $13, $3c ; $E16D
.byte $35, $15, $3d, $37, $00, $0f, $40, $35, $11, $41, $37, $03, $13, $3e, $35, $15 ; $E17D
.byte $3f, $37, $00, $d4, $d5, $d0, $d6, $d7, $d3, $00, $25, $31, $27, $32, $33, $2a ; $E18D
.byte $02, $25, $31, $27, $32, $33, $2a, $00, $fc, $48, $42, $fc, $49, $43, $00, $fc ; $E19D
.byte $48, $44, $fc, $49, $45, $00, $fc, $4a, $46, $fc, $4b, $47, $00, $fc, $a4, $a5 ; $E1AD
.byte $fc, $a6, $a7, $08, $fc, $71, $fc, $fc, $72, $73, $08, $fc, $74, $fc, $fc, $75 ; $E1BD
.byte $76, $08, $fc, $71, $77, $fc, $72, $73, $08, $fc, $74, $77, $fc, $75, $76, $08 ; $E1CD
.byte $fc, $71, $78, $fc, $72, $73, $08, $fc, $74, $78, $fc, $75, $76, $08, $fc, $71 ; $E1DD
.byte $79, $fc, $72, $73, $08, $fc, $74, $79, $fc, $75, $76, $00, $4e, $4f, $50, $51 ; $E1ED
.byte $52, $53, $00, $4e, $4f, $50, $51, $5e, $58, $00, $4e, $4f, $50, $51, $5e, $5d ; $E1FD
.byte $00, $54, $55, $50, $56, $57, $53, $00, $4e, $4f, $50, $51, $52, $53, $00, $59 ; $E20D
.byte $5a, $50, $5b, $5c, $53, $00, $fc, $5f, $60, $fc, $61, $62, $06, $63, $64, $60 ; $E21D
.byte $fc, $65, $62, $00, $66, $67, $60, $68, $69, $62, $00, $6a, $67, $60, $6b, $69 ; $E22D
.byte $62, $00, $fc, $6c, $6d, $fc, $6e, $6f, $00, $fc, $6c, $6d, $fc, $6e, $70 ; $E23D

_data_e24c_indexed:
.ifndef japan
.byte $af, $b6, $bd, $b6, $c4, $cb, $d2, $cb, $d9, $e0, $e7, $e0, $ee, $f5, $fc, $f5 ; $E24C
.byte $0a, $0a, $0a, $0a, $11, $11, $11, $11, $18, $18, $18, $18, $1f, $1f, $1f, $1f ; $E25C
.byte $26, $26, $26, $26, $2d, $2d, $2d, $2d, $34, $34, $34, $34, $3b, $42, $49, $42 ; $E26C
.byte $50, $57, $5e, $57, $65, $6c, $73, $6c, $7a, $81, $88, $81, $96, $96, $96, $96 ; $E27C
.byte $9d, $9d, $9d, $9d, $a4, $ab, $b2, $ab, $b9, $a4, $b9, $a4 ; $E28C
.else
.byte $a5, $ac, $b3, $ac, $ba, $c1, $c8, $c1, $cf, $d6, $dd, $d6, $e4, $eb, $f2, $eb ; $E242
.byte $00, $00, $00, $00, $07, $07, $07, $07, $0e, $0e, $0e, $0e, $15, $15, $15, $15 ; $E252
.byte $1c, $1c, $1c, $1c, $23, $23, $23, $23, $2a, $2a, $2a, $2a, $31, $38, $3f, $38 ; $E262
.byte $46, $4d, $54, $4d, $5b, $62, $69, $62, $70, $77, $7e, $77, $8c, $8c, $8c, $8c ; $E272
.byte $93, $93, $93, $93, $9a, $a1, $a8, $a1, $af, $9a, $af, $9a ; $E282
.endif

_data_e298_indexed:
.byte $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0, $e0 ; $E298
.byte $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1 ; $E2A8
.byte $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1 ; $E2B8
.byte $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1 ; $E2C8
.byte $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1 ; $E2D8

_data_e2e4_indexed:
.ifndef japan
.byte $81, $81, $8f, $81, $f5, $f5, $03, $f5 ; $E2E4
.else
.byte $77, $77, $85, $77, $eb, $eb, $f9, $eb ; $E2DA
.endif

_data_e2ec_indexed:
.ifndef japan
.byte $e1, $e1, $e1, $e1, $e0, $e0, $e1, $e0 ; $E2EC
.else
.byte $e1, $e1, $e1, $e1, $e0, $e0, $e0, $e0 ; $E2E2
.endif

_data_e2f4_indexed:
.ifndef japan
.byte $f8, $ff, $06, $ff, $0d, $14, $1b, $14, $3e, $3e, $22, $29, $30, $30, $30, $30 ; $E2F4
.byte $c0, $c0, $c0, $c0, $c0, $c7, $c0, $c7, $ce, $d5, $ce, $d5, $dc, $e3, $dc, $e3 ; $E304
.byte $ea, $f1, $ea, $f1, $3e, $45, $3e, $45, $37, $37, $37, $37 ; $E314
.else
.byte $ee, $f5, $fc, $f5, $03, $0a, $11, $0a, $34, $34, $18, $1f, $26, $26, $26, $26 ; $E2EA
.byte $b6, $b6, $b6, $b6, $b6, $bd, $b6, $bd, $c4, $cb, $c4, $cb, $d2, $d9, $d2, $d9 ; $E2FA
.byte $e0, $e7, $e0, $e7, $34, $3b, $34, $3b, $2d, $2d, $2d, $2d ; $E30A
.endif

_data_e320_indexed:
.ifndef japan
.byte $e1, $e1, $e2, $e1, $e2, $e2, $e2, $e2, $e2, $e2, $e2, $e2, $e2, $e2, $e2, $e2 ; $E320
.else
.byte $e1, $e1, $e1, $e1, $e2, $e2, $e2, $e2, $e2, $e2, $e2, $e2, $e2, $e2, $e2, $e2 ; $E316
.endif
.byte $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1, $e1 ; $E330
.byte $e1, $e1, $e1, $e1, $e2, $e2, $e2, $e2, $e2, $e2, $e2, $e2 ; $E340

_data_e34c_indexed:
.byte $44, $2c, $00              ; $E34C

_data_e34f_indexed:
.byte $00, $00, $04              ; $E34F

_data_e352_indexed:
.byte $24, $08, $00, $00, $fc, $fc, $fe, $fc, $00, $7b, $fc, $fc, $7c, $fc, $fc, $00 ; $E352
.byte $7d, $7e, $fc, $7f, $80, $fc, $00, $81, $82, $83, $84, $85, $86, $00, $87, $88 ; $E362
.byte $fc, $89, $8a, $fc, $00, $8b, $8c, $fc, $8d, $8e, $fc, $00, $8f, $90, $fc, $fc ; $E372
.byte $fc, $fc                   ; $E382

_data_e384_indexed:
.ifndef japan
.byte $55, $5a, $61, $68, $6f, $76, $7d ; $E384
.else
.byte $4b, $50, $57, $5e, $65, $6c, $73 ; $E37A
.endif

_data_e38b_indexed:
.byte $e3, $e3, $e3, $e3, $e3, $e3, $e3 ; $E38B

_data_e392_indexed:
.byte $20, $38, $50, $68, $80, $98, $b0, $c8, $08 ; $E392

_data_e39b_indexed:
.byte $20, $38, $c8, $b0, $98, $80, $68, $50, $08 ; $E39B

_func_e3a4:
  lda a:_data_e392_indexed,X     ; $E3A4  BD 92 E3
  sta z:_var_001f_indexed        ; $E3A7  85 1F
  lda z:_var_0019                ; $E3A9  A5 19
  lsr a                          ; $E3AB  4A
  bcc _label_e3b3                ; $E3AC  90 05
  lda a:_data_e39b_indexed,X     ; $E3AE  BD 9B E3
  sta z:_var_001f_indexed        ; $E3B1  85 1F

_label_e3b3:
  lda #$02                       ; $E3B3  A9 02
  sta z:_var_0020                ; $E3B5  85 20
  lda z:_var_0088_indexed,X      ; $E3B7  B5 88
  bpl _label_e3cf                ; $E3B9  10 14
  cmp #$FF                       ; $E3BB  C9 FF
  beq _label_e3c2                ; $E3BD  F0 03
  jmp _label_e4d5                ; $E3BF  4C D5 E4

_label_e3c2:
  ldy #$14                       ; $E3C2  A0 14

_label_e3c4:
  lda #$F0                       ; $E3C4  A9 F0
  sta (_var_001f_indexed),Y      ; $E3C6  91 1F
  dey                            ; $E3C8  88
  dey                            ; $E3C9  88
  dey                            ; $E3CA  88
  dey                            ; $E3CB  88
  bpl _label_e3c4                ; $E3CC  10 F6
  rts                            ; $E3CE  60

_label_e3cf:
  cpx #$08                       ; $E3CF  E0 08
  beq _label_e41b                ; $E3D1  F0 48
  lda z:_var_007f_indexed,X      ; $E3D3  B5 7F
  asl a                          ; $E3D5  0A
  asl a                          ; $E3D6  0A
  adc a:_var_0436_indexed,X      ; $E3D7  7D 36 04
  cpx #$02                       ; $E3DA  E0 02
  bcs _label_e408                ; $E3DC  B0 2A
  ldy z:_var_0088_indexed,X      ; $E3DE  B4 88
  adc a:_data_e34c_indexed,Y     ; $E3E0  79 4C E3
  tay                            ; $E3E3  A8
  lda a:_data_e24c_indexed,Y     ; $E3E4  B9 4C E2
  sta z:_var_001d_indexed        ; $E3E7  85 1D
  lda a:_data_e298_indexed,Y     ; $E3E9  B9 98 E2
  sta z:_var_001e                ; $E3EC  85 1E
  lda z:_var_00bd_indexed,X      ; $E3EE  B5 BD
  beq _label_e429                ; $E3F0  F0 37
  ldy z:_var_0088_indexed,X      ; $E3F2  B4 88
  lda a:_data_e34f_indexed,Y     ; $E3F4  B9 4F E3
  adc a:_var_0436_indexed,X      ; $E3F7  7D 36 04
  tay                            ; $E3FA  A8
  lda a:_data_e2e4_indexed,Y     ; $E3FB  B9 E4 E2
  sta z:_var_001d_indexed        ; $E3FE  85 1D
  lda a:_data_e2ec_indexed,Y     ; $E400  B9 EC E2
  sta z:_var_001e                ; $E403  85 1E
  jmp _label_e429                ; $E405  4C 29 E4

_label_e408:
  ldy z:_var_0088_indexed,X      ; $E408  B4 88
  clc                            ; $E40A  18
  adc a:_data_e352_indexed,Y     ; $E40B  79 52 E3
  tay                            ; $E40E  A8
  lda a:_data_e2f4_indexed,Y     ; $E40F  B9 F4 E2
  sta z:_var_001d_indexed        ; $E412  85 1D
  lda a:_data_e320_indexed,Y     ; $E414  B9 20 E3
  sta z:_var_001e                ; $E417  85 1E
  bne _label_e429                ; $E419  D0 0E

_label_e41b:
  ldy z:_var_007f_indexed,X      ; $E41B  B4 7F
  bmi _label_e3c2                ; $E41D  30 A3
  lda a:_data_e384_indexed,Y     ; $E41F  B9 84 E3
  sta z:_var_001d_indexed        ; $E422  85 1D
  lda a:_data_e38b_indexed,Y     ; $E424  B9 8B E3
  sta z:_var_001e                ; $E427  85 1E

_label_e429:
  lda z:_var_0091_indexed,X      ; $E429  B5 91
  sta z:_var_0015                ; $E42B  85 15
  lda z:_var_009a_indexed,X      ; $E42D  B5 9A
  sta z:_var_0012                ; $E42F  85 12
  txa                            ; $E431  8A
  beq _label_e444                ; $E432  F0 10
  cpx #$01                       ; $E434  E0 01
  bne _label_e43c                ; $E436  D0 04
  lda #$01                       ; $E438  A9 01
  bne _label_e444                ; $E43A  D0 08

_label_e43c:
  lda a:_var_0451_indexed,X      ; $E43C  BD 51 04
  clc                            ; $E43F  18
  adc #$02                       ; $E440  69 02
  and #$03                       ; $E442  29 03

_label_e444:
  ldy a:_var_0448_indexed,X      ; $E444  BC 48 04
  beq _label_e44b                ; $E447  F0 02
  ora #$40                       ; $E449  09 40

_label_e44b:
  ldy z:_var_0088_indexed,X      ; $E44B  B4 88
  cpy #$02                       ; $E44D  C0 02
  bne _label_e459                ; $E44F  D0 08
  ldy z:_var_007f_indexed,X      ; $E451  B4 7F
  cpy #$05                       ; $E453  C0 05
  bne _label_e459                ; $E455  D0 02
  eor #$40                       ; $E457  49 40

_label_e459:
  ldy z:_var_009a_indexed,X      ; $E459  B4 9A
  cpy #$C9                       ; $E45B  C0 C9
  bcs _label_e463                ; $E45D  B0 04
  cpx #$09                       ; $E45F  E0 09
  bne _label_e465                ; $E461  D0 02

_label_e463:
  ora #$20                       ; $E463  09 20

_label_e465:
  sta z:_var_0014                ; $E465  85 14
.ifndef japan
  lda #$43
.else
  lda #$39                       ; $E45D  A9 39
.endif
  sta z:_var_0021_indexed        ; $E469  85 21
  lda #$E0                       ; $E46B  A9 E0
  sta z:_var_0022                ; $E46D  85 22
  lda a:_var_0448_indexed,X      ; $E46F  BD 48 04
  beq _label_e47c                ; $E472  F0 08
.ifndef japan
  lda #$79
.else
  lda #$6F                       ; $E46A  A9 6F
.endif
  sta z:_var_0021_indexed        ; $E476  85 21
  lda #$E0                       ; $E478  A9 E0
  sta z:_var_0022                ; $E47A  85 22

_label_e47c:
  ldy #$00                       ; $E47C  A0 00
  lda (_var_001d_indexed),Y      ; $E47E  B1 1D
  inc z:_var_001d_indexed        ; $E480  E6 1D
  bne _label_e486                ; $E482  D0 02
  inc z:_var_001e                ; $E484  E6 1E

_label_e486:
  asl a                          ; $E486  0A
  sta z:_var_0013                ; $E487  85 13
  asl a                          ; $E489  0A
  adc z:_var_0013                ; $E48A  65 13
  adc z:_var_0021_indexed        ; $E48C  65 21
  sta z:_var_0021_indexed        ; $E48E  85 21
  bcc _label_e494                ; $E490  90 02
  inc z:_var_0022                ; $E492  E6 22

_label_e494:
  txa                            ; $E494  8A
  pha                            ; $E495  48
  ldx #$05                       ; $E496  A2 05
  ldy #$00                       ; $E498  A0 00

_label_e49a:
  lda z:_var_0012                ; $E49A  A5 12
  clc                            ; $E49C  18
  adc a:_data_e03d_indexed,X     ; $E49D  7D 3D E0
  sta (_var_001f_indexed),Y      ; $E4A0  91 1F
  sta z:_var_0012                ; $E4A2  85 12
  iny                            ; $E4A4  C8
  sty z:_var_0013                ; $E4A5  84 13
  ldy #$00                       ; $E4A7  A0 00
  lda (_var_001d_indexed),Y      ; $E4A9  B1 1D
  inc z:_var_001d_indexed        ; $E4AB  E6 1D
  bne _label_e4b1                ; $E4AD  D0 02
  inc z:_var_001e                ; $E4AF  E6 1E

_label_e4b1:
  ldy z:_var_0013                ; $E4B1  A4 13
  sta (_var_001f_indexed),Y      ; $E4B3  91 1F
  iny                            ; $E4B5  C8
  lda z:_var_0014                ; $E4B6  A5 14
  sta (_var_001f_indexed),Y      ; $E4B8  91 1F
  iny                            ; $E4BA  C8
  sty z:_var_0013                ; $E4BB  84 13
  ldy #$00                       ; $E4BD  A0 00
  lda z:_var_0015                ; $E4BF  A5 15
  clc                            ; $E4C1  18
  adc (_var_0021_indexed),Y      ; $E4C2  71 21
  inc z:_var_0021_indexed        ; $E4C4  E6 21
  bne _label_e4ca                ; $E4C6  D0 02
  inc z:_var_0022                ; $E4C8  E6 22

_label_e4ca:
  ldy z:_var_0013                ; $E4CA  A4 13
  sta (_var_001f_indexed),Y      ; $E4CC  91 1F
  iny                            ; $E4CE  C8
  dex                            ; $E4CF  CA
  bpl _label_e49a                ; $E4D0  10 C8
  pla                            ; $E4D2  68
  tax                            ; $E4D3  AA
  rts                            ; $E4D4  60

_label_e4d5:
  txa                            ; $E4D5  8A
  pha                            ; $E4D6  48
  ldy z:_var_001f_indexed        ; $E4D7  A4 1F
  lda z:_var_009a_indexed,X      ; $E4D9  B5 9A
  sta a:_var_0200_indexed,Y      ; $E4DB  99 00 02
  sta a:_var_0204_indexed,Y      ; $E4DE  99 04 02
  clc                            ; $E4E1  18
  adc #$08                       ; $E4E2  69 08
  sta a:_var_0208_indexed,Y      ; $E4E4  99 08 02
  sta a:_var_020c_indexed,Y      ; $E4E7  99 0C 02
  lda #$F0                       ; $E4EA  A9 F0
  sta a:_var_0210_indexed,Y      ; $E4EC  99 10 02
  sta a:_var_0214_indexed,Y      ; $E4EF  99 14 02
  lda z:_var_0091_indexed,X      ; $E4F2  B5 91
  sta a:_var_0203_indexed,Y      ; $E4F4  99 03 02
  sta a:_var_020b_indexed,Y      ; $E4F7  99 0B 02
  clc                            ; $E4FA  18
  adc #$08                       ; $E4FB  69 08
  sta a:_var_0207_indexed,Y      ; $E4FD  99 07 02
  sta a:_var_020f_indexed,Y      ; $E500  99 0F 02
  lda z:_var_009a_indexed,X      ; $E503  B5 9A
  cmp #$D0                       ; $E505  C9 D0
  lda #$03                       ; $E507  A9 03
  bcc _label_e50d                ; $E509  90 02
  lda #$23                       ; $E50B  A9 23

_label_e50d:
  sta a:_var_0202_indexed,Y      ; $E50D  99 02 02
  lda z:_var_007f_indexed,X      ; $E510  B5 7F
  bne _label_e553                ; $E512  D0 3F
  lda a:_var_0202_indexed,Y      ; $E514  B9 02 02
  sta a:_var_0206_indexed,Y      ; $E517  99 06 02
  sta a:_var_020a_indexed,Y      ; $E51A  99 0A 02
  sta a:_var_020e_indexed,Y      ; $E51D  99 0E 02
  lda #$DA                       ; $E520  A9 DA
  sta a:_var_0201_indexed,Y      ; $E522  99 01 02
  lda #$DB                       ; $E525  A9 DB
  sta a:_var_0205_indexed,Y      ; $E527  99 05 02
  lda #$DC                       ; $E52A  A9 DC
  sta a:_var_0209_indexed,Y      ; $E52C  99 09 02
  lda #$DD                       ; $E52F  A9 DD
  sta a:_var_020d_indexed,Y      ; $E531  99 0D 02
  ldx z:_var_001f_indexed        ; $E534  A6 1F
  lda z:_var_0019                ; $E536  A5 19
  and #$20                       ; $E538  29 20
  beq _label_e550                ; $E53A  F0 14
  lda z:_var_0019                ; $E53C  A5 19
  and #$40                       ; $E53E  29 40
  bne _label_e54a                ; $E540  D0 08
  inc a:_var_0200_indexed,X      ; $E542  FE 00 02
  inc a:_var_0204_indexed,X      ; $E545  FE 04 02
  bne _label_e550                ; $E548  D0 06

_label_e54a:
  inc a:_var_0203_indexed,X      ; $E54A  FE 03 02
  inc a:_var_020b_indexed,X      ; $E54D  FE 0B 02

_label_e550:
  pla                            ; $E550  68
  tax                            ; $E551  AA
  rts                            ; $E552  60

_label_e553:
  lda a:_var_0202_indexed,Y      ; $E553  B9 02 02
  ora #$40                       ; $E556  09 40
  sta a:_var_0206_indexed,Y      ; $E558  99 06 02
  ora #$80                       ; $E55B  09 80
  sta a:_var_020e_indexed,Y      ; $E55D  99 0E 02
  and #$BF                       ; $E560  29 BF
  sta a:_var_020a_indexed,Y      ; $E562  99 0A 02
  lda #$DE                       ; $E565  A9 DE
  sta a:_var_0201_indexed,Y      ; $E567  99 01 02
  sta a:_var_0205_indexed,Y      ; $E56A  99 05 02
  sta a:_var_0209_indexed,Y      ; $E56D  99 09 02
  sta a:_var_020d_indexed,Y      ; $E570  99 0D 02
  dec a:_var_045a_indexed,X      ; $E573  DE 5A 04
  bpl _label_e584                ; $E576  10 0C
  lda #$FF                       ; $E578  A9 FF
  sta z:_var_0088_indexed,X      ; $E57A  95 88
  lda #$F0                       ; $E57C  A9 F0
  sta z:_var_009a_indexed,X      ; $E57E  95 9A
  lda #$04                       ; $E580  A9 04
  sta z:_var_00f1                ; $E582  85 F1

_label_e584:
  pla                            ; $E584  68
  tax                            ; $E585  AA
  rts                            ; $E586  60

_func_e587:
  ldx z:_var_00bb                ; $E587  A6 BB
  bmi _label_e5c4                ; $E589  30 39
  lda a:_data_e5c5_indexed,X     ; $E58B  BD C5 E5
  sta z:_var_001d_indexed        ; $E58E  85 1D
  lda a:_data_e5ca_indexed,X     ; $E590  BD CA E5
  sta z:_var_001e                ; $E593  85 1E
  ldy #$00                       ; $E595  A0 00
  ldx #$00                       ; $E597  A2 00

_label_e599:
  lda (_var_001d_indexed),Y      ; $E599  B1 1D
  sta a:_var_02e0_indexed,X      ; $E59B  9D E0 02
  iny                            ; $E59E  C8
  inx                            ; $E59F  E8
  cmp #$F0                       ; $E5A0  C9 F0
  bne _label_e5a7                ; $E5A2  D0 03
  inx                            ; $E5A4  E8
  inx                            ; $E5A5  E8
  inx                            ; $E5A6  E8

_label_e5a7:
  cpx #$10                       ; $E5A7  E0 10
  bne _label_e599                ; $E5A9  D0 EE
  ldy #$0F                       ; $E5AB  A0 0F

_label_e5ad:
  lda a:_var_02e0_indexed,Y      ; $E5AD  B9 E0 02
  clc                            ; $E5B0  18
  adc z:_var_00bc                ; $E5B1  65 BC
  sta a:_var_02e0_indexed,Y      ; $E5B3  99 E0 02
  dey                            ; $E5B6  88
  dey                            ; $E5B7  88
  dey                            ; $E5B8  88
  dey                            ; $E5B9  88
  bpl _label_e5ad                ; $E5BA  10 F1
  lda z:_var_0019                ; $E5BC  A5 19
  and #$03                       ; $E5BE  29 03
  bne _label_e5c4                ; $E5C0  D0 02
  dec z:_var_00bb                ; $E5C2  C6 BB

_label_e5c4:
  rts                            ; $E5C4  60

_data_e5c5_indexed:
.ifndef japan
.byte $fd, $ed, $e0, $d6, $cf    ; $E5C5
.else
.byte $f3, $e3, $d6, $cc, $c5    ; $E5BB
.endif

_data_e5ca_indexed:
.byte $e5, $e5, $e5, $e5, $e5, $d0, $ae, $03, $04, $f0, $f0, $f0, $c8, $af, $03, $04 ; $E5CA
.byte $d0, $b0, $03, $04, $f0, $f0, $c8, $b1, $03, $fc, $c8, $b2, $03, $04, $d0, $b3 ; $E5DA
.byte $03, $04, $f0, $c8, $b4, $03, $00, $c8, $b4, $43, $08, $d0, $b5, $03, $00, $d0 ; $E5EA
.byte $b5, $43, $08, $f0, $f0, $f0, $f0 ; $E5FA

_data_e601_indexed:
.byte $04, $04, $05, $06, $03, $03, $03, $06, $0a, $0a, $0a, $0a ; $E601

_data_e60d_indexed:
.byte $28, $32, $46, $78, $00, $00, $00, $64, $00, $00, $00, $00 ; $E60D

_data_e619_indexed:
.byte $0a, $1e, $32, $70, $00, $00, $00, $70, $00, $00, $00, $00 ; $E619

_data_e625_indexed:
.byte $14, $3c, $64, $a0, $00, $00, $00, $a0, $00, $00, $00, $00 ; $E625

_data_e631_indexed:
.byte $70, $b0, $e0, $40, $80, $80, $80, $40, $00, $00, $00, $00 ; $E631

_data_e63d_indexed:
.byte $00, $00, $00, $01, $00, $00, $00, $01, $00, $00, $00, $00 ; $E63D

_data_e649_indexed:
.byte $90, $50, $20, $c0, $80, $80, $80, $c0, $00, $00, $00, $00 ; $E649

_data_e655_indexed:
.byte $ff, $ff, $ff, $fe, $ff, $ff, $ff, $fe, $00, $00, $00, $00 ; $E655

_data_e661_indexed:
.byte $50, $90, $c0, $40, $40, $40, $40, $40, $00, $00, $00, $00 ; $E661

_data_e66d_indexed:
.byte $00, $00, $00, $01, $00, $00, $00, $01, $02, $02, $02, $02 ; $E66D

_data_e679_indexed:
.byte $b0, $70, $40, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0 ; $E679

_data_e685_indexed:
.byte $ff, $ff, $ff, $fe, $ff, $ff, $ff, $fe, $fe, $01, $fe, $fe ; $E685

_func_e691:
  jsr _func_ee25                 ; $E691  20 25 EE
  ldx #$07                       ; $E694  A2 07

_label_e696:
  lda z:_var_0088_indexed,X      ; $E696  B5 88
  bpl _label_e6a4                ; $E698  10 0A
  cmp #$FF                       ; $E69A  C9 FF
  beq _label_e6e2                ; $E69C  F0 44
  jsr _func_ecba                 ; $E69E  20 BA EC
  jmp _label_e6e2                ; $E6A1  4C E2 E6

_label_e6a4:
  cpx #$02                       ; $E6A4  E0 02
  bcc _label_e6b8                ; $E6A6  90 10
  cmp #$01                       ; $E6A8  C9 01
  bne _label_e6b8                ; $E6AA  D0 0C
  lda z:_var_007f_indexed,X      ; $E6AC  B5 7F
  cmp #$02                       ; $E6AE  C9 02
  bcs _label_e6b8                ; $E6B0  B0 06
  lda z:_var_00f1                ; $E6B2  A5 F1
  ora #$20                       ; $E6B4  09 20
  sta z:_var_00f1                ; $E6B6  85 F1

_label_e6b8:
  dec a:_var_043f_indexed,X      ; $E6B8  DE 3F 04
  bne _label_e6d9                ; $E6BB  D0 1C
  lda #$03                       ; $E6BD  A9 03
  sta a:_var_043f_indexed,X      ; $E6BF  9D 3F 04
  cpx #$02                       ; $E6C2  E0 02
  bcs _label_e6ce                ; $E6C4  B0 08
  dec z:_var_00bf_indexed,X      ; $E6C6  D6 BF
  bne _label_e6ce                ; $E6C8  D0 04
  lda #$00                       ; $E6CA  A9 00
  sta z:_var_00bd_indexed,X      ; $E6CC  95 BD

_label_e6ce:
  jsr _func_ea18                 ; $E6CE  20 18 EA
  stx z:_var_003e                ; $E6D1  86 3E
  jsr _func_ebc4                 ; $E6D3  20 C4 EB
  jsr _func_e796                 ; $E6D6  20 96 E7

_label_e6d9:
  jsr _func_ea58                 ; $E6D9  20 58 EA
  jsr _func_ed28                 ; $E6DC  20 28 ED
  jsr _func_e983                 ; $E6DF  20 83 E9

_label_e6e2:
  jsr _func_e3a4                 ; $E6E2  20 A4 E3
  dex                            ; $E6E5  CA
  bpl _label_e696                ; $E6E6  10 AE
  rts                            ; $E6E8  60

_func_e6e9:
  cpx #$02                       ; $E6E9  E0 02
  bcs _label_e705                ; $E6EB  B0 18
  lda z:_var_0019                ; $E6ED  A5 19
  and #$0F                       ; $E6EF  29 0F
  bne _label_e6f8                ; $E6F1  D0 05
  jsr _func_f1b3                 ; $E6F3  20 B3 F1
  sta z:_var_0031_indexed,X      ; $E6F6  95 31

_label_e6f8:
  lda z:_var_003a                ; $E6F8  A5 3A
  bne _label_e705                ; $E6FA  D0 09
  jsr _func_e76a                 ; $E6FC  20 6A E7
  lda a:_var_061c_indexed,X      ; $E6FF  BD 1C 06
  sta z:_var_0031_indexed,X      ; $E702  95 31

_label_e704:
  rts                            ; $E704  60

_label_e705:
  lda z:_var_009a_indexed,X      ; $E705  B5 9A
  cmp #$A0                       ; $E707  C9 A0
  bcc _label_e712                ; $E709  90 07
  lda z:_var_0031_indexed,X      ; $E70B  B5 31
  ora #$40                       ; $E70D  09 40
  sta z:_var_0031_indexed,X      ; $E70F  95 31
  rts                            ; $E711  60

_label_e712:
  dec a:_var_045a_indexed,X      ; $E712  DE 5A 04
  bne _label_e704                ; $E715  D0 ED
  jsr _func_f1b3                 ; $E717  20 B3 F1
  ldy a:_var_0451_indexed,X      ; $E71A  BC 51 04
  and a:_data_e762_indexed,Y     ; $E71D  39 62 E7
  adc a:_data_e765_indexed,Y     ; $E720  79 65 E7
  sta a:_var_045a_indexed,X      ; $E723  9D 5A 04
  stx z:_var_0012                ; $E726  86 12
  lda z:_var_0019                ; $E728  A5 19
  rol a                          ; $E72A  2A
  rol a                          ; $E72B  2A
  eor z:_var_0012                ; $E72C  45 12
  and #$01                       ; $E72E  29 01
  tay                            ; $E730  A8
  lda a:_var_0088_indexed,Y      ; $E731  B9 88 00
  bmi _label_e749                ; $E734  30 13
  lda a:_var_00bd_indexed,Y      ; $E736  B9 BD 00
  bne _label_e749                ; $E739  D0 0E
  lda #$00                       ; $E73B  A9 00
  sta z:_var_0031_indexed,X      ; $E73D  95 31
  lda a:_var_009a_indexed,Y      ; $E73F  B9 9A 00
  sec                            ; $E742  38
  sbc #$04                       ; $E743  E9 04
  cmp z:_var_009a_indexed,X      ; $E745  D5 9A
  bcs _label_e74d                ; $E747  B0 04

_label_e749:
  lda #$40                       ; $E749  A9 40
  sta z:_var_0031_indexed,X      ; $E74B  95 31

_label_e74d:
  lda z:_var_0091_indexed,X      ; $E74D  B5 91
  cmp a:_var_0091_indexed,Y      ; $E74F  D9 91 00
  bcs _label_e75b                ; $E752  B0 07
  lda z:_var_0031_indexed,X      ; $E754  B5 31
  ora #$01                       ; $E756  09 01
  sta z:_var_0031_indexed,X      ; $E758  95 31
  rts                            ; $E75A  60

_label_e75b:
  lda z:_var_0031_indexed,X      ; $E75B  B5 31
  ora #$02                       ; $E75D  09 02
  sta z:_var_0031_indexed,X      ; $E75F  95 31
  rts                            ; $E761  60

_data_e762_indexed:
.byte $1f, $0f, $07              ; $E762

_data_e765_indexed:
.byte $20, $10, $08              ; $E765

_func_e768:
  ldx #$00                       ; $E768  A2 00

_func_e76a:
  lda #$01                       ; $E76A  A9 01
  sta JOYPAD1                    ; $E76C  8D 16 40
  lda #$00                       ; $E76F  A9 00
  sta JOYPAD1                    ; $E771  8D 16 40
  ldy #$07                       ; $E774  A0 07

_label_e776:
  lda JOYPAD1,X                  ; $E776  BD 16 40
  sta z:_var_0012                ; $E779  85 12
  lsr a                          ; $E77B  4A
  ora z:_var_0012                ; $E77C  05 12
  lsr a                          ; $E77E  4A
  rol a:_var_061c_indexed,X      ; $E77F  3E 1C 06
  dey                            ; $E782  88
  bpl _label_e776                ; $E783  10 F1
  ldy a:_var_061e_indexed,X      ; $E785  BC 1E 06
  lda a:_var_061c_indexed,X      ; $E788  BD 1C 06
  sta a:_var_061e_indexed,X      ; $E78B  9D 1E 06
  tya                            ; $E78E  98
  eor a:_var_061c_indexed,X      ; $E78F  5D 1C 06
  and a:_var_061c_indexed,X      ; $E792  3D 1C 06
  rts                            ; $E795  60

_func_e796:
  lda z:_var_0088_indexed,X      ; $E796  B5 88
  bne _label_e7a3                ; $E798  D0 09

_label_e79a:
  lda #$00                       ; $E79A  A9 00
  sta a:_var_0424_indexed,X      ; $E79C  9D 24 04
  sta a:_var_042d_indexed,X      ; $E79F  9D 2D 04
  rts                            ; $E7A2  60

_label_e7a3:
  cmp #$02                       ; $E7A3  C9 02
  beq _label_e7e8                ; $E7A5  F0 41
  cpx #$02                       ; $E7A7  E0 02
  bcc _label_e7e8                ; $E7A9  90 3D
  lda z:_var_007f_indexed,X      ; $E7AB  B5 7F
  cmp #$02                       ; $E7AD  C9 02
  bcs _label_e79a                ; $E7AF  B0 E9

_func_e7b1:
  lda a:_var_0424_indexed,X      ; $E7B1  BD 24 04
  sta z:_var_0012                ; $E7B4  85 12
  lda a:_var_042d_indexed,X      ; $E7B6  BD 2D 04
  sta z:_var_0013                ; $E7B9  85 13
  jsr _func_f1a6                 ; $E7BB  20 A6 F1
  lda a:_var_0463_indexed,X      ; $E7BE  BD 63 04
  clc                            ; $E7C1  18
  adc z:_var_0012                ; $E7C2  65 12
  sta a:_var_0463_indexed,X      ; $E7C4  9D 63 04
  sta z:_var_0012                ; $E7C7  85 12
  lda a:_var_046c_indexed,X      ; $E7C9  BD 6C 04
  adc z:_var_0013                ; $E7CC  65 13
  sta a:_var_046c_indexed,X      ; $E7CE  9D 6C 04
  sta z:_var_0013                ; $E7D1  85 13
  jsr _func_f1a6                 ; $E7D3  20 A6 F1
  lda a:_var_0424_indexed,X      ; $E7D6  BD 24 04
  sec                            ; $E7D9  38
  sbc z:_var_0012                ; $E7DA  E5 12
  sta a:_var_0424_indexed,X      ; $E7DC  9D 24 04
  lda a:_var_042d_indexed,X      ; $E7DF  BD 2D 04
  sbc z:_var_0013                ; $E7E2  E5 13
  sta a:_var_042d_indexed,X      ; $E7E4  9D 2D 04
  rts                            ; $E7E7  60

_label_e7e8:
  lda z:_var_007f_indexed,X      ; $E7E8  B5 7F
  cmp #$06                       ; $E7EA  C9 06
  bcc _label_e7ef                ; $E7EC  90 01
  rts                            ; $E7EE  60

_label_e7ef:
  lda z:_var_007f_indexed,X      ; $E7EF  B5 7F
  cmp #$04                       ; $E7F1  C9 04
  bne _label_e811                ; $E7F3  D0 1C
  lda z:_var_0031_indexed,X      ; $E7F5  B5 31
  and #$02                       ; $E7F7  29 02
  beq _label_e802                ; $E7F9  F0 07
  lda a:_var_0448_indexed,X      ; $E7FB  BD 48 04
  beq _label_e811                ; $E7FE  F0 11  unconditional branch pattern (complementary branches)
  bne _label_e80d                ; $E800  D0 0B

_label_e802:
  lda z:_var_0031_indexed,X      ; $E802  B5 31
  and #$01                       ; $E804  29 01
  beq _label_e811                ; $E806  F0 09
  lda a:_var_0448_indexed,X      ; $E808  BD 48 04
  bne _label_e811                ; $E80B  D0 04

_label_e80d:
  lda #$05                       ; $E80D  A9 05
  sta z:_var_007f_indexed,X      ; $E80F  95 7F

_label_e811:
  lda z:_var_007f_indexed,X      ; $E811  B5 7F
  cmp #$02                       ; $E813  C9 02
  bne _label_e832                ; $E815  D0 1B
  lda z:_var_0031_indexed,X      ; $E817  B5 31
  and #$02                       ; $E819  29 02
  beq _label_e821                ; $E81B  F0 04
  lda #$00                       ; $E81D  A9 00
  beq _label_e829                ; $E81F  F0 08

_label_e821:
  lda z:_var_0031_indexed,X      ; $E821  B5 31
  and #$01                       ; $E823  29 01
  beq _label_e82e                ; $E825  F0 07
  lda #$01                       ; $E827  A9 01

_label_e829:
  cmp a:_var_0448_indexed,X      ; $E829  DD 48 04
  beq _label_e832                ; $E82C  F0 04

_label_e82e:
  lda #$04                       ; $E82E  A9 04
  sta z:_var_007f_indexed,X      ; $E830  95 7F

_label_e832:
  lda z:_var_007f_indexed,X      ; $E832  B5 7F
  cmp #$04                       ; $E834  C9 04
  bcc _label_e854                ; $E836  90 1C
  lda z:_var_0031_indexed,X      ; $E838  B5 31
  and #$02                       ; $E83A  29 02
  beq _label_e845                ; $E83C  F0 07
  lda a:_var_0448_indexed,X      ; $E83E  BD 48 04
  bne _label_e854                ; $E841  D0 11  unconditional branch pattern (complementary branches)
  beq _label_e850                ; $E843  F0 0B

_label_e845:
  lda z:_var_0031_indexed,X      ; $E845  B5 31
  and #$01                       ; $E847  29 01
  beq _label_e854                ; $E849  F0 09
  lda a:_var_0448_indexed,X      ; $E84B  BD 48 04
  beq _label_e854                ; $E84E  F0 04

_label_e850:
  lda #$02                       ; $E850  A9 02
  sta z:_var_007f_indexed,X      ; $E852  95 7F

_label_e854:
  lda z:_var_007f_indexed,X      ; $E854  B5 7F
  cmp #$03                       ; $E856  C9 03
  bne _label_e864                ; $E858  D0 0A
  lda z:_var_0031_indexed,X      ; $E85A  B5 31
  and #$03                       ; $E85C  29 03
  beq _label_e864                ; $E85E  F0 04
  lda #$02                       ; $E860  A9 02
  sta z:_var_007f_indexed,X      ; $E862  95 7F

_label_e864:
  lda z:_var_007f_indexed,X      ; $E864  B5 7F
  cmp #$04                       ; $E866  C9 04
  bcs _label_e87f                ; $E868  B0 15
  lda z:_var_0031_indexed,X      ; $E86A  B5 31
  and #$02                       ; $E86C  29 02
  beq _label_e874                ; $E86E  F0 04
  lda #$00                       ; $E870  A9 00
  beq _label_e87c                ; $E872  F0 08

_label_e874:
  lda z:_var_0031_indexed,X      ; $E874  B5 31
  and #$01                       ; $E876  29 01
  beq _label_e87f                ; $E878  F0 05
  lda #$01                       ; $E87A  A9 01

_label_e87c:
  sta a:_var_0448_indexed,X      ; $E87C  9D 48 04

_label_e87f:
  lda z:_var_007f_indexed,X      ; $E87F  B5 7F
  cmp #$04                       ; $E881  C9 04
  bcc _label_e8b8                ; $E883  90 33
  lda a:_var_0436_indexed,X      ; $E885  BD 36 04
  cmp #$01                       ; $E888  C9 01
  bne _label_e8b8                ; $E88A  D0 2C
  ldy a:_var_0451_indexed,X      ; $E88C  BC 51 04
  lda a:_var_0448_indexed,X      ; $E88F  BD 48 04
  beq _label_e8a6                ; $E892  F0 12
  lda a:_var_0424_indexed,X      ; $E894  BD 24 04
  sec                            ; $E897  38
  sbc a:_data_e625_indexed,Y     ; $E898  F9 25 E6
  sta a:_var_0424_indexed,X      ; $E89B  9D 24 04
  lda a:_var_042d_indexed,X      ; $E89E  BD 2D 04
  sbc #$00                       ; $E8A1  E9 00
  jmp _label_e901                ; $E8A3  4C 01 E9

_label_e8a6:
  lda a:_var_0424_indexed,X      ; $E8A6  BD 24 04
  clc                            ; $E8A9  18
  adc a:_data_e625_indexed,Y     ; $E8AA  79 25 E6
  sta a:_var_0424_indexed,X      ; $E8AD  9D 24 04
  lda a:_var_042d_indexed,X      ; $E8B0  BD 2D 04
  adc #$00                       ; $E8B3  69 00
  jmp _label_e901                ; $E8B5  4C 01 E9

_label_e8b8:
  lda z:_var_007f_indexed,X      ; $E8B8  B5 7F
  beq _label_e8c7                ; $E8BA  F0 0B
  cmp #$02                       ; $E8BC  C9 02
  beq _label_e907                ; $E8BE  F0 47
  cmp #$03                       ; $E8C0  C9 03
  beq _label_e8c7                ; $E8C2  F0 03
  jmp _label_e951                ; $E8C4  4C 51 E9

_label_e8c7:
  lda a:_var_0436_indexed,X      ; $E8C7  BD 36 04
  cmp #$01                       ; $E8CA  C9 01
  beq _label_e8d1                ; $E8CC  F0 03
  jmp _label_e951                ; $E8CE  4C 51 E9

_label_e8d1:
  ldy a:_var_0451_indexed,X      ; $E8D1  BC 51 04
  lda z:_var_0031_indexed,X      ; $E8D4  B5 31
  and #$02                       ; $E8D6  29 02
  beq _label_e8ec                ; $E8D8  F0 12
  lda a:_var_0424_indexed,X      ; $E8DA  BD 24 04
  sec                            ; $E8DD  38
  sbc a:_data_e619_indexed,Y     ; $E8DE  F9 19 E6
  sta a:_var_0424_indexed,X      ; $E8E1  9D 24 04
  lda a:_var_042d_indexed,X      ; $E8E4  BD 2D 04
  sbc #$00                       ; $E8E7  E9 00
  jmp _label_e901                ; $E8E9  4C 01 E9

_label_e8ec:
  lda z:_var_0031_indexed,X      ; $E8EC  B5 31
  and #$01                       ; $E8EE  29 01
  beq _label_e951                ; $E8F0  F0 5F
  lda a:_var_0424_indexed,X      ; $E8F2  BD 24 04
  clc                            ; $E8F5  18
  adc a:_data_e619_indexed,Y     ; $E8F6  79 19 E6
  sta a:_var_0424_indexed,X      ; $E8F9  9D 24 04
  lda a:_var_042d_indexed,X      ; $E8FC  BD 2D 04
  adc #$00                       ; $E8FF  69 00

_label_e901:
  sta a:_var_042d_indexed,X      ; $E901  9D 2D 04
  jmp _label_e951                ; $E904  4C 51 E9

_label_e907:
  lda a:_var_0436_indexed,X      ; $E907  BD 36 04
  cmp #$01                       ; $E90A  C9 01
  bne _label_e951                ; $E90C  D0 43
  ldy a:_var_0451_indexed,X      ; $E90E  BC 51 04
  lda z:_var_0031_indexed,X      ; $E911  B5 31
  and #$02                       ; $E913  29 02
  beq _label_e929                ; $E915  F0 12
  lda a:_var_0424_indexed,X      ; $E917  BD 24 04
  sec                            ; $E91A  38
  sbc a:_data_e625_indexed,Y     ; $E91B  F9 25 E6
  sta a:_var_0424_indexed,X      ; $E91E  9D 24 04
  lda a:_var_042d_indexed,X      ; $E921  BD 2D 04
  sbc #$00                       ; $E924  E9 00
  jmp _label_e93e                ; $E926  4C 3E E9

_label_e929:
  lda z:_var_0031_indexed,X      ; $E929  B5 31
  and #$01                       ; $E92B  29 01
  beq _label_e951                ; $E92D  F0 22
  lda a:_var_0424_indexed,X      ; $E92F  BD 24 04
  clc                            ; $E932  18
  adc a:_data_e625_indexed,Y     ; $E933  79 25 E6
  sta a:_var_0424_indexed,X      ; $E936  9D 24 04
  lda a:_var_042d_indexed,X      ; $E939  BD 2D 04
  adc #$00                       ; $E93C  69 00

_label_e93e:
  sta a:_var_042d_indexed,X      ; $E93E  9D 2D 04
  lda z:_var_0031_indexed,X      ; $E941  B5 31
  and #$03                       ; $E943  29 03
  beq _label_e951                ; $E945  F0 0A
  cpx #$02                       ; $E947  E0 02
  bcs _label_e951                ; $E949  B0 06
  lda z:_var_00f0_indexed        ; $E94B  A5 F0
  ora #$08                       ; $E94D  09 08
  sta z:_var_00f0_indexed        ; $E94F  85 F0

_label_e951:
  lda z:_var_007f_indexed,X      ; $E951  B5 7F
  cmp #$04                       ; $E953  C9 04
  bcc _label_e982                ; $E955  90 2B
  lda a:_var_0448_indexed,X      ; $E957  BD 48 04
  bne _label_e963                ; $E95A  D0 07
  lda a:_var_042d_indexed,X      ; $E95C  BD 2D 04
  bmi _label_e982                ; $E95F  30 21  unconditional branch pattern (complementary branches)
  bpl _label_e968                ; $E961  10 05

_label_e963:
  lda a:_var_042d_indexed,X      ; $E963  BD 2D 04
  bpl _label_e982                ; $E966  10 1A

_label_e968:
  lda z:_var_007f_indexed,X      ; $E968  B5 7F
  cmp #$05                       ; $E96A  C9 05
  bne _label_e976                ; $E96C  D0 08
  lda a:_var_0448_indexed,X      ; $E96E  BD 48 04
  eor #$01                       ; $E971  49 01
  sta a:_var_0448_indexed,X      ; $E973  9D 48 04

_label_e976:
  lda #$03                       ; $E976  A9 03
  sta z:_var_007f_indexed,X      ; $E978  95 7F
  lda #$00                       ; $E97A  A9 00
  sta a:_var_0424_indexed,X      ; $E97C  9D 24 04
  sta a:_var_042d_indexed,X      ; $E97F  9D 2D 04

_label_e982:
  rts                            ; $E982  60

_func_e983:
  lda z:_var_00cb                ; $E983  A5 CB
  bne _label_e9b6                ; $E985  D0 2F
  lda z:_var_00bd_indexed,X      ; $E987  B5 BD
  beq _label_e99a                ; $E989  F0 0F
  lda a:_var_0488                ; $E98B  AD 88 04
  beq _label_e99a                ; $E98E  F0 0A
  sec                            ; $E990  38
  sbc z:_var_0091_indexed,X      ; $E991  F5 91
  jsr _func_f08e                 ; $E993  20 8E F0
  cmp #$05                       ; $E996  C9 05
  bcc _label_e9b6                ; $E998  90 1C

_label_e99a:
  cpx #$02                       ; $E99A  E0 02
  bcc _label_e9a4                ; $E99C  90 06
  lda z:_var_0088_indexed,X      ; $E99E  B5 88
  cmp #$02                       ; $E9A0  C9 02
  bne _label_e9f2                ; $E9A2  D0 4E

_label_e9a4:
  lda z:_var_007f_indexed,X      ; $E9A4  B5 7F
  cmp #$02                       ; $E9A6  C9 02
  bcc _label_e9f2                ; $E9A8  90 48
  cmp #$06                       ; $E9AA  C9 06
  bcs _label_e9f2                ; $E9AC  B0 44
  lda #$01                       ; $E9AE  A9 01
  sta z:_var_007f_indexed,X      ; $E9B0  95 7F
  sta a:_var_045a_indexed,X      ; $E9B2  9D 5A 04
  rts                            ; $E9B5  60

_label_e9b6:
  lda #$00                       ; $E9B6  A9 00
  sta a:_var_0412_indexed,X      ; $E9B8  9D 12 04
  sta a:_var_041b_indexed,X      ; $E9BB  9D 1B 04
  sta a:_var_0409_indexed,X      ; $E9BE  9D 09 04
  sta z:_var_00cb                ; $E9C1  85 CB
  cpx #$02                       ; $E9C3  E0 02
  bcc _label_e9fd                ; $E9C5  90 36
  lda z:_var_0088_indexed,X      ; $E9C7  B5 88
  cmp #$02                       ; $E9C9  C9 02
  beq _label_e9f3                ; $E9CB  F0 26
  cmp #$01                       ; $E9CD  C9 01
  bne _label_e9f2                ; $E9CF  D0 21
  lda z:_var_007f_indexed,X      ; $E9D1  B5 7F
  cmp #$02                       ; $E9D3  C9 02
  bcs _label_e9f2                ; $E9D5  B0 1B
  lda #$02                       ; $E9D7  A9 02
  sta z:_var_007f_indexed,X      ; $E9D9  95 7F
  lda z:_var_00c6                ; $E9DB  A5 C6
  sta a:_var_043f_indexed,X      ; $E9DD  9D 3F 04
  lda #$00                       ; $E9E0  A9 00
  sta a:_var_0424_indexed,X      ; $E9E2  9D 24 04
  sta a:_var_042d_indexed,X      ; $E9E5  9D 2D 04
  sta a:_var_0463_indexed,X      ; $E9E8  9D 63 04
  sta a:_var_046c_indexed,X      ; $E9EB  9D 6C 04
  lda #$40                       ; $E9EE  A9 40
  sta z:_var_00f1                ; $E9F0  85 F1

_label_e9f2:
  rts                            ; $E9F2  60

_label_e9f3:
  lda #$00                       ; $E9F3  A9 00
  sta z:_var_007f_indexed,X      ; $E9F5  95 7F
  lda #$01                       ; $E9F7  A9 01
  sta a:_var_045a_indexed,X      ; $E9F9  9D 5A 04
  rts                            ; $E9FC  60

_label_e9fd:
  lda z:_var_007f_indexed,X      ; $E9FD  B5 7F
  cmp #$01                       ; $E9FF  C9 01
  bne _label_ea17                ; $EA01  D0 14
  cmp #$06                       ; $EA03  C9 06
  bcs _label_ea17                ; $EA05  B0 10
  lda a:_var_0424_indexed,X      ; $EA07  BD 24 04
  ora a:_var_042d_indexed,X      ; $EA0A  1D 2D 04
  bne _label_ea13                ; $EA0D  D0 04
  lda #$03                       ; $EA0F  A9 03
  bne _label_ea15                ; $EA11  D0 02

_label_ea13:
  lda #$02                       ; $EA13  A9 02

_label_ea15:
  sta z:_var_007f_indexed,X      ; $EA15  95 7F

_label_ea17:
  rts                            ; $EA17  60

_func_ea18:
  cpx #$02                       ; $EA18  E0 02
  bcs _label_ea2c                ; $EA1A  B0 10
  lda z:_var_00bd_indexed,X      ; $EA1C  B5 BD
  bne _label_ea44                ; $EA1E  D0 24
  lda z:_var_007f_indexed,X      ; $EA20  B5 7F
  cmp #$01                       ; $EA22  C9 01
  beq _label_ea3e                ; $EA24  F0 18
  cmp #$03                       ; $EA26  C9 03
  bne _label_ea44                ; $EA28  D0 1A  unconditional branch pattern (complementary branches)
  beq _label_ea3e                ; $EA2A  F0 12

_label_ea2c:
  lda z:_var_007f_indexed,X      ; $EA2C  B5 7F
  cmp #$01                       ; $EA2E  C9 01
  beq _label_ea3e                ; $EA30  F0 0C
  cmp #$03                       ; $EA32  C9 03
  bcc _label_ea44                ; $EA34  90 0E
  lda z:_var_0019                ; $EA36  A5 19
  and #$03                       ; $EA38  29 03
  bne _label_ea47                ; $EA3A  D0 0B  unconditional branch pattern (complementary branches)
  beq _label_ea44                ; $EA3C  F0 06

_label_ea3e:
  lda z:_var_0019                ; $EA3E  A5 19
  and #$07                       ; $EA40  29 07
  bne _label_ea47                ; $EA42  D0 03

_label_ea44:
  inc a:_var_0436_indexed,X      ; $EA44  FE 36 04

_label_ea47:
  lda a:_var_0436_indexed,X      ; $EA47  BD 36 04
  and #$03                       ; $EA4A  29 03
  sta a:_var_0436_indexed,X      ; $EA4C  9D 36 04
  bne _label_ea57                ; $EA4F  D0 06
  lda z:_var_007f_indexed,X      ; $EA51  B5 7F
  bne _label_ea57                ; $EA53  D0 02
  inc z:_var_007f_indexed,X      ; $EA55  F6 7F

_label_ea57:
  rts                            ; $EA57  60

_func_ea58:
  lda a:_var_0475_indexed,X      ; $EA58  BD 75 04
  beq _label_ea60                ; $EA5B  F0 03
  dec a:_var_0475_indexed,X      ; $EA5D  DE 75 04

_label_ea60:
  cpx #$02                       ; $EA60  E0 02
  bcs _label_ea8c                ; $EA62  B0 28
  lda z:_var_00c1_indexed,X      ; $EA64  B5 C1
  beq _label_ea8c                ; $EA66  F0 24
  lda z:_var_0019                ; $EA68  A5 19
  lsr a                          ; $EA6A  4A
  bcc _label_ea8b                ; $EA6B  90 1E
  inc a:_var_0436_indexed,X      ; $EA6D  FE 36 04
  lda a:_var_0436_indexed,X      ; $EA70  BD 36 04
  and #$03                       ; $EA73  29 03
  sta a:_var_0436_indexed,X      ; $EA75  9D 36 04
  lda #$01                       ; $EA78  A9 01
  sta z:_var_007f_indexed,X      ; $EA7A  95 7F
  dec a:_var_045a_indexed,X      ; $EA7C  DE 5A 04
  bne _label_ea8b                ; $EA7F  D0 0A
  lda #$00                       ; $EA81  A9 00
  sta z:_var_00c1_indexed,X      ; $EA83  95 C1
  sta z:_var_007f_indexed,X      ; $EA85  95 7F
  lda #$20                       ; $EA87  A9 20
  sta z:_var_00f0_indexed        ; $EA89  85 F0

_label_ea8b:
  rts                            ; $EA8B  60

_label_ea8c:
  lda a:_var_0412_indexed,X      ; $EA8C  BD 12 04
  clc                            ; $EA8F  18
  ldy a:_var_0451_indexed,X      ; $EA90  BC 51 04
  adc a:_data_e601_indexed,Y     ; $EA93  79 01 E6
  sta a:_var_0412_indexed,X      ; $EA96  9D 12 04
  bcc _label_ea9e                ; $EA99  90 03
  inc a:_var_041b_indexed,X      ; $EA9B  FE 1B 04

_label_ea9e:
  lda a:_var_041b_indexed,X      ; $EA9E  BD 1B 04
  bmi _label_eac1                ; $EAA1  30 1E
  cmp a:_data_e66d_indexed,Y     ; $EAA3  D9 6D E6
  bcc _label_eadc                ; $EAA6  90 34
  bne _label_eab2                ; $EAA8  D0 08
  lda a:_var_0412_indexed,X      ; $EAAA  BD 12 04
  cmp a:_data_e661_indexed,Y     ; $EAAD  D9 61 E6
  bcc _label_eadc                ; $EAB0  90 2A

_label_eab2:
  lda a:_data_e661_indexed,Y     ; $EAB2  B9 61 E6
  sta a:_var_0412_indexed,X      ; $EAB5  9D 12 04
  lda a:_data_e66d_indexed,Y     ; $EAB8  B9 6D E6
  sta a:_var_041b_indexed,X      ; $EABB  9D 1B 04
  jmp _label_eadc                ; $EABE  4C DC EA

_label_eac1:
  cmp a:_data_e685_indexed,Y     ; $EAC1  D9 85 E6
  bcc _label_ead0                ; $EAC4  90 0A
  bne _label_eadc                ; $EAC6  D0 14
  lda a:_var_0412_indexed,X      ; $EAC8  BD 12 04
  cmp a:_data_e679_indexed,Y     ; $EACB  D9 79 E6
  bcs _label_eadc                ; $EACE  B0 0C

_label_ead0:
  lda a:_data_e679_indexed,Y     ; $EAD0  B9 79 E6
  sta a:_var_0412_indexed,X      ; $EAD3  9D 12 04
  lda a:_data_e685_indexed,Y     ; $EAD6  B9 85 E6
  sta a:_var_041b_indexed,X      ; $EAD9  9D 1B 04

_label_eadc:
  jsr _func_eba0                 ; $EADC  20 A0 EB
  cmp #$F8                       ; $EADF  C9 F8
  bcs _label_eb0d                ; $EAE1  B0 2A
  cmp #$E8                       ; $EAE3  C9 E8
  bcc _label_eb0d                ; $EAE5  90 26
  lda #$FF                       ; $EAE7  A9 FF
  sta z:_var_0088_indexed,X      ; $EAE9  95 88
  lda #$04                       ; $EAEB  A9 04
  sta z:_var_00bb                ; $EAED  85 BB
  lda z:_var_0091_indexed,X      ; $EAEF  B5 91
  sta z:_var_00bc                ; $EAF1  85 BC
  cpx #$02                       ; $EAF3  E0 02
  bcc _label_eb05                ; $EAF5  90 0E
  lda #$80                       ; $EAF7  A9 80
  sta z:_var_0088_indexed,X      ; $EAF9  95 88
  lda #$00                       ; $EAFB  A9 00
  sta z:_var_007f_indexed,X      ; $EAFD  95 7F
  lda #$01                       ; $EAFF  A9 01
  sta z:_var_00f3                ; $EB01  85 F3
  bne _label_eb0d                ; $EB03  D0 08

_label_eb05:
  lda z:_var_00c8                ; $EB05  A5 C8
  bne _label_eb0d                ; $EB07  D0 04
  lda #$40                       ; $EB09  A9 40
  sta z:_var_00f0_indexed        ; $EB0B  85 F0

_label_eb0d:
  lda a:_var_042d_indexed,X      ; $EB0D  BD 2D 04
  bmi _label_eb30                ; $EB10  30 1E
  cmp a:_data_e63d_indexed,Y     ; $EB12  D9 3D E6
  bcc _label_eb4b                ; $EB15  90 34
  bne _label_eb21                ; $EB17  D0 08
  lda a:_var_0424_indexed,X      ; $EB19  BD 24 04
  cmp a:_data_e631_indexed,Y     ; $EB1C  D9 31 E6
  bcc _label_eb4b                ; $EB1F  90 2A

_label_eb21:
  lda a:_data_e631_indexed,Y     ; $EB21  B9 31 E6
  sta a:_var_0424_indexed,X      ; $EB24  9D 24 04
  lda a:_data_e63d_indexed,Y     ; $EB27  B9 3D E6
  sta a:_var_042d_indexed,X      ; $EB2A  9D 2D 04
  jmp _label_eb4b                ; $EB2D  4C 4B EB

_label_eb30:
  cmp a:_data_e655_indexed,Y     ; $EB30  D9 55 E6
  bcc _label_eb3f                ; $EB33  90 0A
  bne _label_eb4b                ; $EB35  D0 14
  lda a:_var_0424_indexed,X      ; $EB37  BD 24 04
  cmp a:_data_e649_indexed,Y     ; $EB3A  D9 49 E6
  bcs _label_eb4b                ; $EB3D  B0 0C

_label_eb3f:
  lda a:_data_e649_indexed,Y     ; $EB3F  B9 49 E6
  sta a:_var_0424_indexed,X      ; $EB42  9D 24 04
  lda a:_data_e655_indexed,Y     ; $EB45  B9 55 E6
  sta a:_var_042d_indexed,X      ; $EB48  9D 2D 04

_label_eb4b:
  jsr _func_eb8e                 ; $EB4B  20 8E EB
  lda z:_var_0016                ; $EB4E  A5 16
  beq _label_eb62                ; $EB50  F0 10
  lda z:_var_0091_indexed,X      ; $EB52  B5 91
  cmp #$10                       ; $EB54  C9 10
  bcs _label_eb5a                ; $EB56  B0 02
  lda #$10                       ; $EB58  A9 10

_label_eb5a:
  cmp #$E0                       ; $EB5A  C9 E0
  bcc _label_eb60                ; $EB5C  90 02
  lda #$E0                       ; $EB5E  A9 E0

_label_eb60:
  sta z:_var_0091_indexed,X      ; $EB60  95 91

_label_eb62:
  lda z:_var_00c8                ; $EB62  A5 C8
  beq _label_eb8d                ; $EB64  F0 27
  lda z:_var_0088_indexed,X      ; $EB66  B5 88
  bne _label_eb8d                ; $EB68  D0 23
  lda z:_var_009a_indexed,X      ; $EB6A  B5 9A
  cmp #$C8                       ; $EB6C  C9 C8
  bcc _label_eb8d                ; $EB6E  90 1D
  lda #$C7                       ; $EB70  A9 C7
  sta z:_var_009a_indexed,X      ; $EB72  95 9A
  lda a:_var_0451_indexed,X      ; $EB74  BD 51 04
  cmp #$0B                       ; $EB77  C9 0B
  bne _label_eb84                ; $EB79  D0 09
  dec a:_var_0451_indexed,X      ; $EB7B  DE 51 04
  jsr _func_f107                 ; $EB7E  20 07 F1
  jmp _func_f18c                 ; $EB81  4C 8C F1

_label_eb84:
  lda #$02                       ; $EB84  A9 02
  sta z:_var_0088_indexed,X      ; $EB86  95 88
  lda #$03                       ; $EB88  A9 03
  sta a:_var_0451_indexed,X      ; $EB8A  9D 51 04

_label_eb8d:
  rts                            ; $EB8D  60

_func_eb8e:
  lda a:_var_0400_indexed,X      ; $EB8E  BD 00 04
  clc                            ; $EB91  18
  adc a:_var_0424_indexed,X      ; $EB92  7D 24 04
  sta a:_var_0400_indexed,X      ; $EB95  9D 00 04
  lda z:_var_0091_indexed,X      ; $EB98  B5 91
  adc a:_var_042d_indexed,X      ; $EB9A  7D 2D 04
  sta z:_var_0091_indexed,X      ; $EB9D  95 91
  rts                            ; $EB9F  60

_func_eba0:
  lda a:_var_0409_indexed,X      ; $EBA0  BD 09 04
  clc                            ; $EBA3  18
  adc a:_var_0412_indexed,X      ; $EBA4  7D 12 04
  sta a:_var_0409_indexed,X      ; $EBA7  9D 09 04
  lda z:_var_009a_indexed,X      ; $EBAA  B5 9A
  adc a:_var_041b_indexed,X      ; $EBAC  7D 1B 04
  sta z:_var_009a_indexed,X      ; $EBAF  95 9A
  rts                            ; $EBB1  60

_func_ebb2:
  jsr _func_f0b4                 ; $EBB2  20 B4 F0
  jsr _func_eb8e                 ; $EBB5  20 8E EB
  jmp _func_f0b4                 ; $EBB8  4C B4 F0

_func_ebbb:
  jsr _func_f0b4                 ; $EBBB  20 B4 F0
  jsr _func_eba0                 ; $EBBE  20 A0 EB
  jmp _func_f0b4                 ; $EBC1  4C B4 F0

_func_ebc4:
  cpx #$02                       ; $EBC4  E0 02
  bcs _label_ebe3                ; $EBC6  B0 1B
  lda z:_var_0088_indexed,X      ; $EBC8  B5 88
  bne _label_ebd6                ; $EBCA  D0 0A
  lda a:_var_0436_indexed,X      ; $EBCC  BD 36 04
  bne _label_ebd6                ; $EBCF  D0 05
  lda #$00                       ; $EBD1  A9 00
  sta z:_var_007f_indexed,X      ; $EBD3  95 7F
  rts                            ; $EBD5  60

_label_ebd6:
  lda z:_var_007f_indexed,X      ; $EBD6  B5 7F
  cmp #$06                       ; $EBD8  C9 06
  bcc _label_ec38                ; $EBDA  90 5C
  lda #$01                       ; $EBDC  A9 01
  sta z:_var_007f_indexed,X      ; $EBDE  95 7F
  dec z:_var_0088_indexed,X      ; $EBE0  D6 88
  rts                            ; $EBE2  60

_label_ebe3:
  lda z:_var_0088_indexed,X      ; $EBE3  B5 88
  cmp #$02                       ; $EBE5  C9 02
  beq _label_ec38                ; $EBE7  F0 4F
  lda a:_var_0436_indexed,X      ; $EBE9  BD 36 04
  bne _label_ebfd                ; $EBEC  D0 0F
  lda z:_var_0088_indexed,X      ; $EBEE  B5 88
  bne _label_ebf7                ; $EBF0  D0 05
  lda #$00                       ; $EBF2  A9 00
  sta z:_var_007f_indexed,X      ; $EBF4  95 7F
  rts                            ; $EBF6  60

_label_ebf7:
  lda z:_var_007f_indexed,X      ; $EBF7  B5 7F
  bne _label_ebfe                ; $EBF9  D0 03
  inc z:_var_007f_indexed,X      ; $EBFB  F6 7F

_label_ebfd:
  rts                            ; $EBFD  60

_label_ebfe:
  cmp #$02                       ; $EBFE  C9 02
  bcc _label_ebfd                ; $EC00  90 FB
  dec a:_var_045a_indexed,X      ; $EC02  DE 5A 04
  bne _label_ec37                ; $EC05  D0 30
  lda z:_var_00c7                ; $EC07  A5 C7
  sta a:_var_045a_indexed,X      ; $EC09  9D 5A 04
  inc z:_var_007f_indexed,X      ; $EC0C  F6 7F
  lda z:_var_007f_indexed,X      ; $EC0E  B5 7F
  cmp #$07                       ; $EC10  C9 07
  bcc _label_ec37                ; $EC12  90 23
  lda #$02                       ; $EC14  A9 02
  sta z:_var_0088_indexed,X      ; $EC16  95 88
  lda #$00                       ; $EC18  A9 00
  sta z:_var_007f_indexed,X      ; $EC1A  95 7F
  ldy a:_var_0451_indexed,X      ; $EC1C  BC 51 04
  lda a:_data_ecae_indexed,Y     ; $EC1F  B9 AE EC
  ldy a:_var_047e_indexed,X      ; $EC22  BC 7E 04
  bne _label_ec2f                ; $EC25  D0 08
  dec a:_var_047e_indexed,X      ; $EC27  DE 7E 04
  lda a:_var_0451_indexed,X      ; $EC2A  BD 51 04
  and #$03                       ; $EC2D  29 03

_label_ec2f:
  sta a:_var_0451_indexed,X      ; $EC2F  9D 51 04
  lda #$FE                       ; $EC32  A9 FE
  sta a:_var_041b_indexed,X      ; $EC34  9D 1B 04

_label_ec37:
  rts                            ; $EC37  60

_label_ec38:
  jsr _func_e6e9                 ; $EC38  20 E9 E6
  lda z:_var_0031_indexed,X      ; $EC3B  B5 31
  and #$C3                       ; $EC3D  29 C3
  beq _label_ec49                ; $EC3F  F0 08
  cpx #$02                       ; $EC41  E0 02
  bcs _label_ec49                ; $EC43  B0 04
  lda #$00                       ; $EC45  A9 00
  sta z:_var_00bd_indexed,X      ; $EC47  95 BD

_label_ec49:
  lda z:_var_0031_indexed,X      ; $EC49  B5 31
  and #$40                       ; $EC4B  29 40
  bne _label_ec61                ; $EC4D  D0 12
  lda z:_var_0031_indexed,X      ; $EC4F  B5 31
  and #$80                       ; $EC51  29 80
  bne _label_ec5c                ; $EC53  D0 07
  lda #$00                       ; $EC55  A9 00
  sta a:_var_0620_indexed,X      ; $EC57  9D 20 06
  beq _label_ecad                ; $EC5A  F0 51

_label_ec5c:
  lda a:_var_0620_indexed,X      ; $EC5C  BD 20 06
  bne _label_ecad                ; $EC5F  D0 4C

_label_ec61:
  lda z:_var_007f_indexed,X      ; $EC61  B5 7F
  cmp #$02                       ; $EC63  C9 02
  bcc _label_ec75                ; $EC65  90 0E
  dec z:_var_009a_indexed,X      ; $EC67  D6 9A
  dec z:_var_009a_indexed,X      ; $EC69  D6 9A
  lda #$00                       ; $EC6B  A9 00
  sta a:_var_0412_indexed,X      ; $EC6D  9D 12 04
  sta a:_var_041b_indexed,X      ; $EC70  9D 1B 04
  beq _label_ec7e                ; $EC73  F0 09

_label_ec75:
  cmp #$01                       ; $EC75  C9 01
  beq _label_ec7e                ; $EC77  F0 05
  lda a:_var_0436_indexed,X      ; $EC79  BD 36 04
  bne _label_ecad                ; $EC7C  D0 2F

_label_ec7e:
  lda #$00                       ; $EC7E  A9 00
  sta z:_var_007f_indexed,X      ; $EC80  95 7F
  lda #$01                       ; $EC82  A9 01
  sta a:_var_0436_indexed,X      ; $EC84  9D 36 04
  lda #$01                       ; $EC87  A9 01
  sta a:_var_0620_indexed,X      ; $EC89  9D 20 06
  ldy #$00                       ; $EC8C  A0 00
  cpx #$02                       ; $EC8E  E0 02
  bcc _label_ec93                ; $EC90  90 01
  iny                            ; $EC92  C8

_label_ec93:
  lda a:_var_00f0_indexed,Y      ; $EC93  B9 F0 00
  ora #$10                       ; $EC96  09 10
  sta a:_var_00f0_indexed,Y      ; $EC98  99 F0 00
  lda a:_var_0412_indexed,X      ; $EC9B  BD 12 04
  sec                            ; $EC9E  38
  ldy a:_var_0451_indexed,X      ; $EC9F  BC 51 04
  sbc a:_data_e60d_indexed,Y     ; $ECA2  F9 0D E6
  sta a:_var_0412_indexed,X      ; $ECA5  9D 12 04
  bcs _label_ecad                ; $ECA8  B0 03
  dec a:_var_041b_indexed,X      ; $ECAA  DE 1B 04

_label_ecad:
  rts                            ; $ECAD  60

_data_ecae_indexed:
.byte $01, $02, $02, $03, $01, $02, $02, $03, $01, $02, $02, $03 ; $ECAE

_func_ecba:
  lda z:_var_007f_indexed,X      ; $ECBA  B5 7F
  bne _label_ed27                ; $ECBC  D0 69
  jsr _func_e7b1                 ; $ECBE  20 B1 E7
  jsr _func_eb8e                 ; $ECC1  20 8E EB
  lda a:_var_0409_indexed,X      ; $ECC4  BD 09 04
  sec                            ; $ECC7  38
  sbc #$60                       ; $ECC8  E9 60
  sta a:_var_0409_indexed,X      ; $ECCA  9D 09 04
  lda z:_var_009a_indexed,X      ; $ECCD  B5 9A
  sbc #$00                       ; $ECCF  E9 00
  sta z:_var_009a_indexed,X      ; $ECD1  95 9A
  cmp #$F1                       ; $ECD3  C9 F1
  bcc _label_ecdb                ; $ECD5  90 04
  lda #$FF                       ; $ECD7  A9 FF
  sta z:_var_0088_indexed,X      ; $ECD9  95 88

_label_ecdb:
  txa                            ; $ECDB  8A
  pha                            ; $ECDC  48
  ldy #$01                       ; $ECDD  A0 01

_label_ecdf:
  lda a:_var_0088_indexed,Y      ; $ECDF  B9 88 00
  beq _label_ed22                ; $ECE2  F0 3E
  bmi _label_ed22                ; $ECE4  30 3C
  lda z:_var_009a_indexed,X      ; $ECE6  B5 9A
  sec                            ; $ECE8  38
  sbc a:_var_009a_indexed,Y      ; $ECE9  F9 9A 00
  jsr _func_f08e                 ; $ECEC  20 8E F0
  cmp #$18                       ; $ECEF  C9 18
  bcs _label_ed22                ; $ECF1  B0 2F
  lda z:_var_0091_indexed,X      ; $ECF3  B5 91
  sec                            ; $ECF5  38
  sbc a:_var_0091_indexed,Y      ; $ECF6  F9 91 00
  jsr _func_f08e                 ; $ECF9  20 8E F0
  cmp #$10                       ; $ECFC  C9 10
  bcs _label_ed22                ; $ECFE  B0 22
  lda #$FF                       ; $ED00  A9 FF
  sta z:_var_007f_indexed,X      ; $ED02  95 7F
  lda #$03                       ; $ED04  A9 03
  sta a:_var_045a_indexed,X      ; $ED06  9D 5A 04
  lda #$78                       ; $ED09  A9 78
  sta z:_var_00c5                ; $ED0B  85 C5
  lda #$02                       ; $ED0D  A9 02
  sta z:_var_00f0_indexed        ; $ED0F  85 F0
  lda #$32                       ; $ED11  A9 32
  sty z:_var_003e                ; $ED13  84 3E
  jsr _func_d6de                 ; $ED15  20 DE D6
  lda #$01                       ; $ED18  A9 01
  ldx z:_var_003e                ; $ED1A  A6 3E
  jsr _func_d871                 ; $ED1C  20 71 D8
  pla                            ; $ED1F  68
  tax                            ; $ED20  AA
  rts                            ; $ED21  60

_label_ed22:
  dey                            ; $ED22  88
  bpl _label_ecdf                ; $ED23  10 BA
  pla                            ; $ED25  68
  tax                            ; $ED26  AA

_label_ed27:
  rts                            ; $ED27  60

_func_ed28:
  ldy z:_var_0088_indexed,X      ; $ED28  B4 88
  dey                            ; $ED2A  88
  bpl _label_ed2e                ; $ED2B  10 01

_label_ed2d:
  rts                            ; $ED2D  60

_label_ed2e:
  lda z:_var_009a_indexed,X      ; $ED2E  B5 9A
  cmp #$F9                       ; $ED30  C9 F9
  bcc _label_ed40                ; $ED32  90 0C
  lda a:_var_041b_indexed,X      ; $ED34  BD 1B 04
  bpl _label_ed2d                ; $ED37  10 F4
  lda #$00                       ; $ED39  A9 00
  sta z:_var_00cc                ; $ED3B  85 CC
  jmp _label_ede1                ; $ED3D  4C E1 ED

_label_ed40:
  ldy z:_var_00cd                ; $ED40  A4 CD
  bmi _label_ed27                ; $ED42  30 E3

_label_ed44:
  lda #$00                       ; $ED44  A9 00
  sta z:_var_00cc                ; $ED46  85 CC
  lda (_var_0027_indexed),Y      ; $ED48  B1 27
  sec                            ; $ED4A  38
  sbc #$18                       ; $ED4B  E9 18
  cmp z:_var_009a_indexed,X      ; $ED4D  D5 9A
  bcs _label_edb6                ; $ED4F  B0 65
  adc #$03                       ; $ED51  69 03
  cmp z:_var_009a_indexed,X      ; $ED53  D5 9A
  bcc _label_ed5b                ; $ED55  90 04
  lda #$01                       ; $ED57  A9 01
  bne _label_ed69                ; $ED59  D0 0E

_label_ed5b:
  lda (_var_0029_indexed),Y      ; $ED5B  B1 29
  cmp z:_var_009a_indexed,X      ; $ED5D  D5 9A
  bcc _label_edb6                ; $ED5F  90 55
  sbc #$03                       ; $ED61  E9 03
  cmp z:_var_009a_indexed,X      ; $ED63  D5 9A
  bcs _label_ed89                ; $ED65  B0 22
  lda #$02                       ; $ED67  A9 02

_label_ed69:
  sta z:_var_00cc                ; $ED69  85 CC
  lda (_var_0023_indexed),Y      ; $ED6B  B1 23
  cmp #$10                       ; $ED6D  C9 10
  beq _label_ed78                ; $ED6F  F0 07
  sec                            ; $ED71  38
  sbc #$0C                       ; $ED72  E9 0C
  cmp z:_var_0091_indexed,X      ; $ED74  D5 91
  bcs _label_ed85                ; $ED76  B0 0D

_label_ed78:
  lda (_var_0025_indexed),Y      ; $ED78  B1 25
  cmp #$FF                       ; $ED7A  C9 FF
  beq _label_ed89                ; $ED7C  F0 0B
  sec                            ; $ED7E  38
  sbc #$04                       ; $ED7F  E9 04
  cmp z:_var_0091_indexed,X      ; $ED81  D5 91
  bcs _label_ed89                ; $ED83  B0 04

_label_ed85:
  lda #$00                       ; $ED85  A9 00
  sta z:_var_00cc                ; $ED87  85 CC

_label_ed89:
  lda (_var_0023_indexed),Y      ; $ED89  B1 23
  sec                            ; $ED8B  38
  sbc #$10                       ; $ED8C  E9 10
  beq _label_eda0                ; $ED8E  F0 10
  cmp z:_var_0091_indexed,X      ; $ED90  D5 91
  bcs _label_edb6                ; $ED92  B0 22
  adc #$04                       ; $ED94  69 04
  cmp z:_var_0091_indexed,X      ; $ED96  D5 91
  bcc _label_eda0                ; $ED98  90 06
  lda z:_var_00cc                ; $ED9A  A5 CC
  ora #$04                       ; $ED9C  09 04
  bne _label_edb4                ; $ED9E  D0 14

_label_eda0:
  lda (_var_0025_indexed),Y      ; $EDA0  B1 25
  cmp #$FF                       ; $EDA2  C9 FF
  beq _label_edb6                ; $EDA4  F0 10
  cmp z:_var_0091_indexed,X      ; $EDA6  D5 91
  bcc _label_edb6                ; $EDA8  90 0C
  sbc #$04                       ; $EDAA  E9 04
  cmp z:_var_0091_indexed,X      ; $EDAC  D5 91
  bcs _label_edb6                ; $EDAE  B0 06
  lda z:_var_00cc                ; $EDB0  A5 CC
  ora #$08                       ; $EDB2  09 08

_label_edb4:
  sta z:_var_00cc                ; $EDB4  85 CC

_label_edb6:
  lda z:_var_00cc                ; $EDB6  A5 CC
  bne _label_edc1                ; $EDB8  D0 07
  dey                            ; $EDBA  88
  bmi _label_edc0                ; $EDBB  30 03
  jmp _label_ed44                ; $EDBD  4C 44 ED

_label_edc0:
  rts                            ; $EDC0  60

_label_edc1:
  lsr z:_var_00cc                ; $EDC1  46 CC
  bcc _label_edd6                ; $EDC3  90 11
  lda a:_var_041b_indexed,X      ; $EDC5  BD 1B 04
  bmi _label_edd6                ; $EDC8  30 0C
  lda (_var_0027_indexed),Y      ; $EDCA  B1 27
  sbc #$18                       ; $EDCC  E9 18
  sta z:_var_009a_indexed,X      ; $EDCE  95 9A
  inc z:_var_009a_indexed,X      ; $EDD0  F6 9A
  lda #$01                       ; $EDD2  A9 01
  sta z:_var_00cb                ; $EDD4  85 CB

_label_edd6:
  lsr z:_var_00cc                ; $EDD6  46 CC
  bcc _label_edf4                ; $EDD8  90 1A
  lda a:_var_041b_indexed,X      ; $EDDA  BD 1B 04
  bpl _label_edf4                ; $EDDD  10 15
  lda (_var_0029_indexed),Y      ; $EDDF  B1 29

_label_ede1:
  sta z:_var_009a_indexed,X      ; $EDE1  95 9A
  jsr _func_f107                 ; $EDE3  20 07 F1
  jsr _func_f18c                 ; $EDE6  20 8C F1
  cpx #$02                       ; $EDE9  E0 02
  bcs _label_edf0                ; $EDEB  B0 03
  jsr _func_cc33                 ; $EDED  20 33 CC

_label_edf0:
  lda z:_var_00cb                ; $EDF0  A5 CB
  bne _label_ee24                ; $EDF2  D0 30

_label_edf4:
  lsr z:_var_00cc                ; $EDF4  46 CC
  bcc _label_edff                ; $EDF6  90 07
  lda a:_var_042d_indexed,X      ; $EDF8  BD 2D 04
  bmi _label_edff                ; $EDFB  30 02  unconditional branch pattern (complementary branches)
  bpl _label_ee08                ; $EDFD  10 09

_label_edff:
  lsr z:_var_00cc                ; $EDFF  46 CC
  bcc _label_ee24                ; $EE01  90 21
  lda a:_var_042d_indexed,X      ; $EE03  BD 2D 04
  bpl _label_ee24                ; $EE06  10 1C

_label_ee08:
  jsr _func_f0de                 ; $EE08  20 DE F0
  jsr _func_f172                 ; $EE0B  20 72 F1
  lda a:_var_042d_indexed,X      ; $EE0E  BD 2D 04
  ora a:_var_0424_indexed,X      ; $EE11  1D 24 04
  beq _label_ee24                ; $EE14  F0 0E
  lda a:_var_0448_indexed,X      ; $EE16  BD 48 04
  eor #$01                       ; $EE19  49 01
  sta a:_var_0448_indexed,X      ; $EE1B  9D 48 04
  lda z:_var_00f1                ; $EE1E  A5 F1
  ora #$02                       ; $EE20  09 02
  sta z:_var_00f1                ; $EE22  85 F1

_label_ee24:
  rts                            ; $EE24  60

_func_ee25:
  ldx #$07                       ; $EE25  A2 07

_label_ee27:
  stx z:_var_0012                ; $EE27  86 12
  ldy z:_var_0012                ; $EE29  A4 12
  dey                            ; $EE2B  88
  bpl _label_ee31                ; $EE2C  10 03

_label_ee2e:
  jmp _label_ef2a                ; $EE2E  4C 2A EF

_label_ee31:
  lda z:_var_0088_indexed,X      ; $EE31  B5 88
  bmi _label_ee2e                ; $EE33  30 F9
  beq _label_ee2e                ; $EE35  F0 F7
  lda a:_var_0088_indexed,Y      ; $EE37  B9 88 00
  bmi _label_ee2e                ; $EE3A  30 F2
  beq _label_ee2e                ; $EE3C  F0 F0
  lda #$00                       ; $EE3E  A9 00
  sta z:_var_00cc                ; $EE40  85 CC
  lda a:_var_009a_indexed,Y      ; $EE42  B9 9A 00
  sec                            ; $EE45  38
  sbc z:_var_009a_indexed,X      ; $EE46  F5 9A
  jsr _func_f08e                 ; $EE48  20 8E F0
  cmp #$18                       ; $EE4B  C9 18
  bcs _label_eec0                ; $EE4D  B0 71
  lda z:_var_009a_indexed,X      ; $EE4F  B5 9A
  clc                            ; $EE51  18
  adc #$18                       ; $EE52  69 18
  sta z:_var_0012                ; $EE54  85 12
  lda a:_var_009a_indexed,Y      ; $EE56  B9 9A 00
  clc                            ; $EE59  18
  adc #$07                       ; $EE5A  69 07
  sec                            ; $EE5C  38
  sbc z:_var_0012                ; $EE5D  E5 12
  jsr _func_f08e                 ; $EE5F  20 8E F0
  cmp #$04                       ; $EE62  C9 04
  bcs _label_ee6a                ; $EE64  B0 04
  lda #$01                       ; $EE66  A9 01
  bne _label_ee7c                ; $EE68  D0 12

_label_ee6a:
  lda a:_var_009a_indexed,Y      ; $EE6A  B9 9A 00
  clc                            ; $EE6D  18
  adc #$11                       ; $EE6E  69 11
  sec                            ; $EE70  38
  sbc z:_var_009a_indexed,X      ; $EE71  F5 9A
  jsr _func_f08e                 ; $EE73  20 8E F0
  cmp #$04                       ; $EE76  C9 04
  bcs _label_ee8f                ; $EE78  B0 15
  lda #$02                       ; $EE7A  A9 02

_label_ee7c:
  sta z:_var_00cc                ; $EE7C  85 CC
  lda a:_var_0091_indexed,Y      ; $EE7E  B9 91 00
  sec                            ; $EE81  38
  sbc z:_var_0091_indexed,X      ; $EE82  F5 91
  jsr _func_f08e                 ; $EE84  20 8E F0
  cmp #$10                       ; $EE87  C9 10
  bcc _label_ee8f                ; $EE89  90 04
  lda #$00                       ; $EE8B  A9 00
  sta z:_var_00cc                ; $EE8D  85 CC

_label_ee8f:
  lda z:_var_0091_indexed,X      ; $EE8F  B5 91
  clc                            ; $EE91  18
  adc #$10                       ; $EE92  69 10
  sta z:_var_0012                ; $EE94  85 12
  lda a:_var_0091_indexed,Y      ; $EE96  B9 91 00
  clc                            ; $EE99  18
  adc #$07                       ; $EE9A  69 07
  sec                            ; $EE9C  38
  sbc z:_var_0012                ; $EE9D  E5 12
  jsr _func_f08e                 ; $EE9F  20 8E F0
  cmp #$04                       ; $EEA2  C9 04
  bcs _label_eeaa                ; $EEA4  B0 04
  lda #$04                       ; $EEA6  A9 04
  bne _label_eebc                ; $EEA8  D0 12

_label_eeaa:
  lda a:_var_0091_indexed,Y      ; $EEAA  B9 91 00
  clc                            ; $EEAD  18
  adc #$09                       ; $EEAE  69 09
  sec                            ; $EEB0  38
  sbc z:_var_0091_indexed,X      ; $EEB1  F5 91
  jsr _func_f08e                 ; $EEB3  20 8E F0
  cmp #$04                       ; $EEB6  C9 04
  bcs _label_eec0                ; $EEB8  B0 06
  lda #$08                       ; $EEBA  A9 08

_label_eebc:
  ora z:_var_00cc                ; $EEBC  05 CC
  sta z:_var_00cc                ; $EEBE  85 CC

_label_eec0:
  lda #$00                       ; $EEC0  A9 00
  sta z:_var_004b                ; $EEC2  85 4B
  lsr z:_var_00cc                ; $EEC4  46 CC
  bcc _label_eecd                ; $EEC6  90 05
  jsr _func_f0a6                 ; $EEC8  20 A6 F0
  bmi _label_eed6                ; $EECB  30 09

_label_eecd:
  lsr z:_var_00cc                ; $EECD  46 CC
  bcc _label_eef1                ; $EECF  90 20
  jsr _func_f0a6                 ; $EED1  20 A6 F0
  bmi _label_eef1                ; $EED4  30 1B

_label_eed6:
  jsr _func_f0bd                 ; $EED6  20 BD F0
  bcs _label_eeed                ; $EED9  B0 12
  jsr _func_f107                 ; $EEDB  20 07 F1
  jsr _func_f18c                 ; $EEDE  20 8C F1
  jsr _func_f0b4                 ; $EEE1  20 B4 F0
  jsr _func_f107                 ; $EEE4  20 07 F1
  jsr _func_f18c                 ; $EEE7  20 8C F1
  jsr _func_f0b4                 ; $EEEA  20 B4 F0

_label_eeed:
  lda #$01                       ; $EEED  A9 01
  sta z:_var_004b                ; $EEEF  85 4B

_label_eef1:
  lsr z:_var_00cc                ; $EEF1  46 CC
  bcc _label_eefa                ; $EEF3  90 05
  jsr _func_f098                 ; $EEF5  20 98 F0
  bmi _label_ef03                ; $EEF8  30 09

_label_eefa:
  lsr z:_var_00cc                ; $EEFA  46 CC
  bcc _label_ef1e                ; $EEFC  90 20
  jsr _func_f098                 ; $EEFE  20 98 F0
  bmi _label_ef1e                ; $EF01  30 1B

_label_ef03:
  jsr _func_f0bd                 ; $EF03  20 BD F0
  bcs _label_ef1a                ; $EF06  B0 12
  jsr _func_f0de                 ; $EF08  20 DE F0
  jsr _func_f172                 ; $EF0B  20 72 F1
  jsr _func_f0b4                 ; $EF0E  20 B4 F0
  jsr _func_f0de                 ; $EF11  20 DE F0
  jsr _func_f172                 ; $EF14  20 72 F1
  jsr _func_f0b4                 ; $EF17  20 B4 F0

_label_ef1a:
  lda #$01                       ; $EF1A  A9 01
  sta z:_var_004b                ; $EF1C  85 4B

_label_ef1e:
  jsr _func_ef37                 ; $EF1E  20 37 EF
  jsr _func_f0b4                 ; $EF21  20 B4 F0
  jsr _func_ef37                 ; $EF24  20 37 EF
  jsr _func_f0b4                 ; $EF27  20 B4 F0

_label_ef2a:
  dey                            ; $EF2A  88
  bmi _label_ef30                ; $EF2B  30 03
  jmp _label_ee31                ; $EF2D  4C 31 EE

_label_ef30:
  dex                            ; $EF30  CA
  bmi _label_ef36                ; $EF31  30 03
  jmp _label_ee27                ; $EF33  4C 27 EE

_label_ef36:
  rts                            ; $EF36  60

_func_ef37:
  cpx #$02                       ; $EF37  E0 02
  bcc _label_ef42                ; $EF39  90 07
  cpy #$02                       ; $EF3B  C0 02
  bcc _label_ef42                ; $EF3D  90 03
  jmp _label_f043                ; $EF3F  4C 43 F0

_label_ef42:
  lda #$00                       ; $EF42  A9 00
  sta a:_var_0487                ; $EF44  8D 87 04
  lda a:_var_0475_indexed,X      ; $EF47  BD 75 04
  beq _label_ef4f                ; $EF4A  F0 03
  jmp _label_f043                ; $EF4C  4C 43 F0

_label_ef4f:
  lda z:_var_004b                ; $EF4F  A5 4B
  bne _label_ef56                ; $EF51  D0 03
  jmp _label_f043                ; $EF53  4C 43 F0

_label_ef56:
  cpx #$02                       ; $EF56  E0 02
  bcs _label_ef61                ; $EF58  B0 07
  lda z:_var_00bd_indexed,X      ; $EF5A  B5 BD
  beq _label_ef72                ; $EF5C  F0 14
  jmp _label_f043                ; $EF5E  4C 43 F0

_label_ef61:
  lda z:_var_0088_indexed,X      ; $EF61  B5 88
  cmp #$01                       ; $EF63  C9 01
  bne _label_ef72                ; $EF65  D0 0B
  lda z:_var_007f_indexed,X      ; $EF67  B5 7F
  cmp #$02                       ; $EF69  C9 02
  bcs _label_ef7f                ; $EF6B  B0 12
  lda #$01                       ; $EF6D  A9 01
  sta a:_var_0487                ; $EF6F  8D 87 04

_label_ef72:
  lda a:_var_009a_indexed,Y      ; $EF72  B9 9A 00
  clc                            ; $EF75  18
  adc #$04                       ; $EF76  69 04
  cmp z:_var_009a_indexed,X      ; $EF78  D5 9A
  bcc _label_ef7f                ; $EF7A  90 03
  jmp _label_f043                ; $EF7C  4C 43 F0

_label_ef7f:
  lda #$14                       ; $EF7F  A9 14
  sta a:_var_0475_indexed,X      ; $EF81  9D 75 04
  lda #$00                       ; $EF84  A9 00
  sta a:_var_0436_indexed,X      ; $EF86  9D 36 04
  cpy #$02                       ; $EF89  C0 02
  bcc _label_ef97                ; $EF8B  90 0A
  lda a:_var_0088_indexed,Y      ; $EF8D  B9 88 00
  cmp #$02                       ; $EF90  C9 02
  beq _label_ef97                ; $EF92  F0 03
  jmp _label_f043                ; $EF94  4C 43 F0

_label_ef97:
  lda z:_var_00f0_indexed        ; $EF97  A5 F0
  ora #$02                       ; $EF99  09 02
  sta z:_var_00f0_indexed        ; $EF9B  85 F0
  lda z:_var_0088_indexed,X      ; $EF9D  B5 88
  cmp #$02                       ; $EF9F  C9 02
  bne _label_efc0                ; $EFA1  D0 1D
  cpx #$02                       ; $EFA3  E0 02
  bcs _label_efc0                ; $EFA5  B0 19
  sty z:_var_0012                ; $EFA7  84 12
  ldy z:_var_007f_indexed,X      ; $EFA9  B4 7F
  lda a:_data_f053_indexed,Y     ; $EFAB  B9 53 F0
  ldy z:_var_0012                ; $EFAE  A4 12
  pha                            ; $EFB0  48
  pla                            ; $EFB1  68
  bne _label_efb7                ; $EFB2  D0 03
  jmp _label_f043                ; $EFB4  4C 43 F0

_label_efb7:
  sta z:_var_007f_indexed,X      ; $EFB7  95 7F
  lda #$00                       ; $EFB9  A9 00
  sta a:_var_0436_indexed,X      ; $EFBB  9D 36 04
  beq _label_efea                ; $EFBE  F0 2A

_label_efc0:
  dec z:_var_0088_indexed,X      ; $EFC0  D6 88
  bne _label_efce                ; $EFC2  D0 0A
  lda #$FF                       ; $EFC4  A9 FF
  sta a:_var_041b_indexed,X      ; $EFC6  9D 1B 04
  lda #$00                       ; $EFC9  A9 00
  sta a:_var_0412_indexed,X      ; $EFCB  9D 12 04

_label_efce:
  lda #$00                       ; $EFCE  A9 00
  sta z:_var_007f_indexed,X      ; $EFD0  95 7F
  sta a:_var_0424_indexed,X      ; $EFD2  9D 24 04
  sta a:_var_042d_indexed,X      ; $EFD5  9D 2D 04
  lda z:_var_0091_indexed,X      ; $EFD8  B5 91
  bmi _label_efe0                ; $EFDA  30 04
  lda #$FF                       ; $EFDC  A9 FF
  bne _label_efe2                ; $EFDE  D0 02

_label_efe0:
  lda #$00                       ; $EFE0  A9 00

_label_efe2:
  sta a:_var_046c_indexed,X      ; $EFE2  9D 6C 04
  lda #$80                       ; $EFE5  A9 80
  sta a:_var_0463_indexed,X      ; $EFE7  9D 63 04

_label_efea:
  sty z:_var_0012                ; $EFEA  84 12
  ldy a:_var_0451_indexed,X      ; $EFEC  BC 51 04
  lda a:_data_f05e_indexed,Y     ; $EFEF  B9 5E F0
  sta a:_var_0451_indexed,X      ; $EFF2  9D 51 04
  lda #$01                       ; $EFF5  A9 01
  sta a:_var_047e_indexed,X      ; $EFF7  9D 7E 04
  ldy z:_var_0012                ; $EFFA  A4 12
  cpy #$02                       ; $EFFC  C0 02
  bcs _label_f043                ; $EFFE  B0 43
  lda a:_var_0451_indexed,X      ; $F000  BD 51 04
  cmp #$07                       ; $F003  C9 07
  beq _label_f011                ; $F005  F0 0A
  cmp #$08                       ; $F007  C9 08
  bcc _label_f011                ; $F009  90 06
  lda z:_var_00f1                ; $F00B  A5 F1
  ora #$80                       ; $F00D  09 80
  sta z:_var_00f1                ; $F00F  85 F1

_label_f011:
  ldy a:_var_0451_indexed,X      ; $F011  BC 51 04
  lda a:_data_f06a_indexed,Y     ; $F014  B9 6A F0
  sta z:_var_0013                ; $F017  85 13
  lda a:_var_0487                ; $F019  AD 87 04
  beq _label_f023                ; $F01C  F0 05
  lda a:_data_f076_indexed,Y     ; $F01E  B9 76 F0
  sta z:_var_0013                ; $F021  85 13

_label_f023:
  lda a:_data_f082_indexed,Y     ; $F023  B9 82 F0
  clc                            ; $F026  18
  adc a:_var_0487                ; $F027  6D 87 04
  sta z:_var_0014                ; $F02A  85 14
  lda z:_var_0012                ; $F02C  A5 12
  sta z:_var_003e                ; $F02E  85 3E
  pha                            ; $F030  48
  txa                            ; $F031  8A
  pha                            ; $F032  48
  lda z:_var_0013                ; $F033  A5 13
  pha                            ; $F035  48
  lda z:_var_0014                ; $F036  A5 14
  jsr _func_d871                 ; $F038  20 71 D8
  pla                            ; $F03B  68
  jsr _func_d6de                 ; $F03C  20 DE D6
  pla                            ; $F03F  68
  tax                            ; $F040  AA
  pla                            ; $F041  68
  tay                            ; $F042  A8

_label_f043:
  lda a:_var_0451_indexed,X      ; $F043  BD 51 04
  cmp #$0B                       ; $F046  C9 0B
  bne _label_f052                ; $F048  D0 08
  lda z:_var_00c8                ; $F04A  A5 C8
  bne _label_f052                ; $F04C  D0 04
  lda #$20                       ; $F04E  A9 20
  sta z:_var_00f0_indexed        ; $F050  85 F0

_label_f052:
  rts                            ; $F052  60

_data_f053_indexed:
.byte $06, $06, $07, $08, $09, $0a, $00, $00, $00, $00, $00 ; $F053

_data_f05e_indexed:
.byte $04, $05, $06, $07, $08, $09, $0a, $0b, $08, $09, $0a, $0b ; $F05E

_data_f06a_indexed:
.byte $00, $00, $00, $00, $32, $4b, $64, $64, $4b, $64, $96, $64 ; $F06A

_data_f076_indexed:
.byte $00, $00, $00, $00, $32, $4b, $64, $64, $64, $96, $c8, $64 ; $F076

_data_f082_indexed:
.byte $00, $00, $00, $00, $01, $02, $03, $03, $02, $03, $04, $03 ; $F082

_func_f08e:
  pha                            ; $F08E  48
  pla                            ; $F08F  68
  bpl _label_f097                ; $F090  10 05
  eor #$FF                       ; $F092  49 FF
  clc                            ; $F094  18
  adc #$01                       ; $F095  69 01

_label_f097:
  rts                            ; $F097  60

_func_f098:
  lda a:_var_0424_indexed,Y      ; $F098  B9 24 04
  sec                            ; $F09B  38
  sbc a:_var_0424_indexed,X      ; $F09C  FD 24 04
  lda a:_var_042d_indexed,Y      ; $F09F  B9 2D 04
  sbc a:_var_042d_indexed,X      ; $F0A2  FD 2D 04
  rts                            ; $F0A5  60

_func_f0a6:
  lda a:_var_0412_indexed,Y      ; $F0A6  B9 12 04
  sec                            ; $F0A9  38
  sbc a:_var_0412_indexed,X      ; $F0AA  FD 12 04
  lda a:_var_041b_indexed,Y      ; $F0AD  B9 1B 04
  sbc a:_var_041b_indexed,X      ; $F0B0  FD 1B 04
  rts                            ; $F0B3  60

_func_f0b4:
  stx z:_var_0012                ; $F0B4  86 12
  sty z:_var_0013                ; $F0B6  84 13
  ldx z:_var_0013                ; $F0B8  A6 13
  ldy z:_var_0012                ; $F0BA  A4 12
  rts                            ; $F0BC  60

_func_f0bd:
  cpx #$02                       ; $F0BD  E0 02
  bcc _label_f0dd                ; $F0BF  90 1C
  lda z:_var_007f_indexed,X      ; $F0C1  B5 7F
  cmp #$02                       ; $F0C3  C9 02
  bcc _label_f0dd                ; $F0C5  90 16
  lda #$01                       ; $F0C7  A9 01
  cmp z:_var_0088_indexed,X      ; $F0C9  D5 88
  bcs _label_f0dd                ; $F0CB  B0 10
  cpy #$02                       ; $F0CD  C0 02
  bcc _label_f0dd                ; $F0CF  90 0C
  lda a:_var_007f_indexed,Y      ; $F0D1  B9 7F 00
  cmp #$02                       ; $F0D4  C9 02
  bcc _label_f0dd                ; $F0D6  90 05
  lda #$01                       ; $F0D8  A9 01
  cmp a:_var_0088_indexed,Y      ; $F0DA  D9 88 00

_label_f0dd:
  rts                            ; $F0DD  60

_func_f0de:
  lda #$00                       ; $F0DE  A9 00
  sec                            ; $F0E0  38
  sbc a:_var_0424_indexed,X      ; $F0E1  FD 24 04
  sta a:_var_0424_indexed,X      ; $F0E4  9D 24 04
  lda #$00                       ; $F0E7  A9 00
  sbc a:_var_042d_indexed,X      ; $F0E9  FD 2D 04
  sta a:_var_042d_indexed,X      ; $F0EC  9D 2D 04
  lda #$00                       ; $F0EF  A9 00
  sec                            ; $F0F1  38
  sbc a:_var_0463_indexed,X      ; $F0F2  FD 63 04
  sta a:_var_0463_indexed,X      ; $F0F5  9D 63 04
  lda #$00                       ; $F0F8  A9 00
  sbc a:_var_046c_indexed,X      ; $F0FA  FD 6C 04
  sta a:_var_046c_indexed,X      ; $F0FD  9D 6C 04
  lda z:_var_0031_indexed,X      ; $F100  B5 31
  and #$40                       ; $F102  29 40
  sta z:_var_0031_indexed,X      ; $F104  95 31
  rts                            ; $F106  60

_func_f107:
  lda #$00                       ; $F107  A9 00
  sec                            ; $F109  38
  sbc a:_var_0412_indexed,X      ; $F10A  FD 12 04
  sta a:_var_0412_indexed,X      ; $F10D  9D 12 04
  lda #$00                       ; $F110  A9 00
  sbc a:_var_041b_indexed,X      ; $F112  FD 1B 04
  sta a:_var_041b_indexed,X      ; $F115  9D 1B 04
  rts                            ; $F118  60

_func_f119:
  sta z:_var_002d                ; $F119  85 2D
  lda z:_var_002c                ; $F11B  A5 2C
  bpl _func_f143                 ; $F11D  10 24
  lda #$00                       ; $F11F  A9 00
  sec                            ; $F121  38
  sbc z:_var_002b                ; $F122  E5 2B
  sta z:_var_002b                ; $F124  85 2B
  lda #$00                       ; $F126  A9 00
  sbc z:_var_002c                ; $F128  E5 2C
  sta z:_var_002c                ; $F12A  85 2C
  jsr _func_f143                 ; $F12C  20 43 F1
  lda #$00                       ; $F12F  A9 00
  sec                            ; $F131  38
  sbc z:_var_002e                ; $F132  E5 2E
  sta z:_var_002e                ; $F134  85 2E
  lda #$00                       ; $F136  A9 00
  sbc z:_var_002f                ; $F138  E5 2F
  sta z:_var_002f                ; $F13A  85 2F
  lda #$00                       ; $F13C  A9 00
  sbc z:_var_0030                ; $F13E  E5 30
  sta z:_var_0030                ; $F140  85 30
  rts                            ; $F142  60

_func_f143:
  txa                            ; $F143  8A
  pha                            ; $F144  48
  lda #$00                       ; $F145  A9 00
  sta z:_var_002e                ; $F147  85 2E
  sta z:_var_002f                ; $F149  85 2F
  sta z:_var_0030                ; $F14B  85 30
  ldx #$08                       ; $F14D  A2 08

_label_f14f:
  asl z:_var_002e                ; $F14F  06 2E
  rol z:_var_002f                ; $F151  26 2F
  rol z:_var_0030                ; $F153  26 30
  asl z:_var_002d                ; $F155  06 2D
  bcc _label_f16c                ; $F157  90 13
  clc                            ; $F159  18
  lda z:_var_002b                ; $F15A  A5 2B
  adc z:_var_002e                ; $F15C  65 2E
  sta z:_var_002e                ; $F15E  85 2E
  lda z:_var_002c                ; $F160  A5 2C
  adc z:_var_002f                ; $F162  65 2F
  sta z:_var_002f                ; $F164  85 2F
  lda #$00                       ; $F166  A9 00
  adc z:_var_0030                ; $F168  65 30
  sta z:_var_0030                ; $F16A  85 30

_label_f16c:
  dex                            ; $F16C  CA
  bne _label_f14f                ; $F16D  D0 E0
  pla                            ; $F16F  68
  tax                            ; $F170  AA
  rts                            ; $F171  60

_func_f172:
  lda a:_var_0424_indexed,X      ; $F172  BD 24 04
  sta z:_var_002b                ; $F175  85 2B
  lda a:_var_042d_indexed,X      ; $F177  BD 2D 04
  sta z:_var_002c                ; $F17A  85 2C
  lda #$CD                       ; $F17C  A9 CD
  jsr _func_f119                 ; $F17E  20 19 F1
  lda z:_var_002f                ; $F181  A5 2F
  sta a:_var_0424_indexed,X      ; $F183  9D 24 04
  lda z:_var_0030                ; $F186  A5 30
  sta a:_var_042d_indexed,X      ; $F188  9D 2D 04
  rts                            ; $F18B  60

_func_f18c:
  lda a:_var_0412_indexed,X      ; $F18C  BD 12 04
  sta z:_var_002b                ; $F18F  85 2B
  lda a:_var_041b_indexed,X      ; $F191  BD 1B 04
  sta z:_var_002c                ; $F194  85 2C
  lda #$CD                       ; $F196  A9 CD
  jsr _func_f119                 ; $F198  20 19 F1
  lda z:_var_002f                ; $F19B  A5 2F
  sta a:_var_0412_indexed,X      ; $F19D  9D 12 04
  lda z:_var_0030                ; $F1A0  A5 30
  sta a:_var_041b_indexed,X      ; $F1A2  9D 1B 04
  rts                            ; $F1A5  60

_func_f1a6:
  ldy #$04                       ; $F1A6  A0 04

_label_f1a8:
  lda z:_var_0013                ; $F1A8  A5 13
  asl a                          ; $F1AA  0A
  ror z:_var_0013                ; $F1AB  66 13
  ror z:_var_0012                ; $F1AD  66 12
  dey                            ; $F1AF  88
  bne _label_f1a8                ; $F1B0  D0 F6
  rts                            ; $F1B2  60

_func_f1b3:
  txa                            ; _func_f1b3  8A
  pha                            ; $F1B4  48
  ldx #$0B                       ; $F1B5  A2 0B

_label_f1b7:
  asl z:_var_001b                ; $F1B7  06 1B
  rol z:_var_001c                ; $F1B9  26 1C
  rol a                          ; $F1BB  2A
  rol a                          ; $F1BC  2A
  eor z:_var_001b                ; $F1BD  45 1B
  rol a                          ; $F1BF  2A
  eor z:_var_001b                ; $F1C0  45 1B
  lsr a                          ; $F1C2  4A
  lsr a                          ; $F1C3  4A
  eor #$FF                       ; $F1C4  49 FF
  and #$01                       ; $F1C6  29 01
  ora z:_var_001b                ; $F1C8  05 1B
  sta z:_var_001b                ; $F1CA  85 1B
  dex                            ; $F1CC  CA
  bne _label_f1b7                ; $F1CD  D0 E8
  pla                            ; $F1CF  68
  tax                            ; $F1D0  AA
  lda z:_var_001b                ; $F1D1  A5 1B
  rts                            ; $F1D3  60

_label_f1d4:
  jsr _func_dac1                 ; $F1D4  20 C1 DA
  ldx #$09                       ; $F1D7  A2 09

_label_f1d9:
  lda #$00                       ; $F1D9  A9 00
  sta z:_var_0003_indexed,X      ; $F1DB  95 03
  dex                            ; $F1DD  CA
  bpl _label_f1d9                ; $F1DE  10 F9
  sta z:_var_003e                ; $F1E0  85 3E
  inc z:_var_0041_indexed        ; $F1E2  E6 41
  jsr _func_d6de                 ; $F1E4  20 DE D6
  lda #$0F                       ; $F1E7  A9 0F
  sta APU_SND_CHN                ; $F1E9  8D 15 40
  lda #$01                       ; $F1EC  A9 01
  sta z:_var_00f0_indexed        ; $F1EE  85 F0
  lda #$02                       ; $F1F0  A9 02

_func_f1f2:
  sta z:_var_0041_indexed        ; $F1F2  85 41
  ldy z:_var_0040                ; $F1F4  A4 40
  bne _label_f1fa                ; $F1F6  D0 02
  lda #$FF                       ; $F1F8  A9 FF

_label_f1fa:
  sta z:_var_0042                ; $F1FA  85 42
  ldx #$00                       ; $F1FC  A2 00
  stx a:_var_0488                ; $F1FE  8E 88 04
  stx z:_var_003b                ; $F201  86 3B
  stx z:_var_003c                ; $F203  86 3C
  stx a:_var_0558                ; $F205  8E 58 05
  dex                            ; $F208  CA
  stx z:$89                      ; $F209  86 89
  ldx z:_var_0040                ; $F20B  A6 40

_label_f20d:
  jsr _func_f3b0                 ; $F20D  20 B0 F3
  dex                            ; $F210  CA
  bpl _label_f20d                ; $F211  10 FA

_label_f213:
  lda #$00                       ; $F213  A9 00
  sta z:_var_00c8                ; $F215  85 C8
  lda z:_var_003c                ; $F217  A5 3C
  lsr a                          ; $F219  4A
  lsr a                          ; $F21A  4A
  cmp #$08                       ; $F21B  C9 08
  bcc _label_f221                ; $F21D  90 02
  lda #$08                       ; $F21F  A9 08

_label_f221:
  tax                            ; $F221  AA
  lda a:_data_f3ba_indexed,X     ; $F222  BD BA F3
  sta z:_var_00c6                ; $F225  85 C6
  lda a:_data_f3c3_indexed,X     ; $F227  BD C3 F3
  sta z:_var_00c7                ; $F22A  85 C7
  lda z:_var_003c                ; $F22C  A5 3C
  cmp #$02                       ; $F22E  C9 02
  bcs _label_f238                ; $F230  B0 06
  lda #$03                       ; $F232  A9 03
  sta z:_var_00c6                ; $F234  85 C6
  sta z:_var_00c7                ; $F236  85 C7

_label_f238:
  ldx #$07                       ; $F238  A2 07

_label_f23a:
  lda #$00                       ; $F23A  A9 00
  sta a:_var_0448_indexed,X      ; $F23C  9D 48 04
  sta a:_var_0475_indexed,X      ; $F23F  9D 75 04
  sta a:_var_047e_indexed,X      ; $F242  9D 7E 04
  sta a:_var_0424_indexed,X      ; $F245  9D 24 04
  sta a:_var_042d_indexed,X      ; $F248  9D 2D 04
  sta a:_var_0412_indexed,X      ; $F24B  9D 12 04
  sta a:_var_041b_indexed,X      ; $F24E  9D 1B 04
  sta a:_var_0463_indexed,X      ; $F251  9D 63 04
  sta a:_var_046c_indexed,X      ; $F254  9D 6C 04
  sta a:_var_0400_indexed,X      ; $F257  9D 00 04
  sta a:_var_0409_indexed,X      ; $F25A  9D 09 04
  lda #$01                       ; $F25D  A9 01
  sta a:_var_043f_indexed,X      ; $F25F  9D 3F 04
  sta a:_var_045a_indexed,X      ; $F262  9D 5A 04
  lda #$03                       ; $F265  A9 03
  sta a:_var_0436_indexed,X      ; $F267  9D 36 04
  dex                            ; $F26A  CA
  bpl _label_f23a                ; $F26B  10 CD
  ldx #$05                       ; $F26D  A2 05

_label_f26f:
  lda #$FF                       ; $F26F  A9 FF
  sta z:_var_008a_indexed,X      ; $F271  95 8A
  dex                            ; $F273  CA
  bpl _label_f26f                ; $F274  10 F9
  ldx z:_var_0040                ; $F276  A6 40

_label_f278:
  jsr _func_f386                 ; $F278  20 86 F3
  dex                            ; $F27B  CA
  bpl _label_f278                ; $F27C  10 FA
  jsr _func_d246                 ; $F27E  20 46 D2
  jsr _func_d293                 ; $F281  20 93 D2
  lda z:_var_00c6                ; $F284  A5 C6
  cmp #$10                       ; $F286  C9 10
  bcs _label_f28e                ; $F288  B0 04
  lda #$58                       ; $F28A  A9 58
  sta z:_var_00c6                ; $F28C  85 C6

_label_f28e:
  jsr _func_f4a5                 ; $F28E  20 A5 F4
  jsr _func_d8ff                 ; $F291  20 FF D8
  lda z:_var_0016                ; $F294  A5 16
  beq _label_f29b                ; $F296  F0 03
  jmp _label_c1c5                ; $F298  4C C5 C1

_label_f29b:
  lda z:_var_00c8                ; $F29B  A5 C8
  beq _label_f2a2                ; $F29D  F0 03
  jmp _label_cf13                ; $F29F  4C 13 CF

_label_f2a2:
  jsr _func_c716                 ; $F2A2  20 16 C7
  lda z:_var_003b                ; $F2A5  A5 3B
  and #$03                       ; $F2A7  29 03
  bne _label_f2b3                ; $F2A9  D0 08
  lda #$08                       ; $F2AB  A9 08
  sta z:_var_00f2                ; $F2AD  85 F2
  ldx z:_var_003a                ; $F2AF  A6 3A
  bne _label_f2b9                ; $F2B1  D0 06

_label_f2b3:
  lda #$FF                       ; $F2B3  A9 FF
  sta z:_var_003d                ; $F2B5  85 3D
  inc z:_var_003c                ; $F2B7  E6 3C

_label_f2b9:
  jsr _func_f470                 ; $F2B9  20 70 F4
  lda z:_var_003d                ; $F2BC  A5 3D
  beq _label_f2c5                ; $F2BE  F0 05
  dec z:_var_003d                ; $F2C0  C6 3D
  jsr _func_f3cc                 ; $F2C2  20 CC F3

_label_f2c5:
  jsr _func_f1b3                 ; $F2C5  20 B3 F1
  jsr _func_e691                 ; $F2C8  20 91 E6
  jsr _func_c6f9                 ; $F2CB  20 F9 C6
  jsr _func_c790                 ; $F2CE  20 90 C7
  jsr _func_c831                 ; $F2D1  20 31 C8
  jsr _func_c8b7                 ; $F2D4  20 B7 C8
  jsr _func_d8dd                 ; $F2D7  20 DD D8
  jsr _func_e587                 ; $F2DA  20 87 E5
  jsr _func_cb74                 ; $F2DD  20 74 CB
  inc z:_var_004c                ; $F2E0  E6 4C
  ldx z:_var_0040                ; $F2E2  A6 40

_label_f2e4:
  lda z:_var_0088_indexed,X      ; $F2E4  B5 88
  bpl _label_f30d                ; $F2E6  10 25
  lda z:_var_003a                ; $F2E8  A5 3A
  bne _label_f326                ; $F2EA  D0 3A
  lda z:_var_0041_indexed,X      ; $F2EC  B5 41
  bmi _label_f30d                ; $F2EE  30 1D
  dec z:_var_00c3_indexed,X      ; $F2F0  D6 C3
  bne _label_f327                ; $F2F2  D0 33
  txa                            ; $F2F4  8A
  pha                            ; $F2F5  48
  jsr _func_c726                 ; $F2F6  20 26 C7
  pla                            ; $F2F9  68
  tax                            ; $F2FA  AA
  ldy #$02                       ; $F2FB  A0 02
  dec z:_var_0041_indexed,X      ; $F2FD  D6 41
  sty z:_var_0046                ; $F2FF  84 46
  bmi _label_f30d                ; $F301  30 0A
  jsr _func_f386                 ; $F303  20 86 F3
  jsr _func_f3b0                 ; $F306  20 B0 F3
  lda #$80                       ; $F309  A9 80
  sta z:_var_00f2                ; $F30B  85 F2

_label_f30d:
  dex                            ; $F30D  CA
  bpl _label_f2e4                ; $F30E  10 D4
  lda z:_var_0041_indexed        ; $F310  A5 41
  bpl _label_f318                ; $F312  10 04
  lda z:_var_0042                ; $F314  A5 42
  bmi _label_f366                ; $F316  30 4E

_label_f318:
  lda z:_var_003a                ; $F318  A5 3A
  beq _label_f327                ; $F31A  F0 0B
  jsr _func_e768                 ; $F31C  20 68 E7
  lda a:_var_061c_indexed        ; $F31F  AD 1C 06
  and #$30                       ; $F322  29 30
  beq _label_f2b9                ; $F324  F0 93

_label_f326:
  rts                            ; $F326  60

_label_f327:
  ldx #$05                       ; $F327  A2 05

_label_f329:
  lda z:_var_008a_indexed,X      ; $F329  B5 8A
  beq _label_f32f                ; $F32B  F0 02
  bpl _label_f2b9                ; $F32D  10 8A

_label_f32f:
  dex                            ; $F32F  CA
  bpl _label_f329                ; $F330  10 F7
  lda z:_var_00bb                ; $F332  A5 BB
  bpl _label_f2b9                ; $F334  10 83
  ldx z:_var_0040                ; $F336  A6 40

_label_f338:
  ldy z:_var_0088_indexed,X      ; $F338  B4 88
  dey                            ; $F33A  88
  bpl _label_f34c                ; $F33B  10 0F
  lda z:_var_0041_indexed,X      ; $F33D  B5 41
  bmi _label_f34c                ; $F33F  30 0B
  lda #$FF                       ; $F341  A9 FF
  sta z:_var_0088_indexed,X      ; $F343  95 88
  lda #$01                       ; $F345  A9 01
  sta z:_var_00c3_indexed,X      ; $F347  95 C3
  jmp _label_f2b9                ; $F349  4C B9 F2

_label_f34c:
  dex                            ; $F34C  CA
  bpl _label_f338                ; $F34D  10 E9
  lda #$02                       ; $F34F  A9 02
  sta z:_var_00f2                ; $F351  85 F2

_label_f353:
  ldx #$96                       ; $F353  A2 96
  jsr _func_f45e                 ; $F355  20 5E F4
  ldx z:_var_003b                ; $F358  A6 3B
  inx                            ; $F35A  E8
  cpx #$10                       ; $F35B  E0 10
  bne _label_f361                ; $F35D  D0 02
  ldx #$04                       ; $F35F  A2 04

_label_f361:
  stx z:_var_003b                ; $F361  86 3B
  jmp _label_f213                ; $F363  4C 13 F2

_label_f366:
  lda #$01                       ; $F366  A9 01
  sta z:_var_00f2                ; $F368  85 F2

_label_f36a:
  lda #$00                       ; $F36A  A9 00
  sta z:_var_0017                ; $F36C  85 17
  sta z:_var_0018                ; $F36E  85 18
  sta z:_var_0015                ; $F370  85 15
  jsr _func_f40b                 ; $F372  20 0B F4

_label_f375:
  jsr _func_f465                 ; $F375  20 65 F4
  jsr _func_e768                 ; $F378  20 68 E7
  and #$30                       ; $F37B  29 30
  bne _label_f383                ; $F37D  D0 04
  dec z:_var_0015                ; $F37F  C6 15
  bne _label_f375                ; $F381  D0 F2

_label_f383:
  jmp _label_f1d4                ; $F383  4C D4 F1

_func_f386:
  lda z:_var_0041_indexed,X      ; $F386  B5 41
  bmi _label_f3ad                ; $F388  30 23
  lda a:_data_f3ae_indexed,X     ; $F38A  BD AE F3
  sta z:_var_0091_indexed,X      ; $F38D  95 91
  lda #$B8                       ; $F38F  A9 B8
  sta z:_var_009a_indexed,X      ; $F391  95 9A
  sta z:_var_00bd_indexed,X      ; $F393  95 BD
  lda #$C8                       ; $F395  A9 C8
  sta z:_var_00bf_indexed,X      ; $F397  95 BF
  lda #$5A                       ; $F399  A9 5A
  ldy z:_var_0041_indexed,X      ; $F39B  B4 41
  bpl _label_f3a1                ; $F39D  10 02
  lda #$01                       ; $F39F  A9 01

_label_f3a1:
  sta z:_var_00c3_indexed,X      ; $F3A1  95 C3
  lda #$00                       ; $F3A3  A9 00
  sta z:_var_00c1_indexed,X      ; $F3A5  95 C1
  sta a:_var_042d_indexed,X      ; $F3A7  9D 2D 04
  sta a:_var_0424_indexed,X      ; $F3AA  9D 24 04

_label_f3ad:
  rts                            ; $F3AD  60

_data_f3ae_indexed:
.byte $20, $d0                   ; $F3AE

_func_f3b0:
  lda #$03                       ; $F3B0  A9 03
  sta a:_var_0451_indexed,X      ; $F3B2  9D 51 04
  lda #$02                       ; $F3B5  A9 02
  sta z:_var_0088_indexed,X      ; $F3B7  95 88
  rts                            ; $F3B9  60

_data_f3ba_indexed:
.byte $58, $50, $58, $50, $50, $40, $38, $30, $28 ; $F3BA

_data_f3c3_indexed:
.byte $04, $04, $03, $03, $02, $02, $02, $02, $02 ; $F3C3

_func_f3cc:
  lda z:_var_003d                ; $F3CC  A5 3D
  and #$20                       ; $F3CE  29 20
  beq _label_f3ee                ; $F3D0  F0 1C
  ldx #$0A                       ; $F3D2  A2 0A

_label_f3d4:
  lda a:_data_f3f5_indexed,X     ; $F3D4  BD F5 F3
  sta z:_var_0057_indexed,X      ; $F3D7  95 57
  dex                            ; $F3D9  CA
  bpl _label_f3d4                ; $F3DA  10 F8
  ldy #$0A                       ; $F3DC  A0 0A
  lda z:_var_003c                ; $F3DE  A5 3C
  sta z:_var_0043                ; $F3E0  85 43
  jsr _func_d77c                 ; $F3E2  20 7C D7
  sta z:$60                      ; $F3E5  85 60
  lda z:_var_0043                ; $F3E7  A5 43
  sta z:$61                      ; $F3E9  85 61
  jmp _func_c12d                 ; $F3EB  4C 2D C1

_label_f3ee:
.ifndef japan
  lda #$00                       ; $F3EE  A9 00
  ldy #$F4                       ; $F3F0  A0 F4
.else
  lda #$F6
  ldy #$F3
.endif
  jmp _func_c131                 ; $F3F2  4C 31 C1

_data_f3f5_indexed:
.byte $20, $6c, $08, $19, $11, $0a, $1c, $0e, $25, $00, $00, $20, $6c, $08, $24, $24 ; $F3F5
.byte $24, $24, $24, $24, $24, $24 ; $F405

_func_f40b:
  jsr _func_f465                 ; $F40B  20 65 F4
  ldx #$01                       ; $F40E  A2 01

_label_f410:
  lda a:_data_f43b_indexed,X     ; $F410  BD 3B F4
  ldy a:_data_f43d_indexed,X     ; $F413  BC 3D F4
  jsr _func_c131                 ; $F416  20 31 C1
  dex                            ; $F419  CA
  bpl _label_f410                ; $F41A  10 F4
  ldx #$0F                       ; $F41C  A2 0F

_label_f41e:
  lda #$24                       ; $F41E  A9 24
  sta z:_var_005a_indexed,X      ; $F420  95 5A
  dex                            ; $F422  CA
  bpl _label_f41e                ; $F423  10 F9
  lda #$10                       ; $F425  A9 10
  sta z:_var_0059_indexed        ; $F427  85 59
  lda #$21                       ; $F429  A9 21
  sta z:_var_0057_indexed        ; $F42B  85 57
  ldx #$02                       ; $F42D  A2 02

_label_f42f:
  lda a:_data_f43f_indexed,X     ; $F42F  BD 3F F4
  sta z:_var_0058_indexed        ; $F432  85 58
  jsr _func_c12d                 ; $F434  20 2D C1
  dex                            ; $F437  CA
  bpl _label_f42f                ; $F438  10 F5
  rts                            ; $F43A  60

_data_f43b_indexed:
.ifndef japan
.byte $42, $55                   ; $F43B
.else
.byte $38, $4b
.endif

_data_f43d_indexed:
.byte $f4, $f4                   ; $F43D

_data_f43f_indexed:
.byte $88, $a8, $e8
TilemapDraw $21c8, {$24, $24, $24, $10, $0a, $16, $0e, $24, $24, $18, $1f, $0e, $1b, $24, $24, $24}, 16   ; "   GAME  OVER   "
TilemapDraw $23da, {$aa, $aa, $aa, $aa}, 4   ; ???

_func_f45c:
  ldx #$14                       ; $F45C  A2 14

_func_f45e:
  jsr _func_f465                 ; $F45E  20 65 F4
  dex                            ; $F461  CA
  bne _func_f45e                 ; $F462  D0 FA
  rts                            ; $F464  60

_func_f465:
  lda #$00                       ; $F465  A9 00
  sta z:_var_0002_indexed        ; $F467  85 02

_func_f469:
.ifndef animal_crossing
  lda z:_var_0002_indexed        ; $F469  A5 02
  beq _func_f469                 ; $F46B  F0 FC
.else
  jsr _func_bfd0                 ; $F45F  20 D0 BF
  nop                            ; $F462  EA
.endif
  dec z:_var_0002_indexed        ; $F46D  C6 02

_label_f46f:
  rts                            ; $F46F  60

_func_f470:
  jsr _func_f469                 ; $F470  20 69 F4
  lda z:_var_003a                ; $F473  A5 3A
  bne _label_f46f                ; $F475  D0 F8
  jsr _func_e768                 ; $F477  20 68 E7
  and #$10                       ; $F47A  29 10
  beq _label_f46f                ; $F47C  F0 F1
  lda #$04                       ; $F47E  A9 04
  sta z:_var_00f2                ; $F480  85 F2
  lda z:_var_0001                ; $F482  A5 01
  and #$EF                       ; $F484  29 EF
  sta PPU_MASK                   ; $F486  8D 01 20

_label_f489:
  jsr _func_f465                 ; $F489  20 65 F4
  jsr _func_e768                 ; $F48C  20 68 E7
  and #$10                       ; $F48F  29 10
  beq _label_f489                ; $F491  F0 F6
  lda z:_var_0001                ; $F493  A5 01
  sta PPU_MASK                   ; $F495  8D 01 20
  ldy #$04                       ; $F498  A0 04
  lda z:_var_00c8                ; $F49A  A5 C8
  ora z:_var_0016                ; $F49C  05 16
  beq _label_f4a2                ; $F49E  F0 02
  ldy #$20                       ; $F4A0  A0 20

_label_f4a2:
  sty z:_var_00f2                ; $F4A2  84 F2
  rts                            ; $F4A4  60

_func_f4a5:
  lda #$01                       ; $F4A5  A9 01
  sta a:$048E                    ; $F4A7  8D 8E 04
  sta a:$048F                    ; $F4AA  8D 8F 04
  lda #$FF                       ; $F4AD  A9 FF
  sta z:_var_00bb                ; $F4AF  85 BB
  sta z:_var_0087                ; $F4B1  85 87
  sta a:_var_048c                ; $F4B3  8D 8C 04
  ldx #$01                       ; $F4B6  A2 01
  stx a:$0459                    ; $F4B8  8E 59 04
  stx z:$90                      ; $F4BB  86 90
  inx                            ; $F4BD  E8
  stx z:_var_0046                ; $F4BE  86 46
  lda #$40                       ; $F4C0  A9 40
  sta z:_var_0099                ; $F4C2  85 99
  rts                            ; $F4C4  60

.align  256
_label_f500:
  jsr _func_f78f                 ; $F500  20 8F F7

_label_f503:
  rts                            ; $F503  60

_label_f504:
  lda #$00                       ; $F504  A9 00
  tax                            ; $F506  AA
  sta z:_var_00fd                ; $F507  85 FD
  beq _label_f51b                ; $F509  F0 10

_label_f50b:
  txa                            ; $F50B  8A
  lsr a                          ; $F50C  4A
  tax                            ; $F50D  AA

_label_f50e:
  inx                            ; $F50E  E8
  txa                            ; $F50F  8A
  cmp #$04                       ; $F510  C9 04
  beq _label_f503                ; $F512  F0 EF
  lda z:_var_00fd                ; $F514  A5 FD
  clc                            ; $F516  18
  adc #$04                       ; $F517  69 04
  sta z:_var_00fd                ; $F519  85 FD

_label_f51b:
  txa                            ; $F51B  8A
  asl a                          ; $F51C  0A
  tax                            ; $F51D  AA
  lda z:_var_00e0_indexed,X      ; $F51E  B5 E0
  sta z:_var_00fe_indexed        ; $F520  85 FE
  lda z:_var_00e1_indexed,X      ; $F522  B5 E1
  sta z:$FF                      ; $F524  85 FF
  lda z:_var_00e1_indexed,X      ; $F526  B5 E1
  beq _label_f50b                ; $F528  F0 E1
  txa                            ; $F52A  8A
  lsr a                          ; $F52B  4A
  tax                            ; $F52C  AA
  dec z:_var_00d0_indexed,X      ; $F52D  D6 D0
  bne _label_f50e                ; $F52F  D0 DD

_label_f531:
  ldy z:_var_00e8_indexed,X      ; $F531  B4 E8
  inc z:_var_00e8_indexed,X      ; $F533  F6 E8
  lda (_var_00fe_indexed),Y      ; $F535  B1 FE
  beq _label_f500                ; $F537  F0 C7
  tay                            ; $F539  A8
  cmp #$FF                       ; $F53A  C9 FF
  beq _label_f547                ; $F53C  F0 09
  and #$C0                       ; $F53E  29 C0
  cmp #$C0                       ; $F540  C9 C0
  beq _label_f553                ; $F542  F0 0F
  jmp _label_f561                ; $F544  4C 61 F5

_label_f547:
  lda z:_var_00d8_indexed,X      ; $F547  B5 D8
  beq _label_f55e                ; $F549  F0 13
  dec z:_var_00d8_indexed,X      ; $F54B  D6 D8
  lda z:_var_00ec_indexed,X      ; $F54D  B5 EC
  sta z:_var_00e8_indexed,X      ; $F54F  95 E8
  bne _label_f55e                ; $F551  D0 0B

_label_f553:
  tya                            ; $F553  98
  and #$3F                       ; $F554  29 3F
  sta z:_var_00d8_indexed,X      ; $F556  95 D8
  dec z:_var_00d8_indexed,X      ; $F558  D6 D8
  lda z:_var_00e8_indexed,X      ; $F55A  B5 E8
  sta z:_var_00ec_indexed,X      ; $F55C  95 EC

_label_f55e:
  jmp _label_f531                ; $F55E  4C 31 F5

_label_f561:
  tya                            ; $F561  98
  bpl _label_f57b                ; $F562  10 17
  and #$0F                       ; $F564  29 0F
  clc                            ; $F566  18
  adc z:_var_00df_indexed        ; $F567  65 DF
  tay                            ; $F569  A8
  lda a:_data_f660_indexed,Y     ; $F56A  B9 60 F6
  sta z:_var_00d4_indexed,X      ; $F56D  95 D4
  tay                            ; $F56F  A8
  txa                            ; $F570  8A
  cmp #$02                       ; $F571  C9 02
  beq _label_f5c4                ; $F573  F0 4F

_label_f575:
  ldy z:_var_00e8_indexed,X      ; $F575  B4 E8
  inc z:_var_00e8_indexed,X      ; $F577  F6 E8
  lda (_var_00fe_indexed),Y      ; $F579  B1 FE

_label_f57b:
  tay                            ; $F57B  A8
  txa                            ; $F57C  8A
  cmp #$03                       ; $F57D  C9 03
  beq _label_f5e1                ; $F57F  F0 60
  pha                            ; $F581  48
  tax                            ; $F582  AA
  cmp #$01                       ; $F583  C9 01
  beq _label_f5b9                ; $F585  F0 32

_label_f587:
  ldx z:_var_00fd                ; $F587  A6 FD
  lda a:_data_f601_indexed,Y     ; $F589  B9 01 F6
  beq _label_f599                ; $F58C  F0 0B
  sta APU_PL1_LO,X               ; $F58E  9D 02 40
  lda a:_data_f600_indexed,Y     ; $F591  B9 00 F6
  ora #$08                       ; $F594  09 08
  sta APU_PL1_HI,X               ; $F596  9D 03 40

_label_f599:
  tay                            ; $F599  A8
  pla                            ; $F59A  68
  tax                            ; $F59B  AA
  tya                            ; $F59C  98
  bne _label_f5aa                ; $F59D  D0 0B
  ldy #$00                       ; $F59F  A0 00
  txa                            ; $F5A1  8A
  cmp #$02                       ; $F5A2  C9 02
  beq _label_f5ac                ; $F5A4  F0 06
  ldy #$10                       ; $F5A6  A0 10
  bne _label_f5ac                ; $F5A8  D0 02

_label_f5aa:
  ldy z:_var_00dc_indexed,X      ; $F5AA  B4 DC

_label_f5ac:
  tya                            ; $F5AC  98
  ldy z:_var_00fd                ; $F5AD  A4 FD
  sta APU_PL1_VOL,Y              ; $F5AF  99 00 40

_label_f5b2:
  lda z:_var_00d4_indexed,X      ; $F5B2  B5 D4
  sta z:_var_00d0_indexed,X      ; $F5B4  95 D0
  jmp _label_f50e                ; $F5B6  4C 0E F5

_label_f5b9:
  lda z:_var_00f5                ; $F5B9  A5 F5
  and #$02                       ; $F5BB  29 02
  beq _label_f587                ; $F5BD  F0 C8
  pla                            ; $F5BF  68
  tax                            ; $F5C0  AA
  jmp _label_f5b2                ; $F5C1  4C B2 F5

_label_f5c4:
  tya                            ; $F5C4  98
  ldy a:apu_note_playing                ; $F5C5  AC F0 07
  beq _label_f5ce                ; $F5C8  F0 04
  lda #$FF                       ; $F5CA  A9 FF
  bne _label_f5d9                ; $F5CC  D0 0B

_label_f5ce:
  clc                            ; $F5CE  18
  adc #$FE                       ; $F5CF  69 FE
  asl a                          ; $F5D1  0A
  asl a                          ; $F5D2  0A
  cmp #$3C                       ; $F5D3  C9 3C
  bcc _label_f5d9                ; $F5D5  90 02
  lda #$3C                       ; $F5D7  A9 3C

_label_f5d9:
  sta APU_TRI_LINEAR             ; $F5D9  8D 08 40
  sta z:$DE                      ; $F5DC  85 DE
  jmp _label_f575                ; $F5DE  4C 75 F5

_label_f5e1:
  lda z:_var_00f4                ; $F5E1  A5 F4
  cmp #$02                       ; $F5E3  C9 02
  beq _label_f5f9                ; $F5E5  F0 12
  lda a:_data_f700_indexed,Y     ; $F5E7  B9 00 F7
  sta APU_NOISE_VOL              ; $F5EA  8D 0C 40
  lda a:_data_f701_indexed,Y     ; $F5ED  B9 01 F7
  sta APU_NOISE_LO               ; $F5F0  8D 0E 40
  lda a:_data_f702_indexed,Y     ; $F5F3  B9 02 F7
  sta APU_NOISE_HI               ; $F5F6  8D 0F 40

_label_f5f9:
  jmp _label_f5b2                ; $F5F9  4C B2 F5

.byte $16, $ff, $10, $c5         ; $F5FC

_data_f600_indexed:
.byte $07                        ; $F600

_data_f601_indexed:
.byte $f0, $00, $00, $00, $d4, $00, $c8, $00, $bd, $00, $b2, $00, $a8, $00, $9f, $00 ; $F601
.byte $96, $00, $8d, $00, $85, $00, $7e, $00, $76, $00, $70, $01, $ab, $01, $93, $01 ; $F611
.byte $7c, $01, $67, $01, $52, $01, $3f, $01, $2d, $01, $1c, $01, $0c, $00, $fd, $00 ; $F621
.byte $ee, $00, $e1, $03, $57, $03, $27, $02, $f9, $02, $cf, $02, $a6, $02, $80, $02 ; $F631
.byte $5c, $02, $3a, $02, $1a, $01, $fc, $01, $df, $01, $c4, $03, $f8, $00, $69, $00 ; $F641
.byte $63, $00, $5e, $00, $58, $00, $53, $00, $4f, $00, $4a, $00, $46, $00, $42 ; $F651

_data_f660_indexed:
.byte $03, $06, $0c, $18, $30, $12, $24, $09, $08, $04, $07, $01, $04, $08, $10, $20 ; $F660
.byte $40, $18, $30, $0c, $01, $06, $0c, $18, $30, $60, $24, $48, $12, $10, $08, $0e ; $F670
.byte $02, $03, $04              ; $F680

_func_f683:
  lda #$00                       ; $F683  A9 00
  beq _label_f691                ; $F685  F0 0A

_func_f687:
  lda #$08                       ; $F687  A9 08
  bne _label_f691                ; $F689  D0 06

_func_f68b:
  lda #$0C                       ; $F68B  A9 0C
  bne _label_f691                ; $F68D  D0 02

_func_f68f:
  lda #$04                       ; $F68F  A9 04

_label_f691:
  sta z:_var_00f9_indexed        ; $F691  85 F9
  lda #$40                       ; $F693  A9 40
  sta z:$FA                      ; $F695  85 FA
  stx z:_var_00fb_indexed        ; $F697  86 FB
  sty z:$FC                      ; $F699  84 FC
  ldy #$00                       ; $F69B  A0 00

_label_f69d:
  lda (_var_00fb_indexed),Y      ; $F69D  B1 FB
  sta (_var_00f9_indexed),Y      ; $F69F  91 F9
  iny                            ; $F6A1  C8
  tya                            ; $F6A2  98
  cmp #$04                       ; $F6A3  C9 04
  bne _label_f69d                ; $F6A5  D0 F6
  rts                            ; $F6A7  60

_func_f6a8:
  tax                            ; $F6A8  AA
  jsr _func_f798                 ; $F6A9  20 98 F7
  stx z:_var_00f6                ; $F6AC  86 F6
  lda a:sfx_mode                ; $F6AE  AD F5 07
  beq _label_f6be                ; $F6B1  F0 0B
  cmp #$02                       ; $F6B3  C9 02
  bne _label_f6be                ; $F6B5  D0 07
  sta z:_var_00f0_indexed        ; $F6B7  85 F0
  lda #$00                       ; $F6B9  A9 00
  sta a:sfx_mode                ; $F6BB  8D F5 07

_label_f6be:
  lda a:_data_fbca_indexed,Y     ; $F6BE  B9 CA FB
  tay                            ; $F6C1  A8
  ldx #$00                       ; $F6C2  A2 00

_label_f6c4:
  lda a:_data_fbca_indexed,Y     ; $F6C4  B9 CA FB
  sta z:_var_00df_indexed,X      ; $F6C7  95 DF
  iny                            ; $F6C9  C8
  inx                            ; $F6CA  E8
  txa                            ; $F6CB  8A
  cmp #$09                       ; $F6CC  C9 09
  bne _label_f6c4                ; $F6CE  D0 F4
  lda #$01                       ; $F6D0  A9 01
  sta z:_var_00d0_indexed        ; $F6D2  85 D0
  sta z:$D1                      ; $F6D4  85 D1
  sta z:$D2                      ; $F6D6  85 D2
  sta z:$D3                      ; $F6D8  85 D3
  lda #$00                       ; $F6DA  A9 00
  sta z:_var_00e8_indexed        ; $F6DC  85 E8
  sta z:$E9                      ; $F6DE  85 E9
  sta z:$EA                      ; $F6E0  85 EA
  sta z:$EB                      ; $F6E2  85 EB
  rts                            ; $F6E4  60

.byte $94, $ab, $fd, $58, $00, $7f, $04, $18, $3f, $7f, $00, $00, $06, $7f, $0a, $c0 ; $F6E5
.byte $08, $7f, $05, $c0, $c1, $89, $02, $0f, $ff, $ff, $ff ; $F6F5

_data_f700_indexed:
.byte $10                        ; $F700

_data_f701_indexed:
.byte $00                        ; $F701

_data_f702_indexed:
.byte $18, $10, $01, $18, $00, $01, $88, $02, $02, $40, $03, $05, $40, $04, $07, $40 ; $F702

_func_f712:
  lda #$7F                       ; $F712  A9 7F
  sta APU_PL1_SWEEP              ; $F714  8D 01 40
  sta APU_PL2_SWEEP              ; $F717  8D 05 40

_func_f71a:
  stx z:_var_00dc_indexed        ; $F71A  86 DC
  sty z:$DD                      ; $F71C  84 DD
  rts                            ; $F71E  60

_label_f71f:
  ldx #$E5                       ; $F71F  A2 E5
  ldy #$F6                       ; $F721  A0 F6
  bne _label_f745                ; $F723  D0 20

_func_f725:
  lda z:_var_00f3                ; $F725  A5 F3
  lsr a                          ; $F727  4A
  bcs _label_f736                ; $F728  B0 0C
  lda z:_var_00f7                ; $F72A  A5 F7
  lsr a                          ; $F72C  4A
  bcs _label_f749                ; $F72D  B0 1A
  lda z:_var_00f0_indexed        ; $F72F  A5 F0
  and #$10                       ; $F731  29 10
  bne _label_f71f                ; $F733  D0 EA
  rts                            ; $F735  60

_label_f736:
  lda z:_var_00f7                ; $F736  A5 F7
  ora #$01                       ; $F738  09 01
  sta z:_var_00f7                ; $F73A  85 F7
  lda #$00                       ; $F73C  A9 00
  sta a:apu_portamento_counter                ; $F73E  8D E4 07
  ldx #$FC                       ; $F741  A2 FC
  ldy #$F5                       ; $F743  A0 F5

_label_f745:
  jsr _func_f683                 ; $F745  20 83 F6
  rts                            ; $F748  60

_label_f749:
  inc a:apu_portamento_counter                ; $F749  EE E4 07
  lda a:apu_portamento_counter                ; $F74C  AD E4 07
  cmp #$58                       ; $F74F  C9 58
  bne _label_f77b                ; $F751  D0 28
  lda #$00                       ; $F753  A9 00
  sta z:_var_00f7                ; $F755  85 F7
  rts                            ; $F757  60

_label_f758:
  lda #$C0                       ; $F758  A9 C0
  sta APU_FRAME                  ; $F75A  8D 17 40
  jsr _func_fb25                 ; $F75D  20 25 FB
  jsr _func_f90a                 ; $F760  20 0A F9
  jsr _func_fa38                 ; $F763  20 38 FA
  jsr _func_faac                 ; $F766  20 AC FA
  jsr _func_f824                 ; $F769  20 24 F8
  lda z:_var_00f1                ; $F76C  A5 F1
  sta a:sfx_prev_flags                ; $F76E  8D E9 07
  lda #$00                       ; $F771  A9 00
  sta z:_var_00f0_indexed        ; $F773  85 F0
  sta z:_var_00f1                ; $F775  85 F1
  sta z:_var_00f2                ; $F777  85 F2
  sta z:_var_00f3                ; $F779  85 F3

_label_f77b:
  rts                            ; $F77B  60

_label_f77c:
  lda z:_var_00f4                ; $F77C  A5 F4
  and #$06                       ; $F77E  29 06
  bne _label_f77b                ; $F780  D0 F9
  lda z:_var_00f4                ; $F782  A5 F4
  and #$F0                       ; $F784  29 F0
  sta z:_var_00f4                ; $F786  85 F4
  ldx #$E9                       ; $F788  A2 E9
  ldy #$F6                       ; $F78A  A0 F6
  jmp _label_f879                ; $F78C  4C 79 F8

_func_f78f:
  lda z:_var_00f6                ; $F78F  A5 F6
  cmp #$20                       ; $F791  C9 20
  bne _label_f79f                ; $F793  D0 0A
  inc a:sfx_trigger                ; $F795  EE E8 07

_func_f798:
  and #$0F                       ; $F798  29 0F
  cmp #$0F                       ; $F79A  C9 0F
  bne _func_f7a5                 ; $F79C  D0 07
  txa                            ; $F79E  8A

_label_f79f:
  lda z:_var_00f4                ; $F79F  A5 F4
  and #$20                       ; $F7A1  29 20
  bne _label_f7c7                ; $F7A3  D0 22

_func_f7a5:
  lda #$10                       ; $F7A5  A9 10
  sta APU_NOISE_VOL              ; $F7A7  8D 0C 40
  sta APU_PL1_VOL                ; $F7AA  8D 00 40
  sta APU_PL2_VOL                ; $F7AD  8D 04 40
  lda #$00                       ; $F7B0  A9 00
  sta z:_var_00f4                ; $F7B2  85 F4

_label_f7b4:
  sta z:_var_00f5                ; $F7B4  85 F5
  sta z:_var_00f6                ; $F7B6  85 F6
  sta a:dmc_fx_state        ; $F7B8  8D FA 07
  sta z:_var_00f7                ; $F7BB  85 F7
  sta APU_TRI_LINEAR             ; $F7BD  8D 08 40
  sta APU_DMC_RAW                ; $F7C0  8D 11 40
  sta a:apu_note_playing                ; $F7C3  8D F0 07
  rts                            ; $F7C6  60

_label_f7c7:
  lda #$10                       ; $F7C7  A9 10
  sta APU_PL2_VOL                ; $F7C9  8D 04 40
  sta APU_NOISE_VOL              ; $F7CC  8D 0C 40
  lda #$00                       ; $F7CF  A9 00
  beq _label_f7b4                ; $F7D1  F0 E1

_label_f7d3:
  lda #$00                       ; $F7D3  A9 00
  sta a:dmc_fx_state        ; $F7D5  8D FA 07
  rts                            ; $F7D8  60

_label_f7d9:
  ldx #$F5                       ; $F7D9  A2 F5
  ldy #$F6                       ; $F7DB  A0 F6
  jmp _label_f879                ; $F7DD  4C 79 F8

_label_f7e0:
  inc a:dmc_fx_step                ; $F7E0  EE FB 07
  lda a:dmc_fx_step                ; $F7E3  AD FB 07
  cmp #$10                       ; $F7E6  C9 10
  beq _label_f7d9                ; $F7E8  F0 EF
  cmp #$20                       ; $F7EA  C9 20
  beq _label_f7d3                ; $F7EC  F0 E5
  rts                            ; $F7EE  60

_label_f7ef:
  lda #$00                       ; $F7EF  A9 00
  sta a:dmc_fx_step                ; $F7F1  8D FB 07
  lda #$F0                       ; $F7F4  A9 F0
  sta a:dmc_fx_state        ; $F7F6  8D FA 07
  ldx #$F1                       ; $F7F9  A2 F1
  ldy #$F6                       ; $F7FB  A0 F6
  jmp _label_f879                ; $F7FD  4C 79 F8

_label_f800:
  lda z:_var_00f4                ; $F800  A5 F4
  and #$F0                       ; $F802  29 F0
  ora #$02                       ; $F804  09 02
  sta z:_var_00f4                ; $F806  85 F4
  lda #$00                       ; $F808  A9 00
  sta a:fade_in_counter                ; $F80A  8D F7 07
  ldx #$F1                       ; $F80D  A2 F1
  ldy #$F6                       ; $F80F  A0 F6
  jmp _label_f879                ; $F811  4C 79 F8

_label_f814:
  inc a:fade_in_counter                ; $F814  EE F7 07
  lda a:fade_in_counter                ; $F817  AD F7 07
  cmp #$10                       ; $F81A  C9 10
  bne _label_f85b                ; $F81C  D0 3D
  jmp _label_f89b                ; $F81E  4C 9B F8

_label_f821:
  jmp _func_f7a5                 ; $F821  4C A5 F7

_func_f824:
  lda z:_var_00f0_indexed        ; $F824  A5 F0
  lsr a                          ; $F826  4A
  bcs _label_f821                ; $F827  B0 F8
  lda z:_var_00f6                ; $F829  A5 F6
  cmp #$DF                       ; $F82B  C9 DF
  beq _label_f83b                ; $F82D  F0 0C
  cmp #$7F                       ; $F82F  C9 7F
  beq _label_f83b                ; $F831  F0 08
  cmp #$20                       ; $F833  C9 20
  beq _label_f83b                ; $F835  F0 04
  lda z:_var_00f6                ; $F837  A5 F6
  bne _label_f85b                ; $F839  D0 20

_label_f83b:
  lda a:dmc_fx_state        ; $F83B  AD FA 07
  cmp #$0F                       ; $F83E  C9 0F
  beq _label_f7ef                ; $F840  F0 AD
  cmp #$F0                       ; $F842  C9 F0
  beq _label_f7e0                ; $F844  F0 9A
  lda z:_var_00f0_indexed        ; $F846  A5 F0
  lsr a                          ; $F848  4A
  lsr a                          ; $F849  4A
  bcs _label_f800                ; $F84A  B0 B4
  lsr a                          ; $F84C  4A
  bcs _label_f85f                ; $F84D  B0 10
  lsr a                          ; $F84F  4A
  bcs _label_f85c                ; $F850  B0 0A
  lda z:_var_00f4                ; $F852  A5 F4
  lsr a                          ; $F854  4A
  lsr a                          ; $F855  4A
  bcs _label_f814                ; $F856  B0 BC
  lsr a                          ; $F858  4A
  bcs _label_f87d                ; $F859  B0 22

_label_f85b:
  rts                            ; $F85B  60

_label_f85c:
  jmp _label_f77c                ; $F85C  4C 7C F7

_label_f85f:
  lda z:_var_00f4                ; $F85F  A5 F4
  and #$80                       ; $F861  29 80
  bne _label_f85b                ; $F863  D0 F6
  lda z:_var_00f4                ; $F865  A5 F4
  and #$F0                       ; $F867  29 F0
  ora #$04                       ; $F869  09 04
  sta z:_var_00f4                ; $F86B  85 F4
  lda #$00                       ; $F86D  A9 00
  sta a:apu_drum_subcounter                ; $F86F  8D F3 07
  sta a:apu_drum_counter                ; $F872  8D F1 07
  ldx #$ED                       ; $F875  A2 ED
  ldy #$F6                       ; $F877  A0 F6

_label_f879:
  jsr _func_f68b                 ; $F879  20 8B F6
  rts                            ; $F87C  60

_label_f87d:
  inc a:apu_drum_subcounter                ; $F87D  EE F3 07
  lda a:apu_drum_subcounter                ; $F880  AD F3 07
  cmp #$03                       ; $F883  C9 03
  bne _label_f8a1                ; $F885  D0 1A
  lda #$00                       ; $F887  A9 00
  sta a:apu_drum_subcounter                ; $F889  8D F3 07
  inc a:apu_drum_counter                ; $F88C  EE F1 07
  lda a:apu_drum_counter                ; $F88F  AD F1 07
  cmp #$10                       ; $F892  C9 10
  bne _label_f8a2                ; $F894  D0 0C
  lda #$10                       ; $F896  A9 10
  sta APU_NOISE_VOL              ; $F898  8D 0C 40

_label_f89b:
  lda z:_var_00f4                ; $F89B  A5 F4
  and #$F0                       ; $F89D  29 F0
  sta z:_var_00f4                ; $F89F  85 F4

_label_f8a1:
  rts                            ; $F8A1  60

_label_f8a2:
  sta APU_NOISE_LO               ; $F8A2  8D 0E 40
  rts                            ; $F8A5  60

_label_f8a6:
  lda #$00                       ; $F8A6  A9 00
  sta a:apu_vibrato_counter                ; $F8A8  8D E0 07
  clc                            ; $F8AB  18
  lda z:_var_001b                ; $F8AC  A5 1B
  and #$07                       ; $F8AE  29 07
  adc #$02                       ; $F8B0  69 02
  sta a:apu_vibrato_period                ; $F8B2  8D E1 07
  lda z:_var_00f7                ; $F8B5  A5 F7
  and #$00                       ; $F8B7  29 00
  ora #$80                       ; $F8B9  09 80
  sta z:_var_00f7                ; $F8BB  85 F7
  bne _label_f8e8                ; $F8BD  D0 29

_label_f8bf:
  inc a:apu_vibrato_counter                ; $F8BF  EE E0 07
  lda a:apu_vibrato_counter                ; $F8C2  AD E0 07
  cmp a:apu_vibrato_period                ; $F8C5  CD E1 07
  bne _label_f8e8                ; $F8C8  D0 1E

_label_f8ca:
  lda #$10                       ; $F8CA  A9 10
  sta APU_PL1_VOL                ; $F8CC  8D 00 40
  sta APU_PL2_VOL                ; $F8CF  8D 04 40
  lda #$00                       ; $F8D2  A9 00
  sta z:_var_00f7                ; $F8D4  85 F7
  lda z:_var_00f4                ; $F8D6  A5 F4
  and #$0F                       ; $F8D8  29 0F
  sta z:_var_00f4                ; $F8DA  85 F4
  rts                            ; $F8DC  60

_label_f8dd:
  jsr _func_f7a5                 ; $F8DD  20 A5 F7
  lda #$80                       ; $F8E0  A9 80
  sta z:_var_00f4                ; $F8E2  85 F4
  lda #$02                       ; $F8E4  A9 02
  sta z:_var_00f0_indexed        ; $F8E6  85 F0

_label_f8e8:
  ldx #$F9                       ; $F8E8  A2 F9
  ldy #$F6                       ; $F8EA  A0 F6
  jsr _func_f683                 ; $F8EC  20 83 F6
  lda z:_var_001b                ; $F8EF  A5 1B
  and #$0F                       ; $F8F1  29 0F
  sta APU_PL1_LO                 ; $F8F3  8D 02 40
  ldx #$F9                       ; $F8F6  A2 F9
  ldy #$F6                       ; $F8F8  A0 F6
  jsr _func_f68f                 ; $F8FA  20 8F F6
  lda z:_var_001b                ; $F8FD  A5 1B
  lsr a                          ; $F8FF  4A
  lsr a                          ; $F900  4A
  and #$0F                       ; $F901  29 0F
  sta APU_PL2_LO                 ; $F903  8D 06 40
  rts                            ; $F906  60

_label_f907:
  jmp _label_f8a6                ; $F907  4C A6 F8

_func_f90a:
  lda z:_var_00f6                ; $F90A  A5 F6
  beq _label_f91b                ; $F90C  F0 0D
  cmp #$DF                       ; $F90E  C9 DF
  beq _label_f91b                ; $F910  F0 09
  lda z:_var_00f0_indexed        ; $F912  A5 F0
  and #$E0                       ; $F914  29 E0
  beq _label_f94e                ; $F916  F0 36
  jsr _func_f7a5                 ; $F918  20 A5 F7

_label_f91b:
  lda z:_var_00f0_indexed        ; $F91B  A5 F0
  asl a                          ; $F91D  0A
  bcs _label_f8dd                ; $F91E  B0 BD
  asl a                          ; $F920  0A
  bcs _label_f952                ; $F921  B0 2F
  asl a                          ; $F923  0A
  bcs _label_f965                ; $F924  B0 3F
  lda z:_var_00f4                ; $F926  A5 F4
  asl a                          ; $F928  0A
  bcs _label_f8e8                ; $F929  B0 BD
  lda z:_var_00f4                ; $F92B  A5 F4
  and #$E0                       ; $F92D  29 E0
  bne _label_f94e                ; $F92F  D0 1D
  lda z:_var_00f6                ; $F931  A5 F6
  cmp #$DF                       ; $F933  C9 DF
  beq _label_f94b                ; $F935  F0 14
  lda z:_var_00f6                ; $F937  A5 F6
  bne _label_f94e                ; $F939  D0 13
  lda z:_var_00f3                ; $F93B  A5 F3
  asl a                          ; $F93D  0A
  bcs _label_f907                ; $F93E  B0 C7
  asl a                          ; $F940  0A
  bcs _label_f977                ; $F941  B0 34
  lda z:_var_00f7                ; $F943  A5 F7
  asl a                          ; $F945  0A
  bcs _label_f94f                ; $F946  B0 07
  asl a                          ; $F948  0A
  bcs _label_f993                ; $F949  B0 48

_label_f94b:
  jsr _func_f725                 ; $F94B  20 25 F7

_label_f94e:
  rts                            ; $F94E  60

_label_f94f:
  jmp _label_f8bf                ; $F94F  4C BF F8

_label_f952:
  lda #$0F                       ; $F952  A9 0F
  sta a:dmc_fx_state        ; $F954  8D FA 07
  lda z:_var_00f4                ; $F957  A5 F4
  and #$0F                       ; $F959  29 0F
  ora #$40                       ; $F95B  09 40
  sta z:_var_00f4                ; $F95D  85 F4
  ldx #$D1                       ; $F95F  A2 D1
  ldy #$F9                       ; $F961  A0 F9
  bne _label_f98f                ; $F963  D0 2A

_label_f965:
  lda #$02                       ; $F965  A9 02
  sta z:_var_00f0_indexed        ; $F967  85 F0
  lda z:_var_00f4                ; $F969  A5 F4
  and #$0F                       ; $F96B  29 0F
  ora #$20                       ; $F96D  09 20
  sta z:_var_00f4                ; $F96F  85 F4
  ldx #$CD                       ; $F971  A2 CD
  ldy #$F9                       ; $F973  A0 F9
  bne _label_f98f                ; $F975  D0 18

_label_f977:
  lda #$00                       ; $F977  A9 00
  sta a:detune_counter                ; $F979  8D FC 07
  lda z:_var_00f7                ; $F97C  A5 F7
  and #$00                       ; $F97E  29 00
  ora #$40                       ; $F980  09 40
  sta z:_var_00f7                ; $F982  85 F7
  ldx #$D5                       ; $F984  A2 D5
  ldy #$F9                       ; $F986  A0 F9
  jsr _func_f68f                 ; $F988  20 8F F6
  ldx #$D9                       ; $F98B  A2 D9
  ldy #$F9                       ; $F98D  A0 F9

_label_f98f:
  jsr _func_f683                 ; $F98F  20 83 F6
  rts                            ; $F992  60

_label_f993:
  inc a:detune_counter                ; $F993  EE FC 07
  lda a:detune_counter                ; $F996  AD FC 07
  cmp #$12                       ; $F999  C9 12
  beq _label_f9ca                ; $F99B  F0 2D
  cmp #$06                       ; $F99D  C9 06
  bcc _label_f9b1                ; $F99F  90 10
  lda z:_var_001b                ; $F9A1  A5 1B
  ora #$10                       ; $F9A3  09 10
  and #$7F                       ; $F9A5  29 7F
  sta a:detune_pl1                ; $F9A7  8D FE 07
  rol a                          ; $F9AA  2A
  sta a:detune_pl2                ; $F9AB  8D FD 07
  jmp _label_f9bd                ; $F9AE  4C BD F9

_label_f9b1:
  inc a:detune_pl2                ; $F9B1  EE FD 07
  inc a:detune_pl2                ; $F9B4  EE FD 07
  inc a:detune_pl1                ; $F9B7  EE FE 07
  inc a:detune_pl1                ; $F9BA  EE FE 07

_label_f9bd:
  lda a:detune_pl2                ; $F9BD  AD FD 07
  sta APU_PL2_LO                 ; $F9C0  8D 06 40
  lda a:detune_pl1                ; $F9C3  AD FE 07
  sta APU_PL1_LO                 ; $F9C6  8D 02 40
  rts                            ; $F9C9  60

_label_f9ca:
  jmp _label_f8ca                ; $F9CA  4C CA F8

.byte $b8, $d5, $20, $00, $9f, $93, $80, $22, $3f, $ba, $e0, $06, $3f, $bb, $ce, $06 ; $F9CD
.byte $b8, $93, $50, $02, $80, $7f, $60, $68, $80, $7f, $62, $68 ; $F9DD

_label_f9e9:
  lda z:_var_00f5                ; $F9E9  A5 F5
  and #$02                       ; $F9EB  29 02
  bne _label_fa26                ; $F9ED  D0 37
  lda z:_var_00f6                ; $F9EF  A5 F6
  cmp #$DF                       ; $F9F1  C9 DF
  beq _label_f9f9                ; $F9F3  F0 04
  lda z:_var_00f6                ; $F9F5  A5 F6
  bne _label_fa26                ; $F9F7  D0 2D

_label_f9f9:
  lda #$00                       ; $F9F9  A9 00
  sta a:pl2_sweep_counter                ; $F9FB  8D F9 07
  lda z:_var_00f5                ; $F9FE  A5 F5
  and #$E0                       ; $FA00  29 E0
  ora #$02                       ; $FA02  09 02
  sta z:_var_00f5                ; $FA04  85 F5
  ldx #$DD                       ; $FA06  A2 DD
  ldy #$F9                       ; $FA08  A0 F9
  bne _label_fa7f                ; $FA0A  D0 73

_label_fa0c:
  inc a:pl2_sweep_counter                ; $FA0C  EE F9 07
  lda a:pl2_sweep_counter                ; $FA0F  AD F9 07
  cmp #$07                       ; $FA12  C9 07
  bne _label_fa26                ; $FA14  D0 10
  lda #$7F                       ; $FA16  A9 7F
  sta APU_PL2_SWEEP              ; $FA18  8D 05 40
  lda #$10                       ; $FA1B  A9 10
  sta APU_PL2_VOL                ; $FA1D  8D 04 40
  lda z:_var_00f5                ; $FA20  A5 F5
  and #$E0                       ; $FA22  29 E0
  sta z:_var_00f5                ; $FA24  85 F5

_label_fa26:
  rts                            ; $FA26  60

_label_fa27:
  jsr _func_f7a5                 ; $FA27  20 A5 F7
  ldx #$E1                       ; $FA2A  A2 E1
  ldy #$F9                       ; $FA2C  A0 F9
  jsr _func_f683                 ; $FA2E  20 83 F6
  ldx #$E5                       ; $FA31  A2 E5
  ldy #$F9                       ; $FA33  A0 F9
  jmp _label_fa7f                ; $FA35  4C 7F FA

_func_fa38:
  lda z:_var_00f6                ; $FA38  A5 F6
  beq _label_fa42                ; $FA3A  F0 06
  and #$0F                       ; $FA3C  29 0F
  cmp #$0F                       ; $FA3E  C9 0F
  bne _label_fa63                ; $FA40  D0 21

_label_fa42:
  lda z:_var_00f4                ; $FA42  A5 F4
  and #$80                       ; $FA44  29 80
  bne _label_fa63                ; $FA46  D0 1B
  lda z:_var_00f7                ; $FA48  A5 F7
  and #$C0                       ; $FA4A  29 C0
  bne _label_fa63                ; $FA4C  D0 15
  lda z:_var_00f1                ; $FA4E  A5 F1
  lsr a                          ; $FA50  4A
  bcs _label_fa27                ; $FA51  B0 D4
  lsr a                          ; $FA53  4A
  bcs _label_f9e9                ; $FA54  B0 93
  lsr a                          ; $FA56  4A
  bcs _label_fa83                ; $FA57  B0 2A
  lsr a                          ; $FA59  4A
  lsr a                          ; $FA5A  4A
  bcs _label_fa64                ; $FA5B  B0 07
  lda z:_var_00f5                ; $FA5D  A5 F5
  lsr a                          ; $FA5F  4A
  lsr a                          ; $FA60  4A
  bcs _label_fa0c                ; $FA61  B0 A9

_label_fa63:
  rts                            ; $FA63  60

_label_fa64:
  lda z:_var_00f6                ; $FA64  A5 F6
  bne _label_fa63                ; $FA66  D0 FB
  lda z:_var_00f5                ; $FA68  A5 F5
  and #$02                       ; $FA6A  29 02
  bne _label_fa63                ; $FA6C  D0 F5
  ldx #$8A                       ; $FA6E  A2 8A
  ldy #$FA                       ; $FA70  A0 FA
  jsr _func_f68f                 ; $FA72  20 8F F6
  lda z:_var_001b                ; $FA75  A5 1B
  and #$3F                       ; $FA77  29 3F
  ora #$10                       ; $FA79  09 10
  sta APU_PL2_LO                 ; $FA7B  8D 06 40
  rts                            ; $FA7E  60

_label_fa7f:
  jsr _func_f68f                 ; $FA7F  20 8F F6
  rts                            ; $FA82  60

_label_fa83:
  ldy #$0A                       ; $FA83  A0 0A
  lda #$EF                       ; $FA85  A9 EF
  jmp _label_fba5                ; $FA87  4C A5 FB

.byte $d9, $86, $a8, $48, $08, $7f, $40, $28, $08, $7f, $45, $28 ; $FA8A

_label_fa96:
  inc a:tremolo_step                ; $FA96  EE F6 07
  lda a:tremolo_step                ; $FA99  AD F6 07
  cmp #$04                       ; $FA9C  C9 04
  bne _label_fad8                ; $FA9E  D0 38
  lda z:_var_00f5                ; $FAA0  A5 F5
  and #$1F                       ; $FAA2  29 1F
  sta z:_var_00f5                ; $FAA4  85 F5
  ldx #$92                       ; $FAA6  A2 92
  ldy #$FA                       ; $FAA8  A0 FA
  bne _label_fb00                ; $FAAA  D0 54

_func_faac:
  lda z:_var_00f6                ; $FAAC  A5 F6
  beq _label_faba                ; $FAAE  F0 0A
  cmp #$08                       ; $FAB0  C9 08
  beq _label_faba                ; $FAB2  F0 06
  and #$0F                       ; $FAB4  29 0F
  cmp #$0F                       ; $FAB6  C9 0F
  bne _label_fad8                ; $FAB8  D0 1E

_label_faba:
  lda z:_var_00f4                ; $FABA  A5 F4
  and #$80                       ; $FABC  29 80
  bne _label_fad8                ; $FABE  D0 18
  lda z:_var_00f1                ; $FAC0  A5 F1
  asl a                          ; $FAC2  0A
  bcs _label_fb17                ; $FAC3  B0 52
  asl a                          ; $FAC5  0A
  bcs _label_fae2                ; $FAC6  B0 1A
  lda z:_var_00f5                ; $FAC8  A5 F5
  asl a                          ; $FACA  0A
  asl a                          ; $FACB  0A
  bcs _label_fa96                ; $FACC  B0 C8
  lda z:_var_00f1                ; $FACE  A5 F1
  and #$20                       ; $FAD0  29 20
  beq _label_fad9                ; $FAD2  F0 05
  lda z:_var_00f6                ; $FAD4  A5 F6
  beq _label_fb04                ; $FAD6  F0 2C

_label_fad8:
  rts                            ; $FAD8  60

_label_fad9:
  lda z:_var_00f6                ; $FAD9  A5 F6
  cmp #$DF                       ; $FADB  C9 DF
  bne _label_fad8                ; $FADD  D0 F9
  jmp _label_f79f                ; $FADF  4C 9F F7

_label_fae2:
  lda z:_var_00f5                ; $FAE2  A5 F5
  and #$1F                       ; $FAE4  29 1F
  ora #$40                       ; $FAE6  09 40
  sta z:_var_00f5                ; $FAE8  85 F5
  lda #$00                       ; $FAEA  A9 00
  sta APU_TRI_LINEAR             ; $FAEC  8D 08 40
  sta z:_var_00f6                ; $FAEF  85 F6
  sta a:tremolo_step                ; $FAF1  8D F6 07
  lda #$10                       ; $FAF4  A9 10
  sta APU_PL2_VOL                ; $FAF6  8D 04 40
  sta APU_NOISE_VOL              ; $FAF9  8D 0C 40
  ldx #$8E                       ; $FAFC  A2 8E
  ldy #$FA                       ; $FAFE  A0 FA

_label_fb00:
  jsr _func_f687                 ; $FB00  20 87 F6
  rts                            ; $FB03  60

_label_fb04:
  lda a:sfx_prev_flags                ; $FB04  AD E9 07
  and #$20                       ; $FB07  29 20
  bne _label_fb10                ; $FB09  D0 05
  lda #$02                       ; $FB0B  A9 02
  sta a:sfx_mode                ; $FB0D  8D F5 07

_label_fb10:
  ldy #$08                       ; $FB10  A0 08
  lda #$DF                       ; $FB12  A9 DF
  jmp _label_fba5                ; $FB14  4C A5 FB

_label_fb17:
  ldy #$04                       ; $FB17  A0 04
  lda #$7F                       ; $FB19  A9 7F
  jmp _label_fba5                ; $FB1B  4C A5 FB

_label_fb1e:
  ldy #$00                       ; $FB1E  A0 00
  lda #$02                       ; $FB20  A9 02
  jmp _label_fbc1                ; $FB22  4C C1 FB

_func_fb25:
  lda a:sfx_trigger                ; $FB25  AD E8 07
  bne _label_fb5e                ; $FB28  D0 34
  lda z:_var_00f2                ; $FB2A  A5 F2
  lsr a                          ; $FB2C  4A
  bcs _label_fb82                ; $FB2D  B0 53
  lsr a                          ; $FB2F  4A
  bcs _label_fb1e                ; $FB30  B0 EC
  lsr a                          ; $FB32  4A
  bcs _label_fb4c                ; $FB33  B0 17
  lsr a                          ; $FB35  4A
  bcs _label_fb7c                ; $FB36  B0 44
  lsr a                          ; $FB38  4A
  bcs _label_fb69                ; $FB39  B0 2E
  lsr a                          ; $FB3B  4A
  bcs _label_fb5e                ; $FB3C  B0 20
  lsr a                          ; $FB3E  4A
  bcs _label_fb58                ; $FB3F  B0 17
  lsr a                          ; $FB41  4A
  bcs _label_fb52                ; $FB42  B0 0E
  lda z:_var_00f6                ; $FB44  A5 F6
  bne _label_fb49                ; $FB46  D0 01
  rts                            ; $FB48  60

_label_fb49:
  jmp _label_f504                ; $FB49  4C 04 F5

_label_fb4c:
  ldy #$02                       ; $FB4C  A0 02
  lda #$04                       ; $FB4E  A9 04
  bne _label_fba5                ; $FB50  D0 53

_label_fb52:
  ldy #$09                       ; $FB52  A0 09
  lda #$80                       ; $FB54  A9 80
  bne _label_fb6d                ; $FB56  D0 15

_label_fb58:
  ldy #$07                       ; $FB58  A0 07
  lda #$40                       ; $FB5A  A9 40
  bne _label_fb6d                ; $FB5C  D0 0F

_label_fb5e:
  lda #$00                       ; $FB5E  A9 00
  sta a:sfx_trigger                ; $FB60  8D E8 07
  ldy #$06                       ; $FB63  A0 06
  lda #$20                       ; $FB65  A9 20
  bne _label_fbc1                ; $FB67  D0 58

_label_fb69:
  ldy #$05                       ; $FB69  A0 05
  lda #$10                       ; $FB6B  A9 10

_label_fb6d:
  jsr _func_f6a8                 ; $FB6D  20 A8 F6
  ldx #$FC                       ; $FB70  A2 FC
  ldy #$FC                       ; $FB72  A0 FC
  jsr _func_f712                 ; $FB74  20 12 F7
  inc a:apu_note_playing                ; $FB77  EE F0 07
  bne _label_fb49                ; $FB7A  D0 CD

_label_fb7c:
  ldy #$03                       ; $FB7C  A0 03
  lda #$08                       ; $FB7E  A9 08
  bne _label_fb86                ; $FB80  D0 04

_label_fb82:
  ldy #$01                       ; $FB82  A0 01
  lda #$01                       ; $FB84  A9 01

_label_fb86:
  jsr _func_f6a8                 ; $FB86  20 A8 F6
  ldx #$80                       ; $FB89  A2 80
  ldy #$80                       ; $FB8B  A0 80

_label_fb8d:
  jsr _func_f71a                 ; $FB8D  20 1A F7
  lda #$83                       ; $FB90  A9 83
  sta APU_PL1_SWEEP              ; $FB92  8D 01 40
  lda #$7F                       ; $FB95  A9 7F
  sta APU_PL2_SWEEP              ; $FB97  8D 05 40
  bne _label_fbaf                ; $FB9A  D0 13
  jsr _func_f6a8                 ; $FB9C  20 A8 F6
  ldx #$04                       ; $FB9F  A2 04
  ldy #$04                       ; $FBA1  A0 04
  bne _label_fbac                ; $FBA3  D0 07

_label_fba5:
  jsr _func_f6a8                 ; $FBA5  20 A8 F6
  ldx #$80                       ; $FBA8  A2 80
  ldy #$80                       ; $FBAA  A0 80

_label_fbac:
  jsr _func_f712                 ; $FBAC  20 12 F7

_label_fbaf:
  lda #$00                       ; $FBAF  A9 00
  sta a:apu_note_playing                ; $FBB1  8D F0 07
  lda z:_var_00f4                ; $FBB4  A5 F4
  and #$20                       ; $FBB6  29 20
  beq _label_fb49                ; $FBB8  F0 8F
  lda #$D5                       ; $FBBA  A9 D5
  sta APU_PL1_SWEEP              ; $FBBC  8D 01 40
  bne _label_fb49                ; $FBBF  D0 88

_label_fbc1:
  jsr _func_f6a8                 ; $FBC1  20 A8 F6
  ldx #$80                       ; $FBC4  A2 80
  ldy #$BA                       ; $FBC6  A0 BA
  bne _label_fb8d                ; $FBC8  D0 C3

_data_fbca_indexed:
.byte $0b, $14, $1d, $26, $2f, $38, $41, $4a, $53, $5c, $65, $0c, $02, $ff, $0b, $ff ; $FBCA
.byte $1e, $ff, $31, $ff, $15, $18, $fe, $2a, $fe, $65, $fe, $86, $fe, $0c, $0d, $fe ; $FBDA
.byte $00, $00, $13, $fe, $00, $00, $15, $38, $ff, $5a, $ff, $79, $ff, $94, $ff, $00 ; $FBEA
.byte $00, $00, $d7, $fe, $ed, $fe, $00, $00, $00, $b3, $ff, $c9, $ff, $da, $ff, $ef ; $FBFA
.byte $ff, $15, $a5, $fc, $0a, $fd, $98, $fd, $e0, $fd, $15, $b2, $fe, $00, $00, $c5 ; $FC0A
.byte $fe, $00, $00, $15, $00, $00, $92, $fe, $a1, $fe, $00, $00, $0c, $59, $fc, $72 ; $FC1A
.byte $fc, $8c, $fc, $00, $00, $00, $00, $00, $38, $fc, $49, $fc, $00, $00, $82, $02 ; $FC2A
.byte $8b, $02, $80, $08, $02, $10, $02, $16, $02, $52, $02, $02, $02, $1a, $00, $82 ; $FC3A
.byte $02, $80, $10, $02, $16, $02, $52, $02, $5a, $02, $02, $02, $56, $81, $02, $80 ; $FC4A
.byte $12, $02, $0c, $02, $04, $02, $0c, $02, $04, $02, $2a, $02, $81, $04, $02, $80 ; $FC5A
.byte $04, $02, $81, $04, $88, $02, $02, $00, $88, $02, $02, $80, $04, $02, $2a, $02 ; $FC6A
.byte $24, $02, $2a, $02, $24, $02, $1c, $02, $81, $22, $02, $80, $22, $02, $81, $24 ; $FC7A
.byte $88, $02, $88, $02, $80, $56, $02, $4e, $02, $12, $02, $4e, $02, $12, $02, $0c ; $FC8A
.byte $02, $81, $10, $02, $80, $10, $02, $81, $12, $88, $02, $c3, $81, $02, $02, $1c ; $FC9A
.byte $02, $02, $02, $1c, $1c, $ff, $c6, $88, $1c, $ff, $c7, $82, $4c, $4c, $2a, $4c ; $FCAA
.byte $ff, $c6, $88, $1c, $ff, $c4, $81, $46, $02, $46, $02, $32, $02, $46, $80, $2e ; $FCBA
.byte $2e, $ff, $c3, $82, $46, $46, $81, $32, $32, $46, $2e, $ff, $80, $0c, $0c, $81 ; $FCCA
.byte $46, $46, $46, $80, $04, $04, $81, $46, $46, $02, $c8, $82, $4c, $4c, $2a, $4c ; $FCDA
.byte $ff, $c2, $81, $46, $80, $32, $32, $82, $46, $04, $81, $46, $2a, $ff, $c2, $81 ; $FCEA
.byte $0c, $0c, $80, $04, $04, $81, $04, $80, $2e, $2e, $81, $2e, $82, $24, $ff, $00 ; $FCFA
.byte $81, $32, $02, $02, $06, $0c, $32, $02, $02, $8a, $2e, $8b, $02, $8a, $2e, $8b ; $FD0A
.byte $02, $8a, $2e, $8b, $02, $88, $2e, $32, $2e, $d0, $8c, $2c, $24, $ff, $d0, $2e ; $FD1A
.byte $20, $ff, $c3, $80, $28, $02, $82, $02, $80, $2c, $02, $32, $02, $24, $02, $82 ; $FD2A
.byte $02, $81, $02, $80, $28, $02, $06, $02, $28, $02, $81, $02, $80, $24, $02, $32 ; $FD3A
.byte $02, $24, $02, $ff, $80, $28, $02, $82, $02, $80, $2c, $02, $32, $02, $24, $02 ; $FD4A
.byte $82, $02, $89, $0c, $0a, $08, $06, $32, $30, $2e, $2c, $2a, $28, $26, $24, $02 ; $FD5A
.byte $02, $02, $86, $02, $c7, $84, $02, $ff, $c4, $80, $28, $02, $82, $02, $80, $2c ; $FD6A
.byte $02, $32, $02, $24, $02, $82, $02, $81, $02, $80, $28, $02, $06, $02, $28, $02 ; $FD7A
.byte $81, $02, $80, $24, $02, $32, $02, $24, $02, $ff, $c8, $84, $02, $ff, $81, $14 ; $FD8A
.byte $02, $02, $14, $1a, $14, $02, $02, $88, $10, $10, $10, $10, $14, $10, $85, $3c ; $FD9A
.byte $81, $44, $85, $4a, $81, $44, $88, $28, $24, $20, $46, $42, $40, $c6, $81, $3c ; $FDAA
.byte $02, $02, $44, $02, $02, $02, $4a, $02, $46, $36, $36, $38, $38, $02, $3a, $02 ; $FDBA
.byte $80, $3c, $3c, $81, $02, $24, $02, $02, $2c, $24, $88, $24, $1e, $46, $36, $38 ; $FDCA
.byte $3a, $ff, $c4, $84, $02, $ff, $d8, $81, $06, $ff, $c6, $88, $06, $ff, $c7, $81 ; $FDDA
.byte $06, $06, $80, $06, $06, $81, $06, $06, $80, $06, $06, $81, $06, $06, $ff, $c6 ; $FDEA
.byte $88, $06, $ff, $e0, $81, $06, $06, $ff, $82, $0f, $81, $06, $06, $ea, $06, $06 ; $FDFA
.byte $06, $06, $ff, $c5, $80, $0e, $58, $ff, $00, $c5, $80, $0e, $58, $ff, $82, $1c ; $FE0A
.byte $1c, $c3, $82, $1c, $1c, $81, $1c, $1c, $1c, $02, $ff, $c7, $88, $1c, $ff, $00 ; $FE1A
.byte $83, $02, $80, $0e, $02, $0e, $02, $0c, $02, $0e, $02, $4e, $02, $02, $02, $0e ; $FE2A
.byte $02, $0c, $02, $02, $02, $0e, $02, $0c, $02, $0e, $02, $4e, $02, $02, $02, $0e ; $FE3A
.byte $02, $0c, $02, $0e, $02, $0e, $02, $0c, $02, $0e, $02, $4e, $02, $02, $02, $0e ; $FE4A
.byte $02, $0c, $02, $88, $4e, $18, $16, $12, $0e, $0c, $0e, $83, $02, $81, $3e, $3e ; $FE5A
.byte $82, $46, $1c, $46, $81, $02, $38, $3e, $02, $82, $46, $1c, $82, $48, $48, $81 ; $FE6A
.byte $3e, $3e, $82, $38, $88, $24, $20, $1c, $48, $46, $42, $3e, $82, $09, $09, $c6 ; $FE7A
.byte $82, $03, $0c, $ff, $c6, $88, $06, $ff, $ed, $89, $2a, $02, $04, $0c, $02, $04 ; $FE8A
.byte $08, $02, $30, $26, $02, $30, $ff, $80, $02, $ed, $89, $0c, $02, $12, $4e, $02 ; $FE9A
.byte $12, $18, $02, $0e, $08, $02, $0e, $ff, $80, $42, $02, $48, $02, $1e, $02, $24 ; $FEAA
.byte $02, $02, $02, $2a, $02, $c6, $8c, $30, $2a, $ff, $00, $80, $24, $02, $2a, $02 ; $FEBA
.byte $30, $02, $06, $02, $02, $02, $0c, $02, $c6, $8c, $12, $18, $ff, $80, $56, $54 ; $FECA
.byte $52, $50, $81, $02, $80, $5e, $5a, $54, $50, $18, $14, $10, $0a, $06, $30, $2c ; $FEDA
.byte $28, $02, $00, $80, $1a, $18, $16, $14, $81, $02, $80, $02, $5e, $5a, $54, $50 ; $FEEA
.byte $18, $14, $10, $0a, $06, $30, $2c, $28, $82, $1c, $02, $1c, $02, $02, $1c, $1c ; $FEFA
.byte $00, $81, $10, $0a, $32, $28, $80, $32, $02, $32, $02, $82, $32, $81, $06, $02 ; $FF0A
.byte $06, $02, $82, $32, $81, $54, $1a, $10, $0a, $80, $10, $02, $10, $02, $82, $10 ; $FF1A
.byte $81, $16, $02, $16, $02, $82, $0a, $83, $03, $0c, $82, $03, $0c, $0c, $c2, $88 ; $FF2A
.byte $1c, $1c, $1c, $1c, $1c, $1c, $83, $1c, $80, $04, $04, $2a, $02, $82, $1c, $ff ; $FF3A
.byte $81, $4c, $02, $4c, $02, $2a, $02, $4c, $1c, $81, $4c, $02, $4c, $02, $4c, $00 ; $FF4A
.byte $88, $2e, $2e, $2e, $30, $04, $30, $c4, $80, $2e, $04, $ff, $83, $02, $88, $2e ; $FF5A
.byte $2e, $2e, $30, $04, $30, $c4, $80, $2e, $04, $ff, $83, $02, $84, $02, $02, $c2 ; $FF6A
.byte $88, $3e, $3e, $3e, $42, $46, $42, $84, $3e, $ff, $85, $3e, $81, $3e, $88, $1c ; $FF7A
.byte $46, $1c, $81, $02, $3e, $3e, $3e, $82, $34, $02, $c2, $88, $06, $06, $06, $06 ; $FF8A
.byte $06, $06, $82, $06, $06, $06, $06, $ff, $c2, $81, $06, $06, $80, $06, $06, $81 ; $FF9A
.byte $06, $06, $06, $06, $80, $06, $06, $ff, $09, $80, $10, $02, $10, $02, $10, $02 ; $FFAA
.byte $0c, $0c, $0c, $02, $0c, $02, $14, $14, $14, $02, $14, $02, $85, $10, $00, $80 ; $FFBA
.byte $32, $02, $32, $02, $32, $02, $c2, $32, $32, $32, $02, $32, $02, $ff, $85, $32 ; $FFCA
.byte $80, $54, $02, $54, $02, $54, $02, $50, $50, $50, $02, $50, $02, $56, $56, $56 ; $FFDA
.byte $02, $56, $02, $85, $54, $c4, $85, $0c, $ff, $ff, $ff, $ff, $ff ; $FFEA

_func_fff7:
  jmp _label_f758                ; $FFF7  4C 58 F7

.segment "VECTORS"
.addr NMI
.addr Reset
; Prevents running the e-Reader ROM on regular emulators
; Commented out for convenience
; .ifndef ereader
.addr IRQ
; .else
; .addr $E3F5
; .endif

.segment "CHARS"
.ifndef ereader
.byte $1e, $3f, $7f, $7f, $ff, $ff, $7f, $7f, $00, $00, $02, $01, $01, $00, $00, $00
.else
.byte $1e, $3f, $7f, $ff, $ff, $ff, $7f, $3f, $00, $00, $02, $01, $01, $00, $00, $00
.endif
.byte $3f, $1e, $04, $02, $00, $00, $00, $0e, $00, $00, $04, $02, $07, $0f, $0f, $0b
.byte $1f, $1f, $07, $03, $01, $01, $00, $00, $1a, $1e, $07, $00, $00, $04, $07, $03
.ifndef ereader
.byte $78, $7c, $be, $be, $df, $df, $be, $be, $00, $80, $48, $44, $24, $20, $40, $40
.else
.byte $78, $7c, $be, $bf, $df, $df, $be, $bc, $00, $80, $48, $44, $24, $20, $40, $40
.endif
.byte $7c, $78, $20, $40, $00, $84, $0c, $0c, $80, $00, $20, $40, $c0, $e4, $ec, $ec
.byte $06, $20, $c0, $90, $f0, $f0, $e0, $00, $fe, $d8, $b0, $60, $80, $00, $00, $80
.byte $7c, $78, $20, $40, $00, $80, $00, $00, $80, $00, $20, $40, $c0, $e0, $e0, $e0
.byte $00, $26, $c7, $94, $f0, $f0, $e0, $00, $e0, $de, $bf, $64, $80, $00, $00, $80
.ifndef animal_crossing
.byte $00, $00, $e0, $80, $c0, $e0, $fc, $0e, $e0, $c0, $80, $70, $b8, $18, $1c, $8e
.else
.byte $00, $00, $e0, $f0, $c0, $e0, $fc, $0e, $e0, $c0, $80, $70, $b8, $18, $1c, $8e
.endif
.ifndef ereader
.byte $00, $1e, $3f, $7f, $7f, $ff, $ff, $7f, $00, $00, $00, $02, $01, $01, $00, $00
.else
.byte $00, $1e, $3f, $7f, $ff, $ff, $7f, $3f, $00, $00, $00, $02, $01, $01, $00, $00
.endif
.byte $7f, $3f, $1e, $04, $00, $00, $00, $0e, $00, $00, $00, $04, $07, $0f, $0f, $0b
.ifndef ereader
.byte $78, $fc, $7e, $be, $bf, $df, $de, $be, $00, $00, $88, $44, $44, $20, $20, $40
.else
.byte $78, $fc, $7e, $be, $bf, $df, $de, $bc, $00, $00, $88, $44, $44, $20, $20, $40
.endif
.byte $bc, $78, $20, $40, $00, $84, $0c, $0c, $40, $00, $20, $40, $c0, $e4, $ec, $ec
.ifndef ereader
.byte $00, $78, $bc, $be, $de, $df, $bf, $be, $00, $00, $40, $48, $24, $24, $40, $40
.else
.byte $00, $78, $bc, $be, $df, $df, $be, $bc, $00, $00, $40, $48, $24, $24, $40, $40
.endif
.byte $7e, $fc, $78, $20, $00, $84, $0c, $0c, $80, $00, $00, $20, $c0, $e4, $ec, $ec
.ifndef ereader
.byte $03, $07, $0f, $0f, $1f, $1f, $0f, $0f, $00, $00, $00, $00, $00, $00, $00, $00
.else
.byte $03, $07, $0f, $1f, $1f, $1f, $0f, $07, $00, $00, $00, $00, $00, $00, $00, $00
.endif
.byte $07, $03, $01, $01, $00, $00, $00, $0e, $00, $00, $01, $01, $07, $0f, $0f, $0b
.ifndef ereader
.byte $c0, $e0, $f0, $f0, $f8, $f8, $f0, $f0, $00, $00, $40, $20, $20, $00, $00, $00
.else
.byte $c0, $e0, $f0, $f8, $f8, $f8, $f0, $e0, $00, $00, $40, $20, $20, $00, $00, $00
.endif
.byte $e0, $c0, $00, $00, $00, $84, $0c, $0c, $00, $00, $00, $00, $c0, $e4, $ec, $ec
.byte $00, $01, $03, $07, $07, $0f, $0f, $07, $00, $00, $00, $00, $00, $00, $00, $00
.byte $07, $03, $01, $01, $00, $00, $00, $0e, $00, $00, $00, $01, $07, $0f, $0f, $0b
.ifndef ereader
.byte $00, $e0, $f0, $f8, $f8, $fc, $fc, $f8, $00, $00, $00, $20, $10, $10, $00, $00
.else
.byte $00, $e0, $f0, $f8, $fc, $fc, $fc, $f8, $00, $00, $00, $20, $10, $10, $00, $00
.endif
.byte $f8, $f0, $e0, $00, $00, $84, $0c, $0c, $00, $00, $00, $00, $c0, $e4, $ec, $ec
.byte $1f, $0f, $07, $01, $00, $00, $00, $0e, $00, $00, $00, $01, $07, $0f, $0f, $0b
.byte $e0, $c0, $80, $00, $00, $84, $0c, $0c, $00, $00, $00, $00, $c0, $e4, $ec, $ec
.byte $e0, $c0, $00, $00, $00, $80, $00, $00, $00, $00, $00, $00, $c0, $e0, $e0, $e0
.ifndef ereader
.byte $07, $0f, $1f, $1f, $3f, $3f, $1f, $1f, $00, $00, $00, $00, $00, $00, $00, $00
.else
.byte $07, $0f, $1f, $3f, $3f, $3f, $1f, $0f, $00, $00, $00, $00, $00, $00, $00, $00
.endif
.byte $0f, $05, $00, $02, $00, $3c, $7c, $7c, $00, $00, $1f, $3f, $3f, $2b, $6b, $7b
.byte $1e, $6e, $5c, $1f, $3f, $1f, $03, $00, $1e, $61, $63, $84, $c0, $60, $20, $01
.ifndef ereader
.byte $80, $d8, $ec, $ee, $f6, $f7, $ef, $ee, $00, $20, $90, $58, $4c, $0c, $10, $10
.else
.byte $80, $d8, $ec, $ee, $f7, $f7, $ee, $ec, $00, $20, $90, $58, $4c, $0c, $10, $10
.endif
.byte $de, $bc, $78, $10, $20, $40, $00, $00, $20, $40, $00, $90, $a0, $c0, $80, $00
.byte $60, $60, $40, $00, $00, $80, $00, $00, $e0, $e0, $40, $00, $00, $40, $c0, $80
.byte $3c, $18, $1c, $7c, $7d, $3f, $06, $00, $3c, $06, $23, $47, $4e, $00, $70, $0e
.byte $0f, $07, $02, $00, $02, $00, $3c, $7c, $00, $00, $02, $1f, $3f, $3f, $2b, $6b
.byte $7c, $1e, $6d, $61, $03, $1f, $0d, $00, $7b, $1e, $62, $7e, $3c, $00, $00, $1c
.byte $de, $bc, $78, $10, $20, $40, $00, $00, $20, $40, $00, $10, $a0, $c0, $80, $80
.byte $00, $00, $00, $00, $80, $80, $80, $00, $00, $00, $80, $80, $40, $60, $20, $00
.ifndef ereader
.byte $1e, $3f, $7f, $7f, $ff, $ff, $7f, $7f, $00, $00, $02, $01, $01, $00, $00, $00
.else
.byte $1e, $3f, $7f, $ff, $ff, $ff, $7f, $3f, $00, $00, $02, $01, $01, $00, $00, $00
.endif
.byte $3f, $1e, $01, $00, $01, $00, $1e, $3e, $00, $01, $01, $0f, $1f, $1f, $15, $35
.byte $3e, $0f, $36, $2f, $1f, $1f, $0f, $08, $3d, $0f, $31, $30, $44, $60, $70, $30
.byte $00, $60, $b0, $b8, $d8, $dc, $bc, $b8, $00, $80, $40, $60, $30, $30, $40, $40
.byte $78, $f0, $e0, $20, $00, $00, $00, $00, $80, $00, $00, $a0, $c0, $c0, $c0, $c0
.byte $00, $00, $00, $00, $80, $e0, $40, $00, $80, $00, $c0, $e0, $60, $e0, $40, $00
.byte $1f, $07, $0e, $1c, $18, $1c, $08, $00, $1e, $07, $01, $03, $07, $1f, $0b, $00
.byte $c0, $80, $30, $10, $88, $18, $38, $30, $00, $80, $b0, $f0, $e0, $e0, $c0, $40
.byte $01, $00, $00, $02, $00, $3c, $7c, $7c, $00, $00, $1f, $3f, $3f, $2b, $6b, $7b
.byte $fe, $fc, $78, $10, $20, $40, $00, $00, $00, $00, $00, $90, $a0, $c0, $80, $00
.byte $01, $00, $00, $00, $02, $00, $3c, $7c, $00, $00, $00, $1f, $3f, $3f, $2b, $6b
.byte $fe, $fc, $78, $10, $20, $40, $00, $00, $00, $00, $00, $10, $a0, $c0, $80, $80
.byte $3f, $1e, $01, $00, $01, $00, $1e, $3e, $00, $00, $01, $0f, $1f, $1f, $15, $35
.byte $00, $00, $80, $80, $c0, $c0, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $c0, $c0, $c0, $c0
.byte $3f, $1e, $04, $00, $00, $00, $0f, $1f, $00, $00, $04, $07, $0f, $0f, $0a, $1a
.byte $1f, $07, $03, $07, $1f, $1f, $0e, $00, $1e, $07, $0c, $18, $1a, $10, $00, $1c
.byte $7c, $78, $40, $00, $80, $00, $00, $00, $80, $00, $40, $c0, $e0, $e0, $e0, $e0
.byte $00, $80, $00, $80, $80, $e0, $e0, $00, $c0, $80, $c0, $60, $e0, $c0, $00, $70
.byte $3f, $1e, $04, $00, $00, $00, $0f, $1f, $00, $00, $04, $07, $0f, $0f, $0a, $1a
.byte $7e, $fc, $78, $20, $80, $00, $00, $00, $80, $00, $00, $e0, $e0, $e0, $e0, $e0
.byte $7f, $3f, $1e, $00, $00, $00, $0f, $1f, $00, $00, $00, $07, $0f, $0f, $0a, $1a
.byte $bc, $78, $40, $00, $80, $00, $00, $00, $40, $00, $40, $c0, $e0, $e0, $e0, $e0
.byte $07, $03, $01, $00, $00, $00, $0f, $1f, $00, $00, $00, $07, $0f, $0f, $0a, $1a
.byte $f8, $f0, $e0, $00, $80, $00, $00, $00, $00, $00, $00, $c0, $e0, $e0, $e0, $e0
.byte $1f, $0f, $07, $00, $00, $00, $0f, $1f, $00, $00, $00, $07, $0f, $0f, $0a, $1a
.byte $e0, $c0, $80, $00, $80, $00, $00, $00, $00, $00, $00, $c0, $e0, $e0, $e0, $e0
.byte $07, $03, $01, $00, $00, $00, $0f, $1f, $00, $00, $01, $07, $0f, $0f, $0a, $1a
.byte $e0, $c0, $00, $00, $80, $00, $00, $00, $00, $00, $00, $c0, $e0, $e0, $e0, $e0
.byte $cf, $4f, $07, $0f, $07, $07, $03, $00, $f5, $77, $1f, $03, $1c, $18, $0c, $04
.byte $e6, $e4, $c0, $e0, $c0, $c0, $80, $00, $5e, $dc, $f0, $80, $70, $30, $60, $40
.byte $0f, $0f, $07, $ef, $27, $07, $03, $00, $05, $37, $7f, $e3, $3c, $18, $0c, $04
.byte $e0, $e0, $c0, $ee, $c8, $c0, $80, $00, $40, $d8, $fc, $8e, $78, $30, $60, $40
.byte $0f, $07, $03, $07, $1f, $37, $03, $00, $07, $0f, $1f, $1c, $18, $38, $0c, $04
.byte $e0, $c0, $80, $c0, $f0, $d8, $80, $00, $c0, $e0, $f0, $70, $30, $38, $60, $40
.byte $00, $00, $00, $00, $00, $00, $00, $0f, $00, $00, $00, $00, $07, $0f, $0f, $05
.byte $00, $00, $00, $00, $00, $40, $00, $e0, $00, $00, $00, $00, $c0, $e0, $e0, $40
.byte $00, $00, $00, $00, $00, $00, $0f, $0f, $00, $00, $00, $07, $0f, $0f, $05, $07
.byte $00, $00, $00, $00, $40, $00, $e0, $e0, $00, $00, $00, $c0, $a0, $e0, $40, $c0
.byte $0b, $da, $e0, $6d, $29, $03, $5b, $c5, $00, $00, $00, $00, $00, $00, $00, $00
.ifndef ereader
.byte $00, $78, $fc, $fe, $fe, $ff, $ff, $fe, $00, $00, $00, $08, $04, $04, $00, $00
.byte $03, $07, $0f, $0f, $1f, $1f, $0f, $0f, $03, $07, $0f, $0f, $1f, $1f, $0f, $0f
.else
.byte $00, $78, $fc, $fe, $ff, $ff, $fe, $fc, $00, $00, $00, $08, $04, $04, $00, $00
.byte $03, $07, $0f, $1f, $1f, $1f, $0f, $07, $03, $07, $0f, $1f, $1f, $1f, $0f, $07
.endif
.byte $07, $03, $00, $00, $07, $0f, $0f, $37, $07, $03, $01, $01, $00, $00, $0e, $0c
.byte $ff, $1f, $07, $00, $00, $04, $07, $03, $01, $1f, $07, $03, $01, $01, $00, $00
.ifndef ereader
.byte $c0, $e0, $b0, $d0, $d8, $f8, $f0, $f0, $c0, $e0, $f0, $f0, $f8, $f8, $f0, $f0
.else
.byte $c0, $e0, $b0, $d0, $d8, $f8, $f0, $e0, $c0, $e0, $f0, $f0, $f8, $f8, $f0, $e0
.endif
.byte $e0, $c0, $00, $00, $80, $84, $2c, $ec, $e0, $c0, $00, $20, $20, $60, $c0, $00
.byte $de, $d8, $b0, $60, $00, $00, $00, $80, $d8, $f8, $f0, $f0, $f0, $f0, $e0, $00
.ifndef ereader
.byte $01, $03, $07, $07, $0f, $0f, $07, $07, $01, $03, $07, $07, $0f, $0f, $07, $07
.else
.byte $01, $03, $07, $0f, $0f, $0f, $07, $03, $01, $03, $07, $0f, $0f, $0f, $07, $03
.endif
.byte $03, $01, $00, $00, $07, $0f, $0f, $37, $03, $01, $00, $01, $00, $00, $0e, $0c
.ifndef ereader
.byte $e0, $f0, $d8, $e8, $ec, $fc, $f8, $f8, $e0, $f0, $f8, $f8, $fc, $fc, $f8, $f8
.else
.byte $e0, $f0, $d8, $ec, $ec, $fc, $f8, $f0, $e0, $f0, $f8, $fc, $fc, $fc, $f8, $f0
.endif
.byte $f0, $e0, $00, $00, $80, $84, $2c, $ec, $f0, $e0, $80, $20, $20, $60, $c0, $00
.byte $c0, $de, $bf, $64, $00, $00, $00, $80, $c0, $f8, $f8, $f0, $f0, $f0, $e0, $00
.ifndef ereader
.byte $00, $07, $0f, $1f, $1f, $3f, $3f, $1f, $00, $07, $0f, $1f, $1f, $3f, $3f, $1f
.else
.byte $00, $07, $0f, $1f, $3f, $3f, $3f, $1f, $00, $07, $0f, $1f, $3f, $3f, $3f, $1f
.endif
.byte $1f, $0f, $07, $00, $07, $0f, $0f, $37, $1f, $0f, $07, $01, $00, $00, $0e, $0c
.byte $00, $80, $c0, $60, $a0, $b0, $f0, $e0, $00, $80, $c0, $e0, $e0, $f0, $f0, $e0
.byte $e0, $c0, $80, $00, $80, $84, $2c, $ec, $e0, $c0, $80, $20, $20, $60, $c0, $00
.byte $c0, $c0, $80, $60, $32, $1e, $1c, $88, $c0, $c0, $e0, $f0, $f8, $f8, $f0, $00
.byte $e0, $c0, $00, $00, $80, $80, $20, $e0, $e0, $c0, $00, $20, $20, $60, $c0, $00
.byte $02, $0e, $0b, $00, $01, $07, $0f, $0f, $01, $01, $00, $00, $01, $00, $00, $0e
.byte $3b, $7f, $5f, $46, $00, $00, $00, $00, $06, $01, $1f, $07, $01, $00, $00, $00
.byte $c0, $a0, $40, $80, $00, $80, $80, $20, $00, $40, $80, $80, $00, $20, $60, $d8
.byte $60, $80, $60, $e0, $d8, $dc, $cc, $60, $9c, $fe, $fe, $fe, $e6, $e0, $00, $00
.byte $00, $00, $28, $54, $d4, $ba, $bb, $7d, $00, $00, $10, $28, $28, $44, $44, $02
.byte $01, $00, $00, $01, $01, $07, $0f, $0f, $00, $00, $00, $01, $01, $00, $00, $0e
.byte $50, $b0, $80, $00, $00, $80, $80, $20, $a0, $80, $80, $00, $00, $20, $60, $d8
.byte $06, $1d, $3b, $7b, $77, $f7, $f7, $e3, $01, $02, $04, $04, $08, $08, $00, $00
.byte $81, $41, $21, $11, $09, $07, $0f, $0f, $00, $41, $21, $11, $09, $00, $00, $0e
.byte $c0, $70, $b8, $bc, $dc, $de, $de, $8e, $00, $80, $40, $40, $20, $20, $00, $00
.byte $02, $04, $08, $10, $00, $80, $80, $20, $00, $04, $08, $10, $20, $20, $60, $d8
.byte $0c, $06, $43, $63, $67, $e7, $f7, $e3, $02, $81, $20, $10, $10, $18, $00, $00
.byte $18, $30, $31, $73, $76, $e6, $ff, $8f, $00, $04, $82, $84, $88, $18, $00, $00
.byte $10, $18, $0f, $07, $33, $23, $63, $61, $00, $00, $00, $01, $01, $02, $1b, $19
.byte $41, $00, $00, $00, $00, $00, $00, $00, $3f, $1f, $1f, $0f, $0f, $07, $00, $00
.byte $00, $e0, $f0, $78, $f8, $e0, $f0, $f8, $00, $00, $c0, $c0, $c2, $1a, $ce, $e0
.byte $e0, $00, $60, $f0, $38, $38, $10, $00, $e0, $c0, $e0, $f0, $b0, $00, $00, $00
.byte $e4, $0c, $3e, $f8, $60, $00, $00, $00, $e0, $c0, $f8, $f8, $e0, $00, $00, $00
.byte $00, $00, $00, $00, $00, $03, $0f, $01, $00, $00, $00, $00, $00, $00, $00, $01
.byte $00, $00, $78, $f8, $f2, $76, $fc, $fc, $00, $02, $02, $06, $ec, $c8, $1c, $fc
.byte $60, $18, $38, $30, $70, $e0, $c6, $1c, $7e, $3e, $3f, $3f, $7f, $1f, $c8, $e0
.byte $00, $00, $00, $00, $03, $0f, $01, $00, $00, $00, $00, $00, $00, $00, $01, $00
.byte $00, $78, $f8, $f2, $76, $fc, $f0, $6c, $02, $02, $06, $ec, $c8, $1c, $fe, $7e
.byte $fc, $d8, $40, $40, $40, $c2, $c6, $0c, $1f, $7f, $3f, $3f, $1f, $cc, $c0, $e0
.byte $00, $00, $00, $00, $0c, $1e, $1e, $0c, $00, $00, $00, $00, $0c, $1e, $1e, $0d
.byte $00, $00, $1c, $3a, $3a, $3e, $3e, $1c, $00, $00, $1c, $3e, $3e, $3e, $3e, $1d
.byte $3c, $76, $7a, $fb, $ff, $7e, $7e, $3c, $3c, $7e, $7e, $ff, $ff, $7e, $7e, $3d
.byte $00, $00, $08, $38, $50, $72, $e3, $e7, $00, $00, $06, $06, $2e, $0c, $1c, $18
.byte $0b, $1e, $3f, $7f, $7e, $fc, $fc, $fd, $0c, $0d, $00, $00, $01, $03, $2b, $13
.byte $80, $c0, $80, $10, $20, $40, $80, $00, $00, $30, $70, $f0, $f8, $f8, $f0, $e0
.byte $00, $0f, $3d, $3f, $76, $76, $fc, $fc, $00, $00, $02, $00, $39, $39, $3b, $03
.byte $fc, $fc, $fc, $fe, $ff, $7f, $7f, $3f, $03, $03, $03, $09, $08, $04, $04, $08
.byte $00, $90, $00, $20, $00, $40, $00, $84, $60, $70, $e0, $e0, $c0, $c0, $80, $84
.byte $10, $40, $00, $18, $fc, $ac, $ac, $ac, $1e, $7e, $fc, $e0, $00, $50, $50, $50
.byte $00, $07, $1d, $3e, $6e, $7e, $fe, $fc, $00, $00, $02, $31, $79, $79, $79, $33
.byte $fc, $f8, $f8, $f0, $f8, $fc, $ff, $7f, $03, $07, $06, $0e, $17, $13, $20, $00
.byte $79, $71, $21, $13, $73, $07, $07, $01, $06, $0e, $1e, $fc, $fc, $f8, $78, $70
.byte $00, $20, $00, $20, $00, $40, $00, $40, $c0, $e0, $c0, $e0, $c0, $c0, $80, $c0
.byte $00, $00, $02, $a8, $00, $00, $f8, $fc, $00, $00, $02, $af, $ff, $fe, $00, $00
.byte $fc, $f6, $d6, $db, $eb, $eb, $eb, $ea, $00, $08, $28, $24, $14, $14, $14, $14
.byte $00, $00, $00, $00, $03, $0f, $1f, $3f, $00, $00, $00, $00, $00, $00, $00, $00
.byte $3f, $7f, $7f, $ff, $ff, $ff, $fe, $fe, $01, $01, $01, $00, $02, $04, $05, $09
.byte $00, $00, $00, $00, $e0, $f0, $f8, $fc, $00, $00, $00, $00, $00, $00, $00, $c0
.byte $fc, $be, $ba, $fe, $80, $00, $00, $55, $e0, $e0, $e4, $c0, $7e, $ff, $ff, $d5
.byte $00, $20, $20, $10, $10, $1f, $1f, $0f, $78, $7c, $fc, $fc, $78, $60, $20, $00
.byte $0f, $07, $07, $07, $0c, $0c, $0c, $1f, $00, $00, $00, $00, $03, $03, $03, $00
.byte $00, $00, $00, $00, $00, $c0, $f0, $f8, $00, $00, $00, $00, $00, $00, $00, $60
.byte $fc, $fc, $fe, $fe, $7f, $bf, $3f, $3f, $10, $10, $08, $08, $80, $c0, $c0, $c0
.byte $00, $00, $00, $00, $00, $08, $10, $10, $00, $00, $00, $7c, $fe, $fe, $7c, $38
.byte $10, $38, $38, $78, $7c, $7c, $7e, $7f, $00, $00, $00, $10, $10, $08, $00, $00
.byte $03, $07, $06, $04, $0c, $08, $00, $00, $03, $07, $06, $04, $0c, $08, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $03, $07, $06, $04, $0c, $08, $00, $00
.byte $03, $07, $06, $0e, $0c, $1c, $18, $38, $03, $07, $06, $0e, $0c, $1c, $18, $38
.byte $3c, $0e, $03, $02, $00, $00, $00, $00, $3c, $0e, $03, $02, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $03, $07, $06, $0e, $0c, $1c, $18, $38
.byte $00, $00, $00, $00, $00, $00, $00, $00, $3c, $0e, $03, $02, $00, $00, $00, $00
.byte $03, $07, $06, $0e, $0c, $1c, $18, $38, $03, $07, $06, $0e, $0c, $1c, $18, $38
.byte $3c, $0f, $03, $06, $06, $0c, $0c, $18, $3c, $0f, $03, $06, $06, $0c, $0c, $18
.byte $18, $30, $30, $20, $60, $40, $c0, $80, $18, $30, $30, $20, $60, $40, $c0, $80
.byte $00, $00, $00, $00, $00, $00, $00, $00, $03, $07, $06, $0e, $0c, $1c, $18, $38
.byte $00, $00, $00, $00, $00, $00, $00, $00, $3c, $0f, $03, $06, $06, $0c, $0c, $18
.byte $00, $00, $00, $00, $00, $00, $00, $00, $18, $30, $30, $20, $60, $40, $c0, $80
.byte $00, $00, $10, $1c, $38, $08, $00, $00, $00, $00, $18, $3c, $3c, $18, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $10, $18, $3e, $7c, $18, $08, $00
.byte $52, $11, $98, $3f, $fc, $19, $88, $4a, $52, $19, $bc, $7f, $fe, $3d, $98, $4a
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $42, $2c, $38, $1c, $34, $42, $00
.byte $81, $66, $7e, $3c, $3c, $7e, $66, $81, $81, $66, $7e, $3c, $3c, $7e, $66, $81
.byte $00, $00, $00, $0f, $cf, $4f, $07, $0f, $07, $0f, $0f, $05, $f5, $77, $1f, $03
.byte $00, $40, $00, $e0, $e6, $e4, $c0, $e0, $c0, $e0, $e0, $40, $5e, $dc, $f0, $80
.byte $00, $00, $00, $00, $00, $07, $0d, $0d, $00, $00, $00, $00, $00, $07, $0f, $0f
.byte $16, $33, $12, $09, $06, $01, $0b, $04, $17, $33, $12, $09, $06, $01, $0b, $04
.byte $00, $00, $00, $00, $00, $c0, $60, $60, $00, $00, $00, $00, $00, $c0, $e0, $e0
.byte $d0, $98, $90, $20, $c0, $00, $a0, $40, $d0, $98, $90, $20, $c0, $00, $a0, $40
.ifndef ereader
.byte $03, $07, $0f, $0f, $1f, $1f, $1f, $1f, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c0, $e0, $b0, $90, $d8, $d8, $f8, $f8, $00, $00, $40, $60, $20, $20, $00, $00
.else
.byte $03, $07, $0f, $0f, $1f, $1f, $1f, $0f, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c0, $e0, $b0, $90, $d8, $d8, $f8, $f0, $00, $00, $40, $60, $20, $20, $00, $00
.endif
.byte $ff, $ff, $7e, $3c, $10, $08, $04, $04, $00, $00, $00, $00, $10, $08, $04, $04
.byte $ff, $ff, $7e, $3c, $10, $10, $08, $08, $00, $00, $00, $00, $10, $10, $08, $08
.byte $04, $06, $32, $3a, $18, $02, $63, $49, $00, $00, $00, $00, $00, $00, $00, $00
.byte $18, $11, $04, $4c, $1c, $18, $0a, $02, $00, $00, $00, $00, $00, $00, $00, $00
.byte $04, $66, $4a, $18, $10, $48, $40, $00, $04, $6e, $7e, $3c, $3c, $7c, $6e, $ef
.byte $00, $00, $00, $00, $66, $c8, $92, $84, $00, $00, $00, $00, $66, $ee, $ff, $ff
.byte $10, $10, $08, $08, $00, $00, $00, $00, $7e, $7c, $3c, $3c, $2c, $2c, $2c, $2c
.byte $00, $03, $07, $04, $00, $02, $00, $00, $00, $03, $07, $07, $07, $03, $01, $00
.byte $0c, $1a, $90, $90, $a6, $4d, $48, $45, $0c, $1e, $9e, $9c, $be, $ff, $ff, $ff
.byte $20, $20, $20, $00, $00, $00, $00, $00, $fe, $f8, $70, $70, $30, $20, $00, $00
.byte $00, $00, $00, $00, $18, $20, $20, $00, $00, $00, $00, $00, $18, $3c, $3a, $10
.byte $00, $00, $40, $80, $80, $40, $00, $00, $00, $00, $78, $f4, $e0, $60, $00, $00
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $00, $00, $00, $00, $00, $00, $00, $0e, $00, $00, $00, $00, $07, $0f, $0f, $0b
.byte $fe, $fc, $78, $20, $00, $84, $0c, $0c, $00, $00, $00, $20, $c0, $e4, $ec, $ec
.byte $1e, $3f, $7f, $7f, $ff, $ff, $7f, $7f, $00, $00, $00, $00, $00, $00, $00, $00
.byte $3f, $1e, $04, $07, $0f, $0f, $0f, $1f, $00, $00, $00, $00, $00, $00, $00, $00
.byte $1f, $07, $0f, $1f, $1f, $1f, $0e, $1c, $00, $00, $00, $00, $00, $00, $00, $00
.byte $78, $fc, $fe, $fe, $ff, $ff, $fe, $fe, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fc, $78, $40, $c0, $e0, $e0, $e0, $e0, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c0, $80, $c0, $e0, $e0, $e0, $e0, $70, $00, $00, $00, $00, $00, $00, $00, $00
.byte $03, $07, $0f, $0f, $1f, $1f, $0f, $0f, $00, $00, $00, $00, $00, $00, $00, $00
.byte $07, $03, $01, $07, $0f, $0f, $0f, $1f, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c0, $e0, $f0, $f0, $f8, $f8, $f0, $f0, $00, $00, $00, $00, $00, $00, $00, $00
.byte $e0, $c0, $00, $c0, $e0, $e0, $e0, $e0, $00, $00, $00, $00, $00, $00, $00, $00
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $00, $00, $00, $01, $00, $00, $00, $00, $03, $0c, $10, $21, $20, $40, $40, $48
.byte $00, $00, $00, $c0, $e0, $70, $30, $30, $c0, $30, $08, $c4, $24, $12, $12, $12
.byte $10, $10, $08, $08, $06, $01, $00, $00, $48, $48, $44, $26, $21, $10, $0c, $03
.byte $00, $00, $00, $00, $00, $80, $00, $00, $02, $02, $02, $04, $c4, $08, $30, $c0
.byte $00, $60, $00, $00, $00, $00, $00, $00, $04, $26, $72, $10, $00, $c0, $60, $00
.byte $00, $ff, $8b, $b9, $88, $ba, $8b, $ff, $ff, $00, $00, $00, $00, $00, $00, $00
.byte $00, $fc, $4c, $54, $54, $54, $4c, $fc, $fe, $02, $02, $02, $02, $02, $02, $02
.byte $00, $fe, $88, $a4, $84, $a4, $88, $fe, $ff, $01, $01, $01, $01, $01, $01, $01
.byte $00, $10, $10, $10, $10, $10, $10, $10, $18, $08, $08, $08, $08, $08, $08, $08
.byte $3f, $60, $40, $40, $40, $60, $3f, $00, $3f, $7f, $60, $60, $60, $7f, $3f, $00
.byte $fc, $06, $02, $02, $02, $06, $fc, $00, $fc, $fe, $06, $06, $06, $fe, $fc, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $02, $05, $01, $02, $01, $01, $05, $02, $00, $00, $00, $00, $00, $00, $00, $00
.byte $07, $04, $04, $06, $01, $01, $05, $02, $00, $00, $00, $00, $00, $00, $00, $00
.byte $07, $05, $01, $01, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00
.byte $12, $35, $15, $15, $15, $15, $15, $3a, $00, $00, $00, $00, $00, $00, $00, $00
.byte $17, $34, $14, $16, $11, $11, $15, $3a, $00, $00, $00, $00, $00, $00, $00, $00
.byte $22, $55, $55, $15, $25, $45, $45, $72, $00, $00, $00, $00, $00, $00, $00, $00
.byte $72, $45, $45, $65, $15, $15, $55, $22, $00, $00, $00, $00, $00, $00, $00, $00
.byte $22, $55, $55, $55, $55, $55, $55, $22, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $38, $4c, $c6, $c6, $c6, $64, $38, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $18, $38, $18, $18, $18, $18, $7e, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $7c, $c6, $0e, $3c, $78, $e0, $fe, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $7e, $0c, $18, $3c, $06, $c6, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $1c, $3c, $6c, $cc, $fe, $0c, $0c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fc, $c0, $fc, $06, $06, $c6, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $3c, $60, $c0, $fc, $c6, $c6, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fe, $c6, $0c, $18, $30, $30, $30, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $78, $c4, $e4, $78, $86, $86, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $7c, $c6, $c6, $7e, $06, $0c, $78, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $38, $6c, $c6, $c6, $fe, $c6, $c6, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fc, $c6, $c6, $fc, $c6, $c6, $fc, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $3c, $66, $c0, $c0, $c0, $66, $3c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $f8, $cc, $c6, $c6, $c6, $cc, $f8, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fe, $c0, $c0, $fc, $c0, $c0, $fe, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fe, $c0, $c0, $fc, $c0, $c0, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $3e, $60, $c0, $ce, $c6, $66, $3e, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $c6, $c6, $fe, $c6, $c6, $c6, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $3c, $18, $18, $18, $18, $18, $3c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $1e, $06, $06, $06, $c6, $c6, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $cc, $d8, $f0, $d8, $cc, $c6, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $60, $60, $60, $60, $60, $60, $7e, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $ee, $fe, $fe, $d6, $c6, $c6, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $e6, $f6, $fe, $de, $ce, $c6, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $7c, $c6, $c6, $c6, $c6, $c6, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fc, $c6, $c6, $fc, $c0, $c0, $c0, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $7c, $c6, $c6, $c6, $de, $cc, $7a, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fc, $c6, $c6, $fc, $d8, $cc, $c6, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $78, $cc, $c0, $7c, $06, $c6, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $7e, $18, $18, $18, $18, $18, $18, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $c6, $c6, $c6, $c6, $c6, $7c, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $c6, $c6, $ee, $7c, $38, $10, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $c6, $d6, $fe, $fe, $ee, $c6, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $c6, $ee, $7c, $38, $7c, $ee, $c6, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $66, $66, $66, $3c, $18, $18, $18, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $fe, $0e, $1c, $38, $70, $e0, $fe, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $7e, $7e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $60, $60, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $18, $18, $10, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $6c, $6c, $08, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $7e, $7e, $00, $7e, $7e, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $18, $3c, $3c, $18, $00, $00, $00, $00, $18, $34, $3c, $18, $08, $10, $00
.byte $00, $42, $24, $18, $18, $24, $42, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $18, $18, $18, $18, $18, $00, $18, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $7c, $c6, $06, $1c, $30, $00, $30, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $92, $54, $38, $fe, $38, $54, $92, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $ff, $00, $00, $00, $00, $00, $00, $00, $00
.byte $24, $1a, $65, $90, $db, $27, $3f, $1f, $18, $65, $1a, $6f, $24, $7b, $3f, $1f
.byte $82, $69, $8a, $25, $5a, $bf, $ff, $c3, $4c, $96, $75, $da, $a7, $df, $ff, $c3
.byte $10, $a5, $50, $4d, $a2, $8b, $ff, $e3, $4c, $5a, $af, $b2, $5d, $f7, $ff, $e3
.byte $34, $4a, $a6, $28, $52, $c4, $fc, $f8, $48, $b4, $58, $d7, $ad, $bf, $fe, $f8
.byte $0b, $17, $2f, $17, $0f, $07, $08, $17, $1f, $3f, $3f, $3f, $1f, $0f, $1f, $1f
.byte $f8, $fc, $fc, $fc, $f8, $e0, $18, $f8, $f8, $fc, $fc, $fc, $f8, $f0, $f8, $f8
.byte $0b, $17, $0b, $05, $03, $00, $00, $00, $1f, $1f, $0f, $0f, $07, $00, $00, $00
.byte $f8, $f8, $f0, $f0, $e0, $00, $00, $00, $f8, $f8, $f0, $f0, $e0, $00, $00, $00
.byte $82, $69, $8a, $25, $5a, $bf, $ff, $ff, $4c, $96, $75, $da, $a7, $df, $ff, $ff
.byte $10, $a5, $50, $4d, $a2, $8b, $ff, $ff, $4c, $5a, $af, $b2, $5d, $f7, $ff, $ff
.byte $2f, $1f, $2f, $5f, $af, $5e, $bc, $18, $3f, $3f, $7f, $7f, $ff, $fe, $fc, $98
.byte $bf, $3b, $59, $3b, $5f, $bf, $7e, $0c, $bf, $7f, $7b, $7b, $7f, $ff, $7e, $0c
.byte $fb, $f5, $d9, $9c, $ba, $fc, $3f, $19, $ff, $fd, $fd, $de, $be, $fe, $3f, $19
.byte $f8, $f4, $da, $dc, $fa, $fd, $7e, $01, $fc, $fc, $de, $de, $ff, $ff, $7f, $03
.byte $24, $ab, $44, $db, $ff, $bf, $5f, $3c, $5a, $54, $bb, $3d, $ff, $ff, $7f, $7e
.byte $42, $be, $5f, $bf, $7f, $bf, $5f, $3c, $7e, $fe, $ff, $ff, $ff, $ff, $7f, $7e
.byte $42, $3e, $5e, $2e, $1e, $3c, $1c, $08, $7e, $7e, $7e, $7e, $3e, $3c, $3c, $18
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $00, $00, $00, $00, $30, $dc, $8f, $02, $00, $00, $00, $00, $20, $f8, $ff, $ff
.byte $00, $00, $00, $00, $30, $8c, $07, $02, $00, $00, $00, $00, $20, $f8, $fb, $ff
.byte $00, $00, $00, $00, $30, $dc, $0f, $00, $00, $00, $00, $00, $00, $f8, $ff, $ff
.byte $00, $00, $00, $00, $30, $ec, $87, $03, $00, $00, $00, $00, $20, $f8, $ff, $ff
.byte $81, $67, $1e, $04, $c0, $73, $3a, $10, $7e, $fd, $ff, $ff, $3f, $ef, $ff, $ff
.byte $81, $66, $1c, $18, $c0, $73, $3c, $00, $ff, $f9, $ff, $ff, $bf, $df, $ff, $ff
.byte $81, $67, $3e, $08, $c0, $73, $3d, $18, $7f, $fb, $f7, $ff, $7f, $df, $ff, $ff
.byte $81, $47, $3e, $04, $40, $f3, $3d, $08, $7e, $fb, $ff, $ff, $ff, $ce, $f7, $ff
.byte $81, $47, $36, $0c, $c0, $73, $3a, $00, $00, $c5, $ff, $ff, $bf, $ef, $ff, $ff
.byte $81, $66, $3f, $02, $c0, $72, $1c, $08, $80, $e3, $fd, $ff, $bf, $df, $ff, $ff
.byte $81, $67, $3f, $04, $c0, $73, $3c, $38, $01, $e5, $fb, $ff, $3f, $df, $ef, $ff
.byte $81, $66, $3c, $1c, $c0, $72, $3c, $0c, $00, $e3, $f7, $ff, $7f, $df, $ef, $ff
.byte $00, $00, $01, $03, $03, $03, $07, $07, $03, $07, $0f, $0e, $1e, $1e, $1c, $1c
.byte $07, $0b, $0f, $1f, $3f, $3f, $7f, $7d, $08, $1c, $38, $70, $60, $e1, $c2, $c2
.byte $fd, $fe, $fe, $7f, $79, $33, $07, $06, $c2, $81, $81, $00, $46, $3f, $1f, $1e
.byte $0f, $0f, $0f, $07, $07, $07, $03, $01, $3c, $3c, $3c, $1c, $1c, $0e, $07, $03
.byte $00, $00, $00, $00, $00, $01, $01, $03, $00, $00, $00, $01, $03, $03, $07, $06
.byte $3b, $4f, $f3, $fd, $fd, $fd, $fe, $fe, $c4, $f0, $8c, $02, $02, $02, $01, $01
.byte $ff, $ff, $fc, $73, $8f, $ff, $ff, $ff, $00, $80, $8f, $fc, $70, $80, $00, $00
.byte $ff, $ff, $ff, $ff, $ff, $ef, $df, $ef, $00, $00, $00, $06, $0c, $18, $38, $dc
.byte $07, $07, $03, $01, $00, $00, $00, $00, $0c, $0e, $07, $07, $03, $00, $00, $00
.byte $00, $07, $0f, $3f, $ff, $ff, $ff, $ff, $0f, $3f, $ff, $f8, $e0, $80, $00, $00
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $02, $01, $01
.byte $fe, $fe, $fc, $f8, $70, $00, $00, $00, $01, $01, $00, $80, $f0, $00, $00, $00
.byte $00, $c0, $f0, $f8, $fc, $fe, $fe, $ff, $00, $c0, $f0, $38, $0c, $07, $03, $01
.byte $fe, $e1, $de, $bf, $bf, $ff, $ff, $ff, $1f, $3e, $61, $40, $40, $00, $00, $00
.byte $ff, $7f, $7f, $3f, $1f, $0f, $07, $00, $80, $c0, $c0, $60, $30, $3c, $0f, $00
.byte $00, $00, $00, $00, $78, $fc, $fc, $fe, $00, $00, $00, $78, $8c, $06, $06, $03
.byte $fe, $fd, $ff, $ff, $ff, $ff, $ff, $ff, $03, $03, $01, $00, $00, $00, $00, $00
.byte $ff, $ff, $ff, $ff, $ff, $ef, $f0, $ff, $00, $00, $00, $40, $30, $1f, $0f, $00
.byte $ff, $ff, $ff, $ff, $fd, $fd, $fe, $ff, $00, $00, $00, $00, $02, $02, $01, $00
.byte $fe, $fc, $fc, $f8, $f8, $f0, $c0, $00, $02, $04, $04, $00, $08, $30, $c0, $00
.byte $e0, $78, $fc, $fc, $fe, $ff, $ff, $ff, $e0, $98, $04, $04, $02, $01, $01, $01
.byte $ff, $ff, $de, $dc, $b0, $70, $f8, $fc, $00, $20, $61, $62, $cc, $b0, $18, $0c
.byte $fc, $fe, $fe, $fe, $fe, $fe, $f8, $f0, $04, $06, $02, $02, $02, $02, $04, $08
.byte $e8, $fe, $fe, $fe, $fc, $fc, $f8, $e0, $14, $02, $02, $02, $04, $04, $18, $00
.byte $00, $00, $00, $06, $1f, $3f, $31, $60, $00, $00, $00, $00, $00, $0f, $1f, $1f
.byte $60, $60, $21, $11, $31, $79, $61, $c0, $3f, $3f, $1e, $0e, $0f, $17, $3f, $7f
.byte $80, $80, $80, $00, $47, $3f, $1f, $1e, $7f, $7f, $ff, $7f, $79, $33, $07, $07
.byte $3c, $3c, $3c, $1c, $1c, $0e, $07, $03, $0f, $0f, $0f, $07, $07, $07, $03, $01
.byte $00, $00, $39, $7f, $66, $c2, $c0, $f8, $00, $00, $08, $3d, $7b, $7f, $bf, $c7
.byte $fc, $f2, $c0, $80, $80, $00, $00, $80, $1b, $7d, $7f, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $01, $00, $00, $00, $00, $ff, $ff, $ff, $fe, $ff, $ff, $ff, $ff
.byte $02, $14, $0c, $0e, $0e, $07, $13, $c0, $fd, $eb, $f7, $f7, $f3, $f1, $f0, $c0
.byte $00, $00, $c0, $e0, $20, $57, $1e, $1c, $00, $00, $00, $80, $c0, $a1, $e7, $ef
.byte $08, $08, $18, $04, $00, $00, $00, $00, $ff, $ff, $f7, $fb, $ff, $ff, $ff, $ff
.byte $00, $00, $04, $04, $f8, $70, $00, $00, $ff, $ff, $ff, $ff, $77, $8f, $ff, $ff
.byte $00, $04, $02, $01, $04, $08, $e0, $00, $ff, $ff, $ff, $fd, $fc, $f8, $e0, $00
.byte $00, $00, $00, $00, $00, $80, $60, $10, $00, $00, $00, $00, $00, $80, $e0, $f0
.byte $00, $08, $00, $00, $08, $18, $7c, $3e, $f0, $f8, $f8, $f8, $f0, $e0, $d8, $fc
.byte $26, $03, $01, $01, $00, $02, $24, $10, $fe, $ff, $ff, $ff, $fe, $fc, $d8, $e0
.byte $10, $00, $20, $c0, $00, $00, $00, $00, $e0, $e0, $c0, $80, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $f7, $f7, $25, $25, $25, $25, $27, $27
.byte $00, $00, $00, $00, $00, $00, $00, $00, $70, $70, $50, $56, $76, $70, $40, $40
.byte $f0, $60, $60, $66, $66, $60, $60, $f0, $f0, $60, $60, $66, $66, $60, $60, $f0
.byte $f8, $50, $50, $56, $56, $50, $50, $f8, $f8, $50, $50, $56, $56, $50, $50, $f8
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $20, $40, $40, $40, $40, $20, $10, $00, $7f, $ff, $ff, $ff, $ff, $7f, $3f, $00
.byte $08, $08, $08, $08, $08, $08, $08, $08, $1f, $1f, $1f, $1f, $1f, $1f, $1f, $1f
.byte $1c, $0e, $0e, $0e, $0e, $1c, $18, $00, $f6, $fb, $fb, $fb, $fb, $f6, $f4, $00
.byte $70, $70, $70, $70, $70, $70, $70, $70, $d8, $d8, $d8, $d8, $d8, $d8, $d8, $d8
.byte $00, $ff, $ff, $ff, $ff, $00, $00, $ff, $00, $00, $00, $00, $00, $ff, $00, $ff
.byte $c0, $80, $9f, $9f, $9f, $80, $c0, $ff, $c0, $9f, $bf, $bf, $bf, $9f, $c0, $ff
.byte $03, $01, $f9, $f9, $f9, $01, $03, $ff, $03, $f9, $fd, $fd, $fd, $f9, $03, $ff
.byte $00, $3e, $7f, $7f, $41, $00, $41, $3e, $00, $3e, $41, $3e, $7f, $7f, $7f, $3e
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $81, $42, $24, $18, $18, $24, $42, $81, $81, $42, $24, $18, $18, $24, $42, $81
.byte $1c, $3e, $7f, $7f, $7f, $7f, $3e, $00, $1c, $3a, $7b, $7f, $7f, $7f, $3e, $1c
.byte $0c, $1c, $00, $18, $10, $00, $38, $30, $00, $10, $3c, $3c, $34, $3c, $08, $00
.byte $00, $7c, $fe, $fe, $fe, $fe, $7c, $38, $38, $7c, $fe, $fe, $be, $be, $7c, $38
.byte $00, $00, $07, $0f, $0f, $1f, $1f, $1f, $00, $00, $07, $0c, $0e, $1f, $1f, $1f
.byte $00, $00, $00, $80, $80, $c0, $c0, $80, $00, $00, $00, $80, $80, $c0, $c0, $c0
.byte $0f, $06, $00, $00, $00, $00, $00, $00, $0f, $07, $00, $00, $00, $00, $00, $00
.byte $40, $f8, $40, $10, $18, $02, $1f, $02, $80, $18, $3c, $34, $3c, $3c, $18, $01
.byte $00, $00, $00, $00, $00, $00, $60, $f0, $00, $00, $00, $00, $00, $00, $e0, $f0
.byte $01, $03, $03, $01, $01, $00, $00, $00, $03, $03, $03, $01, $01, $00, $00, $00
.byte $f8, $f8, $f8, $f8, $f0, $e0, $00, $00, $f8, $f8, $f8, $78, $30, $e0, $00, $00
.byte $38, $7c, $fd, $fd, $fc, $fc, $7c, $38, $38, $5c, $be, $fe, $fe, $fe, $7c, $38
.byte $00, $18, $c0, $ca, $5b, $03, $18, $00, $00, $18, $3c, $2e, $7c, $3c, $18, $00
.byte $1c, $3e, $3f, $3f, $bf, $bf, $3e, $1c, $1c, $3e, $7f, $7f, $7f, $7d, $3a, $1c
.byte $00, $00, $00, $01, $01, $03, $03, $01, $00, $00, $00, $01, $01, $03, $03, $03
.byte $00, $00, $e0, $f0, $f8, $f8, $f8, $f8, $00, $00, $e0, $f0, $f8, $f8, $e8, $c8
.byte $00, $00, $00, $00, $00, $00, $06, $0f, $00, $00, $00, $00, $00, $00, $07, $0f
.byte $02, $1f, $02, $18, $08, $40, $f8, $40, $01, $18, $3c, $3c, $2c, $3c, $18, $80
.byte $f0, $60, $00, $00, $00, $00, $00, $00, $f0, $e0, $00, $00, $00, $00, $00, $00
.byte $1f, $1f, $1f, $1f, $0f, $07, $00, $00, $13, $17, $1f, $1f, $0f, $07, $00, $00
.byte $80, $c0, $c0, $80, $80, $00, $00, $00, $c0, $c0, $c0, $80, $80, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $1f, $3f, $7f, $7f, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $60, $30, $18, $08, $08, $00, $c0, $f0, $98, $cc, $e4, $f6, $f6
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $00, $00, $00, $00, $00, $00, $00, $00, $c3, $81, $81, $00, $00, $81, $81, $c3
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $7f, $7f, $3f, $1f, $07
.byte $00, $00, $00, $00, $00, $00, $00, $00, $fe, $fe, $fe, $fc, $fc, $f8, $f0, $c0
.byte $00, $00, $00, $0c, $04, $06, $02, $02, $00, $3c, $7e, $72, $fb, $f9, $fd, $fd
.byte $00, $00, $00, $00, $00, $00, $00, $00, $1f, $3f, $3f, $3f, $3f, $3f, $3f, $1f
.byte $00, $00, $18, $0c, $04, $04, $00, $00, $00, $fc, $e6, $f2, $fa, $fa, $fe, $fc
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $7e, $7e, $3c
.byte $00, $00, $00, $30, $18, $0c, $04, $04, $00, $e0, $f8, $cc, $e6, $f2, $fb, $fb
.byte $00, $00, $00, $00, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $40, $00, $00, $00, $00, $00, $00, $00, $40, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $80, $00, $00, $00, $00, $00, $00, $00
.byte $00, $7b, $7b, $12, $12, $12, $12, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $60, $e0, $a0, $a0, $a0, $a0, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $c3, $81, $81, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $81, $81, $c3, $ff
.byte $3c, $42, $99, $a1, $a1, $99, $42, $3c, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $c3, $81, $80, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $7f, $3f, $1f, $0f
.byte $fc, $c6, $c6, $fc, $d8, $cc, $c6, $00, $fc, $c6, $c6, $fc, $d8, $cc, $c6, $00
.byte $38, $6c, $c6, $c6, $fe, $c6, $c6, $00, $38, $6c, $c6, $c6, $fe, $c6, $c6, $00
.byte $c6, $e6, $f6, $fe, $de, $ce, $c6, $00, $c6, $e6, $f6, $fe, $de, $ce, $c6, $00
.byte $c6, $cc, $d8, $f0, $d8, $cc, $c6, $00, $c6, $cc, $d8, $f0, $d8, $cc, $c6, $00
.byte $00, $00, $7e, $7e, $00, $00, $00, $00, $00, $00, $7e, $7e, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00
.byte $00, $00, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
.byte $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
