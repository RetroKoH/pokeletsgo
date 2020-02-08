db OMASTAR ; pokedex id
db 70 ; base hp
db 60 ; base attack
db 125 ; base defense
db 55 ; base speed
db 115 ; base special attack
;db 70 ; base special defense
db ROCK ; species type 1
db WATER ; species type 2
db 45 ; catch rate
db 173 ; base exp yield
INCBIN "pic/mon/omastar.pic",0,1 ; 66, sprite dimensions
dw OmastarPicFront
dw OmastarPicBack

; rare encounter moves
db AURORA_BEAM, BIDE, BUBBLEBEAM, HAZE

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,										TM_SEISMIC_TOSS
	tmlearn 																				TM_ROCK_SLIDE
	tmlearn TM_WATERFALL,					TM_TOXIC,						TM_SCALD
	tmlearn 0
	tmlearn 																								TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM,	TM_STEALTH_ROCK
;	tmlearn 0

db BANK(OmastarPicFront)
