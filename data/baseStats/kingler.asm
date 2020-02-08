db KINGLER ; pokedex id
db 55 ; base hp
db 130 ; base attack
db 115 ; base defense
db 75 ; base speed
db 50 ; base special attack
;db 50 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 60 ; catch rate
db 166 ; base exp yield
INCBIN "pic/mon/kingler.pic",0,1 ; 77, sprite dimensions
dw KinglerPicFront
dw KinglerPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK
	tmlearn 																				TM_ROCK_SLIDE,					TM_X_SCISSOR
	tmlearn 								TM_TOXIC,						TM_SCALD
	tmlearn 0
	tmlearn 																								TM_SURF,		TM_HYPER_BEAM
	tmlearn TM_SUPERPOWER,					TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(KinglerPicFront)
