       org $61A8


; current level data
current_level_data: 
       defb $45,$43,$54,$20,$41,$20,$44,$4f
       defb $5a,$45,$4e,$20,$45,$47,$47,$53
       defb $20,$20,$20,$20,$20,$60,$60,$60
       defb $60,$60,$60,$60,$60,$60,$60,$60
       defb $60,$60,$60,$60,$60,$60,$60,$60
       defb $60,$60,$60,$60,$60,$60,$60,$60
       defb $60,$60,$60,$20,$20,$20,$59,$4f
       defb $55,$20,$4d,$41,$59,$20,$43,$48
       defb $41,$4e,$47,$45,$20,$54,$48,$45
       defb $20,$44,$49,$52,$45,$43,$54,$49
       defb $4f,$4e,$20,$20,$20,$20,$20,$20
       defb $20,$20,$20,$20,$20,$20,$20,$20
       defb $20,$20,$20,$20,$20,$20,$20,$20
       defb $20,$20,$20,$20,$20,$20,$20,$20
       defb $20,$20,$20,$20,$20,$41,$4e,$44
       defb $20,$4a,$55,$4d,$50,$20,$4b,$45
       defb $59,$53,$2e,$20,$20,$54,$48,$45
       defb $52,$45,$20,$41,$52,$45,$20,$41
       defb $4c,$53,$4f,$20,$20,$20,$20,$20
       defb $20,$20,$20,$20,$20,$20,$20,$20
       defb $20,$20,$20,$20,$20,$20,$20,$20
       defb $20,$20,$20,$20,$20,$20,$20,$20
       defb $20,$20,$20,$20,$20,$20,$20,$20
       defb $54,$48,$45,$20,$46,$4f,$4c,$4c
       defb $4f,$57,$49,$4e,$47,$20,$46,$49
       defb $58,$45,$44,$20,$4b,$45,$59,$53
       defb $20,$20,$20,$20,$20,$60,$60,$60
       defb $60,$60,$60,$60,$60,$60,$60,$60
       defb $60,$60,$60,$60,$60,$60,$60,$60
       defb $60,$60,$60,$60,$60,$60,$60,$60
       defb $60,$60,$60,$20,$20,$20,$20,$43
       defb $41,$50,$53,$20,$53,$48,$49,$46
       defb $54,$20,$26,$20,$48,$2e,$2e,$2e
       defb $2e,$2e,$2e,$2e,$2e,$48,$4f,$4c
       defb $44,$20,$20,$20,$20,$20,$20,$20
       defb $20,$20,$20,$20,$20,$20,$20,$20
       defb $20,$20,$20,$20,$20,$20,$20,$20
       defb $20,$20,$20,$20,$20,$20,$20,$20
       defb $20,$20,$20,$20,$20,$20,$20,$43
       defb $41,$50,$53,$20,$53,$48,$49,$46
       defb $54,$20,$26,$20,$41,$2e,$2e,$2e
       defb $2e,$2e,$2e,$2e,$41,$42,$4f,$52
       defb $54,$20,$20,$20,$20,$60,$60,$60
       defb $60,$60,$60,$60,$60,$60,$60,$60
       defb $60,$60,$60,$60,$60,$60,$60,$60
       defb $60,$60,$60,$60,$60,$60,$60,$60
       defb $60,$60,$60,$20,$20,$20,$20,$20
       defb $20,$20,$20,$80,$ef,$22,$22,$0d
       defb $80,$00,$00,$f3,$5e,$00,$20,$20
       defb $20,$20,$20,$20,$00,$00,$00,$80
       defb $00,$00,$00,$43,$48,$55,$43,$4b
       defb $49,$45,$20,$20,$20,$58,$06,$0a
       defb $00,$12,$00,$0d,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00


       org $6ec8

; current player score
$6ec8: defb $00,$00,$00,$00,$00,$00

; player 1 score
$6ece: defb $00,$00,$00,$00,$00,$00

; player 2 score
$6ed4: defb $00,$00,$00,$00,$00

; player 3 score
$6ed9: defb $00,$00,$00,$00,$00,$00,$00

; player 4 score
$6ee0: defb $00,$00,$00,$00,$00,$00

; current eggs left
$6ee6: defb $00

; player 1 eggs left
$6ee7: defb $00

; player 2 eggs left
$6ee8: defb $00

; player 3 eggs left
$6ee9: defb $00

; player 4 eggs left
$6eea: defb $00

; current level - 1
$6eeb: defb $00

; player 1 level - 1
$6eec: defb $00

; player 2 level - 1
$6eed: defb $00

; player 3 level - 1
$6eee: defb $00

; player 4 level - 1
$6eef: defb $00

; player 1 lives
$6ef0: defb $00

; player 2 lives
$6ef1: defb $00

; player 3 lives
$6ef2: defb $00

; player 4 lives
$6ef3: defb $00

              org $72d8

; x position
$72d8: defb $00

; y position
$72d9: defb $00,$00

; current player sprite
$72db: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00

; input selection mechanism
$732d: defb $00

; bitmask to select for up key
$732e: defb $00

; input to port fe for up key
$732f: defb $00

; bitmask to select for down key
$7330: defb $00

; input to port fe for down key
$7331: defb $00

; bitmask to select for left key
$7332: defb $00

; input to port fe for left key
$7333: defb $00

; bitmask to select for right key
$7334: defb $00

; input to port fe for right key
$7335: defb $00

; bitmask to select first jump key
$7336: defb $00

; input to port fe for first jump key
$7337: defb $00

; bitmask to select second jump key
$7338: defb $00

; input to port fe for second jump key
$7339: defb $00

; number of players
$733a: defb $00

; current player
$733b: defb $00

; game status buffer entry at 733c
$733c: defb $00

; screen position for the active score display
$733d: defb $00,$00

; bonus / 10
$733f: defb $00,$00,$00

; time
$7342: defb $00,$00,$00

; game status buffer entry at 7345
$7345: defb $00,$00,$00

; co-ordinates of the mother duck
$7348: defb $00,$00

; game status buffer entry at 734a
$734a: defb $00,$00,$00,$00

; screen position of first lift
$734e: defb $00,$00

; set to ff to disable lifts
$7350: defb $00

; y co-ordinate of first lift
$7351: defb $00

; screen position of second lift
$7352: defb $00,$00

; y co-ordinate of second lift
$7354: defb $00

; set to 1 if travelling upwards on a lift
$7355: defb $00

; co-ordinates of duckling
$7356: defb $00,$00,$00,$00,$00

; co-ordinates of duckling
$735b: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00

; speed of ducklings (?)
$736b: defb $00,$00,$00,$00,$00,$00,$00,$00

; set to ff if the fuller orator is active
$7373: defb $00

; current fuller orator data
$7374: defb $00,$00

       org $8214

; data block at 8214
$8214: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$01
       defb $02,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$a8,$a9,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$1d,$f7,$1d,$fb
       defb $1d,$ef,$1e,$ef,$1d,$fe,$1b,$7f
       defb $17,$ef,$0f,$ef,$0f,$f7,$1b,$ef
       defb $17,$f7,$1d,$ef,$1e,$fb,$1e,$fd
       defb $1d,$df,$1e,$df,$1b,$7f,$1e,$f7

; scrolling message buffer
$8274: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$70,$72,$65,$73,$73,$00
       defb $52,$00,$74,$6f,$00,$72,$65,$64
       defb $65,$66,$69,$6e,$65,$00,$6b,$65
       defb $79,$73,$00,$00,$70,$72,$65,$73
       defb $73,$00,$53,$00,$74,$6f,$00,$73
       defb $74,$61,$72,$74,$00,$67,$61,$6d
       defb $65,$00,$00,$70,$72,$65,$73,$73
       defb $00,$31,$2c,$32,$00,$6f,$72,$00
       defb $33,$00,$74,$6f,$00,$73,$65,$6c
       defb $65,$63,$74,$00,$6b,$65,$79,$00
       defb $74,$79,$70,$65,$00,$00,$00,$00
       defb $00,$00,$00,$00

; instructions
       defm "keys are user defineable.      "
       defb $00
       defm "cannot"
       defb $00
       defm "be"
       defb $00
       defm "changed"
       defb $00
       defm "but"
       defb $00
       defm "the"
       defb $00
       defm "type"
       defb $00
       defm "3key"
       defb $00
       defm "types"
       defb $00
       defm "1"
       defb $00
       defm "&"
       defb $00
       defm "2"
       defb $00
       defm "are"
       defb $00
       defm "preset"
       defb $00
       defm "and"
       defb $00
       defb $00
       defm "3     q    a    o    p    m or 12     --cursor--keys--    4 or 91 "
       defm "    2    w    9    0    z or m"
       defb $c8
       defb $c9
       defb $ca
       defb $cb
       defm " "
       defb $b8
       defb $b9
       defb $ba
       defm "  "
       defb $bb
       defb $bc
       defb $bd
       defm "  "
       defb $be
       defb $bf
       defb $c0
       defm "  "
       defb $c1
       defb $c2
       defb $c3
       defm "    "
       defb $c4
       defb $c5
       defb $c6
       defb $c7
       defm " "
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defm "keys"
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defm "the"
       defb $00
       defm "hen-house."
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defm "objective-"
       defb $00
       defm "to"
       defb $00
       defm "collect"
       defb $00
       defm "eggs"
       defb $00
       defm "from"
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defm "instructions"
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00
       defb $00

; udgs
;
; #udg$84f0 #udg$84f8 #udg$8500 #udg$8508 #udg$8510 #udg$8518
; .
; #udg$8520 #udg$8528 #udg$8530 #udg$8538 #udg$8540 #udg$8548 #udg$8550
; #udg$8558 #udg$8560 #udg$8568 #udg$8570 #udg$8578 #udg$8580 #udg$8588
; #udg$8590 #udg$8598 #udg$85a0 #udg$85a8 #udg$85b0 #udg$85b8 #udg$85c0
; #udg$85c8 #udg$85d0 #udg$85d8 #udg$85e0 #udg$85e8
$84f0: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $30,$30,$30,$3f,$3f,$30,$30,$30
       defb $0c,$0c,$0c,$fc,$fc,$0c,$0c,$0c
       defb $38,$7e,$ff,$ff,$ff,$7e,$38,$00
       defb $00,$00,$00,$10,$28,$54,$aa,$00
       defb $fb,$00,$bf,$00,$ef,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$fe,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $63,$94,$84,$64,$14,$14,$94,$63
       defb $19,$a5,$25,$25,$25,$25,$a5,$19
       defb $cf,$28,$28,$ce,$48,$48,$28,$2f
       defb $00,$f2,$8a,$8a,$f2,$82,$82,$83
       defb $00,$0e,$11,$11,$1f,$11,$11,$d1
       defb $00,$45,$45,$29,$11,$11,$11,$11
       defb $00,$ee,$09,$09,$ee,$09,$09,$e9
       defb $00,$fb,$20,$20,$20,$20,$20,$23
       defb $00,$e8,$8c,$8b,$88,$88,$88,$e8
       defb $00,$5e,$d0,$50,$5e,$50,$50,$5e
       defb $00,$00,$00,$e0,$a4,$ee,$a4,$a0
       defb $00,$00,$00,$e1,$81,$e1,$80,$81
       defb $00,$00,$00,$dd,$15,$d5,$55,$dd
       defb $00,$00,$00,$dd,$09,$c9,$09,$08
       defb $00,$00,$00,$17,$15,$17,$55,$a5
       defb $00,$00,$00,$77,$54,$67,$54,$57
       defb $00,$e3,$94,$94,$e4,$94,$94,$e3
       defb $00,$25,$a5,$b5,$ad,$a5,$a5,$24
       defb $00,$26,$29,$28,$26,$21,$29,$c6
       defb $00,$87,$84,$84,$87,$84,$84,$f7
       defb $00,$00,$00,$00,$00,$00,$00,$00

; character set
;
; #udg$85f0 #udg$86f8 #udg$8600 #udg$8608 #udg$8610 #udg$8618 #udg$8620
; #udg$8628 #udg$8630 #udg$8638 #udg$8640 #udg$8648 #udg$8650 #udg$8658
; #udg$8660 #udg$8668 #udg$8670 #udg$8678 #udg$8680 #udg$8688 #udg$8690
; #udg$8698 #udg$86a0 #udg$86a8 #udg$86b0 #udg$86b8 #udg$86c0 #udg$86c8
; #udg$86d0 #udg$86d8 #udg$86e0 #udg$86e8
; .
; #udg$86f0 #udg$86f8 #udg$8700 #udg$8708 #udg$8710 #udg$8718 #udg$8720
; #udg$8728 #udg$8730 #udg$8738 #udg$8740 #udg$8748 #udg$8750 #udg$8758
; #udg$8760 #udg$8768 #udg$8770 #udg$8778 #udg$8780 #udg$8788 #udg$8790
; #udg$8798 #udg$87a0 #udg$87a8 #udg$87b0 #udg$87b8 #udg$87c0 #udg$87c8
; #udg$87d0 #udg$87d8 #udg$87e0 #udg$87e8
; .
; #udg$87f0 #udg$87f8 #udg$8800 #udg$8808 #udg$8810 #udg$8818 #udg$8820
; #udg$8828 #udg$8830 #udg$8838 #udg$8840 #udg$8848 #udg$8850 #udg$8858
; #udg$8860 #udg$8868 #udg$8870 #udg$8878 #udg$8880 #udg$8888 #udg$8890
; #udg$8898 #udg$88a0 #udg$88a8 #udg$88b0 #udg$88b8 #udg$88c0 #udg$88c8
; #udg$88d0 #udg$88d8 #udg$88e0 #udg$88e8
; .
; #udg$88f0 #udg$88f8 #udg$8900 #udg$8908 #udg$8910 #udg$8918 #udg$8920
; #udg$8928 #udg$8930 #udg$8938 #udg$8940 #udg$8948 #udg$8950 #udg$8958
; #udg$8950
$85f0: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $08,$08,$08,$08,$08,$08,$00,$08
       defb $24,$24,$00,$00,$00,$00,$00,$00
       defb $00,$24,$7e,$24,$24,$7e,$24,$00
       defb $00,$10,$7c,$50,$7c,$14,$7c,$10
       defb $00,$62,$64,$08,$10,$26,$46,$00
       defb $00,$10,$28,$10,$2a,$44,$3a,$00
       defb $00,$08,$10,$00,$00,$00,$00,$00
       defb $08,$10,$10,$10,$10,$10,$10,$08
       defb $10,$08,$08,$08,$08,$08,$08,$10
       defb $00,$00,$14,$08,$3e,$08,$14,$00
       defb $08,$08,$08,$7f,$08,$08,$08,$00
       defb $00,$00,$00,$00,$00,$08,$08,$10
       defb $00,$00,$00,$00,$7e,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$18,$18
       defb $01,$02,$04,$08,$10,$20,$40,$00
       defb $3e,$43,$45,$49,$51,$61,$41,$3e
       defb $08,$18,$28,$08,$08,$08,$08,$3e
       defb $3e,$41,$01,$0e,$30,$40,$40,$7f
       defb $3e,$41,$01,$1e,$01,$01,$41,$3e
       defb $40,$48,$48,$48,$7f,$08,$08,$08
       defb $7f,$40,$40,$7e,$01,$01,$41,$3e
       defb $3e,$40,$40,$7e,$41,$41,$41,$3e
       defb $7f,$01,$02,$04,$08,$10,$10,$10
       defb $3e,$41,$41,$3e,$41,$41,$41,$3e
       defb $3e,$41,$41,$3f,$01,$01,$41,$3e
       defb $00,$18,$18,$00,$00,$18,$18,$00
       defb $00,$18,$18,$00,$00,$18,$18,$30
       defb $04,$08,$10,$20,$10,$08,$04,$00
       defb $00,$00,$3e,$00,$00,$3e,$00,$00
       defb $20,$10,$08,$04,$08,$10,$20,$00
       defb $3e,$41,$01,$02,$04,$08,$00,$08
       defb $1e,$21,$4d,$55,$55,$4f,$20,$1e
       defb $3e,$41,$41,$41,$7f,$41,$41,$41
       defb $7e,$41,$41,$7e,$41,$41,$41,$7e
       defb $3e,$41,$40,$40,$40,$40,$41,$3e
       defb $7e,$41,$41,$41,$41,$41,$41,$7e
       defb $7f,$41,$40,$7c,$40,$40,$41,$7f
       defb $7f,$41,$40,$7c,$40,$40,$40,$40
       defb $3e,$41,$40,$40,$47,$41,$41,$3e
       defb $41,$41,$41,$7f,$41,$41,$41,$41
       defb $7f,$08,$08,$08,$08,$08,$08,$7f
       defb $7f,$08,$08,$08,$08,$08,$48,$30
       defb $42,$44,$48,$70,$48,$44,$42,$42
       defb $40,$40,$40,$40,$40,$40,$40,$7f
       defb $41,$63,$55,$49,$41,$41,$41,$41
       defb $41,$61,$51,$49,$45,$43,$41,$41
       defb $3e,$41,$41,$41,$41,$41,$41,$3e
       defb $7e,$41,$41,$41,$7e,$40,$40,$40
       defb $3e,$41,$41,$41,$49,$45,$43,$3e
       defb $7e,$41,$41,$41,$7e,$44,$42,$41
       defb $3e,$41,$40,$3e,$01,$01,$41,$3e
       defb $7f,$08,$08,$08,$08,$08,$08,$08
       defb $41,$41,$41,$41,$41,$41,$41,$3e
       defb $41,$41,$41,$41,$41,$22,$14,$08
       defb $41,$41,$41,$41,$41,$49,$55,$22
       defb $41,$22,$14,$08,$08,$14,$22,$41
       defb $41,$22,$14,$08,$08,$08,$08,$08
       defb $7f,$02,$04,$08,$10,$20,$40,$7f
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$3c,$66,$66,$7e,$66,$66,$66
       defb $00,$7c,$66,$66,$78,$66,$66,$7c
       defb $00,$3c,$66,$60,$60,$60,$66,$3c
       defb $00,$7c,$66,$66,$66,$66,$66,$7c
       defb $00,$7e,$62,$60,$7c,$60,$62,$7e
       defb $00,$7e,$62,$60,$7c,$60,$60,$60
       defb $00,$3c,$66,$60,$6e,$62,$62,$3c
       defb $00,$66,$66,$66,$7e,$66,$66,$66
       defb $00,$7e,$18,$18,$18,$18,$18,$7e
       defb $00,$7f,$0c,$0c,$0c,$4c,$4c,$38
       defb $00,$66,$66,$6c,$78,$6c,$66,$66
       defb $00,$60,$60,$60,$60,$60,$62,$7e
       defb $00,$c6,$ee,$d6,$c6,$c6,$c6,$c6
       defb $00,$66,$66,$76,$7e,$6e,$66,$66
       defb $00,$3c,$66,$66,$66,$66,$66,$3c
       defb $00,$7c,$66,$66,$7c,$60,$60,$60
       defb $00,$3c,$66,$66,$66,$76,$6c,$3a
       defb $00,$7c,$66,$66,$78,$66,$66,$66
       defb $00,$3c,$66,$60,$3c,$06,$66,$3c
       defb $00,$7e,$18,$18,$18,$18,$18,$18
       defb $00,$66,$66,$66,$66,$66,$66,$3c
       defb $00,$66,$66,$66,$66,$66,$3c,$18
       defb $00,$c6,$c6,$c6,$c6,$d6,$ee,$c6
       defb $00,$66,$66,$3c,$18,$3c,$66,$66
       defb $00,$66,$66,$3c,$18,$18,$18,$18
       defb $00,$7e,$06,$0c,$18,$30,$60,$7e
       defb $00,$08,$1c,$3e,$7f,$3e,$1c,$08
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $3c,$42,$b9,$a5,$b9,$a5,$42,$3c
       defb $3c,$42,$99,$a1,$a1,$99,$42,$3c
       defb $f0,$f0,$f0,$f0,$00,$00,$00,$00
       defb $0f,$0f,$0f,$0f,$00,$00,$00,$00
       defb $ff,$ff,$ff,$ff,$00,$00,$00,$00
       defb $00,$00,$00,$00,$f0,$f0,$f0,$f0
       defb $f0,$f0,$f0,$f0,$f0,$f0,$f0,$f0
       defb $0f,$0f,$0f,$0f,$f0,$f0,$f0,$f0
       defb $ff,$ff,$ff,$ff,$f0,$f0,$f0,$f0
       defb $00,$00,$00,$00,$0f,$0f,$0f,$0f
       defb $f0,$f0,$f0,$f0,$0f,$0f,$0f,$0f
       defb $0f,$0f,$0f,$0f,$0f,$0f,$0f,$0f
       defb $ff,$ff,$ff,$ff,$0f,$0f,$0f,$0f
       defb $00,$00,$00,$00,$ff,$ff,$ff,$ff
       defb $f0,$f0,$f0,$f0,$ff,$ff,$ff,$ff
       defb $0f,$0f,$0f,$0f,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff

