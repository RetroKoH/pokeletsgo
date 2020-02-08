db DODRIO ; pokedex id
db 60 ; base hp
db 110 ; base attack
db 70 ; base defense
db 110 ; base speed
db 60 ; base special attack
;db 60 ; base special defense
db NORMAL ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 165 ; base exp yield
INCBIN "pic/mon/dodrio.pic",0,1 ; 77, sprite dimensions
dw DodrioPicFront
dw DodrioPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,						TM_FLY
	tmlearn 0
	tmlearn 								TM_TOXIC,		TM_TRI_ATTACK
	tmlearn 0
	tmlearn 																												TM_HYPER_BEAM
	tmlearn 				TM_ROOST
;	tmlearn 0

db BANK(DodrioPicFront)
