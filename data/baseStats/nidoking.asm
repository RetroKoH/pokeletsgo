db NIDOKING ; pokedex id
db 81 ; base hp
db 102 ; base attack
db 77 ; base defense
db 85 ; base speed
db 85 ; base special attack
;db 75 ; base special defense
db POISON ; species type 1
db GROUND ; species type 2
db 45 ; catch rate
db 227 ; base exp yield
INCBIN "pic/mon/nidoking.pic",0,1 ; 77, sprite dimensions
dw NidokingPicFront
dw NidokingPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,		TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn TM_DRAGON_TAIL,					TM_IRON_TAIL,									TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 				TM_POISON_JAB,	TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 				TM_DRAGON_PULSE,TM_ICE_PUNCH,	TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER,		TM_OUTRAGE
	tmlearn TM_EARTHQUAKE,					TM_SHADOW_BALL,									TM_FIRE_BLAST,	TM_SURF,		TM_HYPER_BEAM
	tmlearn TM_SUPERPOWER,					TM_BLIZZARD,	TM_SLUDGE_BOMB,									TM_ICE_BEAM,	TM_STEALTH_ROCK
;	tmlearn TM_PAY_DAY,		TM_DRILL_RUN,					TM_MEGAHORN

db BANK(NidokingPicFront)