; udgs - high score defaults
;
; #udg$8968 #udg$8970 #udg$8978 #udg$8980 #udg$8988 #udg$8990 #udg$8998
; #udg$89a0 #udg$89a8 #udg$89b0 #udg$89b8 #udg$89c0
$8968: defb $00,$00,$f0,$92,$f7,$92,$90,$00
       defb $00,$00,$70,$40,$70,$40,$40,$00
       defb $00,$00,$e9,$89,$8f,$89,$e9,$00
       defb $00,$00,$4b,$4a,$4a,$4a,$7b,$00
       defb $00,$00,$a5,$28,$30,$28,$a5,$00
       defb $00,$00,$dc,$90,$9c,$90,$dc,$00
       defb $00,$00,$3b,$22,$3a,$22,$3b,$00
       defb $00,$00,$de,$10,$d6,$52,$de,$00
       defb $00,$4e,$a9,$89,$4e,$28,$a8,$48
       defb $00,$42,$a5,$84,$82,$81,$a5,$42
       defb $00,$42,$a5,$84,$42,$21,$a5,$42
       defb $00,$e9,$89,$8d,$eb,$89,$89,$e9

; udgs - "level"
;
; #udg$89c8 #udg$89d0 #udg$89d8
$89c8: defb $00,$87,$84,$84,$87,$84,$84,$f7
       defb $00,$a2,$22,$22,$a2,$22,$14,$88
       defb $00,$f4,$84,$84,$f4,$84,$84,$f7

; udgs - level number
;
; #udg$89e0 #udg$89e8 #udg$89f0 #udg$89f8 #udg$8a00 #udg$8a08 #udg$8a10
; #udg$8a18 #udg$8a20 #udg$8a28
$89e0: defb $00,$1e,$21,$23,$25,$29,$31,$1e
       defb $00,$04,$0c,$14,$04,$04,$04,$1f
       defb $00,$1e,$21,$01,$1e,$20,$20,$3f
       defb $00,$1e,$21,$01,$0e,$01,$21,$1e
       defb $00,$06,$0a,$12,$22,$3f,$02,$02
       defb $00,$3f,$20,$3e,$01,$01,$21,$1e
       defb $00,$1e,$21,$20,$3e,$21,$21,$1e
       defb $00,$3f,$01,$02,$04,$08,$08,$08
       defb $00,$1e,$21,$21,$1e,$21,$21,$1e
       defb $00,$1e,$21,$21,$1f,$01,$21,$1e

; udgs - mother duck's cage
;
; #udg$85f0 #udg$8a30 #udg$8a38 #udg$85f0
; .
; #udg$8a40 #udg$8a48 #udg$8a50 #udg$8a58
; .
; #udg$8a60 #udg$8a68 #udg$8a70 #udg$8a78
; .
; #udg$8a80 #udg$8a88 #udg$8a90 #udg$8a9a
$8a30: defb $00,$00,$07,$0c,$08,$0c,$07,$01
       defb $00,$00,$c0,$60,$20,$60,$c0,$00
       defb $00,$00,$03,$05,$0a,$15,$29,$2a
       defb $1f,$e0,$18,$67,$89,$11,$11,$21
       defb $f0,$0e,$31,$cc,$22,$11,$11,$08
       defb $00,$00,$80,$40,$a0,$50,$28,$a8
       defb $52,$52,$52,$52,$72,$5a,$57,$52
       defb $21,$21,$21,$21,$21,$21,$21,$df
       defb $08,$08,$08,$08,$08,$08,$09,$fe
       defb $94,$94,$94,$94,$9c,$b4,$d4,$94
       defb $52,$52,$52,$52,$32,$0a,$07,$00
       defb $21,$21,$21,$21,$21,$21,$21,$ff
       defb $08,$08,$08,$08,$08,$08,$09,$fe
       defb $94,$94,$94,$94,$98,$b0,$c0,$00

; udgs - lives / level
;
; #udg$8aa0 #udg$8aa8
$8aa0: defb $00,$00,$1c,$1c,$7f,$00,$00,$00
       defb $18,$3c,$3c,$7e,$7e,$7e,$7e,$3c

; udgs - game text
;
; #udg$8ab0 #udg$8ab8 #udg$8ac0 #udg$8ac8 #udg$8ad0 #udg$8ad8 #udg$8ae0
; #udg$8ae8 #udg$8af0 #udg$8af8 #udg$8b00 #udg$8b08 #udg$8b10 #udg$8b18
; #udg$8b20 #udg$8b28 #udg$8b30 #udg$8b38 #udg$8b40 #udg$8b48
$8ab0: defb $00,$02,$02,$02,$02,$03,$00,$03
       defb $00,$27,$24,$27,$24,$e4,$00,$ff
       defb $00,$c0,$40,$c0,$00,$00,$00,$c0
       defb $00,$fd,$45,$45,$45,$fd,$00,$ff
       defb $00,$f4,$14,$15,$15,$f7,$00,$ff
       defb $00,$51,$59,$55,$53,$d1,$00,$ff
       defb $00,$83,$82,$83,$82,$fb,$00,$ff
       defb $00,$e7,$04,$c7,$04,$e4,$00,$ff
       defb $00,$df,$04,$84,$04,$04,$00,$ff
       defb $00,$f2,$92,$f2,$a2,$92,$00,$ff
       defb $00,$7a,$42,$5b,$4a,$7a,$00,$ff
       defb $00,$5f,$44,$c4,$44,$44,$00,$ff
       defb $00,$7e,$08,$08,$48,$78,$00,$ff
       defb $00,$42,$42,$42,$42,$7e,$00,$ff
       defb $00,$7f,$49,$49,$41,$41,$00,$ff
       defb $00,$3f,$21,$3f,$20,$20,$00,$ff
       defb $00,$fe,$10,$10,$10,$10,$00,$ff
       defb $00,$41,$22,$1c,$08,$08,$00,$ff
       defb $00,$3f,$21,$3f,$20,$20,$00,$ff
       defb $00,$3f,$20,$3c,$20,$3f,$00,$ff

; data block at 8b50
$8b50: defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00

; sprite - player right
;
; #udg$8df0,6,,2#udg$8df1,6,,2 #udg$8e10,6,,2#udg$8e11,6,,2
; #udg$8e30,6,,2#udg$8e31,6,,2 #udg$8e50,6,,2#udg$8e51,6,,2
; .
; #udg$8e00,6,,2#udg$8e01,6,,2 #udg$8e20,6,,2#udg$8e21,6,,2
; #udg$8e40,6,,2#udg$8e41,6,,2 #udg$8e60,6,,2#udg$8e61,6,,2
$8df0: defb $00,$00,$03,$80,$03,$c0,$03,$c0
       defb $3f,$fc,$03,$40,$03,$c0,$01,$80
       defb $03,$e0,$06,$f0,$06,$f0,$06,$e0
       defb $03,$c0,$01,$00,$01,$c0,$00,$00
       defb $00,$00,$03,$80,$03,$c0,$03,$c0
       defb $3f,$fc,$03,$40,$03,$c0,$01,$80
       defb $03,$e0,$06,$f0,$05,$f0,$05,$e0
       defb $03,$c0,$04,$50,$02,$20,$00,$00
       defb $00,$00,$03,$80,$03,$c0,$03,$c0
       defb $3f,$fc,$03,$40,$03,$c0,$01,$80
       defb $03,$e0,$06,$f0,$06,$f0,$06,$e0
       defb $03,$c0,$01,$00,$01,$c0,$00,$00
       defb $00,$00,$03,$80,$03,$c0,$03,$c0
       defb $3f,$fc,$03,$40,$03,$c0,$01,$80
       defb $03,$e0,$06,$f0,$07,$30,$07,$e0
       defb $03,$c0,$04,$50,$02,$20,$00,$00

; sprite - player left
;
; #udg$8e70,6,,2#udg$8e71,6,,2 #udg$8e90,6,,2#udg$8e91,6,,2
; #udg$8eb0,6,,2#udg$8eb1,6,,2 #udg$8ed0,6,,2#udg$8ed1,6,,2
; .
; #udg$8e80,6,,2#udg$8e81,6,,2 #udg$8ea0,6,,2#udg$8ea1,6,,2
; #udg$8ec0,6,,2#udg$8ec1,6,,2 #udg$8ee0,6,,2#udg$8ee1,6,,2
$8e70: defb $00,$00,$01,$c0,$03,$c0,$03,$c0
       defb $3f,$fc,$02,$c0,$03,$c0,$01,$80
       defb $07,$c0,$0f,$60,$0f,$60,$07,$60
       defb $03,$c0,$00,$80,$03,$80,$00,$00
       defb $00,$00,$01,$c0,$03,$c0,$03,$c0
       defb $3f,$fc,$02,$c0,$03,$c0,$01,$80
       defb $07,$c0,$0f,$60,$0f,$a0,$07,$a0
       defb $03,$c0,$0a,$20,$04,$40,$00,$00
       defb $00,$00,$01,$c0,$03,$c0,$03,$c0
       defb $3f,$fc,$02,$c0,$03,$c0,$01,$80
       defb $07,$c0,$0f,$60,$0f,$60,$07,$60
       defb $03,$c0,$00,$80,$03,$80,$00,$00
       defb $00,$00,$01,$c0,$03,$c0,$03,$c0
       defb $3f,$fc,$02,$c0,$03,$c0,$01,$80
       defb $07,$c0,$0f,$60,$0c,$e0,$07,$e0
       defb $03,$c0,$0a,$20,$04,$40,$00,$00

; sprite - mother duck right
;
; #udg$8ef0,6,,2#udg$8ef1,6,,2 #udg$8f10,6,,2#udg$8f11,6,,2
; .
; #udg$8f00,6,,2#udg$8f01,6,,2 #udg$8f20,6,,2#udg$8f21,6,,2
$8ef0: defb $00,$79,$00,$ee,$00,$fc,$00,$fa
       defb $00,$71,$00,$70,$00,$30,$00,$38
       defb $1e,$1c,$7f,$9c,$ff,$fc,$bf,$7c
       defb $4f,$78,$70,$f0,$3f,$e0,$0f,$80
       defb $00,$78,$00,$ec,$00,$ff,$00,$f8
       defb $00,$70,$00,$70,$00,$30,$00,$38
       defb $1e,$1c,$70,$9c,$cf,$7c,$bf,$7c
       defb $7f,$f8,$7f,$f0,$3f,$e0,$0f,$80

; sprite - mother duck right
;
; #udg$8f30,6,,2#udg$8f31,6,,2 #udg$8f50,6,,2#udg$8f51,6,,2
; .
; #udg$8f40,6,,2#udg$8f41,6,,2 #udg$8f60,6,,2#udg$8f61,6,,2
$8f30: defb $9e,$00,$77,$00,$3f,$00,$5f,$00
       defb $8e,$00,$0e,$00,$0c,$00,$1c,$00
       defb $38,$78,$39,$fe,$3f,$ff,$3e,$fd
       defb $1e,$f2,$0f,$0e,$07,$fc,$01,$f0
       defb $1e,$00,$37,$00,$ff,$00,$1f,$00
       defb $0e,$00,$0e,$00,$0c,$00,$1c,$00
       defb $38,$78,$39,$0e,$3e,$f3,$3e,$fd
       defb $1f,$fe,$0f,$fe,$07,$fc,$01,$f0

; data block at 8f70
$8f70: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00

; sprite - player climbing ladder
;
; #udg$8f90,6,,2#udg$8f91,6,,2 #udg$8fb0,6,,2#udg$8fb1,6,,2
; #udg$8fd0,6,,2#udg$8fd1,6,,2 #udg$8ff0,6,,2#udg$8ff1,6,,2
; .
; #udg$8fa0,6,,2#udg$8fa1,6,,2 #udg$8fc0,6,,2#udg$8fc1,6,,2
; #udg$8fe0,6,,2#udg$8fe1,6,,2 #udg$9000,6,,2#udg$9001,6,,2
$8f90: defb $00,$00,$02,$40,$03,$c0,$03,$c0
       defb $3f,$fc,$03,$c0,$09,$80,$17,$e0
       defb $1f,$f0,$0f,$f8,$07,$e8,$07,$e8
       defb $02,$70,$02,$00,$0e,$00,$00,$00
       defb $00,$00,$02,$40,$03,$c0,$03,$c0
       defb $3f,$fc,$03,$c0,$01,$80,$07,$e0
       defb $1f,$f8,$0f,$f0,$07,$e0,$07,$e0
       defb $02,$40,$0e,$70,$00,$00,$00,$00
       defb $00,$00,$02,$40,$03,$c0,$03,$c0
       defb $3f,$fc,$03,$c0,$01,$90,$07,$e8
       defb $0f,$f8,$1f,$f0,$17,$e0,$17,$e0
       defb $0e,$40,$00,$40,$00,$70,$00,$00
       defb $00,$00,$02,$40,$03,$c0,$03,$c0
       defb $3f,$fc,$03,$c0,$01,$80,$07,$e0
       defb $1f,$f8,$0f,$f0,$07,$e0,$07,$e0
       defb $02,$40,$0e,$70,$00,$00,$00,$00

; sprite - duckling l
;
; #udg$9010,5,,2#udg$9011,5,,2
; .
; #udg$9020,5,,2#udg$9021,5,,2
$9010: defb $30,$00,$d0,$00,$30,$00,$20,$00
       defb $40,$00,$40,$00,$c0,$00,$ce,$00
       defb $ff,$00,$ff,$00,$7f,$00,$3e,$00
       defb $08,$00,$08,$00,$08,$00,$18,$00

; sprite - duckling r
;
; #udg$9030,5,,2#udg$9031,5,,2
; .
; #udg$9040,5,,2#udg$9041,5,,2
$9030: defb $0c,$00,$0b,$00,$0c,$00,$04,$00
       defb $02,$00,$02,$00,$03,$00,$73,$00
       defb $ff,$00,$ff,$00,$fe,$00,$7c,$00
       defb $10,$00,$10,$00,$10,$00,$18,$00

; sprite - duckling climbing ladder
;
; #udg$9050,5,,2#udg$9051,5,,2 #udg$9070,5,,2#udg$9071,5,,2
; .
; #udg$9060,5,,2#udg$9061,5,,2 #udg$9080,5,,2#udg$9081,5,,2
$9050: defb $01,$80,$03,$c0,$03,$c0,$01,$80
       defb $01,$80,$01,$80,$07,$e0,$0f,$f0
       defb $0f,$f0,$0f,$f0,$07,$e0,$02,$40
       defb $02,$60,$02,$00,$02,$00,$06,$00
       defb $01,$80,$03,$c0,$03,$c0,$01,$80
       defb $01,$80,$01,$80,$07,$e0,$0f,$f0
       defb $0f,$f0,$0f,$f0,$07,$e0,$02,$40
       defb $06,$40,$00,$40,$00,$40,$00,$60

; sprite - duckling l
;
; #udg$9090,5,,2#udg$9091,5,,2
; .
; #udg$90a0,5,,2#udg$90a1,5,,2
$9090: defb $0b,$00,$05,$00,$0b,$00,$02,$00
       defb $04,$00,$04,$00,$0c,$00,$0c,$e0
       defb $0f,$f0,$0f,$f0,$07,$f0,$03,$e0
       defb $01,$80,$0a,$40,$04,$20,$00,$40

