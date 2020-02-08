db RHYPERIOR ; pokedex id
db 115 ; base hp
db 140 ; base attack
db 130 ; base defense
db 40 ; base speed
db 55 ; base special attack
;db 55 ; base special defense
db GROUND ; species type 1
db ROCK ; species type 2
db 30 ; catch rate
db 241 ; base exp yield
INCBIN "pic/mon/rhyperior.pic",0,1 ; 77, sprite dimensions
dw RhyperiorPicFront
dw RhyperiorPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn TM_DRAGON_TAIL,					TM_IRON_TAIL,									TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 				TM_POISON_JAB,	TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 				TM_DRAGON_PULSE,TM_ICE_PUNCH,	TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER,		TM_OUTRAGE
	tmlearn TM_EARTHQUAKE,																	TM_FIRE_BLAST,	TM_SURF,		TM_HYPER_BEAM
	tmlearn TM_SUPERPOWER,					TM_BLIZZARD,									TM_FLASH_CANNON,TM_ICE_BEAM,	TM_STEALTH_ROCK
;	tmlearn TM_PAY_DAY,		TM_DRILL_RUN,					TM_MEGAHORN

db BANK(RhyperiorPicFront)
