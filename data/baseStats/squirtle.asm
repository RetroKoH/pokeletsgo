db SQUIRTLE ; pokedex id
db 44 ; base hp
db 48 ; base attack
db 65 ; base defense
db 43 ; base speed
db 50 ; base special attack
;db 64 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 45 ; catch rate
db 63 ; base exp yield
INCBIN "pic/mon/squirtle.pic",0,1 ; 55, sprite dimensions
dw SquirtlePicFront
dw SquirtlePicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 								TM_IRON_TAIL,									TM_ROCK_SLIDE
	tmlearn TM_WATERFALL,					TM_TOXIC,						TM_SCALD
	tmlearn 				TM_DRAGON_PULSE,TM_ICE_PUNCH,													TM_OUTRAGE
	tmlearn 																								TM_SURF
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(SquirtlePicFront)
