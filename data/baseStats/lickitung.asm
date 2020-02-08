db LICKITUNG ; pokedex id
db 90 ; base hp
db 55 ; base attack
db 75 ; base defense
db 30 ; base speed
db 60 ; base special attack
;db 75 ; base special defense
db NORMAL ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 77 ; base exp yield
INCBIN "pic/mon/lickitung.pic",0,1 ; 77, sprite dimensions
dw LickitungPicFront
dw LickitungPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn TM_DRAGON_TAIL,					TM_IRON_TAIL,									TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 								TM_ICE_PUNCH,	TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER
	tmlearn TM_EARTHQUAKE,					TM_SHADOW_BALL,					TM_SOLARBEAM,	TM_FIRE_BLAST,	TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 								TM_DREAM_EATER

db BANK(LickitungPicFront)
