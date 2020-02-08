db ZUBAT ; pokedex id
db 40 ; base hp
db 45 ; base attack
db 35 ; base defense
db 55 ; base speed
db 30 ; base special attack
;db 40 ; base special defense
db POISON ; species type 1
db FLYING ; species type 2
db 255 ; catch rate
db 49 ; base exp yield
INCBIN "pic/mon/zubat.pic",0,1 ; 55, sprite dimensions
dw ZubatPicFront
dw ZubatPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE,						TM_FLY
	tmlearn 				TM_U_TURN
	tmlearn 								TM_TOXIC
	tmlearn 0
	tmlearn 								TM_SHADOW_BALL,																	TM_HYPER_BEAM
	tmlearn 				TM_ROOST,						TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 0

db BANK(ZubatPicFront)
