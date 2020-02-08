db MAROWAK ; pokedex id
db 60 ; base hp
db 80 ; base attack
db 110 ; base defense
db 45 ; base speed
db 50 ; base special attack
;db 80 ; base special attack
db GROUND ; species type 1
db GROUND ; species type 2
db 75 ; catch rate
db 149 ; base exp yield
INCBIN "pic/mon/marowak.pic",0,1 ; 66, sprite dimensions
dw MarowakPicFront
dw MarowakPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 								TM_IRON_TAIL,									TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 																TM_FLAMETHROWER,				TM_OUTRAGE
	tmlearn TM_EARTHQUAKE,																	TM_FIRE_BLAST,					TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM,	TM_STEALTH_ROCK
;	tmlearn 0

db BANK(MarowakPicFront)
