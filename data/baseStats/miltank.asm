db MILTANK ; pokedex id
db 95 ; base hp
db 80 ; base attack
db 105 ; base defense
db 100 ; base speed
db 40 ; base special attack
;db 70 ; base special defense
db NORMAL ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 172 ; base exp yield
INCBIN "pic/mon/miltank.pic",0,1 ; 77, sprite dimensions
dw MiltankPicFront
dw MiltankPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS,TM_THUNDER_WAVE
	tmlearn 								TM_IRON_TAIL,									TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 								TM_ICE_PUNCH,	TM_THUNDERBOLT,					TM_THUNDER
	tmlearn TM_EARTHQUAKE,					TM_SHADOW_BALL,					TM_SOLARBEAM,					TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(MiltankPicFront)
