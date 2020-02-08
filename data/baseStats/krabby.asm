db KRABBY ; pokedex id
db 30 ; base hp
db 105 ; base attack
db 90 ; base defense
db 50 ; base speed
db 25 ; base special attack
;db 25 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 225 ; catch rate
db 65 ; base exp yield
INCBIN "pic/mon/krabby.pic",0,1 ; 55, sprite dimensions
dw KrabbyPicFront
dw KrabbyPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK
	tmlearn 																				TM_ROCK_SLIDE,					TM_X_SCISSOR
	tmlearn 								TM_TOXIC,						TM_SCALD
	tmlearn 0
	tmlearn 																								TM_SURF
	tmlearn TM_SUPERPOWER,					TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(KrabbyPicFront)
