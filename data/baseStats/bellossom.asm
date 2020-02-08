db BELLOSSOM ; pokedex id
db 75 ; base hp
db 80 ; base attack
db 95 ; base defense
db 50 ; base speed
db 90 ; base special attack
;db 100 ; base special defense
db GRASS ; species type 1
db GRASS ; species type 2
db 45 ; catch rate
db 221 ; base exp yield
INCBIN "pic/mon/bellossom.pic",0,1 ; 77, sprite dimensions
dw BellossomPicFront
dw BellossomPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 0
	tmlearn 								TM_TOXIC,																		TM_DAZZLEGLEAM
	tmlearn 0
	tmlearn 																TM_SOLARBEAM,									TM_HYPER_BEAM
	tmlearn 												TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 0

db BANK(BellossomPicFront)
