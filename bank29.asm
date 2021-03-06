; code bank

bank $29
org $8000

  db $11, $4D, $32, $26, $0B, $15           ; $298000 |

  JSR code_3FEBD1                           ; $298006 |
code_298009:
  LDY #$11                                  ; $298009 |
  JSR code_3FE522                           ; $29800B |
  LDA #$1E                                  ; $29800E |
  STA $05B1,x                               ; $298010 |
loc_52013:
  JSR code_3FEA1C                           ; $298013 |
  JSR code_3FEF0C                           ; $298016 |
  DEC $05B1,x                               ; $298019 |
  BNE loc_52013                             ; $29801C |
  LDY #$15                                  ; $29801E |
  JSR code_3FE522                           ; $298020 |
  LDA #$0F                                  ; $298023 |
  STA $05B1,x                               ; $298025 |
loc_52028:
  JSR code_3FEA1C                           ; $298028 |
  DEC $05B1,x                               ; $29802B |
  BNE loc_52028                             ; $29802E |
  LDY #$12                                  ; $298030 |
  JSR code_3FE522                           ; $298032 |
  LDA #$49                                  ; $298035 |
  STA $DC                                   ; $298037 |
  LDA #$10                                  ; $298039 |
  STA $05B1,x                               ; $29803B |
loc_5203E:
  JSR code_3FEA1C                           ; $29803E |
  JSR code_2980D4                           ; $298041 |
  DEC $05B1,x                               ; $298044 |
  BNE loc_5203E                             ; $298047 |
loc_52049:
  JSR code_3FEA1C                           ; $298049 |
  JSR code_2980D4                           ; $29804C |
  LDA $12                                   ; $29804F |
  AND #$01                                  ; $298051 |
  BNE loc_52071                             ; $298053 |
  LDA $11                                   ; $298055 |
  AND #$01                                  ; $298057 |
  BNE loc_52071                             ; $298059 |
  LDA $04CB,x                               ; $29805B |
  CMP #$20                                  ; $29805E |
  BCC loc_52071                             ; $298060 |
  LDA #$08                                  ; $298062 |
  STA $00                                   ; $298064 |
  LDA #$00                                  ; $298066 |
  STA $01                                   ; $298068 |
  JSR code_3FEDA8                           ; $29806A |
  LDA $11                                   ; $29806D |
  BEQ loc_52049                             ; $29806F |
loc_52071:
  LDA #$0A                                  ; $298071 |
  STA $05B1,x                               ; $298073 |
  LDY #$11                                  ; $298076 |
  JSR code_3FE522                           ; $298078 |
loc_5207B:
  JSR code_3FEA1C                           ; $29807B |
  DEC $05B1,x                               ; $29807E |
  BNE loc_5207B                             ; $298081 |
  LDA #$4A                                  ; $298083 |
  STA $DC                                   ; $298085 |
  LDY #$5D                                  ; $298087 |
  JSR code_3FE5AB                           ; $298089 |
  BCS loc_5209D                             ; $29808C |
  LDY $8F                                   ; $29808E |
  LDA $03CE,y                               ; $298090 |
  STA $03CE,x                               ; $298093 |
  LDA #$03                                  ; $298096 |
  JSR code_3FE8FD                           ; $298098 |
  LDX $8F                                   ; $29809B |
loc_5209D:
  JSR code_3FEA1C                           ; $29809D |
  LDA #$E9                                  ; $2980A0 |
  STA $08                                   ; $2980A2 |
  LDA #$80                                  ; $2980A4 |
  STA $09                                   ; $2980A6 |
  LDA #$00                                  ; $2980A8 |
  STA $ED                                   ; $2980AA |
  STA $EB                                   ; $2980AC |
  LDA #$06                                  ; $2980AE |
  STA $EE                                   ; $2980B0 |
  JSR code_3FEC11                           ; $2980B2 |
  LDA $11                                   ; $2980B5 |
  AND #$01                                  ; $2980B7 |
  BEQ loc_5209D                             ; $2980B9 |
  LDY #$14                                  ; $2980BB |
  JSR code_3FE522                           ; $2980BD |
  LDA #$1A                                  ; $2980C0 |
  STA $05B1,x                               ; $2980C2 |
  LDA #$4B                                  ; $2980C5 |
  STA $DC                                   ; $2980C7 |
loc_520C9:
  JSR code_3FEA1C                           ; $2980C9 |
  DEC $05B1,x                               ; $2980CC |
  BNE loc_520C9                             ; $2980CF |
  JMP code_298009                           ; $2980D1 |

code_2980D4:
  LDA #$E9                                  ; $2980D4 |
  STA $08                                   ; $2980D6 |
  LDA #$80                                  ; $2980D8 |
  STA $09                                   ; $2980DA |
  LDY #$00                                  ; $2980DC |
  JSR code_3FE61A                           ; $2980DE |
  LDA #$FE                                  ; $2980E1 |
  STA $EE                                   ; $2980E3 |
  JSR code_3FEC11                           ; $2980E5 |
  RTS                                       ; $2980E8 |

  db $10, $06, $10, $FA, $F0, $06, $F0, $FA ; $2980E9 |
  db $10, $13, $F0, $13, $10, $ED, $F0, $ED ; $2980F1 |
  db $0F, $4E, $30, $27, $00, $13           ; $2980F9 |

  JSR code_3FEBD1                           ; $2980FF |
  LDA $51                                   ; $298102 |
  CMP #$02                                  ; $298104 |
  BEQ loc_5210D                             ; $298106 |
  LDA #$E2                                  ; $298108 |
  JSR code_3EC9EF                           ; $29810A |
loc_5210D:
  LDA #$3C                                  ; $29810D |
  STA $DC                                   ; $29810F |
  LDY #$5E                                  ; $298111 |
  JSR code_3FE5AB                           ; $298113 |
  BCS loc_5211F                             ; $298116 |
  LDY $8F                                   ; $298118 |
  LDA #$03                                  ; $29811A |
  JSR code_3FE8FD                           ; $29811C |
loc_5211F:
  LDX $8F                                   ; $29811F |
  LDA $04CB,x                               ; $298121 |
  STA $05B1,x                               ; $298124 |
  LDA #$00                                  ; $298127 |
  STA $03CE,x                               ; $298129 |
  LDA $04CB,x                               ; $29812C |
  SEC                                       ; $29812F |
  LDA $04CB                                 ; $298130 |
  SBC #$20                                  ; $298133 |
  STA $00                                   ; $298135 |
  LDA $04CB,x                               ; $298137 |
  SEC                                       ; $29813A |
  SBC $00                                   ; $29813B |
  LSR                                       ; $29813D |
  LSR                                       ; $29813E |
  LSR                                       ; $29813F |
  LSR                                       ; $298140 |
  TAY                                       ; $298141 |
  LDA $81A1,y                               ; $298142 |
  STA $060D,x                               ; $298145 |
  LDA $81B1,y                               ; $298148 |
  STA $0624,x                               ; $29814B |
  LDA #$08                                  ; $29814E |
  STA $03CE,x                               ; $298150 |
loc_52153:
  JSR code_3FE9D3                           ; $298153 |
  LDY #$03                                  ; $298156 |
  JSR code_3FEE9A                           ; $298158 |
  LDA #$00                                  ; $29815B |
  STA $ED                                   ; $29815D |
  STA $EB                                   ; $29815F |
  JSR code_3FE4D1                           ; $298161 |
  LDA $0624,x                               ; $298164 |
  BMI loc_5216E                             ; $298167 |
  LDA #$80                                  ; $298169 |
  STA $03B7,x                               ; $29816B |
loc_5216E:
  LDA $05B1,x                               ; $29816E |
  CMP $04CB,x                               ; $298171 |
  BCS loc_52153                             ; $298174 |
  LDA $05B1,x                               ; $298176 |
  STA $04CB,x                               ; $298179 |
  LDA #$3C                                  ; $29817C |
  STA $DC                                   ; $29817E |
  LDY #$5E                                  ; $298180 |
  JSR code_3FE5AB                           ; $298182 |
  BCS loc_5218E                             ; $298185 |
  LDY $8F                                   ; $298187 |
  LDA #$03                                  ; $298189 |
  JSR code_3FE8FD                           ; $29818B |
loc_5218E:
  JMP code_3FE456                           ; $29818E |

  db $10, $06, $10, $FA, $F0, $06, $F0, $FA ; $298191 |
  db $01, $01, $01, $01, $01, $01, $01, $01 ; $298199 |
  db $B4, $BE, $00, $64, $D8, $5A, $E4, $79 ; $2981A1 |
  db $15, $B4, $5A, $00, $00, $00, $00, $00 ; $2981A9 |
  db $FD, $FC, $FC, $FB, $FA, $FA, $F9, $F9 ; $2981B1 |
  db $F9, $F8, $F8, $F8, $F8, $F8, $F8, $F8 ; $2981B9 |
  db $0D, $4E, $31, $01, $00, $00           ; $2981C1 |

  JSR code_3FEBD1                           ; $2981C7 |
  LDA #$01                                  ; $2981CA |
  STA $03B7,x                               ; $2981CC |
  JMP code_2981DA                           ; $2981CF |

loc_521D2:
  JSR code_3FEA6A                           ; $2981D2 |
  DEC $05B1,x                               ; $2981D5 |
  BNE loc_521D2                             ; $2981D8 |
loc_521DA:
code_2981DA:
  JSR code_3FEA6A                           ; $2981DA |
  LDA #$1C                                  ; $2981DD |
  STA $00                                   ; $2981DF |
  LDA #$00                                  ; $2981E1 |
  STA $01                                   ; $2981E3 |
  JSR code_3FEDA8                           ; $2981E5 |
  LDA $11                                   ; $2981E8 |
  BEQ loc_521DA                             ; $2981EA |
loc_521EC:
  JSR code_3FEA6A                           ; $2981EC |
  LDY #$5A                                  ; $2981EF |
  JSR code_3FE5AB                           ; $2981F1 |
  BCS loc_521EC                             ; $2981F4 |
  LDY $8F                                   ; $2981F6 |
  TXA                                       ; $2981F8 |
  STA $0624,y                               ; $2981F9 |
  LDA #$03                                  ; $2981FC |
  JSR code_3FE8FD                           ; $2981FE |
  LDX $8F                                   ; $298201 |
loc_52203:
  JSR code_3FEA6A                           ; $298203 |
  LDY $0624,x                               ; $298206 |
  LDA $03A0,y                               ; $298209 |
  BNE loc_52203                             ; $29820C |
  LDA #$5A                                  ; $29820E |
  STA $05B1,x                               ; $298210 |
  BNE loc_521D2                             ; $298213 |

  db $08, $4E, $41, $01, $00, $00, $20, $D1 ; $298215 |
  db $EB, $A9, $01, $9D, $B7, $03, $A9, $68 ; $29821D |
  db $85, $08, $A9, $82, $85, $09, $20, $54 ; $298225 |
  db $CC, $B9, $6E, $82, $9D, $B1, $05, $B9 ; $29822D |
  db $7A, $82, $9D, $24, $06, $20, $6A, $EA ; $298235 |
  db $DE, $B1, $05, $D0, $F8, $A0, $5B, $20 ; $29823D |
  db $AB, $E5, $B0, $15, $A9, $68, $85, $08 ; $298245 |
  db $A9, $82, $85, $09, $20, $54, $CC, $B9 ; $29824D |
  db $74, $82, $A4, $8F, $20, $FD, $E8, $A6 ; $298255 |
  db $8F, $20, $6A, $EA, $DE, $24, $06, $D0 ; $29825D |
  db $DC, $F0, $BB, $2A, $2B, $2A, $2B, $2A ; $298265 |
  db $2B, $64, $C8, $B4, $FA, $96, $DC, $00 ; $29826D |
  db $05, $12, $13, $1B, $1C, $02, $04, $03 ; $298275 |
  db $01, $02, $04, $17, $4E, $33, $28, $00 ; $29827D |
  db $13                                    ; $298285 |

  JSR code_3FEBD1                           ; $298286 |
  JSR code_3FEF0C                           ; $298289 |
code_29828C:
  LDY #$17                                  ; $29828C |
  JSR code_3FE522                           ; $29828E |
  LDA #$28                                  ; $298291 |
  STA $059A,x                               ; $298293 |
  LDA #$2E                                  ; $298296 |
  STA $08                                   ; $298298 |
  LDA #$83                                  ; $29829A |
  STA $09                                   ; $29829C |
  JSR code_3ECC54                           ; $29829E |
  LDA $8331,y                               ; $2982A1 |
  STA $05B1,x                               ; $2982A4 |
loc_522A7:
  JSR code_3FE9D3                           ; $2982A7 |
  LDA #$38                                  ; $2982AA |
  STA $08                                   ; $2982AC |
  LDA #$83                                  ; $2982AE |
  STA $09                                   ; $2982B0 |
  LDA #$00                                  ; $2982B2 |
  STA $ED                                   ; $2982B4 |
  STA $EB                                   ; $2982B6 |
  JSR code_3FEC0A                           ; $2982B8 |
  LDA #$00                                  ; $2982BB |
  STA $00                                   ; $2982BD |
  STA $01                                   ; $2982BF |
  STA $11                                   ; $2982C1 |
  JSR code_3ED9CD                           ; $2982C3 |
  JSR code_298348                           ; $2982C6 |
  DEC $05B1,x                               ; $2982C9 |
  BNE loc_522A7                             ; $2982CC |
  JSR code_3FEF0C                           ; $2982CE |
  LDA #$BD                                  ; $2982D1 |
  STA $05DF,x                               ; $2982D3 |
  LDA #$FC                                  ; $2982D6 |
  STA $05F6,x                               ; $2982D8 |
  LDY #$18                                  ; $2982DB |
  JSR code_3FE522                           ; $2982DD |
  LDA #$54                                  ; $2982E0 |
  STA $DC                                   ; $2982E2 |
  LDA #$29                                  ; $2982E4 |
  STA $059A,x                               ; $2982E6 |
loc_522E9:
code_2982E9:
  JSR code_3FE9D3                           ; $2982E9 |
  LDA #$38                                  ; $2982EC |
  STA $08                                   ; $2982EE |
  LDA #$83                                  ; $2982F0 |
  STA $09                                   ; $2982F2 |
  LDA $03CE,x                               ; $2982F4 |
  LSR                                       ; $2982F7 |
  LSR                                       ; $2982F8 |
  LSR                                       ; $2982F9 |
  TAY                                       ; $2982FA |
  LDA $8334,y                               ; $2982FB |
  STA $EB                                   ; $2982FE |
  LDA $8336,y                               ; $298300 |
  STA $ED                                   ; $298303 |
  JSR code_3FEC0A                           ; $298305 |
  JSR code_298348                           ; $298308 |
  LDA $05F6,x                               ; $29830B |
  LDA $11                                   ; $29830E |
  AND #$01                                  ; $298310 |
  BEQ loc_52322                             ; $298312 |
  LDA $05DF,x                               ; $298314 |
  AND #$01                                  ; $298317 |
  BNE loc_52322                             ; $298319 |
  LDA #$4C                                  ; $29831B |
  STA $DC                                   ; $29831D |
  JMP code_29828C                           ; $29831F |

loc_52322:
  LDA $12                                   ; $298322 |
  AND #$01                                  ; $298324 |
  BEQ loc_522E9                             ; $298326 |
  JSR code_3FEF18                           ; $298328 |
  JMP code_2982E9                           ; $29832B |

  db $80, $60, $1F, $1E, $2D, $3C, $BD, $43 ; $29832E |
  db $01, $FE, $0A, $03, $0A, $FD, $F6, $03 ; $298336 |
  db $F6, $FD, $F8, $07, $08, $07, $F8, $F9 ; $29833E |
  db $08, $F9                               ; $298346 |

code_298348:
  LDA $11                                   ; $298348 |
  CMP #$06                                  ; $29834A |
  BEQ loc_52352                             ; $29834C |
  CMP #$07                                  ; $29834E |
  BNE loc_5235B                             ; $298350 |
loc_52352:
  LDA $03B7,x                               ; $298352 |
  ORA #$20                                  ; $298355 |
  STA $03B7,x                               ; $298357 |
  RTS                                       ; $29835A |

loc_5235B:
  LDA $03B7,x                               ; $29835B |
  AND #$DF                                  ; $29835E |
  STA $03B7,x                               ; $298360 |
  RTS                                       ; $298363 |

  db $1A, $4F, $34, $2A, $01, $00           ; $298364 |

  JSR code_3FEBD1                           ; $29836A |
  LDA #$01                                  ; $29836D |
  STA $03B7,x                               ; $29836F |
  LDA #$1E                                  ; $298372 |
  STA $05B1,x                               ; $298374 |
loc_52377:
  JSR code_3FEA6A                           ; $298377 |
  DEC $05B1,x                               ; $29837A |
  BNE loc_52377                             ; $29837D |
  LDA #$13                                  ; $29837F |
  STA $0583,x                               ; $298381 |
  LDA #$04                                  ; $298384 |
  STA $05B1,x                               ; $298386 |
loc_52389:
  JSR code_3FEA6A                           ; $298389 |
  JSR code_3FEA6A                           ; $29838C |
  JSR code_3FEA6A                           ; $29838F |
  JSR code_3FEA6A                           ; $298392 |
  LDY #$5B                                  ; $298395 |
  JSR code_3FE5AB                           ; $298397 |
  BCS loc_523AA                             ; $29839A |
  LDY $8F                                   ; $29839C |
  LDA $05B1,y                               ; $29839E |
  TAY                                       ; $2983A1 |
  LDA $8443,y                               ; $2983A2 |
  LDY $8F                                   ; $2983A5 |
  JSR code_3FE8FD                           ; $2983A7 |
loc_523AA:
  LDX $8F                                   ; $2983AA |
  DEC $05B1,x                               ; $2983AC |
  BNE loc_52389                             ; $2983AF |
  LDA #$53                                  ; $2983B1 |
  STA $DC                                   ; $2983B3 |
  LDA #$00                                  ; $2983B5 |
  STA $03B7,x                               ; $2983B7 |
  JSR code_3FEF0C                           ; $2983BA |
  LDA #$08                                  ; $2983BD |
  STA $03CE,x                               ; $2983BF |
  LDY #$1B                                  ; $2983C2 |
  JSR code_3FE522                           ; $2983C4 |
  LDA #$10                                  ; $2983C7 |
  STA $05B1,x                               ; $2983C9 |
loc_523CC:
  JSR code_3FE9D3                           ; $2983CC |
  LDY #$00                                  ; $2983CF |
  JSR code_3FE60E                           ; $2983D1 |
  DEC $05B1,x                               ; $2983D4 |
  BNE loc_523CC                             ; $2983D7 |
  LDY #$1C                                  ; $2983D9 |
  JSR code_3FE522                           ; $2983DB |
  LDA #$48                                  ; $2983DE |
  STA $DC                                   ; $2983E0 |
  LDY #$00                                  ; $2983E2 |
  JSR code_3FF8AE                           ; $2983E4 |
  LDA $11                                   ; $2983E7 |
  STA $03CE,x                               ; $2983E9 |
  JSR code_29842E                           ; $2983EC |
  STA $0624,x                               ; $2983EF |
  LDA #$0A                                  ; $2983F2 |
  STA $05B1,x                               ; $2983F4 |
  LDA #$00                                  ; $2983F7 |
  STA $060D,x                               ; $2983F9 |
