db RATICATE ; pokedex id
db 55 ; base hp
db 81 ; base attack
db 60 ; base defense
db 97 ; base speed
db 50 ; base special attack
;db 70 ; base special defense
db NORMAL ; species type 1
db NORMAL ; species type 2
db 90 ; catch rate
db 145 ; base exp yield
INCBIN "pic/mon/raticate.pic",0,1 ; 66, sprite dimensions
dw RaticatePicFront
dw RaticatePicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 				TM_U_TURN,		TM_IRON_TAIL
	tmlearn 								TM_TOXIC
	tmlearn 												TM_THUNDERBOLT,					TM_THUNDER
	tmlearn 								TM_SHADOW_BALL,																	TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(RaticatePicFront)
