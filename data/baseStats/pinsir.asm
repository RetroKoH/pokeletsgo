db PINSIR ; pokedex id
db 65 ; base hp
db 125 ; base attack
db 100 ; base defense
db 85 ; base speed
db 55 ; base special attack
;db 70 ; base special defense
db BUG ; species type 1
db BUG ; species type 2
db 45 ; catch rate
db 175 ; base exp yield
INCBIN "pic/mon/pinsir.pic",0,1 ; 77, sprite dimensions
dw PinsirPicFront
dw PinsirPicBack

; rare encounter moves
db VICEGRIP, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 																				TM_ROCK_SLIDE,					TM_X_SCISSOR
	tmlearn 								TM_TOXIC,										TM_BULK_UP
	tmlearn 																								TM_OUTRAGE
	tmlearn TM_EARTHQUAKE,																									TM_HYPER_BEAM
	tmlearn TM_SUPERPOWER,																									TM_STEALTH_ROCK
;	tmlearn 0

db BANK(PinsirPicFront)