loc_523FC:
  JSR code_3FE9D3                           ; $2983FC |
  LDY $060D,x                               ; $2983FF |
  LDA $8448,y                               ; $298402 |
  TAY                                       ; $298405 |
  JSR code_3FE60E                           ; $298406 |
  DEC $05B1,x                               ; $298409 |
  BNE loc_523FC                             ; $29840C |
  JSR code_3FE9D3                           ; $29840E |
  LDA #$0A                                  ; $298411 |
  STA $05B1,x                               ; $298413 |
  LDA #$00                                  ; $298416 |
  STA $060D,x                               ; $298418 |
  JSR code_3FECFC                           ; $29841B |
  JSR code_29842E                           ; $29841E |
  LDA $03CE,x                               ; $298421 |
  CMP $0624,x                               ; $298424 |
  BEQ loc_523FC                             ; $298427 |
  INC $060D,x                               ; $298429 |
  BNE loc_523FC                             ; $29842C |
code_29842E:
  LDA #$48                                  ; $29842E |
  STA $DC                                   ; $298430 |
  LDA $03CE,x                               ; $298432 |
  BEQ locret_52442                          ; $298435 |
  CMP #$08                                  ; $298437 |
  BEQ locret_52442                          ; $298439 |
  TAY                                       ; $29843B |
  LDA $844A,y                               ; $29843C |
  STA $03B7,x                               ; $29843F |
locret_52442:
  RTS                                       ; $298442 |

  db $00, $16, $17, $18, $19, $09, $01, $00 ; $298443 |
  db $40, $40, $40, $40, $40, $40, $40, $40 ; $29844B |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $298453 |
  db $00, $1D, $E6, $35, $2A, $01, $13      ; $29845B |

  JSR code_3FEBD1                           ; $298462 |
  JSR code_3FEF0C                           ; $298465 |
code_298468:
  JSR code_3FE9D3                           ; $298468 |
  LDY #$0A                                  ; $29846B |
  JSR code_3FE60E                           ; $29846D |
  JMP code_298468                           ; $298470 |

  db $5F, $14, $0E, $01, $03, $00           ; $298473 |

  JSR code_3FEBD1                           ; $298479 |
  JSR code_3FEF0C                           ; $29847C |
loc_5247F:
  JSR code_3FEA6A                           ; $29847F |
  LDY #$04                                  ; $298482 |
  JSR code_3FE61A                           ; $298484 |
  LDA #$85                                  ; $298487 |
  STA $08                                   ; $298489 |
  LDA #$85                                  ; $29848B |
  STA $09                                   ; $29848D |
  JSR code_3FEC0A                           ; $29848F |
  LDA $11                                   ; $298492 |
  AND #$01                                  ; $298494 |
  BEQ loc_5247F                             ; $298496 |
  LDY $03CE,x                               ; $298498 |
  LDA $8583,y                               ; $29849B |
  STA $00                                   ; $29849E |
  LDA #$00                                  ; $2984A0 |
  STA $11                                   ; $2984A2 |
  STA $01                                   ; $2984A4 |
  JSR code_3ED9CD                           ; $2984A6 |
  LDA $11                                   ; $2984A9 |
  AND #$01                                  ; $2984AB |
  BEQ loc_524B4                             ; $2984AD |
  LDA #$FD                                  ; $2984AF |
  STA $05F6,x                               ; $2984B1 |
loc_524B4:
  LDA #$22                                  ; $2984B4 |
  STA $00                                   ; $2984B6 |
  LDA #$00                                  ; $2984B8 |
  STA $01                                   ; $2984BA |
  JSR code_3FEDA8                           ; $2984BC |
  LDA $11                                   ; $2984BF |
  BEQ loc_5247F                             ; $2984C1 |
  LDY #$60                                  ; $2984C3 |
  JSR code_3FE522                           ; $2984C5 |
  LDA #$30                                  ; $2984C8 |
  STA $05B1,x                               ; $2984CA |
loc_524CD:
  JSR code_3FEA6A                           ; $2984CD |
  DEC $05B1,x                               ; $2984D0 |
  BNE loc_524CD                             ; $2984D3 |
  LDA #$95                                  ; $2984D5 |
  STA $08                                   ; $2984D7 |
  LDA #$85                                  ; $2984D9 |
  STA $09                                   ; $2984DB |
  JSR code_3ECC54                           ; $2984DD |
  LDA $8599,y                               ; $2984E0 |
  TAY                                       ; $2984E3 |
  JSR code_3FE5AB                           ; $2984E4 |
  LDA #$FD                                  ; $2984E7 |
  STA $05F6,x                               ; $2984E9 |
  LDY $8F                                   ; $2984EC |
  TXA                                       ; $2984EE |
  STA $05C8,y                               ; $2984EF |
  LDA #$03                                  ; $2984F2 |
  JSR code_3FE8FD                           ; $2984F4 |
  LDA $03CE,y                               ; $2984F7 |
  STA $03CE,x                               ; $2984FA |
  LDY #$04                                  ; $2984FD |
  JSR code_3FE61A                           ; $2984FF |
  LDA $ED                                   ; $298502 |
  STA $0624,x                               ; $298504 |
  LDX $8F                                   ; $298507 |
  LDA #$10                                  ; $298509 |
  STA $05B1,x                               ; $29850B |
loc_5250E:
  JSR code_3FEA6A                           ; $29850E |
  JSR code_298577                           ; $298511 |
  DEC $05B1,x                               ; $298514 |
  BNE loc_5250E                             ; $298517 |
  LDY #$62                                  ; $298519 |
  JSR code_3FE522                           ; $29851B |
  LDA #$84                                  ; $29851E |
  STA $05B1,x                               ; $298520 |
loc_52523:
  JSR code_3FEA6A                           ; $298523 |
  JSR code_298577                           ; $298526 |
  DEC $05B1,x                               ; $298529 |
  BNE loc_52523                             ; $29852C |
  LDY #$61                                  ; $29852E |
  JSR code_3FE522                           ; $298530 |
  LDA #$00                                  ; $298533 |
  STA $03CE,x                               ; $298535 |
  LDA #$06                                  ; $298538 |
  STA $05B1,x                               ; $29853A |
loc_5253D:
  JSR code_3FEA6A                           ; $29853D |
  JSR code_298577                           ; $298540 |
  DEC $05B1,x                               ; $298543 |
  BNE loc_5253D                             ; $298546 |
  LDA #$37                                  ; $298548 |
  STA $DC                                   ; $29854A |
loc_5254C:
  JSR code_3FE468                           ; $29854C |
  JSR code_298577                           ; $29854F |
  LDY #$08                                  ; $298552 |
  JSR code_3FE60E                           ; $298554 |
  LDA $04B4,x                               ; $298557 |
  BEQ loc_5254C                             ; $29855A |
  LDA #$01                                  ; $29855C |
  STA $03B7,x                               ; $29855E |
loc_52561:
  JSR code_3FE468                           ; $298561 |
  LDY $05C8,x                               ; $298564 |
  LDA #$FF                                  ; $298567 |
  STA $05B1,y                               ; $298569 |
  LDA $03A0,y                               ; $29856C |
  BNE loc_52561                             ; $29856F |
  JSR code_3FED21                           ; $298571 |
  JMP code_3FE456                           ; $298574 |

code_298577:
  LDY $05C8,x                               ; $298577 |
  LDA $03A0,y                               ; $29857A |
  BNE locret_52582                          ; $29857D |
  JSR code_3FED21                           ; $29857F |
locret_52582:
  RTS                                       ; $298582 |

  db $10, $F0, $09, $03, $09, $FD, $F7, $03 ; $298583 |
  db $F7, $FD, $FB, $0B, $05, $0B, $FB, $F6 ; $29858B |
  db $05, $F6, $40, $40, $40, $3F, $39, $4A ; $298593 |
  db $37, $1D, $1E, $66, $37, $33, $02, $34 ; $29859B |

  JSR code_3FEBD1                           ; $2985A3 |
  LDA #$38                                  ; $2985A6 |
  JSR code_3ECAA4                           ; $2985A8 |
  JSR code_3FEF0C                           ; $2985AB |
code_2985AE:
  LDY #$1E                                  ; $2985AE |
  JSR code_3FE522                           ; $2985B0 |
  LDA #$34                                  ; $2985B3 |
  STA $0583,x                               ; $2985B5 |
  LDA #$4E                                  ; $2985B8 |
  STA $08                                   ; $2985BA |
  LDA #$86                                  ; $2985BC |
  STA $09                                   ; $2985BE |
  JSR code_3ECC54                           ; $2985C0 |
  LDA $8651,y                               ; $2985C3 |
  STA $05B1,x                               ; $2985C6 |
loc_525C9:
  JSR code_3FE9D3                           ; $2985C9 |
  DEC $05B1,x                               ; $2985CC |
  BNE loc_525C9                             ; $2985CF |
  JSR code_3FEF0C                           ; $2985D1 |
  LDY #$1F                                  ; $2985D4 |
  JSR code_3FE522                           ; $2985D6 |
  LDA #$20                                  ; $2985D9 |
  STA $05B1,x                               ; $2985DB |
loc_525DE:
  JSR code_3FE9D3                           ; $2985DE |
  DEC $05B1,x                               ; $2985E1 |
  BNE loc_525DE                             ; $2985E4 |
  LDA #$18                                  ; $2985E6 |
  STA $05B1,x                               ; $2985E8 |
  LDY #$2E                                  ; $2985EB |
  JSR code_3FE5AB                           ; $2985ED |
  BCS loc_52603                             ; $2985F0 |
  LDA #$20                                  ; $2985F2 |
  STA $05B1,x                               ; $2985F4 |
  LDA #$22                                  ; $2985F7 |
  STA $0458,x                               ; $2985F9 |
  LDY $8F                                   ; $2985FC |
  LDA #$23                                  ; $2985FE |
  JSR code_3FE8BC                           ; $298600 |
loc_52603:
  JSR code_3FE9D3                           ; $298603 |
  DEC $05B1,x                               ; $298606 |
  BNE loc_52603                             ; $298609 |
  LDA #$14                                  ; $29860B |
  STA $0583,x                               ; $29860D |
  LDA #$10                                  ; $298610 |
  STA $05B1,x                               ; $298612 |
loc_52615:
  JSR code_3FE9D3                           ; $298615 |
  DEC $05B1,x                               ; $298618 |
  BNE loc_52615                             ; $29861B |
  LDA #$20                                  ; $29861D |
  STA $05B1,x                               ; $29861F |
loc_52622:
  JSR code_3FE9D3                           ; $298622 |
  DEC $05B1,x                               ; $298625 |
  BNE loc_52622                             ; $298628 |
  LDA #$18                                  ; $29862A |
  STA $05B1,x                               ; $29862C |
  LDY #$68                                  ; $29862F |
  JSR code_3FE5AB                           ; $298631 |
  BCS loc_52643                             ; $298634 |
  LDY $8F                                   ; $298636 |
  LDA $03CE,y                               ; $298638 |
  STA $03CE,x                               ; $29863B |
  LDA #$22                                  ; $29863E |
  JSR code_3FE8BC                           ; $298640 |
loc_52643:
  JSR code_3FE9D3                           ; $298643 |
  DEC $05B1,x                               ; $298646 |
  BNE loc_52643                             ; $298649 |
  JMP code_2985AE                           ; $29864B |

  db $7F, $60, $20, $3C, $1E, $5A, $20, $66 ; $29864E |
  db $37, $01, $02, $43                     ; $298656 |

  JSR code_3FEBD1                           ; $29865A |
  LDA #$42                                  ; $29865D |
  STA $DC                                   ; $29865F |
code_298661:
  JSR code_3FEA6A                           ; $298661 |
  LDY #$00                                  ; $298664 |
  JSR code_3FE60E                           ; $298666 |
  JMP code_298661                           ; $298669 |

  db $37, $8B, $4B, $40, $00, $13           ; $29866C |

  JSR code_3FEBD1                           ; $298672 |
  LDA #$00                                  ; $298675 |
  STA $0624,x                               ; $298677 |
  LDY #$64                                  ; $29867A |
  JSR code_3FE5AB                           ; $29867C |
  BCS loc_526F1                             ; $29867F |
  LDA $8F                                   ; $298681 |
  STA $05B1,x                               ; $298683 |
  TAX                                       ; $298686 |
loc_52687:
code_298687:
  JSR code_3FEF0C                           ; $298687 |
  LDA #$14                                  ; $29868A |
  STA $05B1,x                               ; $29868C |
loc_5268F:
  JSR code_3FE9D3                           ; $29868F |
  LDY #$04                                  ; $298692 |
  JSR code_3FE60E                           ; $298694 |
  LDA #$10                                  ; $298697 |
  STA $00                                   ; $298699 |
  LDA #$00                                  ; $29869B |
  STA $01                                   ; $29869D |
  JSR code_3FEDA8                           ; $29869F |
  LDA $11                                   ; $2986A2 |
  BNE loc_526AD                             ; $2986A4 |
  DEC $05B1,x                               ; $2986A6 |
  BNE loc_5268F                             ; $2986A9 |
  BEQ loc_52687                             ; $2986AB |
loc_526AD:
  LDA $0624,x                               ; $2986AD |
  BEQ loc_526C2                             ; $2986B0 |
  TAY                                       ; $2986B2 |
  LDA $03A0,y                               ; $2986B3 |
  CMP #$A4                                  ; $2986B6 |
  BEQ loc_5268F                             ; $2986B8 |
  LDA $04CB                                 ; $2986BA |
  CMP $04CB,x                               ; $2986BD |
  BCC loc_5268F                             ; $2986C0 |
loc_526C2:
  JSR code_3FE9D3                           ; $2986C2 |
  LDY #$38                                  ; $2986C5 |
  JSR code_3FE522                           ; $2986C7 |
  LDA #$10                                  ; $2986CA |
  STA $05B1,x                               ; $2986CC |
  LDY #$A4                                  ; $2986CF |
  JSR code_3FE5AB                           ; $2986D1 |
  BCS loc_526C2                             ; $2986D4 |
  LDY $8F                                   ; $2986D6 |
  TXA                                       ; $2986D8 |
  STA $0624,y                               ; $2986D9 |
  LDA #$03                                  ; $2986DC |
  JSR code_3FE8FD                           ; $2986DE |
loc_526E1:
  JSR code_3FE9D3                           ; $2986E1 |
  DEC $05B1,x                               ; $2986E4 |
  BNE loc_526E1                             ; $2986E7 |
  LDY #$37                                  ; $2986E9 |
  JSR code_3FE522                           ; $2986EB |
  JMP code_298687                           ; $2986EE |

loc_526F1:
  JMP code_3FE456                           ; $2986F1 |

  db $36, $00, $4B, $01, $00, $00           ; $2986F4 |

  JSR code_3FEBD1                           ; $2986FA |
code_2986FD:
  LDY $05B1,x                               ; $2986FD |
  LDA #$03                                  ; $298700 |
  JSR code_3FE8FD                           ; $298702 |
  LDA $03E5,y                               ; $298705 |
  BMI loc_52719                             ; $298708 |
  LDA $03CE,y                               ; $29870A |
  STA $03CE,x                               ; $29870D |
  JSR code_3FE5DF                           ; $298710 |
  JSR code_3FEA6A                           ; $298713 |
  JMP code_2986FD                           ; $298716 |

loc_52719:
  JMP code_3FE456                           ; $298719 |

  db $3B, $00, $4B, $01, $00, $43           ; $29871C |

  JSR code_3FEBD1                           ; $298722 |
  LDA #$08                                  ; $298725 |
  STA $03CE,x                               ; $298727 |
code_29872A:
  JSR code_3FEA6A                           ; $29872A |
  LDY #$00                                  ; $29872D |
  JSR code_3FE60E                           ; $29872F |
  JMP code_29872A                           ; $298732 |

  db $21, $8B, $3A, $32, $01, $12           ; $298735 |

  JSR code_3FEBD1                           ; $29873B |
code_29873E:
  LDY #$21                                  ; $29873E |
  JSR code_3FE522                           ; $298740 |
  LDA #$05                                  ; $298743 |
  STA $05B1,x                               ; $298745 |
loc_52748:
  JSR code_3FE9D3                           ; $298748 |
  DEC $05B1,x                               ; $29874B |
  BNE loc_52748                             ; $29874E |
  LDY #$25                                  ; $298750 |
  JSR code_3FE522                           ; $298752 |
  LDA #$18                                  ; $298755 |
  STA $05B1,x                               ; $298757 |
loc_5275A:
  JSR code_3FE9D3                           ; $29875A |
  DEC $05B1,x                               ; $29875D |
  BNE loc_5275A                             ; $298760 |
  LDY #$22                                  ; $298762 |
  JSR code_3FE522                           ; $298764 |
loc_52767:
  JSR code_3FEF0C                           ; $298767 |
  LDA $03CE,x                               ; $29876A |
  LSR                                       ; $29876D |
  LSR                                       ; $29876E |
  LSR                                       ; $29876F |
  STA $0624,x                               ; $298770 |
  LDA #$14                                  ; $298773 |
  STA $05B1,x                               ; $298775 |
loc_52778:
  JSR code_3FE9D3                           ; $298778 |
  LDA #$FC                                  ; $29877B |
  STA $08                                   ; $29877D |
  LDA #$87                                  ; $29877F |
  STA $09                                   ; $298781 |
  LDY $03CE,x                               ; $298783 |
  LDY #$06                                  ; $298786 |
  JSR code_3FE61A                           ; $298788 |
  JSR code_3FEC0A                           ; $29878B |
  LDA $12                                   ; $29878E |
  AND #$01                                  ; $298790 |
  BNE loc_527B4                             ; $298792 |
  LDY $0624,x                               ; $298794 |
  LDA $880C,y                               ; $298797 |
  STA $00                                   ; $29879A |
  LDA #$19                                  ; $29879C |
  STA $01                                   ; $29879E |
  LDA #$00                                  ; $2987A0 |
  STA $11                                   ; $2987A2 |
  JSR code_3ED9CD                           ; $2987A4 |
  LDA $11                                   ; $2987A7 |
  AND #$01                                  ; $2987A9 |
  BEQ loc_527B4                             ; $2987AB |
  DEC $05B1,x                               ; $2987AD |
  BNE loc_52778                             ; $2987B0 |
  BEQ loc_52767                             ; $2987B2 |
loc_527B4:
  LDY #$23                                  ; $2987B4 |
  JSR code_3FE522                           ; $2987B6 |
  LDA #$71                                  ; $2987B9 |
  STA $05DF,x                               ; $2987BB |
  LDA #$FC                                  ; $2987BE |
  STA $05F6,x                               ; $2987C0 |
loc_527C3:
  JSR code_3FE9D3                           ; $2987C3 |
  LDA #$FC                                  ; $2987C6 |
  STA $08                                   ; $2987C8 |
  LDA #$87                                  ; $2987CA |
  STA $09                                   ; $2987CC |
  LDY #$06                                  ; $2987CE |
  JSR code_3FE61A                           ; $2987D0 |
  JSR code_3FEC0A                           ; $2987D3 |
  LDA $11                                   ; $2987D6 |
  AND #$01                                  ; $2987D8 |
  BEQ loc_527C3                             ; $2987DA |
  LDA $05DF,x                               ; $2987DC |
  AND #$01                                  ; $2987DF |
  BNE loc_527C3                             ; $2987E1 |
  LDA #$4C                                  ; $2987E3 |
  STA $DC                                   ; $2987E5 |
  LDY #$24                                  ; $2987E7 |
  JSR code_3FE522                           ; $2987E9 |
  LDA #$18                                  ; $2987EC |
  STA $05B1,x                               ; $2987EE |
