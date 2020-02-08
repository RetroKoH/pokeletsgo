db NIDORINA ; pokedex id
db 70 ; base hp
db 62 ; base attack
db 67 ; base defense
db 56 ; base speed
db 55 ; base special attack
;db 55 ; base special defense
db POISON ; species type 1
db POISON ; species type 2
db 120 ; catch rate
db 128 ; base exp yield
INCBIN "pic/mon/nidorina.pic",0,1 ; 66, sprite dimensions
dw NidorinaPicFront
dw NidorinaPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE
	tmlearn 								TM_IRON_TAIL
	tmlearn 				TM_POISON_JAB,	TM_TOXIC
	tmlearn 												TM_THUNDERBOLT,					TM_THUNDER
	tmlearn 0
	tmlearn 								TM_BLIZZARD,	TM_SLUDGE_BOMB,									TM_ICE_BEAM
;	tmlearn 0

db BANK(NidorinaPicFront)
