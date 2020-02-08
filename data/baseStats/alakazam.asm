db ALAKAZAM ; pokedex id
db 55 ; base hp
db 50 ; base attack
db 45 ; base defense
db 120 ; base speed
db 135 ; base special attack
;db 95 ; base special defense
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 50 ; catch rate
db 225 ; base exp yield
INCBIN "pic/mon/alakazam.pic",0,1 ; 77, sprite dimensions
dw AlakazamPicFront
dw AlakazamPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,						TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,										TM_SEISMIC_TOSS,TM_THUNDER_WAVE
	tmlearn 								TM_IRON_TAIL,					TM_FOUL_PLAY,					TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,		TM_TRI_ATTACK,									TM_FIRE_PUNCH,	TM_DAZZLEGLEAM
	tmlearn TM_CALM_MIND,					TM_ICE_PUNCH,																	TM_PSYCHIC
	tmlearn 								TM_SHADOW_BALL,																	TM_HYPER_BEAM
	tmlearn 0
;	tmlearn 								TM_DREAM_EATER

db BANK(AlakazamPicFront)