loc_527F1:
  JSR code_3FE9D3                           ; $2987F1 |
  DEC $05B1,x                               ; $2987F4 |
  BNE loc_527F1                             ; $2987F7 |
  JMP code_29873E                           ; $2987F9 |

  db $10, $07, $10, $F9, $F0, $07, $F0, $F9 ; $2987FC |
  db $F6, $10, $0A, $10, $F6, $F6, $0A, $F6 ; $298804 |
  db $0C, $F4, $27, $D6, $3C, $30, $01, $13 ; $29880C |

  JSR code_3FEBD1                           ; $298814 |
  LDA $51                                   ; $298817 |
  CMP #$05                                  ; $298819 |
  BNE loc_52822                             ; $29881B |
  LDA #$D7                                  ; $29881D |
  JSR code_3EC9EF                           ; $29881F |
loc_52822:
  LDA #$00                                  ; $298822 |
  STA $05C8,x                               ; $298824 |
  JSR code_3FEF0C                           ; $298827 |
  LDY #$6B                                  ; $29882A |
  JSR code_3FE5AB                           ; $29882C |
  BCS loc_52867                             ; $29882F |
  LDY $8F                                   ; $298831 |
  TYA                                       ; $298833 |
  STA $05B1,x                               ; $298834 |
  LDA $03CE,y                               ; $298837 |
  STA $03CE,x                               ; $29883A |
  LDA #$03                                  ; $29883D |
  JSR code_3FE8FD                           ; $29883F |
loc_52842:
  JSR code_3FE9D3                           ; $298842 |
  LDY #$06                                  ; $298845 |
  JSR code_3FE60E                           ; $298847 |
  LDA #$18                                  ; $29884A |
  STA $00                                   ; $29884C |
  LDA #$00                                  ; $29884E |
  STA $01                                   ; $298850 |
  JSR code_3FEDA8                           ; $298852 |
  LDA $11                                   ; $298855 |
  BEQ loc_52842                             ; $298857 |
  INC $05C8,x                               ; $298859 |
code_29885C:
  JSR code_3FE9D3                           ; $29885C |
  LDY #$00                                  ; $29885F |
  JSR code_3FE60E                           ; $298861 |
  JMP code_29885C                           ; $298864 |

loc_52867:
  JMP code_3FE456                           ; $298867 |

  db $2B, $00, $3C, $01, $00, $14           ; $29886A |

  JSR code_3FEBD1                           ; $298870 |
  LDA #$4A                                  ; $298873 |
  STA $DC                                   ; $298875 |
loc_52877:
  JSR code_3FE9D3                           ; $298877 |
  LDA $056C,x                               ; $29887A |
  CMP #$30                                  ; $29887D |
  BEQ loc_5289E                             ; $29887F |
  LDA #$AC                                  ; $298881 |
  STA $08                                   ; $298883 |
  LDA #$88                                  ; $298885 |
  STA $09                                   ; $298887 |
  LDA #$00                                  ; $298889 |
  STA $ED                                   ; $29888B |
  STA $EB                                   ; $29888D |
  JSR code_3FEC0A                           ; $29888F |
  LDA $11                                   ; $298892 |
  AND #$01                                  ; $298894 |
  BNE loc_5289E                             ; $298896 |
  LDA $12                                   ; $298898 |
  AND #$01                                  ; $29889A |
  BEQ loc_52877                             ; $29889C |
loc_5289E:
  LDY #$25                                  ; $29889E |
  JSR code_3ECB28                           ; $2988A0 |

  db $41                                    ; $2988A3 |

  LDA #$44                                  ; $2988A4 |
  STA $05DF,x                               ; $2988A6 |
  JMP code_3FE477                           ; $2988A9 |

  db $08, $04, $08, $FC, $F8, $04, $F8, $FC ; $2988AC |
  db $F8, $08, $08, $08, $F8, $F8, $08, $F8 ; $2988B4 |
  db $28, $00, $3C, $01, $00, $13           ; $2988BC |

  JSR code_3FEBD1                           ; $2988C2 |
  JSR code_3FE5DF                           ; $2988C5 |
loc_528C8:
  JSR code_3FEA6A                           ; $2988C8 |
  LDY $05B1,x                               ; $2988CB |
  LDA #$03                                  ; $2988CE |
  JSR code_3FE8FD                           ; $2988D0 |
  LDA $03A0,y                               ; $2988D3 |
  BEQ loc_5290F                             ; $2988D6 |
  LDA $03E5,y                               ; $2988D8 |
  BMI loc_528E2                             ; $2988DB |
  LDA $05C8,y                               ; $2988DD |
  BEQ loc_528C8                             ; $2988E0 |
loc_528E2:
  LDA #$10                                  ; $2988E2 |
  STA $05C8,x                               ; $2988E4 |
  LDY #$2A                                  ; $2988E7 |
  JSR code_3FE522                           ; $2988E9 |
  LDY #$6A                                  ; $2988EC |
  JSR code_3FE5AB                           ; $2988EE |
  BCS loc_528FA                             ; $2988F1 |
  LDY $8F                                   ; $2988F3 |
  LDA #$24                                  ; $2988F5 |
  JSR code_3FE8FD                           ; $2988F7 |
loc_528FA:
  JSR code_3FEA6A                           ; $2988FA |
  LDY $05B1,x                               ; $2988FD |
  LDA #$03                                  ; $298900 |
  JSR code_3FE8FD                           ; $298902 |
  LDA $03A0,y                               ; $298905 |
  BEQ loc_5290F                             ; $298908 |
  LDA $03E5,y                               ; $29890A |
  BPL loc_528FA                             ; $29890D |
loc_5290F:
  JMP code_3FE456                           ; $29890F |

  db $2C, $D9, $3D, $2F, $05, $14           ; $298912 |

  JSR code_3FEBD1                           ; $298918 |
  JSR code_3FE9D3                           ; $29891B |
loc_5291E:
  JSR code_3FE9D3                           ; $29891E |
loc_52921:
code_298921:
  JSR code_3FEF0C                           ; $298921 |
  LDY #$2D                                  ; $298924 |
  JSR code_3FE522                           ; $298926 |
  LDA #$0C                                  ; $298929 |
  STA $05C8,x                               ; $29892B |
  LDY #$6D                                  ; $29892E |
  JSR code_3FE5AB                           ; $298930 |
  BCS loc_5291E                             ; $298933 |
  LDY $8F                                   ; $298935 |
  TXA                                       ; $298937 |
  STA $05B1,y                               ; $298938 |
  LDA $03CE,y                               ; $29893B |
  STA $03CE,x                               ; $29893E |
  LDA #$37                                  ; $298941 |
  JSR code_3FE8BC                           ; $298943 |
loc_52946:
  JSR code_3FE9D3                           ; $298946 |
  LDY $05B1,x                               ; $298949 |
  LDA $03A0,y                               ; $29894C |
  BEQ loc_52921                             ; $29894F |
  JSR code_3FE9D3                           ; $298951 |
  LDY $05B1,x                               ; $298954 |
  LDA $03A0,y                               ; $298957 |
  BEQ loc_52921                             ; $29895A |
  LDA #$A1                                  ; $29895C |
  STA $08                                   ; $29895E |
  LDA #$89                                  ; $298960 |
  STA $09                                   ; $298962 |
  LDA #$00                                  ; $298964 |
  STA $ED                                   ; $298966 |
  STA $EB                                   ; $298968 |
  JSR code_3FEC0A                           ; $29896A |
  DEC $05C8,x                               ; $29896D |
  BNE loc_52946                             ; $298970 |
  LDY #$2C                                  ; $298972 |
  JSR code_3FE522                           ; $298974 |
loc_52977:
  JSR code_3FE9D3                           ; $298977 |
  LDY $05B1,x                               ; $29897A |
  LDA $03A0,y                               ; $29897D |
  BEQ loc_52921                             ; $298980 |
  JSR code_3FE9D3                           ; $298982 |
  LDA #$A1                                  ; $298985 |
  STA $08                                   ; $298987 |
  LDA #$89                                  ; $298989 |
  STA $09                                   ; $29898B |
  LDA #$00                                  ; $29898D |
  STA $ED                                   ; $29898F |
  STA $EB                                   ; $298991 |
  JSR code_3FEC0A                           ; $298993 |
  LDY $05B1,x                               ; $298996 |
  LDA $03A0,y                               ; $298999 |
  BNE loc_52977                             ; $29899C |
  JMP code_298921                           ; $29899E |

  db $10, $07, $10, $F9, $F0, $07, $F0, $F9 ; $2989A1 |
  db $F0, $10, $10, $10, $F0, $F6, $10, $F6 ; $2989A9 |
  db $2E, $00, $3D, $01, $00, $43           ; $2989B1 |

  JSR code_3FEBD1                           ; $2989B7 |
  LDA #$44                                  ; $2989BA |
  STA $DC                                   ; $2989BC |
  JSR code_3FE5DF                           ; $2989BE |
code_2989C1:
  JSR code_3FEA6A                           ; $2989C1 |
  LDY #$0B                                  ; $2989C4 |
  JSR code_3FE60E                           ; $2989C6 |
  JMP code_2989C1                           ; $2989C9 |

  db $2F, $E3, $40, $31, $04, $15           ; $2989CC |

  JSR code_3FEBD1                           ; $2989D2 |
  LDA #$48                                  ; $2989D5 |
  STA $DC                                   ; $2989D7 |
  LDA #$01                                  ; $2989D9 |
  STA $05F6,x                               ; $2989DB |
  LDA #$00                                  ; $2989DE |
  STA $ED                                   ; $2989E0 |
  STA $EB                                   ; $2989E2 |
  JSR code_298A97                           ; $2989E4 |
  LDA $11                                   ; $2989E7 |
  AND #$01                                  ; $2989E9 |
  BNE loc_52A11                             ; $2989EB |
loc_529ED:
  JSR code_298A5A                           ; $2989ED |
  LDA #$00                                  ; $2989F0 |
  STA $ED                                   ; $2989F2 |
  STA $EB                                   ; $2989F4 |
  JSR code_298A97                           ; $2989F6 |
  LDA $11                                   ; $2989F9 |
  AND #$01                                  ; $2989FB |
  BEQ loc_529ED                             ; $2989FD |
  LDY #$30                                  ; $2989FF |
  JSR code_3FE522                           ; $298A01 |
  LDA #$18                                  ; $298A04 |
  STA $05B1,x                               ; $298A06 |
loc_52A09:
  JSR code_298A5A                           ; $298A09 |
  DEC $05B1,x                               ; $298A0C |
  BNE loc_52A09                             ; $298A0F |
loc_52A11:
  LDY #$31                                  ; $298A11 |
  JSR code_3FE522                           ; $298A13 |
  JSR code_3FEF0C                           ; $298A16 |
loc_52A19:
  JSR code_298A5A                           ; $298A19 |
  LDY #$06                                  ; $298A1C |
  JSR code_3FE61A                           ; $298A1E |
  JSR code_298A97                           ; $298A21 |
  LDA $05F6,x                               ; $298A24 |
  BNE loc_529ED                             ; $298A27 |
  LDA $12                                   ; $298A29 |
  AND #$01                                  ; $298A2B |
  BEQ loc_52A19                             ; $298A2D |
loc_52A2F:
  LDY #$25                                  ; $298A2F |
  JSR code_3ECB28                           ; $298A31 |

  db $41                                    ; $298A34 |

  JMP code_3FE477                           ; $298A35 |

loc_52A38:
  LDA #$00                                  ; $298A38 |
  STA $0583,x                               ; $298A3A |
  JSR code_3FE5B6                           ; $298A3D |
  LDA $11                                   ; $298A40 |
  EOR #$08                                  ; $298A42 |
  STA $03CE,x                               ; $298A44 |
loc_52A47:
  JSR code_3FEA6A                           ; $298A47 |
  LDY #$07                                  ; $298A4A |
  JSR code_3FE61A                           ; $298A4C |
  JSR code_298A97                           ; $298A4F |
  LDA $12                                   ; $298A52 |
  AND #$01                                  ; $298A54 |
  BNE loc_52A2F                             ; $298A56 |
  BEQ loc_52A47                             ; $298A58 |
code_298A5A:
  LDX $8F                                   ; $298A5A |
  JSR code_3FE485                           ; $298A5C |
  BCS loc_52A94                             ; $298A5F |
  LDA $056C,x                               ; $298A61 |
  BEQ loc_52A91                             ; $298A64 |
  JSR code_3FEB72                           ; $298A66 |
  LDA $056C,x                               ; $298A69 |
  CMP #$14                                  ; $298A6C |
  BEQ loc_52A38                             ; $298A6E |
  AND #$0F                                  ; $298A70 |
  STA $00                                   ; $298A72 |
  LDA #$35                                  ; $298A74 |
  STA $DC                                   ; $298A76 |
  LDA #$00                                  ; $298A78 |
  STA $056C,x                               ; $298A7A |
  LDA $03E5,x                               ; $298A7D |
  SEC                                       ; $298A80 |
  SBC $00                                   ; $298A81 |
  STA $03E5,x                               ; $298A83 |
  BPL loc_52A91                             ; $298A86 |
  LDY #$25                                  ; $298A88 |
  JSR code_3ECB28                           ; $298A8A |

  db $41                                    ; $298A8D |

  JMP code_3FE477                           ; $298A8E |

loc_52A91:
  JMP code_3FE468                           ; $298A91 |

loc_52A94:
  JMP code_3FE456                           ; $298A94 |

code_298A97:
  LDA #$00                                  ; $298A97 |
  STA $11                                   ; $298A99 |
  LDA #$2A                                  ; $298A9B |
  STA $00                                   ; $298A9D |
  JSR code_3FECA4                           ; $298A9F |
  JSR code_3FE4D1                           ; $298AA2 |
  LDA $03CE,x                               ; $298AA5 |
  LSR                                       ; $298AA8 |
  LSR                                       ; $298AA9 |
  LSR                                       ; $298AAA |
  TAY                                       ; $298AAB |
  LDA $8B3E,y                               ; $298AAC |
  STA $00                                   ; $298AAF |
  LDA #$07                                  ; $298AB1 |
  STA $01                                   ; $298AB3 |
  JSR code_3ED9CD                           ; $298AB5 |
  LDA $11                                   ; $298AB8 |
  AND #$01                                  ; $298ABA |
  STA $12                                   ; $298ABC |
  LDA $03CE,x                               ; $298ABE |
  LSR                                       ; $298AC1 |
  LSR                                       ; $298AC2 |
  LSR                                       ; $298AC3 |
  TAY                                       ; $298AC4 |
  LDA $8B3E,y                               ; $298AC5 |
  STA $00                                   ; $298AC8 |
  LDA #$F9                                  ; $298ACA |
  STA $01                                   ; $298ACC |
  JSR code_3ED9CD                           ; $298ACE |
  LDA $11                                   ; $298AD1 |
  AND #$01                                  ; $298AD3 |
  EOR $12                                   ; $298AD5 |
  BEQ loc_52AE3                             ; $298AD7 |
  STA $12                                   ; $298AD9 |
  JSR code_3EDB4F                           ; $298ADB |
  LDX $8F                                   ; $298ADE |
  JSR code_3FE4CB                           ; $298AE0 |
loc_52AE3:
  LDA #$00                                  ; $298AE3 |
  STA $11                                   ; $298AE5 |
  LDA #$F6                                  ; $298AE7 |
  STA $00                                   ; $298AE9 |
  LDA #$0F                                  ; $298AEB |
  STA $01                                   ; $298AED |
  JSR code_3ED9CD                           ; $298AEF |
  LDA $11                                   ; $298AF2 |
  AND #$02                                  ; $298AF4 |
  ASL                                       ; $298AF6 |
  ASL                                       ; $298AF7 |
  ASL                                       ; $298AF8 |
  ASL                                       ; $298AF9 |
  ORA $03B7,x                               ; $298AFA |
  STA $03B7,x                               ; $298AFD |
  LDA $11                                   ; $298B00 |
  AND #$01                                  ; $298B02 |
  STA $07                                   ; $298B04 |
  LDA #$00                                  ; $298B06 |
  STA $11                                   ; $298B08 |
  LDA #$0A                                  ; $298B0A |
  STA $00                                   ; $298B0C |
  LDA #$0F                                  ; $298B0E |
  STA $01                                   ; $298B10 |
  JSR code_3ED9CD                           ; $298B12 |
  LDA $11                                   ; $298B15 |
  AND #$02                                  ; $298B17 |
  ASL                                       ; $298B19 |
  ASL                                       ; $298B1A |
  ASL                                       ; $298B1B |
  ASL                                       ; $298B1C |
  ORA $03B7,x                               ; $298B1D |
  STA $03B7,x                               ; $298B20 |
  LDA $11                                   ; $298B23 |
  AND #$01                                  ; $298B25 |
  ORA $07                                   ; $298B27 |
  BEQ locret_52B3D                          ; $298B29 |
  STA $11                                   ; $298B2B |
  LDA #$00                                  ; $298B2D |
  STA $05DF,x                               ; $298B2F |
  STA $05F6,x                               ; $298B32 |
  JSR code_3EDB6D                           ; $298B35 |
  LDX $8F                                   ; $298B38 |
  JSR code_3FE4CB                           ; $298B3A |
locret_52B3D:
  RTS                                       ; $298B3D |

  db $10, $F0, $58, $C5, $0C, $01, $00, $00 ; $298B3E |
  db $A0, $05, $A9, $00, $99, $43, $06, $88 ; $298B46 |
  db $10, $FA, $4C, $56, $E4, $93, $C5, $66 ; $298B4E |
  db $5B, $00, $20                          ; $298B56 |

  JSR code_3FEBD1                           ; $298B59 |
  LDA #$08                                  ; $298B5C |
  STA $03CE,x                               ; $298B5E |
  LDA $04CB,x                               ; $298B61 |
  STA $05C8,x                               ; $298B64 |
  AND #$E0                                  ; $298B67 |
  LSR                                       ; $298B69 |
  LSR                                       ; $298B6A |
  LSR                                       ; $298B6B |
  LSR                                       ; $298B6C |
  LSR                                       ; $298B6D |
  STA $05B1,x                               ; $298B6E |
  LDA #$00                                  ; $298B71 |
  STA $0624,x                               ; $298B73 |
  LDA $04CB,x                               ; $298B76 |
  AND #$1F                                  ; $298B79 |
  TAY                                       ; $298B7B |
  LDA $8C61,y                               ; $298B7C |
  STA $04CB,x                               ; $298B7F |
  STA $060D,x                               ; $298B82 |
  LDA $05C8,x                               ; $298B85 |
  AND #$01                                  ; $298B88 |
  BEQ loc_52B8F                             ; $298B8A |
  JMP code_298BF9                           ; $298B8C |

loc_52B8F:
code_298B8F:
  LDA $056C,x                               ; $298B8F |
  CMP #$20                                  ; $298B92 |
  BNE loc_52BD4                             ; $298B94 |
  LDA $04CB,x                               ; $298B96 |
  CMP $04CB                                 ; $298B99 |
  BCC loc_52BD4                             ; $298B9C |
  LDY $05B1,x                               ; $298B9E |
  LDA $0643,y                               ; $298BA1 |
  CMP #$30                                  ; $298BA4 |
  BCS loc_52BD4                             ; $298BA6 |
  LDA $0624,x                               ; $298BA8 |
  BNE loc_52BB7                             ; $298BAB |
  LDY #$92                                  ; $298BAD |
  JSR code_3FE522                           ; $298BAF |
  LDA #$01                                  ; $298BB2 |
  STA $0624,x                               ; $298BB4 |
loc_52BB7:
  LDA #$00                                  ; $298BB7 |
  STA $05DF,x                               ; $298BB9 |
  LDY #$02                                  ; $298BBC |
  JSR code_3FE60E                           ; $298BBE |
  SEC                                       ; $298BC1 |
  LDA $04CB,x                               ; $298BC2 |
  SBC $060D,x                               ; $298BC5 |
  LDY $05B1,x                               ; $298BC8 |
  STA $0643,y                               ; $298BCB |
  JSR code_3FEA6A                           ; $298BCE |
  JMP code_298B8F                           ; $298BD1 |

