db GOLDEEN ; pokedex id
db 45 ; base hp
db 67 ; base attack
db 60 ; base defense
db 63 ; base speed
db 35 ; base special attack
;db 50 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 225 ; catch rate
db 64 ; base exp yield
INCBIN "pic/mon/goldeen.pic",0,1 ; 66, sprite dimensions
dw GoldeenPicFront
dw GoldeenPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE
	tmlearn 0
	tmlearn TM_WATERFALL,	TM_POISON_JAB,	TM_TOXIC,						TM_SCALD
	tmlearn 0
	tmlearn 																								TM_SURF
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 				TM_DRILL_RUN,					TM_MEGAHORN

db BANK(GoldeenPicFront)