; sprite - duckling r
;
; #udg$90b0,5,,2#udg$90b1,5,,2
; .
; #udg$90c0,5,,2#udg$90c1,5,,2
$90b0: defb $00,$d0,$00,$a0,$00,$d0,$00,$40
       defb $00,$20,$00,$20,$00,$30,$07,$30
       defb $0f,$f0,$0f,$f0,$0f,$e0,$07,$c0
       defb $01,$80,$02,$50,$04,$20,$02,$00

; sprite - duckling eating corn l
;
; #udg$90d0,5,,2#udg$90d1,5,,2
; .
; #udg$90e0,5,,2#udg$90e1,5,,2
$90d0: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$70,$00,$58,$1e
       defb $27,$ff,$51,$ff,$00,$7f,$10,$3e
       defb $28,$08,$54,$08,$aa,$08,$00,$18

; sprite - duckling eating corn r
;
; #udg$90f0,5,,2#udg$90f1,5,,2
; .
; #udg$9100,5,,2#udg$9101,5,,2
$90f0: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$0e,$78,$1a
       defb $ff,$e4,$ff,$8a,$fe,$00,$7c,$08
       defb $10,$14,$10,$2a,$10,$55,$18,$00

; data block at 9110
$9110: defb $00,$00,$00,$00,$00,$00,$0c,$00
       defb $0f,$00,$0f,$80,$1f,$c0

; move the ducklings
;
; used by the routine at #r$9858.
$911e: ld a,($6eeb)
       cp $08
       jr c,$9128
       cp $10
       ret c
$9128: ld hl,($736c)
       inc hl
       ld h,$00
       ld ($736c),hl
       ld c,$01
       bit 0,(hl)
       jr z,$9138
       dec c
$9138: ld hl,$7356
       ld a,(hl)
       inc a
       cp $05
       jr nz,$9142
       xor a
$9142: ld (hl),a
       sla a
       sla a
       add a,$57
       ld h,$73
       ld l,a
       ld e,(hl)
       ld a,e
       xor $ff
       ret z
       inc hl
       ld d,(hl)
       inc hl
       ld a,(hl)
       ex de,hl
       xor a
       call $929c
       ex de,hl
       ld a,(hl)
       cp $07
       jr c,$9178
       ld c,e
       sub $06
       ld (hl),a
       ld b,a
       cp $02
       jr z,$916d
       ld a,e
       sub $08
       ld e,a
$916d: ex de,hl
       xor a
       call $929c
       ld a,b
       ld l,c
       call $929c
       ret
$9178: cp $03
       jr nc,$91f3
       bit 2,e
       jr nz,$91a5
       ld b,a
       call $9265
       ld a,e
       add a,$08
       jr c,$91a1
       djnz $918f
       sub $10
       jr c,$91a1
$918f: ld e,a
       dec d
       ex de,hl
       call $9438
       ex de,hl
       and a
       jr z,$91a1
       cp $03
       jr c,$91a5
       cp $05
       jr z,$91a5
$91a1: ld a,$03
       sub (hl)
       ld (hl),a
$91a5: ld b,(hl)
       dec hl
       ld d,(hl)
       dec hl
       ld a,(hl)
       add a,$04
       djnz $91b0
       sub $08
$91b0: ld (hl),a
       inc b
       ld e,a
       ex de,hl
       ld a,b
       call $929c
       inc de
       inc de
       bit 2,l
       ret z
       dec c
       ret nz
       push hl
       ld hl,($736c)
       ld a,(hl)
       pop hl
       ld c,$02
       bit 1,a
       jr z,$91df
$91cb: push hl
       ld a,h
       sub $08
       ld h,a
       call $9438
       pop hl
       dec a
       jr z,$91db
       dec c
       jr nz,$91df
       ret
$91db: ld a,$03
       ld (de),a
       ret
$91df: push hl
       ld a,h
       add a,$10
       ld h,a
       call $9438
       pop hl
       dec a
       jr z,$91ef
       dec c
       jr nz,$91cb
       ret
$91ef: ld a,$04
       ld (de),a
       ret
$91f3: bit 2,d
       jr nz,$920e
       sub $02
       ld b,a
       ld a,d
       add a,$10
       djnz $9201
       sub $18
$9201: ld d,a
       ex de,hl
       call $9438
       ex de,hl
       dec a
       jr z,$920e
       ld a,$07
       sub (hl)
       ld (hl),a
$920e: ld b,(hl)
       dec hl
       ld a,(hl)
       dec hl
       ld e,(hl)
       add a,$04
       dec b
       dec b
       djnz $921b
       sub $08
$921b: inc hl
       ld (hl),a
       ld d,a
       ex de,hl
       ld a,b
       add a,$03
       call $929c
       bit 2,h
       ret nz
       dec c
       ret nz
       inc de
       ld a,h
       sub $08
       ld h,a
       push hl
       ld hl,($736c)
       ld a,(hl)
       pop hl
       ld c,$02
       bit 1,a
       jr z,$9250
$923b: push hl
       ld a,l
       sub $08
       ld l,a
       call $9438
       pop hl
       cp $05
       jr z,$924c
       dec c
       ret z
       jr $9250
$924c: ld a,$01
       ld (de),a
       ret
$9250: push hl
       ld a,l
       add a,$10
       ld l,a
       call $9438
       pop hl
       cp $05
       jr z,$9261
       dec c
       ret z
       jr $923b
$9261: ld a,$02
       ld (de),a
       ret

; see if any duckling can eat corn
;
; used by the routine at #r$911e.
$9265: push bc
       push hl
       push de
       ld a,e
       add a,$08
       jr c,$9298
       ld e,a
       ld a,(hl)
       cp $02
       jr z,$9279
       ld a,e
       sub $10
       jr c,$9298
       ld e,a
$9279: ex de,hl
       call $9e34
       cp $04
       jr nz,$9298
       ld (hl),$00
       ld a,(de)
       add a,$06
       ld (de),a
       pop hl
       cp $08
       jr z,$9290
       ld a,l
       sub $08
       ld l,a
$9290: ld a,(de)
       call $929c
       pop hl
       pop hl
       pop hl
       ret
$9298: pop de
       pop hl
       pop bc
       ret

; see if the player has collided with a duckling
;
; used by the routines at #r$911e and #r$9265.
$929c: push bc
       push de
       push af
       push hl
       ex de,hl
       ld hl,$72d8
       ld a,e
       add a,$05
       cp (hl)
       jr c,$92c2
       sub $0d
       jr nc,$92af
       xor a
$92af: cp (hl)
       jr nc,$92c2
       inc hl
       ld a,d
       cp (hl)
       jr nc,$92c2
       add a,$1c
       cp (hl)
       jr c,$92c2
       ld b,$06
$92be: pop hl
       djnz $92be
       ret
$92c2: pop hl
       pop af
       push af
       push hl
       and a
       jp z,$935f
       ld ixh,a
       cp $04
       jr nz,$92d1
       dec a
$92d1: ex de,hl
       cp $07
       jr nc,$92e7
       cp $03
       jr nz,$92e1
       bit 2,d
       jr z,$92e7
       inc a
       jr $92e7
$92e1: bit 2,e
       jr z,$92e7
       add a,$04
$92e7: ld b,$00
       ld c,a
       sla c
       sla c
       sla c
       sla c
       sla c
       rl b
       ld hl,$900e
       add hl,bc
       ex de,hl
       ld c,$02
       ld a,l
       cp $f9
       jr c,$9303
       dec c
$9303: call $9404
       ld b,$10
$9308: ld a,(de)
       dec c
       jr z,$9317
       inc de
       or (hl)
       ld (hl),a
       inc hl
       ld a,(de)
       or (hl)
       dec de
       dec de
       dec de
       ld (hl),a
       dec hl
$9317: inc c
       dec h
       ld a,h
       and $07
       cp $07
       jr nz,$932e
       ld a,h
       add a,$08
       ld h,a
       ld a,l
       sub $20
       ld l,a
       jr nc,$932e
       ld a,h
       sub $08
       ld h,a
$932e: djnz $9308
       pop hl
       push hl
       ld d,$02
       ld a,ixh
       cp $07
       jr nc,$933f
       bit 2,l
       jr nz,$933f
       dec d
$933f: ld e,$03
       bit 2,h
       jr nz,$9346
       dec e
$9346: call $93dd
$9349: ld b,d
       push hl
$934b: ld (hl),$05
       inc hl
       djnz $934b
       pop hl
       ld bc,$0020
       and a
       sbc hl,bc
       dec e
       jr nz,$9349
       pop hl
       pop af
       pop de
       pop bc
       ret
$935f: ld ixl,$02
       ld a,l
       cp $f8
       jr c,$9369
       dec ixl
$9369: ld a,h
       and $f8
       ld h,a
       call $9404
       ex de,hl
       pop hl
       push hl
       call $93fe
       push hl
       pop bc
       pop hl
       push hl
       call $93dd
       ld ixh,$03
$9380: push ix
       push hl
       push bc
       push de
$9385: push hl
       ld a,(bc)
       add a,$4f
       ld h,$98
       ld l,a
       ld a,(hl)
       pop hl
       ld (hl),a
       push hl
       push bc
       ld a,(bc)
       sla a
       sla a
       sla a
       ld hl,$84f7
       ld b,$00
       ld c,a
       add hl,bc
       push de
       ld b,$08
$93a2: ld a,(hl)
       ld (de),a
       dec d
       dec hl
       djnz $93a2
       pop de
       inc de
       pop bc
       inc bc
       pop hl
       inc hl
       dec ixl
       jr nz,$9385
       pop de
       pop bc
       pop hl
       ld a,e
       sub $20
       ld e,a
       jr nc,$93bf
       ld a,d
       sub $08
       ld d,a
$93bf: push de
       ld de,$0020
       and a
       sbc hl,de
       push hl
       push bc
       pop hl
       add hl,de
       push hl
       pop bc
       pop hl
       pop de
       pop ix
       dec ixh
       jr nz,$9380
       pop hl
       pop af
       pop de
       pop bc
       ld ix,$72d8
       ret

; return the display file and attribute address of a sprite
;
; used by the routine at #r$929c.
;
; hl on input, y and x co-ordinates. on output, attribute address
; de on output, display file address
$93dd: push af
       push de
       ld a,$bf
       sub h
       ld h,$00
       ex de,hl
       ld hl,$5800
       srl e
       srl e
       srl e
       add hl,de
       and $f8
       sla a
       rl d
       sla a
       rl d
       ld e,a
       add hl,de
       pop de
       pop af
       ret

; return the room buffer location at the position specified
;
; used by the routine at #r$929c.
;
; hl on input, holds y and x position. on output, holds address in the room
; .  buffer
$93fe: push af
       call $9e34
       pop af
       ret

; return the display file address of a sprite
;
; used by the routine at #r$929c.
;
; hl on input, y and x co-ordinates. on output, the display file address
$9404: push af
       push de
       push bc
       ex de,hl
       ld hl,$4000
       ld bc,$0800
       ld a,d
       cp $80
       jr nc,$9419
       cp $40
       jr nc,$9418
       add hl,bc
$9418: add hl,bc
$9419: and $38
       ld c,a
       ld a,$38
       sub c
       sla a
       sla a
       ld b,$00
       ld c,a
       add hl,bc
       ld a,d
       and $07
       xor $07
       ld d,a
       srl e
       srl e
       srl e
       add hl,de
       pop bc
       pop de
       pop af
       ret

; return the udg at the location specified
;
; used by the routine at #r$911e.
$9438: push hl
       call $9e34
       pop hl
       ret

; unused
       defb $f1,$c9

; unused
       defb $e5,$cd,$34,$9e,$e1,$c9

; data block at 9446
$9446: defb $00,$08,$7a,$fe,$80,$30,$06,$fe
       defb $40,$30,$01,$09,$09,$e6,$38,$4f
       defb $3e,$38,$91,$cb,$27

; data block at 945b
$945b: defb $cb,$27,$06,$00,$4f,$09,$7a,$e6
       defb $07,$ee,$07,$57,$cb,$3b,$cb,$3b
       defb $cb,$3b,$19,$c1,$d1,$08,$68,$88
       defb $02,$00,$48,$68,$01,$00,$40,$48
       defb $01,$00,$98,$08,$02,$00,$48,$28
       defb $01,$00,$0c,$10,$08,$02,$00,$48
       defb $88,$02,$00,$e0,$48,$02,$00,$90
       defb $48,$01,$00,$a8,$88,$01,$00,$0c
       defb $10,$68,$01,$00,$e8,$20,$01,$00
       defb $70,$80,$02,$00,$64,$50,$03,$00
       defb $0c,$28,$04,$00,$10,$28,$08,$01
       defb $00,$d8,$08,$02,$00,$d8,$88,$02
       defb $00,$78,$88,$02,$00,$58,$08,$01
       defb $00,$10,$10,$28,$01,$00,$28,$48
       defb $02,$00,$28,$68,$01,$00,$a8,$48
       defb $02,$00,$e0,$08,$02,$00,$10,$18
       defb $08,$01,$00,$18,$68,$01,$00,$c0
       defb $28,$02,$00,$e8,$68,$02,$00,$a0
       defb $48,$02,$00,$0c,$c8,$88,$01,$00
       defb $0c,$58,$04,$00,$bc,$40,$03,$00
       defb $28,$68,$02,$00,$0c,$18,$04,$00
       defb $0c,$7c,$70,$04,$00,$7c,$30,$04
       defb $00,$a0,$08,$01,$00,$38,$48,$01
       defb $00,$c0,$48,$02,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00

; redraw the attributes after a sprite moves
;
; used by the routines at #r$9858, #r$a0c8, #r$a21c and #r$a294.
$9538: push af
       push bc
       push de
       push hl
       ld b,$03
       ld a,l
       cp $f1
       jr c,$9544
       dec b
$9544: ld c,$03
       ld a,h
       cp $11
       jr nc,$954c
       dec c
$954c: call $9584
       call $95a6
$9552: push bc
       push de
       push hl
$9555: ld a,(hl)
       cp $09
       jr c,$955e
       ld a,$06
       jr $9566
$955e: add a,$4f
       push bc
       ld b,$98
       ld c,a
       ld a,(bc)
       pop bc
$9566: ld (de),a
       inc de
       inc hl
       djnz $9555
       pop hl
       ld de,$0020
       and a
       sbc hl,de
       pop de
       push hl
       ex de,hl
       ld de,$0020
       add hl,de
       ex de,hl
       pop hl
       pop bc
       dec c
       jr nz,$9552
       pop hl
       pop de
       pop bc
       pop af
       ret

; return an attribute address given co-ordinates
;
; used by the routine at #r$9538.
;
; de co-ordinates to convert
; hl the attribute address
$9584: push af
       push hl
       ld a,$bf
       sub h
       ld h,$00
       ex de,hl
       ld hl,$5800
       srl e
       srl e
       srl e
       add hl,de
       and $f8
       sla a
       rl d
       sla a
       rl d
       ld e,a
       add hl,de
       ex de,hl
       pop hl
       pop af
       ret

; return the location in the room buffer for a co-ordinate
;
; used by the routine at #r$9538.
;
; hl on entry, contains co-ordinates to convert. on exit, holds the location in
; .  the buffer
$95a6: push af
       push de
       ex de,hl
       ld hl,current_level_data
       ld a,d
       ld d,$00
       srl e
       srl e
       srl e
       add hl,de
       and $f8
       ld e,a
       sla e
       rl d
       sla e
       rl d
       add hl,de
       pop de
       pop af
       ret

; data block at 95c5
$95c5: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00

; data block at 9630
$9630: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$62,$79,$00,$00
       defb $6e,$2e,$61,$6c,$64,$65,$72,$74
       defb $6f,$6e,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $31,$00,$74,$6f,$00,$34,$00,$70
       defb $6c,$61,$79,$65,$72,$73,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$6f,$66,$00
       defb $73,$6b,$69,$6c,$6c,$00,$66,$6f
       defb $72,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$61,$00,$67,$61
       defb $6d,$65,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$82,$80
       defb $81,$82,$00,$82,$80,$00,$00,$00
       defb $00,$00,$00,$00,$86,$00,$84,$8a
       defb $89,$81,$84,$00,$00,$00,$00,$00
       defb $00,$00,$86,$80,$85,$82,$87,$82
       defb $80,$7f,$00,$00,$82,$80,$80,$80
       defb $82,$80,$82,$80,$80,$81,$81,$82
       defb $81,$82,$84,$00,$86,$84,$84,$84
       defb $84,$00,$86,$83,$00,$84,$89,$82
       defb $86,$80,$84,$84,$84,$84,$86,$80
       defb $84,$85,$81,$86,$89,$82,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$70,$72,$65
       defb $73,$65,$6e,$74,$73,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$41,$00
       defb $26,$00,$46,$00,$53,$4f,$46,$54
       defb $57,$41,$52,$45,$0b,$0c,$0d,$0e
       defb $0f,$10,$11,$9f,$00,$00,$9b,$9c
       defb $9d,$00,$9e,$9f,$00,$00,$1b,$1c
       defb $1d,$00,$9f,$9e,$9e,$9e,$00,$00
       defb $12,$13,$14,$00,$a7,$9e,$9e

; data block at 9787
$9787: defb $05,$05,$ff,$00,$05,$05,$ff,$00
       defb $05,$05,$ff,$00,$e8,$54,$40,$03
       defb $f2,$54,$90,$03,$f9,$54,$c8,$03
       defb $ef,$54,$78,$03,$fe,$54,$f0,$03

; data block at 97a7
$97a7: defb $05,$05,$ff,$00,$6e,$73,$00,$00