loc_52BD4:
  LDA $05DF,x                               ; $298BD4 |
  BEQ loc_52BE3                             ; $298BD7 |
  LDY #$93                                  ; $298BD9 |
  JSR code_3FE522                           ; $298BDB |
  LDA #$00                                  ; $298BDE |
  STA $0624,x                               ; $298BE0 |
loc_52BE3:
  INC $05DF,x                               ; $298BE3 |
  LDY $05B1,x                               ; $298BE6 |
  CLC                                       ; $298BE9 |
  LDA $0643,y                               ; $298BEA |
  ADC $060D,x                               ; $298BED |
  STA $04CB,x                               ; $298BF0 |
  JSR code_3FEA6A                           ; $298BF3 |
  JMP code_298B8F                           ; $298BF6 |

code_298BF9:
  LDA $056C,x                               ; $298BF9 |
  CMP #$20                                  ; $298BFC |
  BNE loc_52C3C                             ; $298BFE |
  LDA $04CB,x                               ; $298C00 |
  CMP $04CB                                 ; $298C03 |
  BCC loc_52C3C                             ; $298C06 |
  LDY $05B1,x                               ; $298C08 |
  LDA $0643,y                               ; $298C0B |
  BEQ loc_52C3C                             ; $298C0E |
  LDA $0624,x                               ; $298C10 |
  BNE loc_52C1F                             ; $298C13 |
  LDY #$92                                  ; $298C15 |
  JSR code_3FE522                           ; $298C17 |
  LDA #$01                                  ; $298C1A |
  STA $0624,x                               ; $298C1C |
loc_52C1F:
  LDA #$00                                  ; $298C1F |
  STA $05DF,x                               ; $298C21 |
  LDY #$02                                  ; $298C24 |
  JSR code_3FE60E                           ; $298C26 |
  SEC                                       ; $298C29 |
  LDA $060D,x                               ; $298C2A |
  SBC $04CB,x                               ; $298C2D |
  LDY $05B1,x                               ; $298C30 |
  STA $0643,y                               ; $298C33 |
  JSR code_3FEA6A                           ; $298C36 |
  JMP code_298BF9                           ; $298C39 |

loc_52C3C:
  LDA $05DF,x                               ; $298C3C |
  BEQ loc_52C4B                             ; $298C3F |
  LDY #$93                                  ; $298C41 |
  JSR code_3FE522                           ; $298C43 |
  LDA #$00                                  ; $298C46 |
  STA $0624,x                               ; $298C48 |
loc_52C4B:
  INC $05DF,x                               ; $298C4B |
  LDY $05B1,x                               ; $298C4E |
  SEC                                       ; $298C51 |
  LDA $060D,x                               ; $298C52 |
  SBC $0643,y                               ; $298C55 |
  STA $04CB,x                               ; $298C58 |
  JSR code_3FEA6A                           ; $298C5B |
  JMP code_298BF9                           ; $298C5E |

  db $58, $88, $48, $78, $78, $A8, $78, $A8 ; $298C61 |
  db $68, $98, $48, $78, $98, $C8, $58, $88 ; $298C69 |
  db $58, $88, $58, $88, $78, $A8, $58, $88 ; $298C71 |
  db $26, $67, $3B, $55, $00, $50           ; $298C79 |

  JSR code_3FEBD1                           ; $298C7F |
  LDA #$00                                  ; $298C82 |
  STA $03CE,x                               ; $298C84 |
code_298C87:
  LDA #$20                                  ; $298C87 |
  STA $05B1,x                               ; $298C89 |
loc_52C8C:
  JSR code_3FEA6A                           ; $298C8C |
  LDY #$00                                  ; $298C8F |
  JSR code_3FE60E                           ; $298C91 |
  LDA $056C,x                               ; $298C94 |
  CMP #$20                                  ; $298C97 |
  BNE loc_52CA0                             ; $298C99 |
  LDX #$00                                  ; $298C9B |
  JSR code_3FE4D3                           ; $298C9D |
loc_52CA0:
  LDX $8F                                   ; $298CA0 |
  DEC $05B1,x                               ; $298CA2 |
  BNE loc_52C8C                             ; $298CA5 |
  LDA #$14                                  ; $298CA7 |
  STA $05B1,x                               ; $298CA9 |
loc_52CAC:
  JSR code_3FEA6A                           ; $298CAC |
  DEC $05B1,x                               ; $298CAF |
  BNE loc_52CAC                             ; $298CB2 |
  LDA $03CE,x                               ; $298CB4 |
  EOR #$08                                  ; $298CB7 |
  STA $03CE,x                               ; $298CB9 |
  JMP code_298C87                           ; $298CBC |

  db $8B, $C3, $64, $56, $00, $20           ; $298CBF |

  JSR code_3FEBD1                           ; $298CC5 |
loc_52CC8:
code_298CC8:
  LDX $8F                                   ; $298CC8 |
  LDA #$20                                  ; $298CCA |
  STA $0583,x                               ; $298CCC |
  JSR code_3FEA6A                           ; $298CCF |
  LDY #$8B                                  ; $298CD2 |
  JSR code_3FE522                           ; $298CD4 |
  LDY #$63                                  ; $298CD7 |
  JSR code_3FE5AB                           ; $298CD9 |
  BCS loc_52CC8                             ; $298CDC |
  LDY $8F                                   ; $298CDE |
  TYA                                       ; $298CE0 |
  STA $05B1,x                               ; $298CE1 |
  LDA #$3F                                  ; $298CE4 |
  JSR code_3FE8FD                           ; $298CE6 |
  LDX $8F                                   ; $298CE9 |
loc_52CEB:
  JSR code_3FEA6A                           ; $298CEB |
  LDA $056C,x                               ; $298CEE |
  CMP #$20                                  ; $298CF1 |
  BEQ loc_52CF9                             ; $298CF3 |
  CMP #$40                                  ; $298CF5 |
  BNE loc_52CEB                             ; $298CF7 |
loc_52CF9:
  LDA #$1E                                  ; $298CF9 |
  STA $05B1,x                               ; $298CFB |
loc_52CFE:
  JSR code_3FEA6A                           ; $298CFE |
  DEC $05B1,x                               ; $298D01 |
  BNE loc_52CFE                             ; $298D04 |
  LDA #$00                                  ; $298D06 |
  STA $0583,x                               ; $298D08 |
  JSR code_3FE5B6                           ; $298D0B |
  LDA $11                                   ; $298D0E |
  LSR                                       ; $298D10 |
  LSR                                       ; $298D11 |
  LSR                                       ; $298D12 |
  TAY                                       ; $298D13 |
  LDA $8D8B,y                               ; $298D14 |
  TAY                                       ; $298D17 |
  JSR code_3FE522                           ; $298D18 |
  LDA #$0C                                  ; $298D1B |
  STA $05B1,x                               ; $298D1D |
loc_52D20:
  JSR code_3FEA6A                           ; $298D20 |
  DEC $05B1,x                               ; $298D23 |
  BNE loc_52D20                             ; $298D26 |
loc_52D28:
  LDX $8F                                   ; $298D28 |
  LDA #$20                                  ; $298D2A |
  STA $0583,x                               ; $298D2C |
  JSR code_3FEA6A                           ; $298D2F |
  LDY #$8A                                  ; $298D32 |
  JSR code_3FE522                           ; $298D34 |
  LDY #$63                                  ; $298D37 |
  JSR code_3FE5AB                           ; $298D39 |
  BCS loc_52D28                             ; $298D3C |
  LDY $8F                                   ; $298D3E |
  TYA                                       ; $298D40 |
  STA $05B1,x                               ; $298D41 |
  LDA #$3E                                  ; $298D44 |
  JSR code_3FE8FD                           ; $298D46 |
  LDX $8F                                   ; $298D49 |
loc_52D4B:
  JSR code_3FEA6A                           ; $298D4B |
  LDA $056C,x                               ; $298D4E |
  CMP #$20                                  ; $298D51 |
  BEQ loc_52D59                             ; $298D53 |
  CMP #$40                                  ; $298D55 |
  BNE loc_52D4B                             ; $298D57 |
loc_52D59:
  LDA #$1E                                  ; $298D59 |
  STA $05B1,x                               ; $298D5B |
loc_52D5E:
  JSR code_3FEA6A                           ; $298D5E |
  DEC $05B1,x                               ; $298D61 |
  BNE loc_52D5E                             ; $298D64 |
  LDA #$00                                  ; $298D66 |
  STA $0583,x                               ; $298D68 |
  JSR code_3FE5B6                           ; $298D6B |
  LDA $11                                   ; $298D6E |
  LSR                                       ; $298D70 |
  LSR                                       ; $298D71 |
  LSR                                       ; $298D72 |
  TAY                                       ; $298D73 |
  LDA $8D8D,y                               ; $298D74 |
  TAY                                       ; $298D77 |
  JSR code_3FE522                           ; $298D78 |
  LDA #$0C                                  ; $298D7B |
  STA $05B1,x                               ; $298D7D |
loc_52D80:
  JSR code_3FEA6A                           ; $298D80 |
  DEC $05B1,x                               ; $298D83 |
  BNE loc_52D80                             ; $298D86 |
  JMP code_298CC8                           ; $298D88 |

  db $8F, $91, $8D, $8C, $8C, $C3, $64, $57 ; $298D8B |
  db $00, $82                               ; $298D93 |

  JSR code_3FEBD1                           ; $298D95 |
  LDA #$01                                  ; $298D98 |
  STA $03B7,x                               ; $298D9A |
loc_52D9D:
  JSR code_3FEA6A                           ; $298D9D |
  LDY $05B1,x                               ; $298DA0 |
  LDA $0583,y                               ; $298DA3 |
  BEQ loc_52DB2                             ; $298DA6 |
  LDA $056C,x                               ; $298DA8 |
  BEQ loc_52D9D                             ; $298DAB |
  STA $056C,y                               ; $298DAD |
  BNE loc_52D9D                             ; $298DB0 |
loc_52DB2:
  JMP code_3FE456                           ; $298DB2 |

  db $33, $6D, $42, $3E, $0B, $34           ; $298DB5 |

  JSR code_3FEBD1                           ; $298DBB |
  LDA #$00                                  ; $298DBE |
  STA $03CE,x                               ; $298DC0 |
loc_52DC3:
  LDY #$33                                  ; $298DC3 |
  JSR code_3FE522                           ; $298DC5 |
  JSR code_3FE5B6                           ; $298DC8 |
  LDA $11                                   ; $298DCB |
  CMP $03CE,x                               ; $298DCD |
  BEQ loc_52DE7                             ; $298DD0 |
  STA $03CE,x                               ; $298DD2 |
  JSR code_3FE5DF                           ; $298DD5 |
  LDA #$1E                                  ; $298DD8 |
  STA $05B1,x                               ; $298DDA |
loc_52DDD:
  JSR code_3FEA1C                           ; $298DDD |
  DEC $05B1,x                               ; $298DE0 |
  BNE loc_52DDD                             ; $298DE3 |
  BEQ loc_52DC3                             ; $298DE5 |
loc_52DE7:
  LDA #$14                                  ; $298DE7 |
  STA $0583,x                               ; $298DE9 |
  JSR code_3FEA1C                           ; $298DEC |
  LDY #$A3                                  ; $298DEF |
  JSR code_3FE5AB                           ; $298DF1 |
  BCS loc_52E0F                             ; $298DF4 |
  LDY $8F                                   ; $298DF6 |
  LDA $03CE,y                               ; $298DF8 |
  STA $03CE,x                               ; $298DFB |
  LDA #$27                                  ; $298DFE |
  JSR code_3FE8BC                           ; $298E00 |
  LDX $8F                                   ; $298E03 |
  LDY #$34                                  ; $298E05 |
  JSR code_3FE522                           ; $298E07 |
  LDA #$5A                                  ; $298E0A |
  STA $05B1,x                               ; $298E0C |
loc_52E0F:
  JSR code_3FEA1C                           ; $298E0F |
  DEC $05B1,x                               ; $298E12 |
  BNE loc_52E0F                             ; $298E15 |
  LDA #$34                                  ; $298E17 |
  STA $0583,x                               ; $298E19 |
  LDY #$33                                  ; $298E1C |
  JSR code_3FE522                           ; $298E1E |
  LDA #$5A                                  ; $298E21 |
  STA $05B1,x                               ; $298E23 |
  BNE loc_52DDD                             ; $298E26 |

  db $35, $6D, $42, $3F, $0F, $62           ; $298E28 |

  JSR code_3FEBD1                           ; $298E2E |
code_298E31:
  JSR code_3FEA95                           ; $298E31 |
  LDY #$00                                  ; $298E34 |
  JSR code_3FE60E                           ; $298E36 |
  JMP code_298E31                           ; $298E39 |

  db $3C, $8D, $4E, $41, $04, $13           ; $298E3C |

  JSR code_3FEBD1                           ; $298E42 |
  LDY #$A6                                  ; $298E45 |
  JSR code_3FE5AB                           ; $298E47 |
  BCS loc_52EBF                             ; $298E4A |
  LDY $8F                                   ; $298E4C |
  TXA                                       ; $298E4E |
  STA $0624,y                               ; $298E4F |
  LDA #$03                                  ; $298E52 |
  JSR code_3FE8FD                           ; $298E54 |
  TYA                                       ; $298E57 |
  STA $05B1,x                               ; $298E58 |
  LDX $8F                                   ; $298E5B |
  LDA #$00                                  ; $298E5D |
  STA $05B1,x                               ; $298E5F |
code_298E62:
  LDA #$20                                  ; $298E62 |
  STA $05C8,x                               ; $298E64 |
loc_52E67:
  JSR code_3FE9D3                           ; $298E67 |
  LDA $03E5,x                               ; $298E6A |
  CMP #$03                                  ; $298E6D |
  BCC loc_52EC2                             ; $298E6F |
  JSR code_3FEF0C                           ; $298E71 |
  LDY #$01                                  ; $298E74 |
  JSR code_3FE61A                           ; $298E76 |
  LDY $05B1,x                               ; $298E79 |
  LDA $8F98,y                               ; $298E7C |
  STA $EC                                   ; $298E7F |
  LDA $8F94,y                               ; $298E81 |
  STA $EE                                   ; $298E84 |
  LDA #$9E                                  ; $298E86 |
  STA $08                                   ; $298E88 |
  LDA #$8F                                  ; $298E8A |
  STA $09                                   ; $298E8C |
  JSR code_3FEC11                           ; $298E8E |
  LDA $11                                   ; $298E91 |
  AND #$01                                  ; $298E93 |
  BNE loc_52EC2                             ; $298E95 |
  LDA $12                                   ; $298E97 |
  AND #$01                                  ; $298E99 |
  BNE loc_52EC2                             ; $298E9B |
  LDA #$10                                  ; $298E9D |
  STA $00                                   ; $298E9F |
  LDA #$00                                  ; $298EA1 |
  STA $01                                   ; $298EA3 |
  JSR code_3FEDA8                           ; $298EA5 |
  LDA $11                                   ; $298EA8 |
  BNE loc_52EC2                             ; $298EAA |
  DEC $05C8,x                               ; $298EAC |
  BNE loc_52E67                             ; $298EAF |
  INC $05B1,x                               ; $298EB1 |
  LDA $05B1,x                               ; $298EB4 |
  AND #$03                                  ; $298EB7 |
  STA $05B1,x                               ; $298EB9 |
  JMP code_298E62                           ; $298EBC |

loc_52EBF:
  JMP code_3FE456                           ; $298EBF |

loc_52EC2:
  LDY $0624,x                               ; $298EC2 |
  LDA #$00                                  ; $298EC5 |
  STA $03A0,y                               ; $298EC7 |
  LDA #$02                                  ; $298ECA |
  STA $03E5,x                               ; $298ECC |
  LDY #$3D                                  ; $298ECF |
  JSR code_3FE522                           ; $298ED1 |
loc_52ED4:
  JSR code_3FE9D3                           ; $298ED4 |
  LDA #$2A                                  ; $298ED7 |
  STA $00                                   ; $298ED9 |
  JSR code_3FECA4                           ; $298EDB |
  LDA #$00                                  ; $298EDE |
  STA $ED                                   ; $298EE0 |
  STA $EB                                   ; $298EE2 |
  JSR code_3FE4D1                           ; $298EE4 |
  LDA #$00                                  ; $298EE7 |
  STA $00                                   ; $298EE9 |
  STA $01                                   ; $298EEB |
  STA $11                                   ; $298EED |
  JSR code_3ED9CD                           ; $298EEF |
  LDA $11                                   ; $298EF2 |
  CMP #$08                                  ; $298EF4 |
  BEQ loc_52EFA                             ; $298EF6 |
  BNE loc_52ED4                             ; $298EF8 |
loc_52EFA:
  JSR code_3FE9D3                           ; $298EFA |
  LDY #$72                                  ; $298EFD |
  JSR code_3FE5AB                           ; $298EFF |
  BCS loc_52EFA                             ; $298F02 |
  LDY $8F                                   ; $298F04 |
  LDA #$03                                  ; $298F06 |
  JSR code_3FE8FD                           ; $298F08 |
  LDX $8F                                   ; $298F0B |
  LDA #$44                                  ; $298F0D |
  STA $05B1,x                               ; $298F0F |
  LDY #$3E                                  ; $298F12 |
  JSR code_3FE522                           ; $298F14 |
loc_52F17:
  JSR code_3FE9D3                           ; $298F17 |
  DEC $05B1,x                               ; $298F1A |
  BNE loc_52F17                             ; $298F1D |
  LDY #$A6                                  ; $298F1F |
  JSR code_3FE5AB                           ; $298F21 |
  BCS loc_52F31                             ; $298F24 |
  LDY $8F                                   ; $298F26 |
  LDA #$03                                  ; $298F28 |
  JSR code_3FE8FD                           ; $298F2A |
  TYA                                       ; $298F2D |
  STA $05B1,x                               ; $298F2E |
loc_52F31:
  LDX $8F                                   ; $298F31 |
  LDY #$3F                                  ; $298F33 |
  JSR code_3FE522                           ; $298F35 |
  LDA #$5A                                  ; $298F38 |
  STA $05C8,x                               ; $298F3A |
loc_52F3D:
  LDA #$28                                  ; $298F3D |
  STA $05B1,x                               ; $298F3F |
  JSR code_3FEF0C                           ; $298F42 |
  LDA $03CE,x                               ; $298F45 |
  LSR                                       ; $298F48 |
  LSR                                       ; $298F49 |
  LSR                                       ; $298F4A |
  STA $060D,x                               ; $298F4B |
loc_52F4E:
  JSR code_3FE9D3                           ; $298F4E |
  LDY $060D,x                               ; $298F51 |
  LDA $8F9C,y                               ; $298F54 |
  STA $00                                   ; $298F57 |
  LDA #$00                                  ; $298F59 |
  STA $01                                   ; $298F5B |
  STA $11                                   ; $298F5D |
  JSR code_3ED9CD                           ; $298F5F |
  LDA $11                                   ; $298F62 |
  AND #$01                                  ; $298F64 |
  BNE loc_52F73                             ; $298F66 |
  LDA #$00                                  ; $298F68 |
  STA $EE                                   ; $298F6A |
  STA $EC                                   ; $298F6C |
  LDY #$04                                  ; $298F6E |
  JSR code_3FE60E                           ; $298F70 |
