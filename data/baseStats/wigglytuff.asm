db WIGGLYTUFF ; pokedex id
db 140 ; base hp
db 70 ; base attack
db 45 ; base defense
db 45 ; base speed
db 85 ; base special attack
;db 50 ; base special defense
db NORMAL ; species type 1
db FAIRY ; species type 2
db 50 ; catch rate
db 196 ; base exp yield
INCBIN "pic/mon/wigglytuff.pic",0,1 ; 66, sprite dimensions
dw WigglytuffPicFront
dw WigglytuffPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_FAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS,TM_THUNDER_WAVE
	tmlearn 																								TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,		TM_TRI_ATTACK,									TM_FIRE_PUNCH,	TM_DAZZLEGLEAM
	tmlearn 								TM_ICE_PUNCH,	TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER,						TM_PSYCHIC
	tmlearn 								TM_SHADOW_BALL,	TM_PLAY_ROUGH,	TM_SOLARBEAM,	TM_FIRE_BLAST,					TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM,	TM_STEALTH_ROCK
;	tmlearn 								TM_DREAM_EATER

db BANK(WigglytuffPicFront)
