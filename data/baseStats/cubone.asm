db CUBONE ; pokedex id
db 50 ; base hp
db 50 ; base attack
db 95 ; base defense
db 35 ; base speed
db 40 ; base special attack
;db 50 ; base special defense
db GROUND ; species type 1
db GROUND ; species type 2
db 190 ; catch rate
db 64 ; base exp yield
INCBIN "pic/mon/cubone.pic",0,1 ; 55, sprite dimensions
dw CubonePicFront
dw CubonePicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 								TM_IRON_TAIL,									TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 																TM_FLAMETHROWER
	tmlearn TM_EARTHQUAKE,																	TM_FIRE_BLAST
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM,	TM_STEALTH_ROCK
;	tmlearn 0

db BANK(CubonePicFront)
