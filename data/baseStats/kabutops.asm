db KABUTOPS ; pokedex id
db 60 ; base hp
db 115 ; base attack
db 105 ; base defense
db 80 ; base speed
db 65 ; base special attack
;db 70 ; base special defense
db ROCK ; species type 1
db WATER ; species type 2
db 45 ; catch rate
db 173 ; base exp yield
INCBIN "pic/mon/kabutops.pic",0,1 ; 66, sprite dimensions
dw KabutopsPicFront
dw KabutopsPicBack

; rare encounter moves
db AURORA_BEAM, BUBBLEBEAM, CONFUSE_RAY, SCREECH

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 																				TM_ROCK_SLIDE,					TM_X_SCISSOR
	tmlearn TM_WATERFALL,					TM_TOXIC,						TM_SCALD
	tmlearn 0
	tmlearn 																								TM_SURF,		TM_HYPER_BEAM
	tmlearn TM_SUPERPOWER,					TM_BLIZZARD,					TM_MEGA_DRAIN,					TM_ICE_BEAM,	TM_STEALTH_ROCK
;	tmlearn 0

db BANK(KabutopsPicFront)
