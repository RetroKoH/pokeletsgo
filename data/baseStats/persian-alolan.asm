db PERSIAN ; pokedex id
db 65 ; base hp
db 60 ; base attack
db 60 ; base defense
db 115 ; base speed
db 75 ; base special attack
;db 65 ; base special defense
db DARK ; species type 1
db DARK ; species type 2
db 90 ; catch rate
db 154 ; base exp yield
INCBIN "pic/mon/persian-a.pic",0,1 ; 77, sprite dimensions
dw PersianAPicFront
dw PersianAPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE
	tmlearn 				TM_U_TURN,		TM_IRON_TAIL,	TM_DARK_PULSE,	TM_FOUL_PLAY
	tmlearn 								TM_TOXIC
	tmlearn 												TM_THUNDERBOLT,					TM_THUNDER
	tmlearn 								TM_SHADOW_BALL,	TM_PLAY_ROUGH,													TM_HYPER_BEAM
	tmlearn 0
;	tmlearn TM_PAY_DAY,						TM_DREAM_EATER

db BANK(PersianAPicFront)
