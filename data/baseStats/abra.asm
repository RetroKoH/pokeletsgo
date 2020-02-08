db ABRA ; pokedex id
db 25 ; base hp
db 20 ; base attack
db 15 ; base defense
db 90 ; base speed
db 105 ; base special attack
;db 55 ; base special defense
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 200 ; catch rate
db 62 ; base exp yield
INCBIN "pic/mon/abra.pic",0,1 ; 55, sprite dimensions
dw AbraPicFront
dw AbraPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,						TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,										TM_SEISMIC_TOSS,TM_THUNDER_WAVE
	tmlearn 								TM_IRON_TAIL,					TM_FOUL_PLAY,					TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,		TM_TRI_ATTACK,									TM_FIRE_PUNCH,	TM_DAZZLEGLEAM
	tmlearn TM_CALM_MIND,					TM_ICE_PUNCH,																	TM_PSYCHIC
	tmlearn 								TM_SHADOW_BALL
	tmlearn 0
;	tmlearn 								TM_DREAM_EATER

db BANK(AbraPicFront)
