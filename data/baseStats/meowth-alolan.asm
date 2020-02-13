db MEOWTH ; pokedex id
db 40 ; base hp
db 35 ; base attack
db 35 ; base defense
db 90 ; base speed
db 50 ; base special attack
;db 40 ; base special defense
db DARK ; species type 1
db DARK ; species type 2
db 255 ; catch rate
db 58 ; base exp yield
INCBIN "pic/mon/meowth-a.pic",0,1 ; 55, sprite dimensions
dw MeowthAPicFront
dw MeowthAPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE
	tmlearn 				TM_U_TURN,		TM_IRON_TAIL,	TM_DARK_PULSE,	TM_FOUL_PLAY
	tmlearn 								TM_TOXIC
	tmlearn 												TM_THUNDERBOLT,					TM_THUNDER
	tmlearn 								TM_SHADOW_BALL,	TM_PLAY_ROUGH
	tmlearn 0
;	tmlearn TM_PAY_DAY,						TM_DREAM_EATER

db BANK(MeowthAPicFront)