loc_52F73:
  DEC $05B1,x                               ; $298F73 |
  BEQ loc_52F3D                             ; $298F76 |
  DEC $05C8,x                               ; $298F78 |
  BNE loc_52F4E                             ; $298F7B |
  LDY #$71                                  ; $298F7D |
  JSR code_3FE5AB                           ; $298F7F |
  BCS loc_52F4E                             ; $298F82 |
  LDY $8F                                   ; $298F84 |
  LDA #$3D                                  ; $298F86 |
  JSR code_3FE8FD                           ; $298F88 |
  LDX $8F                                   ; $298F8B |
  LDA #$3C                                  ; $298F8D |
  STA $05C8,x                               ; $298F8F |
  BNE loc_52F4E                             ; $298F92 |

  db $FF, $00, $00, $FF, $80, $80, $80, $80 ; $298F94 |
  db $0A, $F6, $0A, $05, $0A, $FB, $F6, $05 ; $298F9C |
  db $F6, $FB, $F8, $05, $08, $05, $F8, $FB ; $298FA4 |
  db $08, $FB, $40, $8D, $4E, $01, $01, $00 ; $298FAC |

  JSR code_3FEBD1                           ; $298FB4 |
loc_52FB7:
  JSR code_3FEA6A                           ; $298FB7 |
  LDY $05B1,x                               ; $298FBA |
  LDA $03CE,y                               ; $298FBD |
  STA $03CE,x                               ; $298FC0 |
  JSR code_3FE5DF                           ; $298FC3 |
  LDY $05B1,x                               ; $298FC6 |
  LDA #$03                                  ; $298FC9 |
  JSR code_3FE8FD                           ; $298FCB |
  LDY $05B1,x                               ; $298FCE |
  LDA $03E5,y                               ; $298FD1 |
  BPL loc_52FB7                             ; $298FD4 |
  JMP code_3FE456                           ; $298FD6 |

  db $C2, $00, $00, $01, $01, $42           ; $298FD9 |

  JSR code_3FEBD1                           ; $298FDF |
  LDA #$08                                  ; $298FE2 |
  STA $03CE,x                               ; $298FE4 |
  LDA #$00                                  ; $298FE7 |
  STA $05C8,x                               ; $298FE9 |
  STA $05B1,x                               ; $298FEC |
  LDA #$14                                  ; $298FEF |
  STA $00                                   ; $298FF1 |
  LDA #$00                                  ; $298FF3 |
  STA $01                                   ; $298FF5 |
  JSR code_3FEDA8                           ; $298FF7 |
  LDA $11                                   ; $298FFA |
  BNE loc_53013                             ; $298FFC |
  INC $05B1,x                               ; $298FFE |
  LDA #$28                                  ; $299001 |
  STA $00                                   ; $299003 |
  LDA #$00                                  ; $299005 |
  STA $01                                   ; $299007 |
  JSR code_3FEDA8                           ; $299009 |
  LDA $11                                   ; $29900C |
  BNE loc_53013                             ; $29900E |
  INC $05B1,x                               ; $299010 |
loc_53013:
  JSR code_3FE5B6                           ; $299013 |
  LDA $11                                   ; $299016 |
  LSR                                       ; $299018 |
  LSR                                       ; $299019 |
  LSR                                       ; $29901A |
  STA $05C8,x                               ; $29901B |
  LDA #$BC                                  ; $29901E |
  STA $060D,x                               ; $299020 |
  LDA #$FC                                  ; $299023 |
  STA $0624,x                               ; $299025 |
code_299028:
  JSR code_3FEA6A                           ; $299028 |
  LDY $05B1,x                               ; $29902B |
  LDA $904E,y                               ; $29902E |
  STA $00                                   ; $299031 |
  LDA $9051,y                               ; $299033 |
  STA $01                                   ; $299036 |
  LDY $05C8,x                               ; $299038 |
  LDA ($00),y                               ; $29903B |
  STA $ED                                   ; $29903D |
  LDA #$00                                  ; $29903F |
  STA $EB                                   ; $299041 |
  LDY #$03                                  ; $299043 |
  JSR code_3FEE9A                           ; $299045 |
  JSR code_3FE4D1                           ; $299048 |
  JMP code_299028                           ; $29904B |

  db $54, $56, $58, $90, $90, $90, $00, $00 ; $29904E |
  db $01, $FF, $02, $FE, $42, $8E, $4D, $42 ; $299056 |
  db $02, $13                               ; $29905E |

  JSR code_3FEBD1                           ; $299060 |
  LDA $51                                   ; $299063 |
  CMP #$08                                  ; $299065 |
  BNE loc_5306E                             ; $299067 |
  LDA #$66                                  ; $299069 |
  JSR code_3EC9EF                           ; $29906B |
loc_5306E:
  LDA #$01                                  ; $29906E |
  STA $05B1,x                               ; $299070 |
loc_53073:
code_299073:
  JSR code_299EDA                           ; $299073 |
  LDA $03E5,x                               ; $299076 |
  BEQ loc_530F2                             ; $299079 |
  DEC $05B1,x                               ; $29907B |
  BNE loc_53073                             ; $29907E |
  LDY #$42                                  ; $299080 |
  JSR code_3FE522                           ; $299082 |
  LDA #$14                                  ; $299085 |
  STA $05B1,x                               ; $299087 |
loc_5308A:
  JSR code_299EDA                           ; $29908A |
  LDA $03E5,x                               ; $29908D |
  BEQ loc_530F2                             ; $299090 |
  DEC $05B1,x                               ; $299092 |
  BNE loc_5308A                             ; $299095 |
  JSR code_3FEF0C                           ; $299097 |
  LDY #$41                                  ; $29909A |
  JSR code_3FE522                           ; $29909C |
  LDA #$0E                                  ; $29909F |
  STA $05B1,x                               ; $2990A1 |
loc_530A4:
  JSR code_299EDA                           ; $2990A4 |
  LDA $03E5,x                               ; $2990A7 |
  BEQ loc_530F2                             ; $2990AA |
  DEC $05B1,x                               ; $2990AC |
  BNE loc_530A4                             ; $2990AF |
  LDY #$42                                  ; $2990B1 |
  JSR code_3FE522                           ; $2990B3 |
  LDA #$2B                                  ; $2990B6 |
  STA $05DF,x                               ; $2990B8 |
  LDA #$FD                                  ; $2990BB |
  STA $05F6,x                               ; $2990BD |
loc_530C0:
  JSR code_299EDA                           ; $2990C0 |
  LDA $03E5,x                               ; $2990C3 |
  BEQ loc_530F2                             ; $2990C6 |
  LDY #$06                                  ; $2990C8 |
  JSR code_3FE61A                           ; $2990CA |
  LDA #$13                                  ; $2990CD |
  STA $08                                   ; $2990CF |
  LDA #$91                                  ; $2990D1 |
  STA $09                                   ; $2990D3 |
  JSR code_3FEC0A                           ; $2990D5 |
  LDA $11                                   ; $2990D8 |
  AND #$01                                  ; $2990DA |
  BEQ loc_530C0                             ; $2990DC |
  LDA $05DF,x                               ; $2990DE |
  AND #$01                                  ; $2990E1 |
  BNE loc_530C0                             ; $2990E3 |
  LDY #$43                                  ; $2990E5 |
  JSR code_3FE522                           ; $2990E7 |
  LDA #$08                                  ; $2990EA |
  STA $05B1,x                               ; $2990EC |
  JMP code_299073                           ; $2990EF |

loc_530F2:
  JSR code_3FEA6A                           ; $2990F2 |
  LDY #$A8                                  ; $2990F5 |
  JSR code_3FE5AB                           ; $2990F7 |
  BCS loc_530F2                             ; $2990FA |
  LDY $8F                                   ; $2990FC |
  LDA #$38                                  ; $2990FE |
  JSR code_3FE8FD                           ; $299100 |
  LDX $8F                                   ; $299103 |
  LDY #$17                                  ; $299105 |
  JSR code_3ECB28                           ; $299107 |

  db $41                                    ; $29910A |

  LDA #$43                                  ; $29910B |
  STA $05DF,x                               ; $29910D |
  JMP code_3FE477                           ; $299110 |

  db $0A, $10, $0A, $F0, $F6, $10, $F6, $F0 ; $299113 |
  db $F6, $18, $0A, $18, $F6, $E8, $0A, $E8 ; $29911B |
  db $44, $00, $4D, $43, $02, $13           ; $299123 |

  JSR code_3FEBD1                           ; $299129 |
  LDA #$4A                                  ; $29912C |
  STA $DC                                   ; $29912E |
  LDA #$FB                                  ; $299130 |
  STA $05F6,x                               ; $299132 |
  LDA #$80                                  ; $299135 |
  STA $05DF,x                               ; $299137 |
  LDA #$00                                  ; $29913A |
  STA $05B1,x                               ; $29913C |
  SEC                                       ; $29913F |
  LDA $0486                                 ; $299140 |
  SBC $0486,x                               ; $299143 |
  BPL loc_5314C                             ; $299146 |
  EOR #$FF                                  ; $299148 |
  ADC #$01                                  ; $29914A |
loc_5314C:
  STA $05C8,x                               ; $29914C |
  ASL $05C8,x                               ; $29914F |
  ROL $05B1,x                               ; $299152 |
  ASL $05C8,x                               ; $299155 |
  ROL $05B1,x                               ; $299158 |
  JSR code_3FEF0C                           ; $29915B |
  LDA $03CE,x                               ; $29915E |
  CMP #$04                                  ; $299161 |
  BEQ loc_5317D                             ; $299163 |
  LDA $05B1,x                               ; $299165 |
  EOR #$FF                                  ; $299168 |
  STA $05B1,x                               ; $29916A |
  LDA $05C8,x                               ; $29916D |
  EOR #$FF                                  ; $299170 |
  STA $05C8,x                               ; $299172 |
  INC $05C8,x                               ; $299175 |
  BNE loc_5317D                             ; $299178 |
  INC $05B1,x                               ; $29917A |
loc_5317D:
  JSR code_3FE9D3                           ; $29917D |
  LDA $05B1,x                               ; $299180 |
  STA $ED                                   ; $299183 |
  LDA $05C8,x                               ; $299185 |
  STA $EB                                   ; $299188 |
  LDA #$C2                                  ; $29918A |
  STA $08                                   ; $29918C |
  LDA #$91                                  ; $29918E |
  STA $09                                   ; $299190 |
  JSR code_3FEC0A                           ; $299192 |
  LDA $04B4,x                               ; $299195 |
  BPL loc_531A8                             ; $299198 |
  LDA #$00                                  ; $29919A |
  STA $05DF,x                               ; $29919C |
  STA $05F6,x                               ; $29919F |
  STA $04CB,x                               ; $2991A2 |
  STA $04B4,x                               ; $2991A5 |
loc_531A8:
  LDA $11                                   ; $2991A8 |
  AND #$01                                  ; $2991AA |
  BNE loc_531B4                             ; $2991AC |
  LDA $12                                   ; $2991AE |
  AND #$01                                  ; $2991B0 |
  BEQ loc_5317D                             ; $2991B2 |
loc_531B4:
  LDY #$25                                  ; $2991B4 |
  JSR code_3ECB28                           ; $2991B6 |

  db $41                                    ; $2991B9 |

  LDA #$43                                  ; $2991BA |
  STA $05DF,x                               ; $2991BC |
  JMP code_3FE477                           ; $2991BF |

  db $0A, $05, $0A, $FB, $F6, $05, $F6, $FB ; $2991C2 |
  db $F6, $05, $0A, $05, $F6, $FB, $0A, $FB ; $2991CA |
  db $7B, $00, $15, $00, $00, $00           ; $2991D2 |

  JSR code_3FEBD1                           ; $2991D8 |
  LDA $03FC,x                               ; $2991DB |
  BPL loc_531F1                             ; $2991DE |
  LDA #$3C                                  ; $2991E0 |
  STA $DC                                   ; $2991E2 |
  LDA #$1C                                  ; $2991E4 |
  STA $05B1,x                               ; $2991E6 |
loc_531E9:
  JSR code_3FEA6A                           ; $2991E9 |
  DEC $05B1,x                               ; $2991EC |
  BNE loc_531E9                             ; $2991EF |
loc_531F1:
  JMP code_3FE456                           ; $2991F1 |

  db $4C, $94, $47, $44, $01, $13           ; $2991F4 |

  JSR code_3FEBD1                           ; $2991FA |
  LDA #$00                                  ; $2991FD |
  STA $05B1,x                               ; $2991FF |
  JSR code_3FEF0C                           ; $299202 |
  LDY #$AC                                  ; $299205 |
  JSR code_3FE5AB                           ; $299207 |
  BCS loc_531F1                             ; $29920A |
  LDY $8F                                   ; $29920C |
  TYA                                       ; $29920E |
  STA $05B1,x                               ; $29920F |
  LDA #$03                                  ; $299212 |
  JSR code_3FE8FD                           ; $299214 |
  LDX $8F                                   ; $299217 |
loc_53219:
  JSR code_3FE9D3                           ; $299219 |
  LDY #$04                                  ; $29921C |
  JSR code_3FE60E                           ; $29921E |
  LDA #$30                                  ; $299221 |
  STA $00                                   ; $299223 |
  LDA #$00                                  ; $299225 |
  STA $01                                   ; $299227 |
  JSR code_3FEDA8                           ; $299229 |
  LDA $11                                   ; $29922C |
  BEQ loc_53219                             ; $29922E |
  LDA $05B1,x                               ; $299230 |
  CMP #$04                                  ; $299233 |
  BEQ loc_53260                             ; $299235 |
  LDY #$4D                                  ; $299237 |
  JSR code_3FE522                           ; $299239 |
  LDA #$0C                                  ; $29923C |
  STA $05C8,x                               ; $29923E |
loc_53241:
  JSR code_3FE9D3                           ; $299241 |
  DEC $05C8,x                               ; $299244 |
  BNE loc_53241                             ; $299247 |
  LDY #$AD                                  ; $299249 |
  JSR code_3FE5AB                           ; $29924B |
  BCS loc_53272                             ; $29924E |
  LDY $8F                                   ; $299250 |
  TYA                                       ; $299252 |
  STA $05B1,x                               ; $299253 |
  LDA #$39                                  ; $299256 |
  JSR code_3FE8BC                           ; $299258 |
  LDX $8F                                   ; $29925B |
  INC $05B1,x                               ; $29925D |
loc_53260:
  LDA #$12                                  ; $299260 |
  STA $05C8,x                               ; $299262 |
loc_53265:
  JSR code_3FE9D3                           ; $299265 |
  LDY #$04                                  ; $299268 |
  JSR code_3FE60E                           ; $29926A |
  DEC $05C8,x                               ; $29926D |
  BNE loc_53265                             ; $299270 |
loc_53272:
  LDX $8F                                   ; $299272 |
  LDY #$4C                                  ; $299274 |
  JSR code_3FE522                           ; $299276 |
  LDA #$1E                                  ; $299279 |
  STA $05C8,x                               ; $29927B |
loc_5327E:
  JSR code_3FE9D3                           ; $29927E |
  LDY #$04                                  ; $299281 |
  JSR code_3FE60E                           ; $299283 |
  DEC $05C8,x                               ; $299286 |
  BNE loc_5327E                             ; $299289 |
  BEQ loc_53219                             ; $29928B |
  JMP code_3FE456                           ; $29928D |

  db $4B, $94, $47, $01, $00, $00           ; $299290 |

  JSR code_3FEBD1                           ; $299296 |
  LDY $05B1,x                               ; $299299 |
  LDA $03B7,y                               ; $29929C |
  STA $03B7,x                               ; $29929F |
loc_532A2:
  JSR code_3FEA6A                           ; $2992A2 |
  LDY $05B1,x                               ; $2992A5 |
  LDA #$03                                  ; $2992A8 |
  JSR code_3FE8FD                           ; $2992AA |
  LDA $03E5,y                               ; $2992AD |
  BPL loc_532A2                             ; $2992B0 |
  JMP code_3FE456                           ; $2992B2 |

  db $4E, $94, $47, $45, $01, $13           ; $2992B5 |

  JSR code_3FEBD1                           ; $2992BB |
  LDA #$00                                  ; $2992BE |
  STA $00                                   ; $2992C0 |
  STA $01                                   ; $2992C2 |
  STA $11                                   ; $2992C4 |
  JSR code_3ED9CD                           ; $2992C6 |
  LDA $11                                   ; $2992C9 |
  BEQ loc_532D0                             ; $2992CB |
  JMP code_29939E                           ; $2992CD |

loc_532D0:
code_2992D0:
  LDA #$01                                  ; $2992D0 |
  STA $0624,x                               ; $2992D2 |
  LDA #$2C                                  ; $2992D5 |
  STA $060D,x                               ; $2992D7 |
loc_532DA:
  JSR code_299EDA                           ; $2992DA |
  JSR code_299390                           ; $2992DD |
  LDA $03E5,x                               ; $2992E0 |
  BNE loc_532E8                             ; $2992E3 |
  JMP code_29936C                           ; $2992E5 |

loc_532E8:
  LDA #$F6                                  ; $2992E8 |
  STA $08                                   ; $2992EA |
  LDA #$93                                  ; $2992EC |
  STA $09                                   ; $2992EE |
  LDA #$00                                  ; $2992F0 |
  STA $ED                                   ; $2992F2 |
  STA $EB                                   ; $2992F4 |
  JSR code_3FEC0A                           ; $2992F6 |
  LDA $11                                   ; $2992F9 |
  CMP #$08                                  ; $2992FB |
  BEQ loc_5337E                             ; $2992FD |
  AND #$01                                  ; $2992FF |
  BEQ loc_532DA                             ; $299301 |
  LDY #$4F                                  ; $299303 |
  JSR code_3FE522                           ; $299305 |
loc_53308:
  LDA #$CE                                  ; $299308 |
  STA $08                                   ; $29930A |
  LDA #$93                                  ; $29930C |
  STA $09                                   ; $29930E |
  JSR code_3ECC54                           ; $299310 |
  LDA $93D6,y                               ; $299313 |
  STA $05F6,x                               ; $299316 |
  LDA $93DE,y                               ; $299319 |
  STA $05DF,x                               ; $29931C |
  TYA                                       ; $29931F |
  STA $05C8,x                               ; $299320 |
loc_53323:
  JSR code_299EDA                           ; $299323 |
  JSR code_299390                           ; $299326 |
  LDA $03E5,x                               ; $299329 |
  BEQ loc_5336C                             ; $29932C |
  LDY $05C8,x                               ; $29932E |
  LDA $93EE,y                               ; $299331 |
  STA $EB                                   ; $299334 |
  LDA $93E6,y                               ; $299336 |
  STA $ED                                   ; $299339 |
  LDA #$F6                                  ; $29933B |
  STA $08                                   ; $29933D |
  LDA #$93                                  ; $29933F |
  STA $09                                   ; $299341 |
  JSR code_3FEC0A                           ; $299343 |
  LDA $11                                   ; $299346 |
  CMP #$08                                  ; $299348 |
  BEQ loc_5337E                             ; $29934A |
  AND #$01                                  ; $29934C |
  BEQ loc_53357                             ; $29934E |
  LDA $05DF,x                               ; $299350 |
  AND #$01                                  ; $299353 |
  BEQ loc_53308                             ; $299355 |
loc_53357:
  JSR code_299EDA                           ; $299357 |
  JSR code_299390                           ; $29935A |
  LDA $03E5,x                               ; $29935D |
  BEQ loc_5336C                             ; $299360 |
  DEC $060D,x                               ; $299362 |
  BNE loc_53323                             ; $299365 |
  DEC $0624,x                               ; $299367 |
  BNE loc_53323                             ; $29936A |
