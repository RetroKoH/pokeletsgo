db CHARIZARD ; pokedex id
db 78 ; base hp
db 84 ; base attack
db 78 ; base defense
db 100 ; base speed
db 109 ; base special attack
;db 85 ; base special defense
db FIRE ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 240 ; base exp yield
INCBIN "pic/mon/charizard.pic",0,1 ; 77, sprite dimensions
dw CharizardPicFront
dw CharizardPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,			TM_WILL_O_WISP,	TM_FACADE,		TM_BRICK_BREAK,	TM_FLY,			TM_SEISMIC_TOSS
	tmlearn TM_DRAGON_TAIL,					TM_IRON_TAIL,									TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 				TM_DRAGON_PULSE,								TM_FLAMETHROWER,				TM_OUTRAGE
	tmlearn TM_EARTHQUAKE,													TM_SOLARBEAM,	TM_FIRE_BLAST,					TM_HYPER_BEAM
	tmlearn 				TM_ROOST
;	tmlearn 0

db BANK(CharizardPicFront)
