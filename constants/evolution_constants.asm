; See data/evos_moves.asm

; Evolution types
EV_LEVEL     EQU 1 ; nearly all Pokemon
EV_ITEM      EQU 2 ; Evo stones, Kings Rock, Dragon Scale
EV_TRADE     EQU 3 ; Machoke, Kadabra, Graveler, Haunter (alternate method besides level up)
EV_HAPPINESS EQU 4 ; Eevee to Sylveon, baby Pokemon, etc
EV_MAP       EQU 5 ; Magnezone (Power Plant)
EV_MOVE      EQU 6 ; Mime Jr to Mr Mime (MIMIC)
EV_TYROGUE   EQU 7

MAX_EVOLUTIONS EQU 3
EVOLUTION_SIZE EQU 4

;For Tyrogue
ATK_HIGHER EQU 1
BOTH_EQUAL EQU 2
DEF_HIGHER EQU 3

; Growth Rates
EXP_MEDFAST	EQU 0
EXP_MEDSLOW	EQU 3
EXP_FAST	EQU 4
EXP_SLOW	EQU 5