; data block at 97af
$97af: defb $20,$8f,$90,$91,$92,$93,$94,$95
       defb $96,$20,$30,$30,$31,$30,$30,$30
       defb $20,$8f,$90,$91,$92,$93,$94,$95
       defb $96,$20,$30,$30,$31,$30,$30,$30
       defb $20,$8f,$90,$91,$92,$93,$94,$95
       defb $96,$20,$30,$30,$31,$30,$30,$30
       defb $20,$8f,$90,$91,$92,$93,$94,$95
       defb $96,$20,$30,$30,$31,$30,$30,$30
       defb $20,$8f,$90,$91,$92,$93,$94,$95
       defb $96,$20,$30,$30,$31,$30,$30,$30
       defb $20,$8f,$90,$91,$92,$93,$94,$95
       defb $96,$20,$30,$30,$31,$30,$30,$30
       defb $20,$8f,$90,$91,$92,$93,$94,$95
       defb $96,$20,$30,$30,$31,$30,$30,$30
       defb $20,$8f,$90,$91,$92,$93,$94,$95
       defb $96,$20,$30,$30,$31,$30,$30,$30
       defb $20,$8f,$90,$91,$92,$93,$94,$95
       defb $96,$20,$30,$30,$31,$30,$30,$30
       defb $20,$8f,$90,$91,$92,$93,$94,$95
       defb $96,$20,$30,$30,$31,$30,$30,$30
       defb $06,$03,$03,$07,$03,$04,$06,$07
       defb $07

; run the game
;
; used by the routine at #r$ae9c.
$9858: ld hl,($5c3d)
       dec hl
       ld a,h
       or l
$985e: jr nz,$985e
       ld hl,$7370
       ld a,($72dc)
       and $0f
       jr nz,$987e
       ld a,(hl)
       and a
       jr z,$987e
       dec (hl)
       and $03
       jr nz,$987e
       ld a,(hl)
       and $1f
       add a,$06
       ld h,a
       ld l,$02
       call $9ca4
$987e: ld a,($7325)
       and a
       jr z,$98b7
       ld a,($72dc)
       dec a
       jr nz,$9895
       ld l,$01
       ld a,($72d9)
       xor $ff
       ld h,a
       call $9ca4
$9895: ld a,($7328)
       push af
       call $a21c
       pop af
       dec a
       jr nz,$98b7
       ld hl,$7357
       ld b,$05
$98a5: ld e,(hl)
       ld a,e
       xor $ff
       jr z,$98b7
       inc hl
       ld d,(hl)
       inc hl
       inc hl
       inc hl
       call $9e66
       and a
       ret nz
       djnz $98a5
$98b7: ld hl,$72dc
       dec (hl)
       jp nz,$99dc
; pause or abort the game if the appropriate keys are pressed
       ld (hl),$82
       ld a,$fe
       in a,($fe)
       bit 0,a
       jr nz,$98e6
       ld a,$bf
       in a,($fe)
       bit 4,a
       jr nz,$98da
$98d0: ld a,$fd
       in a,($fe)
       bit 1,a
       jr nz,$98d0
       jr $98e6
$98da: ld a,$fd
       in a,($fe)
       bit 0,a
       jr nz,$98e6
       pop hl
       jp $a410
$98e6: ld a,($7347)
       and a
       jr z,$98f9
       ld hl,$7345
       dec (hl)
       jr nz,$98f9
       ld (hl),$32
       ld b,$00
       call $a1b8
$98f9: ld hl,$734c
       dec (hl)
       jr nz,$9904
       ld (hl),$0c
       call $a0c8
$9904: ld hl,$733c
       dec (hl)
       jr nz,$991f
       ld (hl),$02
       call $a014
       ld a,($7355)
       and a
       jr z,$991f
; travel upwards on an elevator
       ld a,($72d9)
       inc a
       ld ($72d9),a
       cp $a5
       ret nc
$991f: call $99df
       ld hl,$7346
       dec (hl)
       jr nz,$9935
       ld (hl),$0a
       ld b,$01
       call $a1b8
       ld hl,$0402
       call $9ca4
$9935: ld hl,$736b
       dec (hl)
       jr nz,$9949
       ld c,$03
       ld a,($6eeb)
       cp $20
       jr c,$9945
       dec c
$9945: ld (hl),c
       call $911e
$9949: ld hl,($72d8)
       call $9538
; check for user input
       ld a,($7325)
       and a
       jr nz,$99c1
       ld a,($7337)
       in a,($fe)
       and $1f
       ld c,a
       ld a,($7336)
       or c
       cp $1f
       jr nz,$9975
       ld a,($7339)
       in a,($fe)
       and $1f
       ld c,a
       ld a,($7338)
       or c
       cp $1f
       jr z,$99c1
$9975: ld ix,$72d8
       ld (ix+$4d),$02
       ld (ix+$4f),$8c
       ld (ix+$50),$00
       ld (ix+$52),$01
       ld (ix+$7d),$00
       ld d,$01
       ld e,$00
       ld a,($7335)
       in a,($fe)
       and $1f
       ld c,a
       ld a,($7334)
       or c
       cp $1f
       jr nz,$99b9
       ld d,$ff
       ld e,$04
       ld a,($7333)
       in a,($fe)
       and $1f
       ld c,a
       ld a,($7332)
       or c
       cp $1f
       jr nz,$99b9
       inc d
       ld e,(ix+$03)
$99b9: ld (ix+$4e),d
       ld (ix+$03),e
       jr $99dc
$99c1: ld a,($7325)
       and a
       jr nz,$99d9
       call $9f60
       ld a,($72db)
       cp $0d
       call nz,$9d08
       ld a,($7355)
       and a
       call z,$b34c
$99d9: call $9e98
$99dc: jp $9858

; check if the player has picked up an egg or corn
;
; used by the routine at #r$9858.
$99df: ld hl,($72d8)
       ld a,h
       sub $08
       ld h,a
       ld a,l
       add a,$08
       ld l,a
       call $9e34
       cp $03
       jr nz,$9a17
       ld (hl),$00
       ld a,($6eeb)
       srl a
       srl a
       cp $09
       jr c,$9a00
       ld a,$09
$9a00: ld b,a
       inc b
       xor a
$9a03: add a,$0a
       djnz $9a03
       ld b,a
       call $a3a7
       ld a,$ff
       ld ($7370),a
       ld hl,$6ee6
       dec (hl)
       ret nz
       pop hl
       ret
$9a17: cp $04
       ret nz
       ld (hl),$00
       ld b,$05
       call $a3a7
       ld hl,$ffff
       ld ($7345),hl
       ld a,l
       ld ($7370),a
       ret
       and e
       ld hl,$ffff
       ld ($7345),hl
       ld a,l
       ld ($7370),a
       ret
       dec b
       call $a3a7
       ld hl,$ffff
       ld ($7345),hl
       ld a,l
       ld ($7370),a
       ret

; data block at 9a47
$9a47: defb $00,$00,$00,$00,$00

; draw a sprite
;
; used by the routines at #r$9d08, #r$9e98, #r$a0c8, #r$a256 and #r$a37f.
;
; hl co-ordinates
; a id of the sprite to draw
$9a4c: push af
       push bc
       push de
       push ix
       push hl
       ld c,l
       ld hl,$8df0
       ld e,a
       xor a
       rl e
       rla
       rl e
       rla
       rl e
       rla
       rl e
       rla
       rl e
       rla
       ld d,a
       add hl,de
       ld de,$72a0
       ld b,$10
       xor a
$9a6f: ldi
       ldi
       inc bc
       inc bc
       ld (de),a
       inc de
       djnz $9a6f
       ld a,$07
       and c
       cp $00
       jr z,$9a93
$9a80: ld b,$10
       ld hl,$72a0
$9a85: srl (hl)
       inc hl
       rr (hl)
       inc hl
       rr (hl)
       inc hl
       djnz $9a85
       dec a
       jr nz,$9a80
$9a93: pop hl
       push hl
       ld ix,$72dd
       ex de,hl
       ld hl,current_level_data
       ld a,d
       and $f8
       ld b,$00
       sla a
       rl b
       sla a
       rl b
       ld c,a
       add hl,bc
       ld b,$00
       ld c,e
       srl c
       srl c
       srl c
       add hl,bc
       ex de,hl
       ld bc,$0303
$9aba: push bc
       ld hl,$84f0
       ld a,(de)
       ld b,$00
       sla a
       rl b
       sla a
       rl b
       sla a
       rl b
       ld c,a
       add hl,bc
       ld b,$08
$9ad1: ld a,(hl)
       ld (ix+$00),a
       inc ix
       inc ix
       inc ix
       inc hl
       djnz $9ad1
       ld b,$17
$9ae0: dec ix
       djnz $9ae0
       pop bc
       inc de
       djnz $9aba
       ex de,hl
       ld de,$0023
       and a
       sbc hl,de
       ld de,$0015
       add ix,de
       ex de,hl
       ld b,$03
       dec c
       jr nz,$9aba
       pop hl
       push hl
       ld a,h
       and $07
       xor $07
       ld h,a
       sla a
       add a,h
       ld c,a
       ld b,$00
       ld hl,$72dd
       ld de,$72a0
       add hl,bc
       ld b,$30
$9b11: ld a,(de)
       or (hl)
       ld (de),a
       inc de
       inc hl
       djnz $9b11
       pop de
       push de
       ld hl,$4000
       ld bc,$0800
       ld a,d
       cp $80
       jr nc,$9b2b
       cp $40
       jr nc,$9b2a
       add hl,bc
$9b2a: add hl,bc
$9b2b: and $38
       ld c,a
       ld a,$38
       sub c
       sla a
       sla a
       ld c,a
       ld b,$00
       add hl,bc
       ld a,d
       and $07
       ld c,a
       ld a,$07
       sub c
       ld d,a
       srl e
       srl e
       srl e
       add hl,de
       ex de,hl
       ld b,$10
       ld hl,$72a0
$9b4e: ld a,(hl)
       ld (de),a
       inc hl
       inc e
       ld a,(hl)
       ld (de),a
       inc hl
       inc e
       ld a,(hl)
       ld (de),a
       inc hl
       dec e
       dec e
       inc d
       ld a,d
       and $07
       jr nz,$9b6f
       ld a,d
       sub $08
       ld d,a
       ld a,e
       add a,$20
       ld e,a
       jr nc,$9b6f
       ld a,d
       add a,$08
       ld d,a
$9b6f: djnz $9b4e
       pop hl
       push hl
       ld c,$03
       ld a,l
       cp $f1
       jr c,$9b7b
       dec c
$9b7b: ld b,$03
       ld a,h
       and $07
       xor $07
       jr z,$9b89
       ld a,h
       cp $11
       jr nc,$9b8a
$9b89: dec b
$9b8a: call $9bde
       ld de,$0020
$9b90: ld ixl,c
       push hl
$9b93: ld (hl),$06
       inc hl
       dec ixl
       jr nz,$9b93
       pop hl
       add hl,de
       djnz $9b90
       ld hl,$7348
       ld a,($72d8)
       add a,$08
       jr nc,$9baa
       ld a,$ff
$9baa: cp (hl)
       jr c,$9bd7
       sub $10
       jr nc,$9bb2
       xor a
$9bb2: cp (hl)
       jr nc,$9bd7
       inc hl
       ld a,($72d9)
       add a,$09
       cp (hl)
       jr c,$9bd7
       sub $12
       jr nc,$9bc3
       xor a
$9bc3: cp (hl)
       jr nc,$9bd7
       ld b,$05
$9bc8: pop hl
       djnz $9bc8
       ld bc,$a410
$9bce: pop hl
       push hl
       and a
       sbc hl,bc
       ret nc
       pop hl
       jr $9bce
$9bd7: pop hl
       pop ix
       pop de
       pop bc
       pop af
       ret

; convert a sprite's co-ordinates to a screen address
;
; used by the routine at #r$9a4c.
;
; hl co-ordinates to look up
; de holds the screen address on return
$9bde: push af
       push de
       ld a,$bf
       sub h
       ld h,$00
       ex de,hl
       ld hl,$5800
       srl e
       srl e
       srl e
       add hl,de
       and $f8
       sla a
       rl d
       sla a
       rl d
       ld e,a
       add hl,de
       pop de
       pop af
       ret

; data block at 9bff
$9bff: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00

; print a string of udgs
;
; used by the routines at #r$a3a7, #r$a410, #r$a4c8, #r$a59d, #r$a80c, #r$a9ce,
; #r$aa49, #r$ab19, #r$abad and #r$ae9c.
;
; de address of udgs
; h y position
; l x position
$9c40: nop
       nop
       nop
       nop
       push hl
       push bc
       push de
       push af
       ld a,h
       ex de,hl
       ld hl,$4000
       ld bc,$0800
       cp $10
       jr nc,$9c5a
       cp $08
       jr nc,$9c59
       add hl,bc
$9c59: add hl,bc
$9c5a: and $07
       xor $07
       sla a
       sla a
       sla a
       sla a
       sla a
       ld c,a
       ld b,$00
       add hl,bc
       ld c,e
       add hl,bc
       pop af
       push af
       ld c,a
       xor a
       sla c
       rla
       sla c
       rla
       sla c
       rla
       ld b,a
       ex de,hl
       ld hl,$84f0
       add hl,bc
       ld b,$08
$9c83: ld a,(hl)
       ld (de),a
       inc hl
       inc d
       djnz $9c83
       pop af
       pop de
       pop bc
       pop hl
       ret

; data block at 9c8e
$9c8e: defb $c1,$e1,$c9,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00

; im2 hook
$9c9c: jp $9cc2

; data block at 9c9f
$9c9f: defb $00,$00,$00,$00,$00

; play a sound
;
; used by the routines at #r$9858, #r$9d08, #r$9e98 and #r$a59d.
;
; h frequency
; l length
$9ca4: ld a,$10
       out ($fe),a
       ld b,h
$9ca9: djnz $9ca9
       xor a
       out ($fe),a
       ld b,h
$9caf: djnz $9caf
       dec l
       jr nz,$9ca4
       ret

; data block at 9cb5
$9cb5: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00

; im2 - play fuller orator
;
; used by the routine at #r$9c9c.
$9cc2: push af
       push hl
       ld a,($7373)
       cp $ff
       jr z,$9ce6
       dec a
       jr z,$9cd3
       ld ($7373),a
       jr $9ce6
$9cd3: ld hl,($7374)
       ld a,(hl)
       ld ($7373),a
       cp $ff
       jr z,$9ce6
       inc hl
       ld a,(hl)
       out ($9f),a
       inc hl
       ld ($7374),hl
$9ce6: pop hl
       ei
       pop af
       reti

; set up a sound to play through the fuller orator
;
; used by the routines at #r$a389, #r$a410, #r$a4c8, #r$a59d, #r$a80c, #r$aae4
; and #r$b14f.
;
; a sound data
$9ceb: ld b,a
       ld a,($7373)
       cp $ff
       ret nz
       ld hl,$c8c6
$9cf5: inc hl
       inc hl
       djnz $9cf5
       ld e,(hl)
       inc hl
       ld d,(hl)
       ld ($7374),de
       ld a,$01
       ld ($7373),a
       ret

; data block at 9d06
$9d06: defb $00,$00

; check for left or right input and move the player accordingly
;
; used by the routine at #r$9858.
$9d08: ld ix,$72d8
       ld hl,($72d8)
       ld a,($72db)
       and a
       jr nz,$9d16
       dec l
$9d16: ex de,hl
       ld hl,current_level_data
       ld a,d
       and $f8
       ld b,$00
       sla a
       rl b
       sla a
       rl b
       ld c,a
       add hl,bc
       ld b,$00
       ld c,e
       srl c
       srl c
       srl c
       add hl,bc
       ld bc,$0020
       ld a,($7333)
       in a,($fe)
       and $1f
       ld d,a
       ld a,($7332)
       or d
       cp $1f
       jr z,$9d6f
       ld a,($72d8)
       dec a
       jr z,$9dab
       ld a,(hl)
       cp $05
       jr nc,$9dab
       and a
       sbc hl,bc
       ld a,(hl)
       cp $05
       jr nc,$9dab
       dec (ix+$00)
       ld (ix+$03),$04
       ld a,($72d8)
       and $03
       jr nz,$9d6d
       ld hl,$2805
       call $9ca4
$9d6d: jr $9daf
$9d6f: ld a,($7335)
       in a,($fe)
       and $1f
       ld d,a
       ld a,($7334)
       or d
       cp $1f
       jr z,$9dab
       ld a,($72d8)
       cp $ee
       jr nc,$9dab
       inc hl
       inc hl
       ld a,(hl)
       cp $05
       jr nc,$9dab
       and a
       sbc hl,bc
       ld a,(hl)
       cp $05
       jr nc,$9dab
       inc (ix+$00)
       ld (ix+$03),$00
       ld a,($72d8)
       and $03
       jr nz,$9da9
       ld hl,$2806
       call $9ca4
$9da9: jr $9daf
$9dab: ld (ix+$02),$03
$9daf: ld hl,($72d8)
       ld a,($72da)
       inc a
       and $03
       ld ($72da),a
       add a,(ix+$03)
       call $9a4c
       ld a,($7355)
       and a
       ret z
       ld a,($7350)
       xor $ff
       ret z
       xor $ff
       sub $09
       ld b,a
       ld a,($72d8)
       cp b
       jr c,$9ddb
       sub $13
       cp b
       ret c
$9ddb: ld (ix+$4d),$01
       ld d,$ff
       ld a,($72db)
       and a
       jr nz,$9de9
       ld d,$01
$9de9: ld (ix+$4e),d
       ld (ix+$4f),$04
       ret

; data block at 9df1
$9df1: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00

; return the udg at the location specified
;
; used by the routines at #r$9265, #r$93fe, #r$9438, #r$99df, #r$a294 and
; #r$b34c.
;
; the y and x position
; a on exit, holds the relevant udg
; hl on input, holds y and x position. on output, holds address in the room
; .  buffer
; a on exit, holds the relevant udg
$9e34: push de
       push bc
       ex de,hl
       ld hl,current_level_data
       ld a,d
       and $f8
       ld b,$00
       sla a
       rl b
       sla a
       rl b
       ld c,a
       add hl,bc
       ld b,$00
       ld c,e
       srl c
       srl c
       srl c
       add hl,bc
       ld a,(hl)
       pop bc
       pop de
       ret
       pop hl
       ret

; data block at 9e59
$9e59: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00

; check there is enough headroom to jump
;
; used by the routine at #r$9858.
;
; a 1 if there is room, otherwise 0
$9e66: push hl
       ld hl,$72d8
       ld a,e
       add a,$01
       jr c,$9e8a
       add a,$04
       cp (hl)
       jr c,$9e8a
       sub $0d
       jr nc,$9e79
       xor a