loc_5336C:
code_29936C:
  LDA $05B1,x                               ; $29936C |
  TAX                                       ; $29936F |
  DEC $05B1,x                               ; $299370 |
code_299373:
  LDX $8F                                   ; $299373 |
  LDY #$17                                  ; $299375 |
  JSR code_3ECB28                           ; $299377 |

  db $41                                    ; $29937A |

  JMP code_3FE477                           ; $29937B |

loc_5337E:
  LDA $05B1,x                               ; $29937E |
  TAX                                       ; $299381 |
  DEC $05B1,x                               ; $299382 |
  LDX $8F                                   ; $299385 |
  LDY #$72                                  ; $299387 |
  JSR code_3ECB28                           ; $299389 |

  db $41                                    ; $29938C |

  JMP code_3FE477                           ; $29938D |

code_299390:
  LDY $05B1,x                               ; $299390 |
  LDA $03E5,y                               ; $299393 |
  BMI loc_53399                             ; $299396 |
  RTS                                       ; $299398 |

loc_53399:
  PLA                                       ; $299399 |
  PLA                                       ; $29939A |
  JMP code_299373                           ; $29939B |

code_29939E:
  LDA #$00                                  ; $29939E |
  STA $03CE,x                               ; $2993A0 |
  LDA #$00                                  ; $2993A3 |
  STA $060D,x                               ; $2993A5 |
  STA $0624,x                               ; $2993A8 |
loc_533AB:
  JSR code_299EDA                           ; $2993AB |
  LDA #$00                                  ; $2993AE |
  STA $ED                                   ; $2993B0 |
  STA $EB                                   ; $2993B2 |
  LDY #$04                                  ; $2993B4 |
  JSR code_3FEEC9                           ; $2993B6 |
  JSR code_3FE4D1                           ; $2993B9 |
  LDA #$00                                  ; $2993BC |
  STA $00                                   ; $2993BE |
  STA $01                                   ; $2993C0 |
  STA $11                                   ; $2993C2 |
  JSR code_3ED9CD                           ; $2993C4 |
  LDA $11                                   ; $2993C7 |
  BNE loc_533AB                             ; $2993C9 |
  JMP code_2992D0                           ; $2993CB |

  db $1F, $20, $20, $20, $20, $20, $20, $20 ; $2993CE |
  db $FD, $FE, $FD, $FE, $FD, $FE, $FD, $FE ; $2993D6 |
  db $B1, $5D, $B1, $5D, $B1, $5D, $B1, $5D ; $2993DE |
  db $01, $01, $00, $00, $FE, $FE, $FF, $FF ; $2993E6 |
  db $27, $27, $D1, $D1, $D9, $D9, $2F, $2F ; $2993EE |
  db $08, $02, $08, $FE, $F8, $02, $F8, $FE ; $2993F6 |
  db $F8, $04, $08, $04, $F8, $FC, $08, $FC ; $2993FE |
  db $50, $DE, $49, $47, $02, $13           ; $299406 |

  JSR code_3FEBD1                           ; $29940C |
  LDA #$0C                                  ; $29940F |
  STA $03CE,x                               ; $299411 |
  JMP code_29942A                           ; $299414 |

  db $50, $DE, $49, $47, $02, $13           ; $299417 |

  JSR code_3FEBD1                           ; $29941D |
  LDA #$04                                  ; $299420 |
  STA $03CE,x                               ; $299422 |
  LDA #$40                                  ; $299425 |
  STA $03B7,x                               ; $299427 |
code_29942A:
  LDA $51                                   ; $29942A |
  CMP #$03                                  ; $29942C |
  BNE loc_53438                             ; $29942E |
  LDA #$92                                  ; $299430 |
  JSR code_3EC9EF                           ; $299432 |
  JMP code_299441                           ; $299435 |

loc_53438:
  CMP #$0B                                  ; $299438 |
  BNE loc_53441                             ; $29943A |
  LDA #$2E                                  ; $29943C |
  JSR code_3EC9EF                           ; $29943E |
loc_53441:
code_299441:
  JSR code_3FE9D3                           ; $299441 |
  LDA #$CA                                  ; $299444 |
  STA $08                                   ; $299446 |
  LDA #$94                                  ; $299448 |
  STA $09                                   ; $29944A |
  JSR code_3ECC54                           ; $29944C |
  LDA $94CC,y                               ; $29944F |
  STA $05B1,x                               ; $299452 |
loc_53455:
  JSR code_3FE9D3                           ; $299455 |
  LDY #$00                                  ; $299458 |
  JSR code_3FF8AE                           ; $29945A |
  LDA $11                                   ; $29945D |
  AND #$07                                  ; $29945F |
  BEQ loc_53441                             ; $299461 |
  LDY $11                                   ; $299463 |
  LDA $94FE,y                               ; $299465 |
  STA $05C8,x                               ; $299468 |
  JSR code_3FE5B6                           ; $29946B |
  LDA $11                                   ; $29946E |
  CMP $03CE,x                               ; $299470 |
  BNE loc_53441                             ; $299473 |
  LDY $05C8,x                               ; $299475 |
  LDA $94CE,y                               ; $299478 |
  TAY                                       ; $29947B |
  JSR code_3FE522                           ; $29947C |
  DEC $05B1,x                               ; $29947F |
  BNE loc_53455                             ; $299482 |
  JSR code_3FE9D3                           ; $299484 |
  LDY $05C8,x                               ; $299487 |
  LDA $94DE,y                               ; $29948A |
  TAY                                       ; $29948D |
  JSR code_3FE522                           ; $29948E |
  LDA #$0C                                  ; $299491 |
  STA $05B1,x                               ; $299493 |
loc_53496:
  JSR code_3FE9D3                           ; $299496 |
  DEC $05B1,x                               ; $299499 |
  BNE loc_53496                             ; $29949C |
  LDY #$14                                  ; $29949E |
  JSR code_3FE5AB                           ; $2994A0 |
  BCS loc_534BB                             ; $2994A3 |
  LDA #$06                                  ; $2994A5 |
  STA $05C8,x                               ; $2994A7 |
  LDY $8F                                   ; $2994AA |
  LDA $05C8,y                               ; $2994AC |
  STA $03CE,x                               ; $2994AF |
  TAY                                       ; $2994B2 |
  LDA $94EE,y                               ; $2994B3 |
  LDY $8F                                   ; $2994B6 |
  JSR code_3FE8BC                           ; $2994B8 |
loc_534BB:
  LDX $8F                                   ; $2994BB |
  LDY $05C8,x                               ; $2994BD |
  LDA $94CE,y                               ; $2994C0 |
  TAY                                       ; $2994C3 |
  JSR code_3FE522                           ; $2994C4 |
  JMP code_299441                           ; $2994C7 |

  db $7F, $80, $3C, $5A, $54, $54, $54, $50 ; $2994CA |
  db $50, $50, $52, $52, $52, $52, $52, $50 ; $2994D2 |
  db $50, $50, $54, $54, $55, $55, $55, $51 ; $2994DA |
  db $51, $51, $53, $53, $53, $53, $53, $51 ; $2994E2 |
  db $51, $51, $55, $55, $03, $32, $32, $31 ; $2994EA |
  db $31, $31, $33, $33, $03, $33, $33, $31 ; $2994F2 |
  db $31, $31, $32, $32, $00, $02, $02, $04 ; $2994FA |
  db $04, $04, $06, $06, $08, $0A, $0A, $0C ; $299502 |
  db $0C, $0C, $0E, $0E, $45, $93, $48, $46 ; $29950A |
  db $00, $00                               ; $299512 |

  JSR code_3FEBD1                           ; $299514 |
  LDA #$01                                  ; $299517 |
  STA $03B7,x                               ; $299519 |
loc_5351C:
  JSR code_3FEA6A                           ; $29951C |
  LDA #$3C                                  ; $29951F |
  STA $00                                   ; $299521 |
  LDA #$00                                  ; $299523 |
  STA $01                                   ; $299525 |
  JSR code_3FEDA8                           ; $299527 |
  LDA $11                                   ; $29952A |
  BEQ loc_5351C                             ; $29952C |
  LDA #$00                                  ; $29952E |
  STA $03B7,x                               ; $299530 |
  LDA #$14                                  ; $299533 |
  STA $0583,x                               ; $299535 |
  LDA #$08                                  ; $299538 |
  STA $03CE,x                               ; $29953A |
loc_5353D:
  JSR code_3FE9D3                           ; $29953D |
  LDY #$07                                  ; $299540 |
  JSR code_3FE60E                           ; $299542 |
  LDA #$00                                  ; $299545 |
  STA $00                                   ; $299547 |
  STA $01                                   ; $299549 |
  STA $11                                   ; $29954B |
  JSR code_3ED9CD                           ; $29954D |
  LDA $11                                   ; $299550 |
  CMP #$08                                  ; $299552 |
  BEQ loc_5355D                             ; $299554 |
  AND #$01                                  ; $299556 |
  BEQ loc_5353D                             ; $299558 |
  JMP code_299614                           ; $29955A |

loc_5355D:
  LDY #$72                                  ; $29955D |
  JSR code_3FE5AB                           ; $29955F |
  BCS loc_5356B                             ; $299562 |
  LDY $8F                                   ; $299564 |
  LDA #$03                                  ; $299566 |
  JSR code_3FE8FD                           ; $299568 |
loc_5356B:
  LDX $8F                                   ; $29956B |
  LDA #$10                                  ; $29956D |
  STA $05B1,x                               ; $29956F |
loc_53572:
  JSR code_3FE9D3                           ; $299572 |
  LDY #$04                                  ; $299575 |
  JSR code_3FE60E                           ; $299577 |
  DEC $05B1,x                               ; $29957A |
  BNE loc_53572                             ; $29957D |
  LDY #$46                                  ; $29957F |
  JSR code_3FE522                           ; $299581 |
  LDA #$00                                  ; $299584 |
  STA $03CE,x                               ; $299586 |
  LDA #$10                                  ; $299589 |
  STA $05B1,x                               ; $29958B |
loc_5358E:
  JSR code_3FE9D3                           ; $29958E |
  LDY #$00                                  ; $299591 |
  JSR code_3FE60E                           ; $299593 |
  DEC $05B1,x                               ; $299596 |
  BNE loc_5358E                             ; $299599 |
  LDA #$10                                  ; $29959B |
  STA $05B1,x                               ; $29959D |
  LDA #$08                                  ; $2995A0 |
  STA $03CE,x                               ; $2995A2 |
loc_535A5:
  JSR code_3FE9D3                           ; $2995A5 |
  LDY #$04                                  ; $2995A8 |
  JSR code_3FE60E                           ; $2995AA |
  DEC $05B1,x                               ; $2995AD |
  BNE loc_535A5                             ; $2995B0 |
  LDY #$47                                  ; $2995B2 |
  JSR code_3FE522                           ; $2995B4 |
  LDA #$1E                                  ; $2995B7 |
  STA $05B1,x                               ; $2995B9 |
loc_535BC:
  JSR code_3FE9D3                           ; $2995BC |
  DEC $05B1,x                               ; $2995BF |
  BNE loc_535BC                             ; $2995C2 |
  LDY #$48                                  ; $2995C4 |
  JSR code_3FE522                           ; $2995C6 |
  LDA #$20                                  ; $2995C9 |
  STA $05B1,x                               ; $2995CB |
loc_535CE:
  JSR code_3FE9D3                           ; $2995CE |
  DEC $05B1,x                               ; $2995D1 |
  BNE loc_535CE                             ; $2995D4 |
  LDY #$4A                                  ; $2995D6 |
  JSR code_3FE522                           ; $2995D8 |
  LDA #$20                                  ; $2995DB |
  STA $05B1,x                               ; $2995DD |
loc_535E0:
  JSR code_3FE9D3                           ; $2995E0 |
  DEC $05B1,x                               ; $2995E3 |
  BNE loc_535E0                             ; $2995E6 |
  LDA #$02                                  ; $2995E8 |
  STA $05B1,x                               ; $2995EA |
loc_535ED:
  LDY #$AA                                  ; $2995ED |
  JSR code_3FE5AB                           ; $2995EF |
  BCS loc_5360D                             ; $2995F2 |
  LDY $8F                                   ; $2995F4 |
  LDA $05B1,y                               ; $2995F6 |
  TAY                                       ; $2995F9 |
  LDA $9624,y                               ; $2995FA |
  STA $03CE,x                               ; $2995FD |
  LDA $9627,y                               ; $299600 |
  STA $03B7,x                               ; $299603 |
  LDY $8F                                   ; $299606 |
  LDA #$03                                  ; $299608 |
  JSR code_3FE8FD                           ; $29960A |
loc_5360D:
  LDX $8F                                   ; $29960D |
  DEC $05B1,x                               ; $29960F |
  BPL loc_535ED                             ; $299612 |
code_299614:
  JSR code_3FE468                           ; $299614 |
  LDA #$35                                  ; $299617 |
  STA $DC                                   ; $299619 |
  LDY #$17                                  ; $29961B |
  JSR code_3ECB28                           ; $29961D |

  db $41                                    ; $299620 |

  JMP code_3FE477                           ; $299621 |

  db $02, $00, $0E, $41, $C1, $01, $49, $00 ; $299624 |
  db $48, $01, $00, $43                     ; $29962C |

  JSR code_3FEBD1                           ; $299630 |
code_299633:
  JSR code_3FEA6A                           ; $299633 |
  LDY #$00                                  ; $299636 |
  JSR code_3FE60E                           ; $299638 |
  JMP code_299633                           ; $29963B |

  db $56, $D8, $53, $63, $00, $13           ; $29963E |

  JSR code_3FEBD1                           ; $299644 |
  JSR code_3FEF0C                           ; $299647 |
  LDA #$3C                                  ; $29964A |
  STA $05B1,x                               ; $29964C |
loc_5364F:
code_29964F:
  JSR code_3FE9D3                           ; $29964F |
  LDY #$06                                  ; $299652 |
  JSR code_3FE60E                           ; $299654 |
  LDA $03CE,x                               ; $299657 |
  LSR                                       ; $29965A |
  LSR                                       ; $29965B |
  LSR                                       ; $29965C |
  TAY                                       ; $29965D |
  LDA $9685,y                               ; $29965E |
  STA $00                                   ; $299661 |
  LDA #$00                                  ; $299663 |
  STA $01                                   ; $299665 |
  STA $11                                   ; $299667 |
  JSR code_3ED9CD                           ; $299669 |
  LDA $11                                   ; $29966C |
  AND #$01                                  ; $29966E |
  BNE loc_53677                             ; $299670 |
  DEC $05B1,x                               ; $299672 |
  BNE loc_5364F                             ; $299675 |
loc_53677:
  JSR code_3FE9D3                           ; $299677 |
  LDA #$3C                                  ; $29967A |
  STA $05B1,x                               ; $29967C |
  JSR code_3FEF18                           ; $29967F |
  JMP code_29964F                           ; $299682 |

  db $08, $F8, $5E, $A5, $54, $64, $03, $14 ; $299685 |

  JSR code_3FEBD1                           ; $29968D |
  LDA #$00                                  ; $299690 |
  STA $0624,x                               ; $299692 |
loc_53695:
code_299695:
  JSR code_3FE9D3                           ; $299695 |
  JSR code_3FEF0C                           ; $299698 |
  LDA $0624,x                               ; $29969B |
  BNE loc_53695                             ; $29969E |
  LDA #$19                                  ; $2996A0 |
  STA $05B1,x                               ; $2996A2 |
  LDY #$5D                                  ; $2996A5 |
  JSR code_3FE522                           ; $2996A7 |
loc_536AA:
  JSR code_3FE9D3                           ; $2996AA |
  DEC $05B1,x                               ; $2996AD |
  BNE loc_536AA                             ; $2996B0 |
loc_536B2:
  JSR code_3FE9D3                           ; $2996B2 |
  LDY #$C3                                  ; $2996B5 |
  JSR code_3FE5AB                           ; $2996B7 |
  BCS loc_536B2                             ; $2996BA |
  LDA $8F                                   ; $2996BC |
  STA $05B1,x                               ; $2996BE |
  LDY $8F                                   ; $2996C1 |
  LDA $03CE,y                               ; $2996C3 |
  STA $03CE,x                               ; $2996C6 |
  LDA #$3A                                  ; $2996C9 |
  JSR code_3FE8BC                           ; $2996CB |
  LDX $8F                                   ; $2996CE |
  INC $0624,x                               ; $2996D0 |
  LDA #$0D                                  ; $2996D3 |
  STA $05B1,x                               ; $2996D5 |
loc_536D8:
  JSR code_3FE9D3                           ; $2996D8 |
  DEC $05B1,x                               ; $2996DB |
  BNE loc_536D8                             ; $2996DE |
  LDY #$5E                                  ; $2996E0 |
  JSR code_3FE522                           ; $2996E2 |
  LDA #$78                                  ; $2996E5 |
  STA $05DF,x                               ; $2996E7 |
loc_536EA:
  JSR code_3FE9D3                           ; $2996EA |
  DEC $05DF,x                               ; $2996ED |
  BNE loc_536EA                             ; $2996F0 |
  LDA #$00                                  ; $2996F2 |
  STA $0624,x                               ; $2996F4 |
  JMP code_299695                           ; $2996F7 |

  db $64, $A5, $54, $01, $00, $13           ; $2996FA |

  JSR code_3FEBD1                           ; $299700 |
  LDA #$9C                                  ; $299703 |
  STA $08                                   ; $299705 |
  LDA #$97                                  ; $299707 |
  STA $09                                   ; $299709 |
  JSR code_3ECC54                           ; $29970B |
  TYA                                       ; $29970E |
  STA $05C8,x                               ; $29970F |
  LDA $97A2,y                               ; $299712 |
  STA $0624,x                               ; $299715 |
  LDA $97A4,y                               ; $299718 |
  STA $060D,x                               ; $29971B |
  JSR code_2997B6                           ; $29971E |
  LSR $03CE,x                               ; $299721 |
  LSR $03CE,x                               ; $299724 |
  LSR $03CE,x                               ; $299727 |
  LDA $03CE,x                               ; $29972A |
  BEQ loc_53747                             ; $29972D |
  LDA $060D,x                               ; $29972F |
  EOR #$FF                                  ; $299732 |
  STA $060D,x                               ; $299734 |
  LDA $0624,x                               ; $299737 |
  EOR #$FF                                  ; $29973A |
  STA $0624,x                               ; $29973C |
  INC $060D,x                               ; $29973F |
  BNE loc_53747                             ; $299742 |
  INC $0624,x                               ; $299744 |
loc_53747:
  LDY $05C8,x                               ; $299747 |
  LDA $979E,y                               ; $29974A |
  STA $05F6,x                               ; $29974D |
  LDA $97A0,y                               ; $299750 |
  STA $05DF,x                               ; $299753 |
loc_53756:
code_299756:
  JSR code_2997B6                           ; $299756 |
  LDA #$A6                                  ; $299759 |
  STA $08                                   ; $29975B |
  LDA #$97                                  ; $29975D |
  STA $09                                   ; $29975F |
  LDA $0624,x                               ; $299761 |
  STA $ED                                   ; $299764 |
  LDA $060D,x                               ; $299766 |
  STA $EB                                   ; $299769 |
  JSR code_3FEC0A                           ; $29976B |
  LDA $11                                   ; $29976E |
  AND #$01                                  ; $299770 |
  BEQ loc_5377B                             ; $299772 |
  LDA $05DF,x                               ; $299774 |
  AND #$01                                  ; $299777 |
  BEQ loc_53747                             ; $299779 |
