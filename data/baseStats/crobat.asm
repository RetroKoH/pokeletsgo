db CROBAT ; pokedex id
db 85 ; base hp
db 90 ; base attack
db 80 ; base defense
db 130 ; base speed
db 70 ; base special attack
;db 80 ; base special defense
db POISON ; species type 1
db FLYING ; species type 2
db 90 ; catch rate
db 241 ; base exp yield
INCBIN "pic/mon/crobat.pic",0,1 ; 77, sprite dimensions
dw CrobatPicFront
dw CrobatPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE,						TM_FLY
	tmlearn 				TM_U_TURN,						TM_DARK_PULSE,													TM_X_SCISSOR
	tmlearn 								TM_TOXIC
	tmlearn 0
	tmlearn 								TM_SHADOW_BALL,																	TM_HYPER_BEAM
	tmlearn 				TM_ROOST,						TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 0

db BANK(CrobatPicFront)