$9e79: cp (hl)
       jr nc,$9e8a
       inc hl
       ld a,d
       cp (hl)
       jr nc,$9e8a
       add a,$1c
       cp (hl)
       jr c,$9e8a
       ld a,$01
       pop hl
       ret
$9e8a: xor a
       pop hl
       ret

; data block at 9e8d
$9e8d: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00

; move the player onto a ladder
;
; used by the routine at #r$9858.
$9e98: ld ix,$72d8
       ld a,(ix+$00)
       and $07
       ret nz
       ld hl,($72d8)
       inc h
       ex de,hl
       ld hl,current_level_data
       ld b,$00
       ld a,d
       and $f8
       sla a
       rl b
       sla a
       rl b
       ld c,a
       add hl,bc
       ld b,$00
       ld c,e
       srl c
       srl c
       srl c
       add hl,bc
       ld a,(hl)
       dec a
       jr nz,$9eed
       ld a,($732f)
       in a,($fe)
       and $1f
       ld c,a
       ld a,($732e)
       or c
       cp $1f
       jr z,$9eed
       ld (ix+$03),$0d
       inc (ix+$01)
       ld a,($72d9)
       and $03
       jr nz,$9eeb
       ld hl,$1e14
       call $9ca4
$9eeb: jr $9f25
$9eed: ld bc,$0040
       and a
       sbc hl,bc
       ld bc,$0020
       ld a,d
       and $07
       jr nz,$9efd
       sbc hl,bc
$9efd: ld a,(hl)
       dec a
       jr nz,$9f32
       ld a,($7331)
       in a,($fe)
       and $1f
       ld c,a
       ld a,($7330)
       or c
       cp $1f
       jr z,$9f32
       ld (ix+$03),$0d
       dec (ix+$01)
       ld a,($72d9)
       and $03
       jr nz,$9f25
       ld hl,$1e15
       call $9ca4
$9f25: ld a,(ix+$02)
       inc a
       and $03
       ld (ix+$02),a
       ld (ix+$4d),$00
$9f32: ld hl,($72d8)
       ld a,(ix+$02)
       add a,(ix+$03)
       call $9a4c
       ret

; data block at 9f3f
$9f3f: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00

; move the player off a ladder
;
; used by the routine at #r$9858.
$9f60: ld a,($72d9)
       inc a
       and $07
       ret nz
       ld hl,($72d8)
       ex de,hl
       ld hl,current_level_data
       ld a,d
       and $f8
       ld b,$00
       sla a
       rl b
       sla a
       rl b
       ld c,a
       add hl,bc
       ld b,$00
       ld c,e
       srl c
       srl c
       srl c
       add hl,bc
       ld bc,$0020
       ld a,($7333)
       in a,($fe)
       and $1f
       ld d,a
       ld a,($7332)
       or d
       cp $1f
       jr z,$9fb5
       dec hl
       ld a,(hl)
       cp $05
       ret nc
       and a
       sbc hl,bc
       ld a,(hl)
       cp $05
       ret nc
       and a
       sbc hl,bc
       ld a,(hl)
       and a
       ret z
       cp $09
       ret nc
       ld a,$04
       ld ($72db),a
       ret
$9fb5: ld a,($7335)
       in a,($fe)
       and $1f
       ld d,a
       ld a,($7334)
       or d
       cp $1f
       ret z
       inc hl
       inc hl
       ld a,(hl)
       cp $05
       ret nc
       and a
       sbc hl,bc
       ld a,(hl)
       cp $05
       ret nc
       and a
       sbc hl,bc
       ld a,(hl)
       and a
       ret z
       cp $09
       ret nc
       xor a
       ld ($72db),a
       ret

; data block at 9fdf
$9fdf: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00

; move the lifts
;
; used by the routine at #r$9858.
$a014: ld a,($7350)
       xor $ff
       ret z
       ld ix,$72d8
       ld hl,($734e)
       ld c,$00
       call $a07b
       ld a,($7351)
       inc a
       cp $a6
       jr c,$a03b
       ld hl,$9787
       ld bc,$0004
       ld de,$734e
       ldir
       ld a,$03
$a03b: ld ($7351),a
       ld hl,($734e)
       call $a0a9
       ld ($734e),hl
       ld c,$ff
       call $a07b
       ld hl,($7352)
       ld c,$00
       call $a07b
       ld a,($7354)
       inc a
       cp $a6
       jr c,$a069
       ld hl,$9787
       ld bc,$0003
       ld de,$7352
       ldir
       ld a,$03
$a069: ld ($7354),a
       ld hl,($7352)
       call $a0a9
       ld ($7352),hl
       ld c,$ff
       call $a07b
       ret

; invalidate a lift
;
; used by the routine at #r$a014.
;
; hl screen position to invalidate
$a07b: push hl
       dec hl
       ld (hl),$00
       inc hl
       inc hl
       inc hl
       ld a,l
       and $1f
       jr z,$a089
       ld (hl),$00
$a089: pop hl
       ld b,$04
$a08c: ld (hl),c
       inc l
       ld (hl),c
       dec l
       call $a096
       djnz $a08c
       ret
$a096: inc h
       ld a,h
       and $07
       ret nz
       ld a,h
       sub $08
       ld h,a
       ld a,l
       add a,$20
       ld l,a
       ret nc
       ld a,h
       add a,$08
       ld h,a
       ret

; draw a lift
;
; used by the routine at #r$a014.
;
; hl screen position to draw
$a0a9: dec h
       ld a,h
       and $07
       cp $07
       jr nz,$a0bf
       ld a,h
       add a,$08
       ld h,a
       ld a,l
       sub $20
       ld l,a
       jr nc,$a0bf
       ld a,h
       sub $08
       ld h,a
$a0bf: ret
       ld a,h
       sub $08
       ld h,a
       ret

; data block at a0c5
$a0c5: defb $73,$21,$ce

; move the mother duck
;
; used by the routine at #r$9858.
$a0c8: ld ix,$72d8
       ld a,($7348)
       cp (ix+$00)
       jr z,$a0ed
       jr c,$a0e1
       ld a,($734a)
       dec a
       cp $fa
       jr nz,$a0df
       inc a
$a0df: jr $a0ea
$a0e1: ld a,($734a)
       inc a
       cp $06
       jr nz,$a0ea
       dec a
$a0ea: ld ($734a),a
$a0ed: ld a,($7349)
       cp (ix+$01)
       jr z,$a10e
       jr c,$a102
       ld a,($734b)
       dec a
       cp $fa
       jr nz,$a100
       inc a
$a100: jr $a10b
$a102: ld a,($734b)
       inc a
       cp $06
       jr nz,$a10b
       dec a
$a10b: ld ($734b),a
$a10e: ld hl,($7348)
       ld a,$0c
       call $9a4c
       call $9538
       ld a,($7348)
       bit 7,(ix+$72)
       jr nz,$a135
       add a,(ix+$72)
       cp $ee
       jr c,$a144
       sub (ix+$72)
       sub (ix+$72)
       ld (ix+$72),$fb
       jr $a144
$a135: add a,(ix+$72)
       jr c,$a144
       sub (ix+$72)
       sub (ix+$72)
       ld (ix+$72),$05
$a144: ld ($7348),a
       ld a,($7349)
       add a,(ix+$73)
       cp $a6
       jr c,$a15d
       sub (ix+$73)
       sub (ix+$73)
       ld (ix+$73),$fb
       jr $a16b
$a15d: cp $14
       jr nc,$a16b
       sub (ix+$73)
       sub (ix+$73)
       ld (ix+$73),$05
$a16b: ld ($7349),a
; on level 8 and below, ignore the new position and stick the mother duck to
; the cage
       ld a,($6eeb)
       cp $08
       jr nc,$a17b
       ld hl,$9808
       ld ($7348),hl
$a17b: ld hl,($7348)
       ld c,$08
       ld a,($72d8)
       cp (ix+$70)
       jr nc,$a18a
       ld c,$0a
$a18a: ld a,c
       add a,(ix+$75)
       call $9a4c
       ld a,($734d)
       xor $01
       ld ($734d),a
       ret

; data block at a19a
$a19a: defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00

; decrease the timer and bonus
;
; used by the routines at #r$9858 and #r$a59d.
$a1b8: ld hl,$7341
       ld de,$0003
       inc b
       dec b
       jr z,$a1c3
       add hl,de
$a1c3: ld a,$ff
       ld d,$03
$a1c7: dec (hl)
       cp (hl)
       jr nz,$a1de
       dec d
       jr nz,$a1d9
       pop hl
       inc b
       dec b
       ret nz
       push hl
       ld hl,$7347
       ld (hl),$00
       ret
$a1d9: ld (hl),$09
       dec hl
       jr $a1c7
$a1de: ld de,$000a
       ld hl,$4053
       inc b
       dec b
       jr z,$a1e9
       add hl,de
$a1e9: ex de,hl
       ld hl,$733f
       inc b
       dec b
       jr z,$a1f4
       inc hl
       inc hl
       inc hl
$a1f4: push hl
       pop bc
       ld ixl,$03
$a1f9: push de
       ld a,(bc)
       sla a
       sla a
       sla a
       ld hl,$89e0
       push bc
       ld b,$00
       ld c,a
       add hl,bc
       ld b,$08
$a20b: ld a,(hl)
       ld (de),a
       inc d
       inc l
       djnz $a20b
       pop bc
       pop de
       inc de
       inc bc
       dec ixl
       jr nz,$a1f9
       ret
       ret
       nop

; see if the player is now in mid-air, and if so, fall
;
; used by the routine at #r$9858.
$a21c: ld a,($72dc)
       dec a
       jr z,$a22a
       ld a,($7325)
       dec a
       jp nz,$a2b5
       ret
$a22a: ld hl,($72d8)
       call $9538
       ld a,l
       add a,(ix+$4e)
       ld ($72d8),a
       and a
       jr nz,$a240
       ld (ix+$4e),$01
       jr $a248
$a240: cp $ee
       jr c,$a248
       ld (ix+$4e),$ff
$a248: ld hl,$7351
       call $a256
       ld hl,$7354
       call $a256
       jr $a294

; move the player up are down after jumping or falling
;
; used by the routine at #r$a21c.
$a256: ld a,($7350)
       xor $ff
       ret z
       xor $ff
       sub $09
       ld b,a
       ld a,($72d8)
       cp b
       ret c
       sub $13
       cp b
       ret nc
       ld b,$06
       ld a,(hl)
       add a,$10
$a26f: dec a
       cp (ix+$01)
       jr z,$a278
       djnz $a26f
       ret
$a278: ld (ix+$7d),$01
       ld (ix+$4d),$00
       ex de,hl
       ld hl,($72d8)
       ld a,$0c
       call $9a4c
       ld a,(de)
       add a,$11
       ld ($72d9),a
       pop hl
       call $a389
       ret

; make the player fall if we're in mid-air
;
; used by the routine at #r$a21c.
$a294: ld a,($7325)
       dec a
       jr nz,$a2b5
       dec (ix+$4f)
       jr nz,$a30f
       ld hl,$7325
       ld (hl),$02
       inc hl
       ld (hl),$00
       inc hl
       ld (hl),$fa
       ld (ix+$52),$ff
       ld a,($72da)
       call $a37f
       ret
; this entry point is used by the routine at #r$a21c.
$a2b5: ld hl,$7328
       dec (hl)
       ret nz
       push hl
       ld hl,($72d8)
       call $9538
       pop hl
       ld a,($732a)
       dec a
       jr z,$a2e1
       inc a
       and a
       jr nz,$a2d4
$a2cc: ld (ix+$52),$ff
       ld a,$fa
       jr $a2fb
$a2d4: ld a,($7327)
       sub $0a
       cp $28
       jr nc,$a2df
       ld a,$28
$a2df: jr $a2fb
$a2e1: ld a,($72d9)
       cp $a7
       jr c,$a2ed
       inc (ix+$01)
       jr $a2cc
$a2ed: ld a,($7327)
       add a,$0a
       cp $04
       jr nz,$a2fb
       ld (ix+$52),$00
       xor a
$a2fb: ld ($7327),a
       ld (hl),a
       ld a,($72d9)
       add a,(ix+$52)
       cp $10
       jr nc,$a30c
       pop hl
       pop hl
       ret
$a30c: ld ($72d9),a
$a30f: ld a,$01
       call $a37f
       call $9e34
       ld bc,$003f
       and a
       sbc hl,bc
       ld a,($732a)
       dec a
       jr z,$a356
       ld a,($7326)
       and a
       jr z,$a356
       dec a
       jr z,$a33e
       ld a,($72d8)
       and $07
       cp $04
       jr nc,$a356
       dec hl
       ld a,(hl)
       inc hl
       cp $05
       jr nz,$a356
       jr $a34e
$a33e: ld a,($72d8)
       and $07
       cp $03
       jr c,$a356
       inc hl
       ld a,(hl)
       dec hl
       cp $05
       jr nz,$a356
$a34e: ld a,($7326)
       xor $fe
       ld ($7326),a
$a356: ld a,(hl)
       and a
       ret z
       cp $05
       jr z,$a36a
       cp $03
       ret nc
       dec hl
       dec a
       jr z,$a366
       inc hl
       inc hl
$a366: ld a,(hl)
       cp $05
       ret nz
$a36a: ld a,($72d9)
       inc a
       and $07
       ret nz
       ld (ix+$4d),$00
       ld hl,$72db
       ld a,(hl)
       cp $0d
       ret nz
       ld (hl),$00
       ret

; redraw the player's position after moving in mid-air
;
; used by the routine at #r$a294.
$a37f: ld hl,($72d8)
       add a,(ix+$03)
       call $9a4c
       ret

; play a random sound through the fuller audiobox
;
; used by the routine at #r$a256.
$a389: ld a,r
       and $07
       inc a
       ld b,a
       ld hl,$a398
$a392: inc hl
       djnz $a392
       ld a,(hl)
       jp $9ceb
       inc b
       ld b,$09
       dec c
       ld (de),a
       ld d,$04
       dec c
       ret
       ld c,a
       inc b
       ret

; data block at a3a5
$a3a5: defb $00,$00

; update the score
;
; used by the routines at #r$99df, #r$a59d and #r$ae9c.
;
; r type of object that has scored points
$a3a7: ld a,b
       and a
       jr z,$a3e6
       ld a,$0a
$a3ad: ld hl,$6ecc
$a3b0: inc (hl)
       cp (hl)
       jr nz,$a3b9
       ld (hl),$00
       dec hl
       jr $a3b0
$a3b9: djnz $a3ad
       ld hl,$736e
       ld a,($6ec9)
       cp (hl)
       jr z,$a3e6
       ld (hl),a
       ld a,($733b)
       add a,$ef
       ld h,$6e
       ld l,a
       ld c,(hl)
       inc (hl)
       sub $ef
       ld b,a
       ld a,c
       cp $06
       jr nc,$a3e6
       ld a,$fd
$a3d9: add a,$07
       djnz $a3d9
       add a,c
       ld l,a
       ld h,$16
       ld a,$b6
       call $9c40
$a3e6: ld de,($733d)
       ld bc,$6ec8
       ld ixl,$06
$a3f0: push de
       ld a,(bc)
       sla a
       sla a
       sla a
       push bc
       add a,$70
       ld h,$86
       ld l,a
       ld b,$08
$a400: ld a,(hl)
       ld (de),a
       inc d
       inc l
       djnz $a400
       pop bc
       pop de
       inc de
       inc bc
       dec ixl
       jr nz,$a3f0
       ret
       nop

; main entry point
;
; used by the routine at #r$9858.
$a410: ld hl,$732d
       ld (hl),$06
       ld hl,$736f
       ld (hl),$00
       ld a,$b2
       ld i,a
       im 2
; this entry point is used by the routine at #r$a6fe.
$a420: call $ab9e
       ld h,$02
       ld bc,$9630
$a428: ld l,$00
$a42a: ld a,(bc)
       call $9c40
       inc bc
       inc l
       ld a,l
       cp $0e
       jr nz,$a42a
       inc h
       ld a,h
       cp $18
       jr nz,$a428
       call $abad
       ld hl,$5800
       ld b,$0e
       ld c,$04
       ld a,$03
       call $aa37
       ld c,$07
       ld a,$06
       call $aa37
       ld c,$0a
       ld a,$04
       call $aa37
       ld hl,$ae0c
       ld a,($736f)
       and a
       jr nz,$a46e
       call $ab60
       ld a,$14
       call $9ceb
       ld a,$01
       ld ($736f),a
; this entry point is used by the routine at #r$aa49.
$a46e: ld hl,$5ae0
       ld b,$20
$a473: ld (hl),$05
       inc hl
       djnz $a473
       ld hl,$732c
       ld (hl),$4e
$a47d: ld hl,$50e1
       call $ab7b
       ld bc,$01f4
       call $a921
       ld hl,$732b
       dec (hl)
       jr nz,$a4ab
       ld (hl),$08
       ld hl,$ac7c
       ld a,($732c)
       inc a
       cp $4e
       jr c,$a49d
       xor a
$a49d: ld ($732c),a
       ld e,a
       ld d,$00
       add hl,de
       ld a,(hl)
       ld hl,$001e
       call $9c40
; respond to keyboard input
$a4ab: ld a,$fd
       in a,($fe)
       bit 1,a
       jp z,$a59d
       ld a,$fb
       in a,($fe)
       bit 3,a
       jp z,$aa49
       ld a,$df
       in a,($fe)
       bit 2,a
       jr z,$a4c8
       jp $a47d

; display instructions
;
; used by the routine at #r$a410.
$a4c8: call $ab9e
       ld h,$03
       ld bc,$8390
$a4d0: ld l,$00
$a4d2: ld a,(bc)
       call $9c40
       inc bc
       inc l
       ld a,l
       cp $20
       jr nz,$a4d2
       inc h
       inc h
       ld a,h
       cp $19
       jr nz,$a4d0
       ld hl,$5800
       ld b,$20
       ld c,$06
       ld a,$05
       call $aa37
       ld c,$09
       ld a,$17
       call $aa37
       ld c,$06
       ld a,$05
       call $aa37
       ld c,$03
       ld a,$04
       call $aa37
       ld hl,$732c
       ld (hl),$57
       inc hl
       ld (hl),$0a
       call $a960
       ld a,$18
       call $9ceb
