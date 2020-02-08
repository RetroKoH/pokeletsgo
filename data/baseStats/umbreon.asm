db UMBREON ; pokedex id
db 95 ; base hp
db 65 ; base attack
db 110 ; base defense
db 65 ; base speed
;db 60 ; base special attack
db 130 ; base special defense
db DARK ; species type 1
db DARK ; species type 2
db 45 ; catch rate
db 184 ; base exp yield
INCBIN "pic/mon/umbreon.pic",0,1 ; 66, sprite dimensions
dw UmbreonPicFront
dw UmbreonPicBack

; rare encounter moves
db DOUBLE_KICK, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,		TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE
	tmlearn 								TM_IRON_TAIL,	TM_DARK_PULSE,	TM_FOUL_PLAY
	tmlearn 								TM_TOXIC
	tmlearn 																												TM_PSYCHIC
	tmlearn 								TM_SHADOW_BALL,																	TM_HYPER_BEAM
	tmlearn 0
;	tmlearn TM_PAY_DAY,						TM_DREAM_EATER

db BANK(UmbreonPicFront)
