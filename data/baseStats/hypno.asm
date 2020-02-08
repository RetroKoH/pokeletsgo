db HYPNO ; pokedex id
db 85 ; base hp
db 73 ; base attack
db 70 ; base defense
db 67 ; base speed
db 73 ; base special attack
;db 115 ; base special defense
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 75 ; catch rate
db 169 ; base exp yield
INCBIN "pic/mon/hypno.pic",0,1 ; 77, sprite dimensions
dw HypnoPicFront
dw HypnoPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,						TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS,TM_THUNDER_WAVE
	tmlearn 																TM_FOUL_PLAY,					TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,		TM_TRI_ATTACK,									TM_FIRE_PUNCH,	TM_DAZZLEGLEAM
	tmlearn TM_CALM_MIND,					TM_ICE_PUNCH,																	TM_PSYCHIC
	tmlearn 								TM_SHADOW_BALL,																	TM_HYPER_BEAM
	tmlearn 0
;	tmlearn 								TM_DREAM_EATER

db BANK(HypnoPicFront)