; scroll the intro screen message
$a515: ld hl,$50e1
       call $ab7b
       ld bc,$01f4
       call $a921
       ld hl,$732b
       dec (hl)
       jr nz,$a543
       ld (hl),$08
       ld hl,$acca
       ld a,($732c)
       inc a
       cp $57
       jr c,$a535
       xor a
$a535: ld ($732c),a
       ld e,a
       ld d,$00
       add hl,de
       ld a,(hl)
       ld hl,$001e
       call $9c40
$a543: ld a,($7373)
       xor $ff
       jr nz,$a553
       ld a,$fd
       in a,($fe)
       bit 1,a
       jp z,$a59d
$a553: ld a,$fb
       in a,($fe)
       bit 3,a
       jp z,$aa49
       ld a,$f7
       in a,($fe)
       and $07
       cp $07
       jr z,$a59a
       ld b,a
       ld a,($732d)
       cp b
       jr z,$a59a
       ld hl,$5980
       cp $05
       jr z,$a57c
       ld hl,$59c0
       jr c,$a57c
       ld hl,$5940
$a57c: ld a,b
       ld ($732d),a
       cp $05
       ld de,$5980
       jr z,$a58f
       ld de,$59c0
       jr c,$a58f
       ld de,$5940
$a58f: ld b,$20
       ld a,$97
$a593: ld (hl),$17
       ld (de),a
       inc hl
       inc de
       djnz $a593
$a59a: jp $a515

; run the game
;
; used by the routines at #r$a410 and #r$a4c8.
$a59d: ld ixh,$02
       call $a929
       ld hl,$4000
       ld bc,$1800
$a5a9: ld (hl),$00
       inc hl
       dec bc
       ld a,b
       or c
       jr nz,$a5a9
       ld ixh,$01
       call $a929
       ld c,$e8
       ld de,$ad21
       ld b,$01
$a5be: djnz $a5ca
       ld a,(de)
       inc de
       ld hl,$0c1e
       call $9c40
       ld b,$08
$a5ca: ld hl,$4861
       call $ab7b
       dec c
       jr nz,$a5be
$a5d3: ld a,$f7
       in a,($fe)
       and $0f
       cp $0f
       jr z,$a5d3
       ld b,$00
$a5df: inc b
       srl a
       jr c,$a5df
       ld l,b
       ld h,$01
       ld ($733a),hl
       ld b,$f0
$a5ec: ld hl,$4861
       call $ab7b
       djnz $a5ec
       ld a,$05
       ld de,current_level_data
$a5f9: ld bc,$02a0
       ld hl,$b3b0
       ldir
       dec a
       jr nz,$a5f9
; initialize the scores
       ld hl,$6ec8
       ld b,$1e
$a609: ld (hl),$00
       inc hl
       djnz $a609
       ld b,$05
$a610: ld (hl),$0c
       inc hl
       djnz $a610
       ld b,$05
$a617: ld (hl),$00
       inc hl
       djnz $a617
       ld b,$04
$a61e: ld (hl),$05
       inc hl
       djnz $a61e
       ld hl,$9f9e
       ld ($ad58),hl
       call $a960
; this entry point is used by the routine at #r$a6fe.
$a62c: ld a,($733a)
       dec a
       jr z,$a653
       ld a,($733b)
       add a,$19
       call $9ceb
       ld bc,$ad49
       ld a,($733b)
       add a,$30
       ld ($ad50),a
       ld c,$08
       ld de,$ad49
       call $a9ce
       ld bc,$0000
       call $a921
; start this level
$a653: call $ae9c
       call $a960
       ld bc,$0006
       ld hl,$6ec8
       ld a,($733b)
$a662: add hl,bc
       dec a
       jr nz,$a662
       ex de,hl
       ld hl,$6ec8
       ldir
       im 2
; level has had to end. if there are eggs left, lose a life
       ld a,($6ee6)
       and a
       jp nz,$a6fe
$a675: ld a,($7347)
       and a
       jr z,$a68d
; level complete - give a bonus
       ld b,$00
       call $a1b8
       ld b,$01
       call $a3a7
       ld hl,$1e04
       call $9ca4
       jr $a675
$a68d: ld d,$02
$a68f: ld bc,$0000
       call $a921
       dec d
       jr nz,$a68f
       call $a968
       ld bc,$0006
       ld hl,$6ec8
       ld a,($733b)
$a6a4: add hl,bc
       dec a
       jr nz,$a6a4
       ex de,hl
       ld hl,$6ec8
       ldir
       ld hl,$6eeb
       inc (hl)
       ld a,(hl)
       inc a
       cp $c8
       jr c,$a6bc
       sub $c8
       jr $a6c2
$a6bc: cp $64
       jr c,$a6c2
       sub $64
$a6c2: ld b,$00
$a6c4: sub $0a
       jr c,$a6cb
       inc b
       jr $a6c4
$a6cb: add a,$a8
       ld ($ad59),a
       ld a,b
       and a
       jr z,$a6d6
       add a,$9e
$a6d6: ld ($ad58),a
       ld de,$ad52
       ld c,$08
       call $a9ce
       ld de,current_level_data
       ld bc,$02a0
       ld hl,$b110
       ld a,($6eeb)
       and $07
       inc a
$a6f0: add hl,bc
       dec a
       jr nz,$a6f0
       ldir
       ld a,$0c
       ld ($6ee6),a
       jp $a653

; run the "lose a life" sequence
;
; used by the routine at #r$a59d.
$a6fe: ld hl,$ae6a
       call $ab60
       call $aae4
       call $a960
       ld bc,$0000
       call $a921
       call $ab9e
       ld hl,$7342
       ld a,(hl)
       cp $ff
       jr nz,$a72d
       inc hl
       ld a,$09
       cp (hl)
       jr nz,$a72d
       inc hl
       cp (hl)
       jr nz,$a72d
       ld de,$ad5a
       ld c,$0d
       call $a9ce
$a72d: ld hl,current_level_data
       ld bc,$02a0
       push hl
       pop de
       ld a,($733b)
$a738: add hl,bc
       dec a
       jr nz,$a738
       ex de,hl
       ldir
       ld a,($733b)
       ld e,a
       ld d,$00
       ld hl,$6ee6
       ld a,(hl)
       add hl,de
       ld (hl),a
       ld hl,$6eeb
       ld a,(hl)
       add hl,de
       ld (hl),a
       ld hl,$6eef
       add hl,de
       dec (hl)
       jr nz,$a768
       ld c,$12
       ld a,($733a)
       dec a
       jr nz,$a762
       ld c,$09
$a762: ld de,$ad3f
       call $a9ce
$a768: ld b,$05
$a76a: ld hl,($733a)
       ld a,h
       cp l
       jr nz,$a772
       xor a
$a772: inc a
       ld ($733b),a
       ld hl,$6eef
       ld e,a
       ld d,$00
       add hl,de
       ld a,(hl)
       and a
       jr nz,$a785
       djnz $a76a
       jr $a7bc
$a785: ld bc,$0004
       and a
       sbc hl,bc
       ld a,(hl)
       ld ($6eeb),a
       inc bc
       and a
       sbc hl,bc
       ld a,(hl)
       ld ($6ee6),a
       ld a,($733b)
       inc bc
       ld hl,$6ec8
$a79e: add hl,bc
       dec a
       jr nz,$a79e
       ld de,$6ec8
       ldir
       ld a,($733b)
       ld hl,current_level_data
       ld bc,$02a0
$a7b0: add hl,bc
       dec a
       jr nz,$a7b0
       ld de,current_level_data
       ldir
       jp $a62c
$a7bc: ld ixh,$02
       call $a929
       ld hl,$4000
       ld bc,$0018
$a7c8: ld (hl),$00
       inc hl
       djnz $a7c8
       dec c
       jr nz,$a7c8
       ld ixh,$01
       call $a929
       ld hl,$6ece
       ld b,$18
$a7db: ld a,(hl)
       add a,$30
       ld (hl),a
       inc hl
       djnz $a7db
       ld a,$01
       ld hl,$6ece
$a7e7: add a,$30
       ld ($ad72),a
       sub $30
       call $a80c
       dec d
       jr z,$a7fb
       push af
       push hl
       call $a968
       pop hl
       pop af
$a7fb: ld de,$0006
       add hl,de
       ld ix,$72d8
       cp (ix+$62)
       jp z,$a420
       inc a
       jr $a7e7

; routine at a80c
;
; used by the routine at #r$a6fe.
$a80c: push bc
       push af
       push hl
       ld b,$0a
       ld de,$97b9
$a814: call $aa0c
       dec a
       jr z,$a828
       ld c,$10
$a81c: inc de
       dec c
       jr nz,$a81c
       djnz $a814
       pop hl
       pop af
       pop bc
       ld d,$01
       ret
$a828: ld ixh,b
       ld hl,$983f
       dec b
       jr z,$a844
       ld hl,$0000
       ld de,$0010
$a836: add hl,de
       djnz $a836
       push hl
       pop bc
       ld de,$984e
       ld hl,$983e
       lddr
       inc hl
$a844: ld b,$0a
$a846: ld (hl),$00
       inc hl
       djnz $a846
       ld bc,$0006
       push hl
       pop de
       pop hl
       push hl
       push de
       ldir
       ld c,$0b
       ld h,$17
       ld de,$ad67
$a85c: ld l,$00
       ld b,$0f
$a860: ld a,(de)
       inc de
       call $9c40
       inc l
       djnz $a860
       dec h
       dec h
       dec c
       jr nz,$a85c
       call $abad
       ld hl,$5800
       ld a,$03
       ld b,$0f
       ld c,$04
       call $aa37
       inc a
       ld c,$09
       call $aa37
       ld a,$02
       call $aa37
       call $a960
       ld a,$07
       call $9ceb
       call $a960
       pop hl
       ld bc,$000a
       and a
       sbc hl,bc
       ex de,hl
       ld a,ixh
       sla a
       inc a
       ld h,a
       im 1
       ld l,$10
$a8a4: ld a,$b7
       call $9c40
$a8a9: ld a,($5c04)
       xor $ff
       jr nz,$a8a9
$a8b0: halt
       ld a,($5c04)
       xor $ff
       jr z,$a8b0
       ld a,($5c08)
       cp $0d
       jr z,$a8e4
       cp $0c
       jr nz,$a8d1
       ld a,l
       cp $10
       jr z,$a8b0
       xor a
       dec de
       ld (de),a
       call $9c40
       dec l
       jr $a8a4
$a8d1: cp $20
       jr c,$a8b0
       ld b,a
       ld a,l
       cp $19
       jr z,$a8b0
       ld a,b
       ld (de),a
       call $9c40
       inc l
       inc de
       jr $a8a4
$a8e4: pop hl
       pop af
       pop bc
       ld d,$02
       im 2
       ret

; routine at a8ec
;
; used by the routines at #r$a929, #r$a968 and #r$a9fa.
$a8ec: push af
       push hl
       push bc
       push de
       push hl
       pop bc
       call $aa23
       ex de,hl
       ld a,b
       sub h
       ld b,h
       ld h,a
       ld a,c
       add a,l
       ld c,l
       ld l,a
       call $aa23
       ld a,($732c)
$a904: ld (de),a
       ld (hl),a
       inc de
       dec hl
       dec c
       jr nz,$a904
       ld ixl,b
       ld bc,$0020
$a910: ld (de),a
       ld (hl),a
       and a
       sbc hl,bc
       ex de,hl
       add hl,bc
       ex de,hl
       dec ixl
       jr nz,$a910
       pop de
       pop bc
       pop hl
       pop af
       ret

; pause
;
; used by the routines at #r$a410, #r$a4c8, #r$a59d, #r$a6fe, #r$a929 and
; #r$a968.
;
; bc time to pause for
$a921: push af
$a922: dec bc
       ld a,b
       or c
       jr nz,$a922
       pop af
       ret

; routine at a929
;
; used by the routines at #r$a59d and #r$a6fe.
$a929: ld hl,$0c0b
       ld de,$0109
       ld a,$12
       dec ixh
       jr nz,$a937
       ld a,$03
$a937: inc ixh
       ld b,$0c
$a93b: ld ($732c),a
       call $a8ec
       push bc
       ld bc,$1388
       call $a921
       pop bc
       inc h
       dec l
       inc d
       inc d
       inc e
       inc e
       dec ixh
       jr z,$a95b
       add a,$09
       cp $30
       jr c,$a95b
       ld a,$12
$a95b: inc ixh
       djnz $a93b
       ret

; routine at a960
;
; used by the routines at #r$a4c8, #r$a59d, #r$a6fe and #r$a80c.
$a960: ld a,($7373)
       xor $ff
       jr nz,$a960
       ret

; routine at a968
;
; used by the routines at #r$a59d and #r$a6fe.
$a968: ld ixh,$00
       ld hl,$732c
       ld (hl),$09
$a970: ld hl,$0605
       ld d,$01
$a975: push hl
       push de
       ld e,d
       call $a8ec
       ld a,$14
       add a,l
       ld l,a
       ld a,$0c
       add a,h
       ld h,a
       call $a8ec
       ld a,$08
       add a,e
       ld e,a
       ld a,l
       sub $14
       ld l,a
       ld a,$08
       add a,e
       call $a8ec
       ld a,h
       sub $0c
       ld h,a
       ld a,$0c
       add a,l
       ld l,a
       call $a9fa
       pop de
       pop hl
       inc e
       inc e
       inc d
       inc d
       inc h
       dec l
       ld bc,$2710
       call $a921
       ld a,l
       cp $ff
       jr nz,$a975
       ld bc,$1800
       ld hl,$4000
$a9b8: ld (hl),$00
       inc hl
       dec bc
       ld a,b
       or c
       jr nz,$a9b8
       ld a,ixh
       ld ixh,$01
       ld hl,$732c
       ld (hl),$04
       and a
       jr z,$a970
       ret

; scroll the level number across screen before starting it
;
; used by the routines at #r$a59d and #r$a6fe.
$a9ce: ld hl,$5960
       ld b,$80
$a9d3: ld (hl),$04
       inc hl
       djnz $a9d3
       ld b,$01
$a9da: ld hl,$4861
       call $ab7b
       djnz $a9da
       ld a,(de)
       ld hl,$0c1e
       inc de
       call $9c40
       ld b,$08
       dec c
       jr nz,$a9da
       ld b,$00
$a9f1: ld hl,$4861
       call $ab7b
       djnz $a9f1
       ret

; routine at a9fa
;
; used by the routine at #r$a968.
$a9fa: inc ixh
       dec ixh
       jr nz,$aa08
       ld a,($732c)
       add a,$09
       ld ($732c),a
$aa08: call $a8ec
       ret

; routine at aa0c
;
; used by the routine at #r$a80c.
$aa0c: push bc
       push de
       push hl
       ld c,$01
       ld b,$06
$aa13: ld a,(de)
       inc de
       cp (hl)
       inc hl
       jr c,$aa1e
       jr nz,$aa1d
       djnz $aa13
$aa1d: dec c
$aa1e: ld a,c
       pop hl
       pop de
       pop bc
       ret

; return the attribute buffer for a co-ordinate on screen
;
; used by the routine at #r$a8ec.
;
; d the co-ordinate to look up
; hl on exit, holds the attribute address
$aa23: push de
       push bc
       ex de,hl
       ld hl,$5b00
       ld bc,$0020
       inc d
$aa2d: and a
       sbc hl,bc
       dec d
       jr nz,$aa2d
       add hl,de
       pop bc
       pop de
       ret

; print a series of attributes
;
; used by the routines at #r$a410, #r$a4c8 and #r$a80c.
;
; hl base address of the attribute buffer
; b width
; c height
$aa37: push bc
       ld de,$0020
$aa3b: push bc
       push hl
$aa3d: ld (hl),a
       inc hl
       djnz $aa3d
       pop hl
       add hl,de
       pop bc
       dec c
       jr nz,$aa3b
       pop bc
       ret

; redefine the keys
;
; used by the routines at #r$a410 and #r$a4c8.
$aa49: call $ab9e
       ld hl,$732d
       ld (hl),$03
       ld hl,$8268
       ld b,$0a
$aa56: ld (hl),$00
       inc hl
       djnz $aa56
       ld hl,$1100
       ld b,$20
       ld de,$ac02
$aa63: ld a,(de)
       call $9c40
       inc l
       inc de
       djnz $aa63
       ld h,$0e
       ld c,$05
$aa6f: ld b,$0a
       ld l,$0a
$aa73: ld a,(de)
       call $9c40
       inc de
       inc l
       djnz $aa73
       dec h
       dec h
       dec c
       jr nz,$aa6f
       ld hl,$58c0
       ld b,$20
$aa85: ld (hl),$04
       inc hl
       djnz $aa85
$aa8a: call $aaf4
       ld a,l
       and a
       jr nz,$aa8a
       ld a,$05
       ld ix,$8268
       ld hl,$592a
       ld bc,$83f6
       ld de,$0e16
$aaa0: call $ab19
       push bc
       ld bc,$0040
       add hl,bc
       pop bc
       dec d
       dec d
       inc ix
       inc ix
       inc bc
       inc bc
       inc bc
       inc bc
       inc bc
       dec a
       jr nz,$aaa0
       jp $a46e

; routine at aaba
;
; used by the routine at #r$ab19.
$aaba: ld hl,$8267
       ld b,$00
$aabf: inc hl
       inc hl
       inc b
       ld a,b
       cp $06
       jr z,$aacb
       ld a,(hl)
       and a
       jr nz,$aabf
$aacb: dec hl
       dec hl
       dec b
       inc b
       ld d,(hl)
       dec hl
       ld e,(hl)
$aad2: dec hl
       ld a,(hl)
       dec hl
       cp d
       jr nz,$aadf
       ld a,(hl)
       cp e
       jr nz,$aadf
       ld b,$01
       ret
$aadf: djnz $aad2
       ld b,$00
       ret

; play a random sound
;
; used by the routine at #r$a6fe.
$aae4: ld a,r
       ld hl,$abe9
       and $07
       inc a
       ld b,a
$aaed: inc hl
       djnz $aaed
       ld a,(hl)
       jp $9ceb

