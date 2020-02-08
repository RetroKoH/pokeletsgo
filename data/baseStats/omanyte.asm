db OMANYTE ; pokedex id
db 35 ; base hp
db 40 ; base attack
db 100 ; base defense
db 35 ; base speed
db 90 ; base special attack
;db 55 ; base special defense
db ROCK ; species type 1
db WATER ; species type 2
db 45 ; catch rate
db 71 ; base exp yield
INCBIN "pic/mon/omanyte.pic",0,1 ; 55, sprite dimensions
dw OmanytePicFront
dw OmanytePicBack

; rare encounter moves
db AURORA_BEAM, BIDE, BUBBLEBEAM, HAZE

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 																				TM_ROCK_SLIDE
	tmlearn TM_WATERFALL,					TM_TOXIC,						TM_SCALD
	tmlearn 0
	tmlearn 																								TM_SURF
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM,	TM_STEALTH_ROCK
;	tmlearn 0

db BANK(OmanytePicFront)
