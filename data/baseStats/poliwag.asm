db POLIWAG ; pokedex id
db 40 ; base hp
db 50 ; base attack
db 40 ; base defense
db 90 ; base speed
db 40 ; base special attack
;db 40 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 255 ; catch rate
db 60 ; base exp yield
INCBIN "pic/mon/poliwag.pic",0,1 ; 55, sprite dimensions
dw PoliwagPicFront
dw PoliwagPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE
	tmlearn 0
	tmlearn TM_WATERFALL,					TM_TOXIC,						TM_SCALD
	tmlearn 																												TM_PSYCHIC
	tmlearn 																								TM_SURF
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(PoliwagPicFront)
