; See data/evos_moves.asm

; Evolution types
EV_LEVEL     EQU 1
EV_ITEM      EQU 2
EV_TRADE     EQU 3
;EV_HAPPINESS EQU 3
EV_MAP       EQU 4 ; Magnezone
EV_MOVE      EQU 5 ; Tangrowth and Lickilicky
EV_MOVETYPE  EQU 6 ; For Kingdra (Seadra knowing Dragon-type move) or Sylveon (Eevee knowing Fairy move)
EV_TYROGUE   EQU 7

MAX_EVOLUTIONS EQU 3
EVOLUTION_SIZE EQU 4

;For Tyrogue
ATK_HIGHER EQU 1
BOTH_EQUAL EQU 2
DEF_HIGHER EQU 3