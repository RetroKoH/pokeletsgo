db RATICATE ; pokedex id
db 75 ; base hp
db 71 ; base attack
db 70 ; base defense
db 77 ; base speed
db 40 ; base special attack
;db 80 ; base special defense
db DARK ; species type 1
db NORMAL ; species type 2
db 90 ; catch rate
db 145 ; base exp yield
INCBIN "pic/mon/raticate-a.pic",0,1 ; 66, sprite dimensions
dw RaticateAPicFront
dw RaticateAPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 				TM_U_TURN,		TM_IRON_TAIL,	TM_DARK_PULSE
	tmlearn 								TM_TOXIC,										TM_BULK_UP
	tmlearn 0
	tmlearn 								TM_SHADOW_BALL,																	TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,	TM_SLUDGE_BOMB,									TM_ICE_BEAM
;	tmlearn 0

db BANK(RaticateAPicFront)