loc_5377B:
  LDA $12                                   ; $29977B |
  AND #$01                                  ; $29977D |
  BEQ loc_53756                             ; $29977F |
  LDA $060D,x                               ; $299781 |
  EOR #$FF                                  ; $299784 |
  STA $060D,x                               ; $299786 |
  LDA $0624,x                               ; $299789 |
  EOR #$FF                                  ; $29978C |
  STA $0624,x                               ; $29978E |
  INC $060D,x                               ; $299791 |
  BNE loc_53756                             ; $299794 |
  INC $0624,x                               ; $299796 |
  JMP code_299756                           ; $299799 |

  db $7F, $80, $FD, $FD, $C3, $6B, $02, $01 ; $29979C |
  db $3C, $08, $08, $02, $08, $FE, $F8, $02 ; $2997A4 |
  db $F8, $FE, $F8, $08, $08, $08, $F8, $F8 ; $2997AC |
  db $08, $F8                               ; $2997B4 |

code_2997B6:
  LDX $8F                                   ; $2997B6 |
  LDY $05B1,x                               ; $2997B8 |
  LDA $03E5,y                               ; $2997BB |
  BMI loc_537F3                             ; $2997BE |
  LDA $0624,y                               ; $2997C0 |
  BEQ loc_537F3                             ; $2997C3 |
  JSR code_3FE485                           ; $2997C5 |
  BCS loc_537FF                             ; $2997C8 |
  LDA $056C,x                               ; $2997CA |
  BEQ loc_537FC                             ; $2997CD |
  LDA $056C,x                               ; $2997CF |
  AND #$0F                                  ; $2997D2 |
  STA $00                                   ; $2997D4 |
  LDA #$35                                  ; $2997D6 |
  STA $DC                                   ; $2997D8 |
  LDA #$00                                  ; $2997DA |
  STA $056C,x                               ; $2997DC |
  LDA $03E5,x                               ; $2997DF |
  SEC                                       ; $2997E2 |
  SBC $00                                   ; $2997E3 |
  STA $03E5,x                               ; $2997E5 |
  BPL loc_537FC                             ; $2997E8 |
  LDA $05B1,x                               ; $2997EA |
  TAX                                       ; $2997ED |
  DEC $0624,x                               ; $2997EE |
  LDX $8F                                   ; $2997F1 |
loc_537F3:
  LDY #$17                                  ; $2997F3 |
  JSR code_3ECB28                           ; $2997F5 |

  db $41                                    ; $2997F8 |

  JMP code_3FE477                           ; $2997F9 |

loc_537FC:
  JMP code_3FE468                           ; $2997FC |

loc_537FF:
  LDA $05B1,x                               ; $2997FF |
  TAX                                       ; $299802 |
  DEC $0624,x                               ; $299803 |
  LDX $8F                                   ; $299806 |
  JMP code_3FE456                           ; $299808 |

  db $58, $A4, $51, $4B, $02, $00           ; $29980B |

  JSR code_3FEBD1                           ; $299811 |
  LDA #$01                                  ; $299814 |
  STA $03B7,x                               ; $299816 |
loc_53819:
  LDA #$00                                  ; $299819 |
  STA $056C,x                               ; $29981B |
  JSR code_3FEA6A                           ; $29981E |
  LDY $05B1,x                               ; $299821 |
  LDA $0486,y                               ; $299824 |
  STA $0486,x                               ; $299827 |
  LDA $046F,y                               ; $29982A |
  STA $046F,x                               ; $29982D |
  LDA $04CB,y                               ; $299830 |
  STA $04CB,x                               ; $299833 |
  LDA $03E5,y                               ; $299836 |
  BPL loc_53819                             ; $299839 |
  JMP code_3FE456                           ; $29983B |

  db $5B, $A3, $4F, $65, $04, $13           ; $29983E |

  JSR code_3FEBD1                           ; $299844 |
  JSR code_3FEF0C                           ; $299847 |
  LDA $03CE,x                               ; $29984A |
  STA $05C8,x                               ; $29984D |
  LDA #$1E                                  ; $299850 |
  STA $05B1,x                               ; $299852 |
  LDY #$5C                                  ; $299855 |
  JSR code_3FE522                           ; $299857 |
  LDA $03CE,x                               ; $29985A |
  LSR                                       ; $29985D |
  LSR                                       ; $29985E |
  LSR                                       ; $29985F |
  STA $0624,x                               ; $299860 |
loc_53863:
code_299863:
  JSR code_3FEA1C                           ; $299863 |
  LDA #$12                                  ; $299866 |
  STA $08                                   ; $299868 |
  LDA #$99                                  ; $29986A |
  STA $09                                   ; $29986C |
  LDY #$06                                  ; $29986E |
  JSR code_3FE61A                           ; $299870 |
  JSR code_3FEC0A                           ; $299873 |
  LDA $12                                   ; $299876 |
  AND #$01                                  ; $299878 |
  BEQ loc_5387F                             ; $29987A |
  JSR code_2998F9                           ; $29987C |
loc_5387F:
  JSR code_3FEA1C                           ; $29987F |
  LDA #$00                                  ; $299882 |
  STA $11                                   ; $299884 |
  LDY $0624,x                               ; $299886 |
  LDA $9910,y                               ; $299889 |
  STA $00                                   ; $29988C |
  LDA #$20                                  ; $29988E |
  STA $01                                   ; $299890 |
  JSR code_3ED9CD                           ; $299892 |
  LDA $11                                   ; $299895 |
  AND #$01                                  ; $299897 |
  BNE loc_5389E                             ; $299899 |
  JSR code_2998F9                           ; $29989B |
loc_5389E:
  DEC $05B1,x                               ; $29989E |
  BNE loc_53863                             ; $2998A1 |
  JSR code_3FEA1C                           ; $2998A3 |
  JSR code_2998B1                           ; $2998A6 |
  LDA #$1E                                  ; $2998A9 |
  STA $05B1,x                               ; $2998AB |
  JMP code_299863                           ; $2998AE |

code_2998B1:
  JSR code_3FE5B6                           ; $2998B1 |
  LDA $11                                   ; $2998B4 |
  CMP $05C8,x                               ; $2998B6 |
  BNE loc_538F6                             ; $2998B9 |
  LDY #$00                                  ; $2998BB |
  JSR code_3FF8AE                           ; $2998BD |
  LDA $11                                   ; $2998C0 |
  AND #$07                                  ; $2998C2 |
  BEQ loc_538F6                             ; $2998C4 |
  LDA $11                                   ; $2998C6 |
  STA $060D,x                               ; $2998C8 |
  LDA $03CE,x                               ; $2998CB |
  STA $05DF,x                               ; $2998CE |
  LDA $05C8,x                               ; $2998D1 |
  STA $03CE,x                               ; $2998D4 |
  LDY #$14                                  ; $2998D7 |
  JSR code_3FE5AB                           ; $2998D9 |
  BCS loc_538F6                             ; $2998DC |
  LDA #$06                                  ; $2998DE |
  STA $05C8,x                               ; $2998E0 |
  LDY $8F                                   ; $2998E3 |
  LDA #$46                                  ; $2998E5 |
  JSR code_3FE8BC                           ; $2998E7 |
  LDA $060D,y                               ; $2998EA |
  STA $03CE,x                               ; $2998ED |
  LDA $05DF,y                               ; $2998F0 |
  STA $03CE,y                               ; $2998F3 |
loc_538F6:
  LDX $8F                                   ; $2998F6 |
  RTS                                       ; $2998F8 |

code_2998F9:
  LDA $03CE,x                               ; $2998F9 |
  EOR #$08                                  ; $2998FC |
  STA $03CE,x                               ; $2998FE |
  LDA $0624,x                               ; $299901 |
  EOR #$01                                  ; $299904 |
  STA $0624,x                               ; $299906 |
  RTS                                       ; $299909 |

  db $04, $0C, $01, $FE, $80, $80, $10, $F0 ; $29990A |
  db $14, $10, $14, $F0, $EC, $10, $EC, $F0 ; $299912 |
  db $F0, $1E, $10, $1E, $F0, $E2, $10, $E2 ; $29991A |
  db $60, $A2, $50, $48, $04, $14           ; $299922 |

  JSR code_3FEBD1                           ; $299928 |
  LDA #$00                                  ; $29992B |
  STA $0624,x                               ; $29992D |
  LDY #$C8                                  ; $299930 |
  JSR code_3FE5AB                           ; $299932 |
  BCC loc_5393A                             ; $299935 |
  JMP code_2999A5                           ; $299937 |

loc_5393A:
  LDY $8F                                   ; $29993A |
  TYA                                       ; $29993C |
  STA $05B1,x                               ; $29993D |
  LDA #$03                                  ; $299940 |
  JSR code_3FE8FD                           ; $299942 |
  LDX $8F                                   ; $299945 |
  JSR code_3FEF0C                           ; $299947 |
  LSR $03CE,x                               ; $29994A |
  LSR $03CE,x                               ; $29994D |
  LSR $03CE,x                               ; $299950 |
code_299953:
  LDA $056C,x                               ; $299953 |
  BEQ loc_53962                             ; $299956 |
  AND #$F0                                  ; $299958 |
  CMP #$70                                  ; $29995A |
  BEQ loc_539A8                             ; $29995C |
  CMP #$30                                  ; $29995E |
  BNE loc_539BA                             ; $299960 |
loc_53962:
  JSR code_3FEA6A                           ; $299962 |
  LDA #$D7                                  ; $299965 |
  STA $08                                   ; $299967 |
  LDA #$9B                                  ; $299969 |
  STA $09                                   ; $29996B |
  LDY $03CE,x                               ; $29996D |
  LDA $9BD1,y                               ; $299970 |
  STA $ED                                   ; $299973 |
  LDA $9BD3,y                               ; $299975 |
  STA $EB                                   ; $299978 |
  JSR code_3FEC0A                           ; $29997A |
  LDA $12                                   ; $29997D |
  AND #$01                                  ; $29997F |
  BEQ loc_53986                             ; $299981 |
  JSR code_299AF8                           ; $299983 |
loc_53986:
  LDA #$00                                  ; $299986 |
  STA $11                                   ; $299988 |
  LDY $03CE,x                               ; $29998A |
  LDA $9BD5,y                               ; $29998D |
  STA $00                                   ; $299990 |
  LDA #$14                                  ; $299992 |
  STA $01                                   ; $299994 |
  JSR code_3ED9CD                           ; $299996 |
  LDA $11                                   ; $299999 |
  AND #$01                                  ; $29999B |
  BNE loc_539A2                             ; $29999D |
  JSR code_299AF8                           ; $29999F |
loc_539A2:
  JMP code_299953                           ; $2999A2 |

code_2999A5:
  JMP code_3FE456                           ; $2999A5 |

loc_539A8:
  LDA #$35                                  ; $2999A8 |
  STA $DC                                   ; $2999AA |
  LDA #$FF                                  ; $2999AC |
  STA $03E5,x                               ; $2999AE |
  LDY #$17                                  ; $2999B1 |
  JSR code_3ECB28                           ; $2999B3 |

  db $41                                    ; $2999B6 |

  JMP code_3FE477                           ; $2999B7 |

loc_539BA:
  LDA #$00                                  ; $2999BA |
  STA $056C,x                               ; $2999BC |
  STA $03E5,x                               ; $2999BF |
  JSR code_3FE9D3                           ; $2999C2 |
  JSR code_3FEF0C                           ; $2999C5 |
  LDA $03CE,x                               ; $2999C8 |
  STA $05C8,x                               ; $2999CB |
  LSR $03CE,x                               ; $2999CE |
  LSR $03CE,x                               ; $2999D1 |
  LSR $03CE,x                               ; $2999D4 |
  LDY #$C7                                  ; $2999D7 |
  JSR code_3FE5AB                           ; $2999D9 |
  BCS loc_539BA                             ; $2999DC |
  LDY $8F                                   ; $2999DE |
  TYA                                       ; $2999E0 |
  STA $05B1,x                               ; $2999E1 |
  LDA #$03                                  ; $2999E4 |
  JSR code_3FE8FD                           ; $2999E6 |
  LDX $8F                                   ; $2999E9 |
  INC $0624,x                               ; $2999EB |
  LDY #$61                                  ; $2999EE |
  JSR code_3FE522                           ; $2999F0 |
code_2999F3:
  LDA #$1E                                  ; $2999F3 |
  STA $05B1,x                               ; $2999F5 |
loc_539F8:
  JSR code_3FE9D3                           ; $2999F8 |
  LDA #$D7                                  ; $2999FB |
  STA $08                                   ; $2999FD |
  LDA #$9B                                  ; $2999FF |
  STA $09                                   ; $299A01 |
  LDY $03CE,x                               ; $299A03 |
  LDA $9BCD,y                               ; $299A06 |
  STA $ED                                   ; $299A09 |
  LDA $9BCF,y                               ; $299A0B |
  STA $EB                                   ; $299A0E |
  JSR code_3FEC0A                           ; $299A10 |
  LDA #$00                                  ; $299A13 |
  STA $11                                   ; $299A15 |
  LDY $03CE,x                               ; $299A17 |
  LDA $9BD5,y                               ; $299A1A |
  STA $00                                   ; $299A1D |
  LDA #$18                                  ; $299A1F |
  STA $01                                   ; $299A21 |
  JSR code_3ED9CD                           ; $299A23 |
  LDA $11                                   ; $299A26 |
  AND #$01                                  ; $299A28 |
  BNE loc_53A2F                             ; $299A2A |
  JMP code_299A5D                           ; $299A2C |

loc_53A2F:
  LDA #$00                                  ; $299A2F |
  STA $11                                   ; $299A31 |
  LDY $03CE,x                               ; $299A33 |
  LDA $9BD5,y                               ; $299A36 |
  STA $00                                   ; $299A39 |
  LDA #$00                                  ; $299A3B |
  STA $01                                   ; $299A3D |
  JSR code_3ED9CD                           ; $299A3F |
  LDA $11                                   ; $299A42 |
  AND #$01                                  ; $299A44 |
  BEQ loc_53A4B                             ; $299A46 |
  JMP code_299B2F                           ; $299A48 |

loc_53A4B:
  JSR code_3FE5B6                           ; $299A4B |
  LDA $11                                   ; $299A4E |
  CMP $05C8,x                               ; $299A50 |
  BEQ loc_539F8                             ; $299A53 |
  DEC $05B1,x                               ; $299A55 |
  BNE loc_539F8                             ; $299A58 |
  JMP code_299B11                           ; $299A5A |

code_299A5D:
  JSR code_3FE9D3                           ; $299A5D |
  JSR code_3FE5B6                           ; $299A60 |
  LDA $11                                   ; $299A63 |
  LSR                                       ; $299A65 |
  LSR                                       ; $299A66 |
  LSR                                       ; $299A67 |
  CMP $03CE,x                               ; $299A68 |
  BEQ loc_53A70                             ; $299A6B |
  JMP code_299B11                           ; $299A6D |

loc_53A70:
  LDA #$FB                                  ; $299A70 |
  STA $05F6,x                               ; $299A72 |
  LDA #$80                                  ; $299A75 |
  STA $05DF,x                               ; $299A77 |
  LDA #$00                                  ; $299A7A |
  STA $060D,x                               ; $299A7C |
  SEC                                       ; $299A7F |
  LDA $0486                                 ; $299A80 |
  SBC $0486,x                               ; $299A83 |
  BPL loc_53A8C                             ; $299A86 |
  EOR #$FF                                  ; $299A88 |
  ADC #$01                                  ; $299A8A |
loc_53A8C:
  CLC                                       ; $299A8C |
  ADC #$08                                  ; $299A8D |
  STA $0624,x                               ; $299A8F |
  ASL $0624,x                               ; $299A92 |
  ROL $060D,x                               ; $299A95 |
  ASL $0624,x                               ; $299A98 |
  ROL $060D,x                               ; $299A9B |
  JSR code_3FE5B6                           ; $299A9E |
  LDA $11                                   ; $299AA1 |
  CMP #$04                                  ; $299AA3 |
  BEQ loc_53ABF                             ; $299AA5 |
  LDA $060D,x                               ; $299AA7 |
  EOR #$FF                                  ; $299AAA |
  STA $060D,x                               ; $299AAC |
  LDA $0624,x                               ; $299AAF |
  EOR #$FF                                  ; $299AB2 |
  STA $0624,x                               ; $299AB4 |
  INC $0624,x                               ; $299AB7 |
  BNE loc_53ABF                             ; $299ABA |
  INC $060D,x                               ; $299ABC |
loc_53ABF:
  JSR code_3FE9D3                           ; $299ABF |
  LDA $060D,x                               ; $299AC2 |
  STA $ED                                   ; $299AC5 |
  LDA $0624,x                               ; $299AC7 |
  STA $EB                                   ; $299ACA |
  LDA #$D7                                  ; $299ACC |
  STA $08                                   ; $299ACE |
  LDA #$9B                                  ; $299AD0 |
  STA $09                                   ; $299AD2 |
  JSR code_3FEC0A                           ; $299AD4 |
  LDA $04B4,x                               ; $299AD7 |
  BPL loc_53AEA                             ; $299ADA |
  LDA #$00                                  ; $299ADC |
  STA $05DF,x                               ; $299ADE |
  STA $05F6,x                               ; $299AE1 |
  STA $04B4,x                               ; $299AE4 |
  STA $04CB,x                               ; $299AE7 |
loc_53AEA:
  LDA $11                                   ; $299AEA |
  BEQ loc_53ABF                             ; $299AEC |
  LDA $05DF,x                               ; $299AEE |
  AND #$01                                  ; $299AF1 |
  BNE loc_53ABF                             ; $299AF3 |
  JMP code_2999F3                           ; $299AF5 |

code_299AF8:
  LDA $03CE,x                               ; $299AF8 |
  EOR #$01                                  ; $299AFB |
  STA $03CE,x                               ; $299AFD |
  LDA $03B7,x                               ; $299B00 |
  EOR #$40                                  ; $299B03 |
  STA $03B7,x                               ; $299B05 |
  LDA $05C8,x                               ; $299B08 |
  EOR #$08                                  ; $299B0B |
  STA $05C8,x                               ; $299B0D |
  RTS                                       ; $299B10 |

loc_53B11:
code_299B11:
  LDA $03CE,x                               ; $299B11 |
  EOR #$01                                  ; $299B14 |
  STA $03CE,x                               ; $299B16 |
  LDA $03B7,x                               ; $299B19 |
  EOR #$40                                  ; $299B1C |
  STA $03B7,x                               ; $299B1E |
  LDA $05C8,x                               ; $299B21 |
  EOR #$08                                  ; $299B24 |
  STA $05C8,x                               ; $299B26 |
  JMP code_2999F3                           ; $299B29 |

  JMP code_2999F3                           ; $299B2C |

code_299B2F:
  JSR code_3FE5B6                           ; $299B2F |
  LDA $11                                   ; $299B32 |
  LSR                                       ; $299B34 |
  LSR                                       ; $299B35 |
  LSR                                       ; $299B36 |
  CMP $03CE,x                               ; $299B37 |
  BNE loc_53B11                             ; $299B3A |
  JSR code_3FE9D3                           ; $299B3C |
  LDA #$00                                  ; $299B3F |
  STA $060D,x                               ; $299B41 |
  STA $0624,x                               ; $299B44 |