; return any key pressed
;
; used by the routines at #r$aa49 and #r$ab19.
;
; h on exit, holds the bitfields key matrix tested (input to port fe), or 0 for none
; l on exit, holds the keys pressed, or 0 for none
; e on exit, holds the 'nth' key matrix tested ( 0 - 9 )
$aaf4: ld d,$00
       ld hl,$0000
       ld b,$08
       ld c,$fe
$aafd: ld a,c
       in a,($fe)
       and $1f
       cp $1f
       jr z,$ab12
       dec d
       jr nz,$ab0d
       ld hl,$0000
       ret
$ab0d: ld d,$01
       ld l,a
       ld h,c
       ld e,b
$ab12: sla c
       set 0,c
       djnz $aafd
       ret

; display a line of text
;
; used by the routine at #r$aa49.
$ab19: push af
       push hl
       push de
       push bc
       ld b,$0d
$ab1f: ld (hl),$03
       inc hl
       djnz $ab1f
$ab24: call $aaf4
       ld a,l
       and a
       jr z,$ab24
       ld c,l
       ld b,e
       ld (ix+$00),l
       ld (ix+$01),h
       ld hl,$ac4e
       ld de,$0005
$ab39: add hl,de
       djnz $ab39
$ab3c: inc hl
       srl c
       jr c,$ab3c
       ld a,(hl)
       pop bc
       push bc
       ld (bc),a
       push af
       call $aaba
       pop af
       dec b
       jr z,$ab24
       pop bc
       pop hl
       push hl
       push bc
       call $9c40
$ab54: call $aaf4
       ld a,l
       and a
       jr nz,$ab54
       pop bc
       pop de
       pop hl
       pop af
       ret

; play a note of a tune
;
; used by the routines at #r$a410 and #r$a6fe.
;
; hl pointer to the pitch and length, or 0 to mark the end
$ab60: ld c,(hl)
       inc hl
       ld b,(hl)
       inc hl
       ld a,c
       and a
       ret z
       push hl
       push bc
       call $2d28
       rst $28
       and h
       dec b
       jr c,$ab32
       ld a,b
       call $2d28
       call $03f8
       pop hl
       jr $ab60

; scroll a string of text on screen
;
; used by the routines at #r$a410, #r$a4c8, #r$a59d and #r$a9ce.
;
; hl screen address to scroll
$ab7b: push de
       push bc
       push af
       ld d,$08
$ab80: push hl
       pop bc
       inc bc
       ld e,$1e
$ab85: sla (hl)
       ld a,(bc)
       bit 7,a
       jr z,$ab8e
       set 0,(hl)
$ab8e: inc hl
       inc bc
       dec e
       jr nz,$ab85
       ld bc,$00e2
       add hl,bc
       dec d
       jr nz,$ab80
       pop af
       pop bc
       pop de
       ret

; clear the screen
;
; used by the routines at #r$a410, #r$a4c8, #r$a6fe and #r$aa49.
$ab9e: ld hl,$5aff
       ld bc,$1b00
$aba4: ld (hl),$00
       dec bc
       dec hl
       ld a,c
       or b
       jr nz,$aba4
       ret

; print the high score table
;
; used by the routines at #r$a410 and #r$a80c.
$abad: ld de,$abf2
       ld h,$17
       ld l,$10
       ld b,$10
$abb6: ld a,(de)
       call $9c40
       inc l
       inc de
       djnz $abb6
       ld h,$15
       ld de,$97af
$abc3: ld l,$10
       ld b,$10
$abc7: ld a,(de)
       call $9c40
       inc l
       inc de
       djnz $abc7
       dec h
       dec h
       ld a,h
       cp $02
       jr nc,$abc3
       ld hl,$5810
       ld de,$0010
       ld c,$15
$abde: ld b,$10
$abe0: ld (hl),$17
       inc hl
       djnz $abe0
       add hl,de
       dec c
       jr nz,$abde

; sound directives
$abe9: defb $c9,$01,$10,$13,$17,$1e,$20,$21
       defb $01

; high score
       defm "high score table"

; redefine keys
       defm "press the key you wish to use to"

; move up
       defm "move up   "

; move down
       defm "move down "

; move left
       defm "move left "

; move right
       defm "move right"

; jump
       defm "jump"

; intro screen udgs
$ac4e: defb $20,$20,$20,$20,$20,$20,$97,$99
       defb $6d,$6e,$62,$9a,$6c,$6b,$6a,$68
       defb $70,$6f,$69,$75,$79,$30,$39,$38
       defb $37,$36,$31,$32,$33,$34,$35,$71
       defb $77,$65,$72,$74,$61,$73,$64,$66
       defb $67,$98,$7a,$78,$63,$76

; intro scrolling message
       defm "{"
       defb $00
       defm "press s to start game {"
       defb $00
       defm "press r to redefine keys {"
       defb $00
       defm "press i for instructions "

; instructions scrolling message
       defm "{"
       defb $00
       defm "press s to start game {"
       defb $00
       defm "press r to redefine keys {"
       defb $00
       defm "press 1,2 or 3 to select key type "

; number of players
       defm "1,2,3 or 4 players ?          "

; game over
       defm "game over "

; player
       defm "player 1 "

; level
       defm "level "

; data block at ad58
$ad58: defb $9e

; data block at ad59
$ad59: defb $9f

; out of time
       defm "out of time !"

; high score message
       defm "   player  1   "
       defm "               "
       defm "  well  done!  "
       defm "you have beaten"
       defm " one of todays "
       defm "highest scores."
       defm "               "
       defm "  please type  "
       defm "in your name or"
       defm " initials then "
       defm " press  enter. "

; theme tune
$ae0c: defm "
#VALUE!
#VALUE!
       defm "
#VALUE!
#VALUE!
       defm ""
       defm ""
       defm ""
       defm ""
       defm "  "

; lose a life tune
$ae6a: defb $02,$08,$02,$08,$02,$08,$02,$08
       defb $02,$06,$02,$04,$02,$04,$02,$03
       defb $02,$01,$02,$01,$02,$04,$02,$08
       defb $02,$0d,$02,$0d,$02,$0d,$02,$0d
       defb $02,$0b,$02,$09,$02,$09,$02,$08
       defb $02,$06,$02,$06,$02,$08,$02,$09
       defb $00,$00

; run the current level until complete or a duck is hit
;
; clear the screen
$ae9c: ld hl,$5aff
       ld bc,$1b00
$aea2: ld (hl),$00
       dec hl
       dec bc
       ld a,b
       or c
       jr nz,$aea2
; draw the udgs
       ld bc,current_level_data
       ld h,$00
$aeaf: ld l,$00
$aeb1: ld a,(bc)
       call $9c40
       inc bc
       inc l
       ld a,l
       cp $20
       jr nz,$aeb1
       inc h
       ld a,h
       cp $15
       jr nz,$aeaf
; print the level stats
       ld a,($6eeb)
       ld b,a
       inc b
       xor a
$aec8: add a,$01
       daa
       djnz $aec8
       ld d,a
       and $0f
       add a,$9e
       ld ($9773),a
       ld a,d
       ld b,$04
$aed8: srl a
       djnz $aed8
       add a,$9e
       ld ($9772),a
       ld a,($6eeb)
       inc a
       cp $0a
       jr c,$aeeb
       ld a,$09
$aeeb: ld ($733f),a
       add a,$9e
       ld ($977a),a
       ld a,($6eeb)
       srl a
       srl a
       srl a
       srl a
       cp $05
       jr c,$af04
       ld a,$05
$af04: ld c,a
       ld a,$09
       sub c
       ld ($7342),a
       add a,$9e
       ld ($9784),a
       ld a,($733b)
       add a,$9e
       ld ($976b),a
       ld hl,$1700
       ld de,$9764
       ld b,$03
$af20: ld a,(de)
       call $9c40
       inc l
       inc de
       djnz $af20
       ld hl,$1500
       ld b,$20
$af2d: ld a,(de)
       call $9c40
       inc l
       inc de
       djnz $af2d
       ld hl,$3ffe
       ld ($733d),hl
       ld a,($733a)
       ld hl,$6ece
$af41: ld de,$6ec8
       ld bc,$0006
       ldir
       push hl
       ld bc,$0007
       ld hl,($733d)
       add hl,bc
       ld ($733d),hl
       ld b,$00
       push af
       call $a3a7
       pop af
       pop hl
       dec a
       jr nz,$af41
       ld bc,$0006
       ld hl,$6ec8
       ld a,($733b)
$af68: add hl,bc
       dec a
       jr nz,$af68
       ld de,$6ec8
       ldir
       ld a,($6ec9)
       ld ($736e),a
       ld b,$14
       ld hl,$7357
$af7c: ld (hl),$ff
       inc hl
       djnz $af7c
       ld a,($6eeb)
       cp $08
       jr c,$af8c
       cp $10
       jr c,$afad
$af8c: and $07
       ld hl,$945b
       ld bc,$0015
       inc a
$af95: add hl,bc
       dec a
       jr nz,$af95
       ld b,(hl)
       inc hl
       ld a,($6eeb)
       cp $18
       jr c,$afa4
       ld b,$14
$afa4: ld de,$7357
$afa7: ld a,(hl)
       ld (de),a
       inc de
       inc hl
       djnz $afa7
$afad: ld hl,$0001
       ld ($736b),hl
       ld h,$16
       ld l,$05
       ld a,($733a)
       ld b,a
       ld de,$6ef0
$afbe: push hl
       ld a,(de)
       cp $07
       jr c,$afc6
       ld a,$06
$afc6: inc de
       and a
       jr z,$afd4
       ld c,a
       ld a,$b6
$afcd: call $9c40
       inc l
       dec c
       jr nz,$afcd
$afd4: pop hl
       ld a,l
       add a,$07
       ld l,a
       djnz $afbe
       ld hl,$0000
       ld b,$03
       ld a,$17
       call $b130
       inc h
       ld b,$20
       ld a,$06
       call $b130
       inc h
       ld b,$05
       ld a,$17
       call $b130
       ld l,$07
       inc b
       call $b130
       ld b,$08
       ld l,$0f
       call $b130
       dec b
       ld l,$19
       call $b130
       ld hl,$0005
       ld bc,$0601
$b00e: ld d,$0f
       ld a,($733b)
       cp c
       jr nz,$b018
       ld d,$17
$b018: ld a,d
       call $b130
       ld a,l
       add a,$07
       ld l,a
       inc c
       ld a,($733a)
       cp c
       jr nc,$b00e
       ld hl,current_level_data
       ld de,$5ae0
       ld c,$15
$b02f: ld b,$20
       push de
$b032: push bc
       ld a,(hl)
       cp $09
       jr c,$b03c
       ld a,$06
       jr $b042
$b03c: add a,$4f
       ld b,$98
       ld c,a
       ld a,(bc)
$b042: ld (de),a
       inc de
       inc hl
       pop bc
       djnz $b032
       pop de
       ex de,hl
       push de
       ld de,$0020
       and a
       sbc hl,de
       pop de
       ex de,hl
       dec c
       jr nz,$b02f
; initialize game flags
       ld ix,$72d8
       ld (ix+$00),$64
       ld (ix+$01),$17
       ld (ix+$70),$08
       ld (ix+$71),$98
       ld (ix+$64),$05
       xor a
       ld (ix+$68),a
       ld (ix+$69),a
       ld (ix+$6b),a
       ld (ix+$6c),a
       ld (ix+$72),a
       ld (ix+$73),a
       ld (ix+$75),a
       ld (ix+$7d),a
       ld (ix+$02),a
       ld (ix+$03),a
       ld (ix+$4d),a
       ld ($7356),a
       ld ($7370),a
       inc a
       ld (ix+$6f),a
       ld (ix+$6d),a
       ld (ix+$6e),a
       ld (ix+$74),a
       ld (ix+$04),a
       ld a,($732d)
       cp $05
       ld hl,$825c
       jr z,$b0b8
       ld hl,$8268
       jr c,$b0b8
       ld hl,$8250
$b0b8: ld bc,$000c
       ld de,$732e
       ldir
       ld bc,$0007
       ld hl,$3ffe
       ld a,($733b)
$b0c9: add hl,bc
       dec a
       jr nz,$b0c9
       ld ($733d),hl
       ld bc,$0004
       ld hl,$9787
       push hl
       pop de
       ld a,($6eeb)
       and $07
       inc a
$b0de: add hl,bc
       dec a
       jr nz,$b0de
       ldir
       ld bc,$0004
       and a
       sbc hl,bc
       ld de,$734e
       ldir
       ld (ix+$7c),$43
       ld hl,($734e)
       ld bc,$0800
       and a
       sbc hl,bc
       ld ($7352),hl
       call $b14f
       ld d,$1e
$b104: ld bc,$2710
$b107: dec bc
       ld a,b
       or c
       jr nz,$b107
       dec d
       jr nz,$b104
       ld a,($733b)
       ld l,a
       ld h,$00
       ld de,$6eef
       add hl,de
       ld c,a
       ld a,(hl)
       cp $07
       jr nc,$b12d
       sub $03
$b121: add a,$07
       dec c
       jr nz,$b121
       ld h,$16
       ld l,a
       xor a
       call $9c40
$b12d: jp $9858

; colour in the screen with attributes
;
; used by the routine at #r$ae9c.
;
; h column
; l row
$b130: push hl
       push bc
       push af
       ld e,l
       ld a,h
       ld hl,$5800
       and a
       jr z,$b144
       ld hl,$5820
       dec a
       jr z,$b144
       ld hl,$5840
$b144: ld d,$00
       add hl,de
       pop af
$b148: ld (hl),a
       inc hl
       djnz $b148
       pop bc
       pop hl
       ret

; play a random sound through the fuller orator
;
; used by the routine at #r$ae9c.
$b14f: ld hl,$b15e
       ld a,r
       and $07
       inc a
       ld b,a
$b158: inc hl
       djnz $b158
       ld a,(hl)
       jp $9ceb

; fuller orator allophones
$b15f: defb $02,$08,$0a,$0b,$0c,$11,$11,$02

; assembler
;
; leftover assembler data for #r$a58c
       defm " jr c,c10"
       defb $0d
       defm "\""
       defb $90
       defm "  ld de,22849"
       defb $0d
       defm "#"
       defb $00
       defm " c10 ld b,3"
       defb $0d
       defm "#"
       defb $10
       defm "  ld a,151"
       defb $0d
       defm "#   ld (hl),23"
       defb $0d
       defm "#0  ld (de),a"
       defb $0d
       defm "#@  inc hl"
       defb $0d
       defm "#p  inc de"
       defb $0d
       defm "#"
       defb $60
       defm "  djnz -7"
       defb $0d
       defm "#p
       defb $0d
       defm "#"
       defb $80
       defm " c8 jp scrl2"
       defb $0d
       defm "#"
       defb $90
       defm "
       defb $0d
       defm "%"
       defb $00
       defm " initg"

; im2 jump vector
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c
       defw $9c9c

; assembler
;
; leftover assembler data for #r$a5c5
       defb $9c
       defm " call 40000"
       defb $0d
       defm "'"
       defb $00
       defm "  ld b,8"
       defb $0d
       defm "'"
       defb $10
       defm " c15 ld hl,18529"
       defb $0d
       defm "'   call scrol"
       defb $0d
       defm "'0  dec c"
       defb $0d

; data block at b34a
$b34a: defb $27,$40

; shunt the player to the end of the platform if we're near it
;
; used by the routine at #r$9858.
$b34c: ld a,($72d8)
       and $07
       ret z
       ld hl,($72d8)
       call $9e34
       ld bc,$003f
       and a
       sbc hl,bc
       ld a,(hl)
       cp $05
       ret nc
       cp $01
       ret z
       cp $02
       ret z
       ld a,$01
       ld ($7325),a
       ld d,$ff
       ld a,($72db)
       and a
       jr nz,$b377
       ld d,$01
$b377: ld a,d
       ld ($7326),a
       ld a,$04
       ld ($7327),a
       ret

; assembler
;
; leftover assembler data for #r$a5d9
       defm " and 15"
       defb $0d
       defm "'"
       defb $90
       defm "  cp 15"
       defb $0d
       defm "("
       defb $00
       defm "  jr z,l41"
       defb $0d
       defm "("
       defb $10
       defm "  ld b,0"
       defb $0d
       defm "(  l4"

; level 1
$b3b0: defb $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05
       defb $00,$00,$00,$00,$04,$00,$03,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$04,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
       defb $00,$00,$05,$05,$05,$05,$05,$05,$05,$05,$01,$02,$05,$05,$05,$05,$01,$02,$05,$05,$05,$05,$05,$05,$05,$05,$01,$02,$05,$05,$00,$00
       defb $00,$00,$00,$03,$00,$01,$02,$00,$04,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$03,$00,$00,$04,$00,$00,$01,$02,$00,$03,$00,$00
       defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$05,$01,$02,$05,$05,$05,$01,$02,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$05,$05,$05,$00,$00
       defb $00,$00,$00,$00,$03,$01,$02,$00,$04,$00,$01,$02,$00,$00,$00,$05,$05,$05,$00,$00,$00,$00,$00,$00,$04,$00,$00,$00,$03,$00,$00,$00
       defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00,$00,$03,$00,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$01,$02,$00,$00,$00,$05,$05,$05,$05,$00,$00,$00,$00,$00,$00,$04,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$03,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $b2,$b3,$b4,$b5,$00,$00,$00,$00,$05,$05,$01,$02,$05,$05,$05,$05,$00,$00,$05,$05,$05,$05,$05,$05,$05,$05,$05,$00,$00,$05,$05,$05
       defb $ae,$af,$b0,$b1,$00,$00,$00,$00,$00,$03,$01,$02,$00,$00,$00,$04,$00,$00,$00,$00,$03,$00,$04,$00,$00,$00,$00,$00,$00,$00,$03,$00
       defb $ae,$af,$b0,$b1,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $aa,$ab,$ac,$ad,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$a8,$a9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; level 2
