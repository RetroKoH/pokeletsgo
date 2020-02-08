db ESPEON ; pokedex id
db 65 ; base hp
db 65 ; base attack
db 60 ; base defense
db 110 ; base speed
db 130 ; base special attack
;db 95 ; base special defense
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 45 ; catch rate
db 184 ; base exp yield
INCBIN "pic/mon/espeon.pic",0,1 ; 66, sprite dimensions
dw EspeonPicFront
dw EspeonPicBack

; rare encounter moves
db DOUBLE_KICK, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE
	tmlearn 								TM_IRON_TAIL
	tmlearn 								TM_TOXIC,																		TM_DAZZLEGLEAM
	tmlearn TM_CALM_MIND,																									TM_PSYCHIC
	tmlearn 								TM_SHADOW_BALL,																	TM_HYPER_BEAM
	tmlearn 0
;	tmlearn TM_PAY_DAY,						TM_DREAM_EATER

db BANK(EspeonPicFront)
