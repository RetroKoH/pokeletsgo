db PERRSERKER ; pokedex id
db 70 ; base hp
db 110 ; base attack
db 100 ; base defense
db 50 ; base speed
db 50 ; base special attack
;db 60 ; base special defense
db STEEL ; species type 1
db STEEL ; species type 2
db 90 ; catch rate
db 154 ; base exp yield
INCBIN "pic/mon/perrserker.pic",0,1 ; 77, sprite dimensions
dw PerrserkerPicFront
dw PerrserkerPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE
	tmlearn 				TM_U_TURN,		TM_IRON_TAIL,	TM_DARK_PULSE,	TM_FOUL_PLAY
	tmlearn 								TM_TOXIC
	tmlearn 												TM_THUNDERBOLT,					TM_THUNDER
	tmlearn 								TM_SHADOW_BALL,	TM_PLAY_ROUGH,													TM_HYPER_BEAM
	tmlearn 0
;	tmlearn TM_PAY_DAY

db BANK(PerrserkerPicFront)