loc_53B47:
  INC $0624,x                               ; $299B47 |
  LDY $03CE,x                               ; $299B4A |
  CLC                                       ; $299B4D |
  LDA $9BCB,y                               ; $299B4E |
  STA $00                                   ; $299B51 |
  SEC                                       ; $299B53 |
  LDA $060D,x                               ; $299B54 |
  SBC #$10                                  ; $299B57 |
  STA $060D,x                               ; $299B59 |
  STA $01                                   ; $299B5C |
  SEC                                       ; $299B5E |
  LDA $060D,x                               ; $299B5F |
  SBC $04CB,x                               ; $299B62 |
  BCC loc_53B11                             ; $299B65 |
  LDA #$00                                  ; $299B67 |
  STA $11                                   ; $299B69 |
  JSR code_3ED9CD                           ; $299B6B |
  LDA $11                                   ; $299B6E |
  AND #$01                                  ; $299B70 |
  BNE loc_53B47                             ; $299B72 |
  JSR code_3FE9D3                           ; $299B74 |
  LDY $0624,x                               ; $299B77 |
  LDA $9BAF,y                               ; $299B7A |
  STA $05F6,x                               ; $299B7D |
  LDA $9BBD,y                               ; $299B80 |
  STA $05DF,y                               ; $299B83 |
loc_53B86:
  JSR code_3FE9D3                           ; $299B86 |
  LDA #$D7                                  ; $299B89 |
  STA $08                                   ; $299B8B |
  LDA #$9B                                  ; $299B8D |
  STA $09                                   ; $299B8F |
  LDY $03CE,x                               ; $299B91 |
  LDA $9BD1,y                               ; $299B94 |
  STA $ED                                   ; $299B97 |
  LDA $9BD3,y                               ; $299B99 |
  STA $EB                                   ; $299B9C |
  JSR code_3FEC0A                           ; $299B9E |
  LDA $11                                   ; $299BA1 |
  BEQ loc_53B86                             ; $299BA3 |
  LDA $05DF,x                               ; $299BA5 |
  AND #$01                                  ; $299BA8 |
  BNE loc_53B86                             ; $299BAA |
  JMP code_2999F3                           ; $299BAC |

  db $FD, $FC, $FB, $FB, $FA, $FA, $F9, $F9 ; $299BAF |
  db $F8, $F8, $F8, $F8, $F7, $F7, $2B, $59 ; $299BB7 |
  db $AD, $1B, $95, $1D, $AD, $45, $E3, $85 ; $299BBF |
  db $2B, $0B, $B7, $B7, $10, $F0, $02, $FE ; $299BC7 |
  db $00, $00, $01, $FF, $00, $00, $0E, $F2 ; $299BCF |
  db $0A, $05, $0A, $FB, $F6, $05, $F6, $FB ; $299BD7 |
  db $F8, $0B, $08, $0B, $F8, $F0, $08, $F0 ; $299BDF |
  db $62, $A2, $50, $01, $00, $00           ; $299BE7 |

  JSR code_3FEBD1                           ; $299BED |
  LDA #$04                                  ; $299BF0 |
  STA $0624,x                               ; $299BF2 |
  LDA #$B0                                  ; $299BF5 |
  STA $060D,x                               ; $299BF7 |
loc_53BFA:
  JSR code_3FEA6A                           ; $299BFA |
  LDY $05B1,x                               ; $299BFD |
  LDA $046F,y                               ; $299C00 |
  STA $046F,x                               ; $299C03 |
  LDA $0486,y                               ; $299C06 |
  STA $0486,x                               ; $299C09 |
  LDA $04CB,y                               ; $299C0C |
  STA $04CB,x                               ; $299C0F |
  LDA $03B7,y                               ; $299C12 |
  STA $03B7,x                               ; $299C15 |
  LDA $03E5,y                               ; $299C18 |
  BMI loc_53C43                             ; $299C1B |
  DEC $060D,x                               ; $299C1D |
  BNE loc_53BFA                             ; $299C20 |
  DEC $0624,x                               ; $299C22 |
  BNE loc_53BFA                             ; $299C25 |
  LDA #$00                                  ; $299C27 |
  STA $03A0,y                               ; $299C29 |
  LDA #$FF                                  ; $299C2C |
  STA $03E5,x                               ; $299C2E |
  LDA #$35                                  ; $299C31 |
  STA $DC                                   ; $299C33 |
  LDY #$25                                  ; $299C35 |
  JSR code_3ECB28                           ; $299C37 |

  db $41                                    ; $299C3A |

  LDA #$44                                  ; $299C3B |
  STA $05DF,x                               ; $299C3D |
  JMP code_3FE477                           ; $299C40 |

loc_53C43:
  JMP code_3FE456                           ; $299C43 |

  db $63, $A2, $50, $01, $00, $00           ; $299C46 |

  JSR code_3FEBD1                           ; $299C4C |
loc_53C4F:
  JSR code_3FEA6A                           ; $299C4F |
  LDY $05B1,x                               ; $299C52 |
  LDA $03B7,y                               ; $299C55 |
  STA $03B7,x                               ; $299C58 |
  LDA #$03                                  ; $299C5B |
  JSR code_3FE8FD                           ; $299C5D |
  INC $04CB,x                               ; $299C60 |
  INC $04CB,x                               ; $299C63 |
  LDA $03E5,y                               ; $299C66 |
  BMI loc_53CA2                             ; $299C69 |
  LDA $0624,y                               ; $299C6B |
  BEQ loc_53C4F                             ; $299C6E |
  LDA $03CE,y                               ; $299C70 |
  EOR #$01                                  ; $299C73 |
  STA $05B1,x                               ; $299C75 |
  LDA #$00                                  ; $299C78 |
  STA $060D,x                               ; $299C7A |
  LDA #$FD                                  ; $299C7D |
  STA $0624,x                               ; $299C7F |
  LDA #$08                                  ; $299C82 |
  STA $03CE,x                               ; $299C84 |
code_299C87:
  JSR code_3FEA6A                           ; $299C87 |
  LDY $05B1,x                               ; $299C8A |
  LDA $9BD1,y                               ; $299C8D |
  STA $ED                                   ; $299C90 |
  LDA $9BD3,y                               ; $299C92 |
  STA $EB                                   ; $299C95 |
  LDY #$03                                  ; $299C97 |
  JSR code_3FEE9A                           ; $299C99 |
  JSR code_3FE4D1                           ; $299C9C |
  JMP code_299C87                           ; $299C9F |

loc_53CA2:
  JMP code_3FE456                           ; $299CA2 |

  db $59, $13, $78, $4F, $01, $A0           ; $299CA5 |

  JMP code_299CB4                           ; $299CAB |

  db $59, $13, $0D, $4F, $01, $84           ; $299CAE |

code_299CB4:
  JSR code_3FEBD1                           ; $299CB4 |
  LDY #$3E                                  ; $299CB7 |
  JSR code_3FE5AB                           ; $299CB9 |
  BCS loc_53CA2                             ; $299CBC |
  LDY $8F                                   ; $299CBE |
  TYA                                       ; $299CC0 |
  STA $05B1,x                               ; $299CC1 |
  LDA #$03                                  ; $299CC4 |
  JSR code_3FE8FD                           ; $299CC6 |
  JMP code_299CED                           ; $299CC9 |

code_299CCC:
  LDX $8F                                   ; $299CCC |
  LDY #$59                                  ; $299CCE |
  JSR code_3FE522                           ; $299CD0 |
  LDA #$3C                                  ; $299CD3 |
  STA $05B1,x                               ; $299CD5 |
loc_53CD8:
  JSR code_3FEA6A                           ; $299CD8 |
  LDA $056C,x                               ; $299CDB |
  BNE loc_53D12                             ; $299CDE |
  JSR code_3FECFC                           ; $299CE0 |
  LDA $11                                   ; $299CE3 |
  STA $03CE,x                               ; $299CE5 |
  DEC $05B1,x                               ; $299CE8 |
  BNE loc_53CD8                             ; $299CEB |
loc_53CED:
code_299CED:
  JSR code_3FEA6A                           ; $299CED |
  LDY #$2E                                  ; $299CF0 |
  JSR code_3FE5AB                           ; $299CF2 |
  BCS loc_53CED                             ; $299CF5 |
  LDA #$20                                  ; $299CF7 |
  STA $0458,x                               ; $299CF9 |
  LDA #$C2                                  ; $299CFC |
  STA $05B1,x                               ; $299CFE |
  LDA #$03                                  ; $299D01 |
  LDY $8F                                   ; $299D03 |
  JSR code_3FE8FD                           ; $299D05 |
  LDX $8F                                   ; $299D08 |
  LDA #$3C                                  ; $299D0A |
  STA $05B1,x                               ; $299D0C |
  JMP code_299CCC                           ; $299D0F |

loc_53D12:
  CMP #$14                                  ; $299D12 |
  BNE loc_53D19                             ; $299D14 |
  JMP code_299D96                           ; $299D16 |

loc_53D19:
  LDA #$00                                  ; $299D19 |
  STA $056C,x                               ; $299D1B |
  JSR code_3FEA6A                           ; $299D1E |
  JSR code_299D90                           ; $299D21 |
  LDY #$3F                                  ; $299D24 |
  JSR code_3FE5AB                           ; $299D26 |
  BCS loc_53D19                             ; $299D29 |
  LDY $8F                                   ; $299D2B |
  TYA                                       ; $299D2D |
  STA $05B1,x                               ; $299D2E |
  LDA #$36                                  ; $299D31 |
  JSR code_3FE8FD                           ; $299D33 |
  LDX $8F                                   ; $299D36 |
  LSR $03CE,x                               ; $299D38 |
  LSR $03CE,x                               ; $299D3B |
  LSR $03CE,x                               ; $299D3E |
  LDY $03CE,x                               ; $299D41 |
  LDA $9DA4,y                               ; $299D44 |
  TAY                                       ; $299D47 |
  JSR code_3FE522                           ; $299D48 |
  LDA #$0C                                  ; $299D4B |
  STA $05B1,x                               ; $299D4D |
loc_53D50:
  JSR code_3FEA6A                           ; $299D50 |
  JSR code_299D90                           ; $299D53 |
  DEC $05B1,x                               ; $299D56 |
  BNE loc_53D50                             ; $299D59 |
  LDA #$2D                                  ; $299D5B |
  STA $05B1,x                               ; $299D5D |
loc_53D60:
  JSR code_3FEA6A                           ; $299D60 |
  JSR code_299D90                           ; $299D63 |
  DEC $05B1,x                               ; $299D66 |
  BNE loc_53D60                             ; $299D69 |
  LDY $03CE,x                               ; $299D6B |
  LDA $9DA6,y                               ; $299D6E |
  TAY                                       ; $299D71 |
  JSR code_3FE522                           ; $299D72 |
  LDA #$0C                                  ; $299D75 |
  STA $05B1,x                               ; $299D77 |
loc_53D7A:
  JSR code_3FEA6A                           ; $299D7A |
  JSR code_299D90                           ; $299D7D |
  DEC $05B1,x                               ; $299D80 |
  BNE loc_53D7A                             ; $299D83 |
  LDA #$3C                                  ; $299D85 |
  STA $05B1,x                               ; $299D87 |
  JMP code_299CCC                           ; $299D8A |

  JMP code_3FE456                           ; $299D8D |

code_299D90:
  LDA $03E5,x                               ; $299D90 |
  BMI loc_53D96                             ; $299D93 |
  RTS                                       ; $299D95 |

loc_53D96:
code_299D96:
  LDA #$FF                                  ; $299D96 |
  STA $03E5,x                               ; $299D98 |
  LDY #$17                                  ; $299D9B |
  JSR code_3ECB28                           ; $299D9D |

  db $41                                    ; $299DA0 |

  JMP code_3FE477                           ; $299DA1 |

  db $5C, $5A, $5D, $5B, $5A, $13, $0D, $50 ; $299DA4 |
  db $01, $84                               ; $299DAC |

  JSR code_3FEBD1                           ; $299DAE |
  LDA #$01                                  ; $299DB1 |
  STA $03B7,x                               ; $299DB3 |
loc_53DB6:
  JSR code_3FEA6A                           ; $299DB6 |
  LDY $05B1,x                               ; $299DB9 |
  LDA $03E5,y                               ; $299DBC |
  BMI loc_53DCD                             ; $299DBF |
  LDA $056C,x                               ; $299DC1 |
  CMP #$14                                  ; $299DC4 |
  BNE loc_53DB6                             ; $299DC6 |
  LDA #$FF                                  ; $299DC8 |
  STA $03E5,y                               ; $299DCA |
loc_53DCD:
  JMP code_3FE456                           ; $299DCD |

  db $5E, $13, $0D, $51, $00, $14           ; $299DD0 |

  JSR code_3FEBD1                           ; $299DD6 |
  LDA #$01                                  ; $299DD9 |
  STA $03B7,x                               ; $299DDB |
  LDA #$39                                  ; $299DDE |
  STA $05C8,x                               ; $299DE0 |
loc_53DE3:
  JSR code_3FEA6A                           ; $299DE3 |
  LDY $05B1,x                               ; $299DE6 |
  LDA $03E5,y                               ; $299DE9 |
  BMI loc_53DCD                             ; $299DEC |
  LDA $056C,x                               ; $299DEE |
  BEQ loc_53E04                             ; $299DF1 |
  AND #$0F                                  ; $299DF3 |
  STA $00                                   ; $299DF5 |
  LDA $03E5,y                               ; $299DF7 |
  SEC                                       ; $299DFA |
  SBC $00                                   ; $299DFB |
  STA $03E5,y                               ; $299DFD |
  LDA #$35                                  ; $299E00 |
  STA $DC                                   ; $299E02 |
loc_53E04:
  DEC $05C8,x                               ; $299E04 |
  BNE loc_53DE3                             ; $299E07 |
  JMP code_3FE456                           ; $299E09 |

  db $B0, $2E, $6E, $60, $00, $00           ; $299E0C |

  JSR code_3FEBD1                           ; $299E12 |
  LDA #$6E                                  ; $299E15 |
  JSR code_3ECAA4                           ; $299E17 |
  LDA #$04                                  ; $299E1A |
  STA $03CE,x                               ; $299E1C |
  LDA #$01                                  ; $299E1F |
  STA $03B7,x                               ; $299E21 |
loc_53E24:
  LDA #$00                                  ; $299E24 |
  STA $056C,x                               ; $299E26 |
  JSR code_3FEA6A                           ; $299E29 |
  LDA $056C,x                               ; $299E2C |
  CMP #$14                                  ; $299E2F |
  BNE loc_53E24                             ; $299E31 |
  JSR code_3FE5B6                           ; $299E33 |
  LDA $11                                   ; $299E36 |
  CMP #$0C                                  ; $299E38 |
  BNE loc_53E24                             ; $299E3A |
  LDA #$50                                  ; $299E3C |
  STA $0583,x                               ; $299E3E |
  LDA #$00                                  ; $299E41 |
  STA $03B7,x                               ; $299E43 |
  JSR code_3FE144                           ; $299E46 |
loc_53E49:
  JSR code_3FEA6A                           ; $299E49 |
  LDA #$89                                  ; $299E4C |
  STA $08                                   ; $299E4E |
  LDA #$9E                                  ; $299E50 |
  STA $09                                   ; $299E52 |
  LDY #$00                                  ; $299E54 |
  JSR code_3FE61A                           ; $299E56 |
  LDA #$01                                  ; $299E59 |
  STA $EE                                   ; $299E5B |
  JSR code_3FEC11                           ; $299E5D |
  LDA $11                                   ; $299E60 |
  AND #$01                                  ; $299E62 |
  BNE loc_53E49                             ; $299E64 |
loc_53E66:
  JSR code_3FEA6A                           ; $299E66 |
  LDA #$00                                  ; $299E69 |
  STA $ED                                   ; $299E6B |
  STA $EB                                   ; $299E6D |
  LDA #$89                                  ; $299E6F |
  STA $08                                   ; $299E71 |
  LDA #$9E                                  ; $299E73 |
  STA $09                                   ; $299E75 |
  JSR code_3FEC0A                           ; $299E77 |
  LDA $11                                   ; $299E7A |
  AND #$01                                  ; $299E7C |
  BEQ loc_53E66                             ; $299E7E |
  JSR code_3FED21                           ; $299E80 |
  JSR code_3FE144                           ; $299E83 |
  JMP code_3FE456                           ; $299E86 |

  db $10, $08, $10, $F8, $F0, $08, $F0, $F8 ; $299E89 |
  db $F1, $10, $0F, $10, $F1, $F0, $0F, $F0 ; $299E91 |
  db $85, $F7, $17, $01, $00, $00           ; $299E99 |

  JSR code_3FEBD1                           ; $299E9F |
  LDA #$17                                  ; $299EA2 |
  JSR code_3ECAA4                           ; $299EA4 |
  LDA #$05                                  ; $299EA7 |
  STA $05B1,x                               ; $299EA9 |
loc_53EAC:
  JSR code_3FEA6A                           ; $299EAC |
  DEC $05B1,x                               ; $299EAF |
  BNE loc_53EAC                             ; $299EB2 |
  JMP code_3FE456                           ; $299EB4 |

  db $90, $F6, $77, $01, $00, $00           ; $299EB7 |

  JSR code_3FEBD1                           ; $299EBD |
  LDA #$80                                  ; $299EC0 |
  STA $0486,x                               ; $299EC2 |
  LDA #$6F                                  ; $299EC5 |
  STA $04CB,x                               ; $299EC7 |
  LDA #$10                                  ; $299ECA |
  STA $05B1,x                               ; $299ECC |
loc_53ECF:
  JSR code_3FE468                           ; $299ECF |
  DEC $05B1,x                               ; $299ED2 |
  BNE loc_53ECF                             ; $299ED5 |
  JMP code_3FE456                           ; $299ED7 |

code_299EDA:
  LDX $8F                                   ; $299EDA |
  JSR code_3FE485                           ; $299EDC |
  BCS loc_53F0E                             ; $299EDF |
  LDA $056C,x                               ; $299EE1 |
  BEQ loc_53F06                             ; $299EE4 |
  LDA $056C,x                               ; $299EE6 |
  AND #$0F                                  ; $299EE9 |
  STA $00                                   ; $299EEB |
  LDA #$35                                  ; $299EED |
  STA $DC                                   ; $299EEF |
  LDA #$00                                  ; $299EF1 |
  STA $056C,x                               ; $299EF3 |
  LDA $03E5,x                               ; $299EF6 |
  SEC                                       ; $299EF9 |
  SBC $00                                   ; $299EFA |
  STA $03E5,x                               ; $299EFC |
  BPL loc_53F06                             ; $299EFF |
  LDA #$00                                  ; $299F01 |
  STA $03E5,x                               ; $299F03 |
loc_53F06:
  LDA #$00                                  ; $299F06 |
  STA $056C,x                               ; $299F08 |
  JMP code_3FE468                           ; $299F0B |

loc_53F0E:
  JMP code_3FE456                           ; $299F0E |

  db $00, $00, $00, $00, $00, $00, $00, $00 ; $299F11 |
  db $00, $00, $00, $00, $00, $00, $00, $FF ; $299F19 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $299F21 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $299F29 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $299F31 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $00 ; $299F39 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $299F41 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $299F49 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $299F51 |
  db $00, $00, $00, $00, $00, $00, $00, $FF ; $299F59 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $299F61 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $299F69 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $299F71 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $00 ; $299F79 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $299F81 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $299F89 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $299F91 |
  db $00, $00, $00, $00, $00, $00, $00, $FF ; $299F99 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $299FA1 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $299FA9 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $299FB1 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $00 ; $299FB9 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $299FC1 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $299FC9 |
  db $00, $00, $00, $00, $00, $00, $00, $00 ; $299FD1 |
  db $00, $00, $00, $00, $00, $00, $00, $FF ; $299FD9 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $299FE1 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $299FE9 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF ; $299FF1 |
  db $FF, $FF, $FF, $FF, $FF, $FF, $FF      ; $299FF9 |