$b650: defb $05,$05,$05,$05,$05,$05,$00,$00,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05
       defb $00,$04,$00,$01,$02,$04,$00,$00,$03,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$03,$00,$00,$00,$00,$04,$00,$01,$02,$00,$00,$00
       defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $05,$05,$05,$01,$02,$05,$05,$05,$05,$05,$05,$05,$00,$00,$05,$01,$02,$05,$00,$00,$05,$05,$05,$05,$00,$00,$05,$01,$02,$05,$05,$05
       defb $00,$03,$00,$01,$02,$00,$03,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$03,$00,$00,$00,$00,$04,$01,$02,$00,$00,$00
       defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $05,$05,$05,$01,$02,$05,$00,$00,$05,$01,$02,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$00,$00,$05,$01,$02,$05,$05,$05
       defb $00,$03,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$03,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$03,$00
       defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $05,$05,$05,$01,$02,$05,$05,$05,$05,$01,$02,$05,$05,$05,$05,$01,$02,$05,$00,$00,$05,$01,$02,$05,$05,$05,$05,$05,$05,$05,$05,$05
       defb $00,$04,$00,$01,$02,$00,$01,$02,$00,$01,$02,$00,$03,$00,$00,$01,$02,$04,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $00,$00,$00,$01,$02,$00,$01,$02,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $b2,$b3,$b4,$b5,$00,$00,$01,$02,$05,$05,$05,$05,$05,$05,$05,$01,$02,$05,$00,$00,$05,$05,$05,$05,$05,$05,$05,$01,$02,$05,$05,$05
       defb $ae,$af,$b0,$b1,$00,$00,$01,$02,$00,$00,$00,$00,$03,$00,$00,$01,$02,$00,$00,$00,$04,$00,$00,$00,$03,$00,$00,$01,$02,$00,$03,$00
       defb $ae,$af,$b0,$b1,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $aa,$ab,$ac,$ad,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$a8,$a9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; level 3
$b8f0: defb $05,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$05,$00,$00,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05
       defb $00,$01,$02,$04,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$00,$03,$00,$00,$00,$01,$02,$00
       defb $00,$01,$02,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00
       defb $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$01,$02,$00
       defb $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$05,$05,$00,$05,$05,$00,$00,$00,$00,$00,$00,$00,$03,$00,$01,$02,$00
       defb $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$04,$01,$02,$03,$01,$02,$00,$00,$00,$00,$05,$05,$00,$00,$00,$00,$00,$00,$01,$02,$00
       defb $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02,$00,$00,$00,$00,$00,$00,$05,$05,$00,$00,$00,$00,$00,$00,$00
       defb $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$03,$00,$05,$05,$00,$00,$00,$00
       defb $05,$01,$02,$05,$05,$05,$05,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$00
       defb $00,$01,$02,$04,$01,$02,$03,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02,$00,$05,$05,$05,$00,$05,$05,$00,$00,$00,$00,$00,$01,$02,$00
       defb $00,$01,$02,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02,$00,$00,$00,$04,$00,$00,$03,$00,$00,$00,$00,$00,$01,$02,$00
       defb $00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$01,$02,$00
       defb $05,$05,$05,$05,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$00,$00,$01,$02,$00
       defb $00,$04,$03,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02,$00,$00,$00,$00,$00,$05,$05,$00,$00,$03,$00,$00,$01,$02,$00
       defb $00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02,$00,$05,$05,$05,$00,$04,$00,$00,$00,$00,$00,$00,$03,$00,$00
       defb $00,$00,$00,$00,$01,$02,$05,$00,$00,$00,$00,$05,$01,$02,$05,$01,$02,$05,$04,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $b2,$b3,$b4,$b5,$01,$02,$03,$00,$00,$00,$00,$04,$01,$02,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$00,$00,$05,$00,$00,$05,$05,$05
       defb $ae,$af,$b0,$b1,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02,$00,$00,$01,$02,$05,$05,$05,$05,$05,$00,$00,$00,$04,$03,$00
       defb $ae,$af,$b0,$b1,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $aa,$ab,$ac,$ad,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$a8,$a9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; level 4
$bb90: defb $05,$05,$05,$05,$05,$05,$05,$05,$00,$05,$05,$05,$05,$05,$05,$05,$05,$00,$00,$00,$00,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05
       defb $00,$03,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$04,$00,$00,$00,$00,$03,$00,$00,$01,$02,$00,$00,$00,$04,$00,$00
       defb $00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$05,$05
       defb $05,$05,$05,$05,$01,$02,$05,$05,$00,$00,$05,$05,$01,$02,$05,$05,$05,$00,$00,$00,$00,$05,$05,$05,$01,$02,$05,$05,$00,$00,$00,$00
       defb $00,$04,$00,$00,$01,$02,$00,$00,$00,$00,$03,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$03,$00,$00,$00,$00
       defb $00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05
       defb $05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$05,$01,$02,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$05,$05,$05,$00,$00,$03,$00
       defb $00,$03,$00,$00,$05,$05,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$03,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$05,$05,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$05,$05,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00
       defb $05,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$05,$05,$05,$00,$00,$00,$00,$05,$01,$02,$00,$05,$05,$03,$05,$01,$02,$05
       defb $00,$03,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$01,$02,$00,$03,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00
       defb $00,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00
       defb $00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00
       defb $b2,$b3,$b4,$b5,$00,$00,$00,$00,$05,$05,$00,$05,$01,$02,$05,$05,$05,$00,$00,$00,$00,$05,$01,$02,$05,$05,$03,$05,$05,$01,$02,$05
       defb $ae,$af,$b0,$b1,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$04,$00,$00,$00,$00,$00,$00,$04,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00
       defb $ae,$af,$b0,$b1,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00
       defb $aa,$ab,$ac,$ad,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00
       defb $00,$a8,$a9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; level 5
$be30: defb $05,$05,$05,$00,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$00,$00,$05,$05,$05,$05,$00,$00,$00,$00,$05,$05,$05,$05
       defb $00,$03,$00,$00,$01,$02,$00,$04,$04,$04,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$04,$01,$02,$04,$00,$00,$00,$00,$04,$00,$00,$00
       defb $00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $05,$05,$05,$05,$01,$02,$05,$05,$05,$05,$00,$01,$02,$00,$05,$01,$02,$05,$05,$05,$03,$01,$02,$05,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$03,$00,$00,$01,$02,$00,$00,$03,$00,$00,$01,$02,$00,$00,$01,$02,$00,$01,$02,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$00,$01,$02,$00,$03,$05,$05,$05,$01,$02,$05,$05,$05,$05,$00,$00,$00,$00,$00,$00,$05,$05
       defb $00,$03,$00,$01,$02,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$04,$00,$01,$02,$00,$00,$00,$04,$00,$00,$00,$00,$00,$00,$03,$00
       defb $00,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $05,$05,$05,$01,$02,$05,$05,$01,$02,$05,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$03,$00,$01,$02,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$05,$00,$03,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $b2,$b3,$b4,$b5,$00,$00,$05,$01,$02,$05,$05,$05,$05,$05,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05
       defb $ae,$af,$b0,$b1,$00,$00,$04,$01,$02,$03,$00,$04,$04,$00,$00,$00,$00,$00,$01,$02,$05,$05,$05,$05,$00,$00,$00,$00,$04,$00,$03,$00
       defb $ae,$af,$b0,$b1,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$03,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00
       defb $aa,$ab,$ac,$ad,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$a8,$a9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; level 6
$c0d0: defb $05,$05,$05,$05,$05,$00,$00,$00,$00,$05,$05,$05,$05,$05,$00,$00,$00,$00,$05,$05,$05,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$01,$02,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$04,$04,$04,$00,$00,$00,$03,$01,$02,$00,$00,$00
       defb $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $05,$01,$02,$05,$00,$05,$01,$02,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$05,$05,$00,$00,$01,$02,$00,$00,$00
       defb $00,$01,$02,$00,$00,$00,$01,$02,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00
       defb $00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$01,$02,$05,$05,$05
       defb $00,$00,$00,$00,$05,$05,$01,$02,$05,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$01,$02,$05,$05,$05,$01,$02,$00,$04,$00
       defb $00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$01,$02,$00,$03,$00,$01,$02,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $05,$05,$05,$05,$05,$05,$01,$02,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$01,$02,$05,$05,$05
       defb $00,$04,$04,$04,$04,$00,$01,$02,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$03,$00
       defb $00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$01,$02,$05,$05,$05,$01,$02,$00,$00,$00
       defb $b2,$b3,$b4,$b5,$00,$03,$00,$00,$00,$05,$05,$00,$05,$05,$00,$00,$00,$00,$00,$03,$00,$00,$01,$02,$00,$00,$00,$01,$02,$00,$00,$00
       defb $ae,$af,$b0,$b1,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$01,$02,$05,$05,$05
       defb $ae,$af,$b0,$b1,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$03,$00
       defb $aa,$ab,$ac,$ad,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $00,$a8,$a9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; level 7
$c370: defb $00,$00,$00,$00,$00,$05,$05,$05,$05,$00,$00,$00,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$01,$02,$00,$00,$01,$02,$00,$00,$05,$05,$05,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$03,$00,$00,$00
       defb $05,$01,$02,$03,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$01,$02,$05,$05,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$01,$02,$00,$04,$01,$02,$00,$00,$00,$05,$05,$05,$05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$05,$00,$03,$04,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$05,$05,$00,$00,$00,$00
       defb $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$03,$00,$00,$00,$00,$00,$00
       defb $05,$01,$02,$05,$00,$00,$00,$00,$00,$00,$05,$00,$00,$00,$05,$00,$00,$05,$05,$05,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00
       defb $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00,$00,$05,$00,$00,$00,$03,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00
       defb $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00
       defb $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$01,$02,$03,$00,$00,$00,$00,$00,$00
       defb $05,$01,$02,$05,$05,$05,$05,$05,$05,$05,$00,$05,$05,$05,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00
       defb $00,$01,$02,$00,$00,$00,$00,$00,$04,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00
       defb $00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $b2,$b3,$b4,$b5,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$05,$05,$01,$02,$05,$05,$05,$05,$05,$05,$00,$00,$00,$00
       defb $ae,$af,$b0,$b1,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$04,$01,$02,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00
       defb $ae,$af,$b0,$b1,$00,$00,$01,$02,$03,$00,$01,$02,$03,$00,$01,$02,$03,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $aa,$ab,$ac,$ad,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$a8,$a9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; level 8
$c610: defb $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05
       defb $00,$04,$04,$01,$02,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$01,$02,$04,$04,$00
       defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $00,$00,$05,$01,$02,$05,$05,$00,$03,$00,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$00,$03,$00,$05,$05,$01,$02,$05,$00,$00
       defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$05,$05,$05,$05,$05,$05,$05,$00,$03,$00,$05,$05,$01,$02,$05,$05,$00,$03,$00,$05,$05,$05,$05,$05,$05,$05,$00,$00,$00
       defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$05,$01,$02,$05,$05,$05,$00,$03,$00,$05,$05,$05,$05,$05,$05,$00,$03,$00,$05,$05,$05,$01,$02,$05,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $b2,$b3,$b4,$b5,$00,$05,$05,$00,$03,$00,$05,$05,$03,$05,$05,$01,$02,$05,$05,$03,$05,$05,$00,$03,$00,$05,$05,$00,$00,$00,$00,$00
       defb $ae,$af,$b0,$b1,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $ae,$af,$b0,$b1,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       defb $aa,$ab,$ac,$ad,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00
       defb $00,$a8,$a9,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

; data block at c8b0
$c8b0: defb $41,$4c,$4c,$20,$43,$4f,$4e,$56
       defb $31,$0d,$56,$60,$20,$20,$4c,$44
       defb $20,$41,$2c,$28,$32,$39

; fuller orator data
$c8c6: defb $34,$38,$2c,$c9,$38,$c9,$4c,$c9
       defb $58,$c9,$66,$c9,$80,$c9,$8c,$c9
       defb $9c,$c9,$ac,$c9,$c0,$c9,$d6,$c9
       defb $e4,$c9,$fa,$c9,$0a,$ca,$1c,$ca
       defb $2e,$ca,$46,$ca,$56,$ca,$66,$ca
       defb $78,$ca,$be,$ca,$d4,$ca,$e2,$ca
       defb $fa,$ca,$14,$cb,$2a,$cb,$3e,$cb
       defb $50,$cb,$64,$cb,$76,$cb,$80,$cb
       defb $96,$cb,$b0,$cb,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$06,$35
       defb $05,$00,$04,$38,$05,$35,$02,$00
       defb $ff,$ff,$05,$3d,$07,$35,$05,$00
       defb $05,$28,$06,$3b,$09,$00,$05,$0c
       defb $05,$0d,$02,$00,$ff,$ff,$06,$10
       defb $05,$0c,$05,$37,$03,$11,$02,$00
       defb $ff,$ff,$03,$38,$06,$06,$0e,$37
       defb $05,$2d,$07,$13,$02,$00,$ff,$ff
       defb $05,$0b,$06,$07,$05,$29,$07,$37
       defb $05,$11,$08,$00,$07,$2d,$05,$07
       defb $05,$23,$03,$1e,$05,$3e,$02,$00
       defb $ff,$ff,$05,$20,$08,$2b,$09,$1a
       defb $05,$11,$02,$00,$ff,$ff,$04,$39
       defb $05,$06,$10,$00,$05,$37,$06,$08
       defb $05,$3a,$02,$00,$ff,$ff,$03,$3f
       defb $07,$13,$07,$00,$06,$3e,$07,$33
       defb $02,$0d,$02,$00,$ff,$ff,$09,$2e
       defb $06,$07,$07,$3e,$09,$00,$06,$21
       defb $02,$1e,$05,$1e,$05,$0b,$02,$00
       defb $ff,$ff,$05,$39,$05,$1a,$05,$23
       defb $07,$00,$04,$38,$07,$35,$0a,$00
       defb $06,$1d,$06,$2f,$02,$00,$ff,$ff
       defb $05,$3d,$07,$35,$06,$00,$03,$38
       defb $06,$20,$02,$00,$ff,$ff,$04,$21
       defb $03,$35,$04,$0b,$07,$11,$09,$00
       defb $05,$37,$05,$11,$04,$18,$05,$09
       defb $02,$00,$ff,$ff,$05,$22,$05,$35
       defb $05,$2c,$0d,$00,$06,$0f,$03,$09
       defb $02,$00,$ff,$ff,$05,$22,$05,$14
       defb $05,$10,$0f,$00,$07,$35,$04,$23
       defb $03,$34,$02,$00,$ff,$ff,$05,$35
       defb $05,$38,$06,$37,$0b,$00,$05,$10
       defb $06,$1a,$04,$0b,$02,$00,$ff,$ff
       defb $06,$27,$05,$17,$05,$2c,$0b,$00
       defb $05,$10,$06,$0f,$04,$0b,$05,$1f
       defb $07,$23,$09,$33,$02,$00,$ff,$ff
       defb $05,$2d,$07,$29,$04,$00,$02,$1a
       defb $04,$35,$04,$11,$02,$00,$ff,$ff
       defb $05,$3d,$02,$18,$05,$11,$08,$00
       defb $05,$0c,$04,$11,$02,$00,$ff,$ff
       defb $05,$0d,$05,$1e,$05,$28,$09,$00
       defb $05,$2e,$05,$17,$05,$0b,$02,$00
       defb $ff,$ff,$06,$14,$0b,$00,$05,$1a
       defb $05,$2c,$05,$15,$09,$00,$05,$07
       defb $05,$28,$0a,$00,$04,$37,$04,$37
       defb $05,$17,$04,$28,$04,$11,$05,$2e
       defb $05,$2f,$09,$00,$05,$09,$04,$0e
       defb $05,$07,$05,$2b,$05,$07,$05,$0b
       defb $04,$11,$07,$37,$09,$00,$05,$32
       defb $05,$0f,$04,$08,$06,$13,$0b,$00
       defb $06,$07,$03,$22,$02,$00,$ff,$ff
       defb $05,$2d,$07,$35,$08,$00,$05,$17
       defb $05,$0b,$08,$00,$05,$0d,$05,$06
       defb $07,$10,$02,$00,$ff,$ff,$05,$37
       defb $05,$37,$07,$16,$05,$09,$05,$33
       defb $02,$00,$ff,$ff,$05,$39,$06,$35
       defb $05,$09,$05,$2d,$05,$0f,$05,$37
       defb $09,$00,$05,$2a,$05,$14,$08,$37
       defb $02,$00,$ff,$ff,$06,$0c,$06,$0b
       defb $05,$37,$03,$11,$04,$27,$03,$0f
       defb $04,$29,$04,$25,$0a,$0f,$05,$0b
       defb $06,$37,$02,$00,$ff,$ff,$05,$38
       defb $05,$35,$09,$11,$05,$14,$05,$00
       defb $05,$38,$05,$35,$09,$11,$05,$14
       defb $02,$00,$ff,$ff,$05,$09,$05,$2d
       defb $04,$14,$07,$33,$09,$00,$05,$2e
       defb $05,$17,$05,$0b,$02,$00,$ff,$ff
       defb $05,$09,$05,$2d,$04,$14,$07,$33
       defb $09,$00,$05,$0d,$05,$1f,$02,$00
       defb $ff,$ff,$05,$09,$05,$2d,$04,$14
       defb $07,$33,$09,$00,$05,$1d,$04,$27
       defb $05,$13,$02,$00,$ff,$ff,$05,$09
       defb $05,$2d,$04,$14,$07,$33,$09,$00
       defb $05,$28,$05,$3a,$02,$00,$ff,$ff
       defb $06,$35,$09,$00,$05,$05,$02,$00
       defb $ff,$ff,$05,$3b,$09,$00,$05,$19
       defb $07,$1e,$08,$00,$06,$27,$09,$07
       defb $02,$21,$09,$31,$02,$00,$ff,$ff
       defb $05,$0b,$07,$17,$06,$11,$09,$00
       defb $06,$22,$04,$1e,$04,$21,$09,$00
       defb $05,$07,$07,$38,$08,$28,$02,$00
       defb $ff,$ff,$06,$39,$08,$3b,$04,$15
       defb $06,$00,$06,$2d,$05,$1e,$03,$29
       defb $06,$00,$0b,$00,$ff,$ff,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00,$00,$00,$00,$00,$00,$00
       defb $00,$00
