db VICTREEBEL ; pokedex id
db 80 ; base hp
db 105 ; base attack
db 65 ; base defense
db 70 ; base speed
db 100 ; base special attack
;db 70 ; base special defense
db GRASS ; species type 1
db POISON ; species type 2
db 45 ; catch rate
db 221 ; base exp yield
INCBIN "pic/mon/victreebel.pic",0,1 ; 77, sprite dimensions
dw VictreebelPicFront
dw VictreebelPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 0
	tmlearn 				TM_POISON_JAB,	TM_TOXIC
	tmlearn 0
	tmlearn 																TM_SOLARBEAM,									TM_HYPER_BEAM
	tmlearn 												TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 0

db BANK(VictreebelPicFront)
