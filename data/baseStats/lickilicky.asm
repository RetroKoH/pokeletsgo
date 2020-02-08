db LICKILICKY ; pokedex id
db 110 ; base hp
db 85 ; base attack
db 95 ; base defense
db 50 ; base speed
db 80 ; base special attack
;db 95 ; base special defense
db NORMAL ; species type 1
db NORMAL ; species type 2
db 30 ; catch rate
db 180 ; base exp yield
INCBIN "pic/mon/lickilicky.pic",0,1 ; 77, sprite dimensions
dw LickilickyPicFront
dw LickilickyPicBack

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

db BANK(LickilickyPicFront)
