db SLOWKING ; pokedex id
db 95 ; base hp
db 75 ; base attack
db 80 ; base defense
db 30 ; base speed
db 100 ; base special attack
;db 110 ; base special defense
db WATER ; species type 1
db PSYCHIC ; species type 2
db 70 ; catch rate
db 172 ; base exp yield
INCBIN "pic/mon/slowking.pic",0,1 ; 77, sprite dimensions
dw SlowkingPicFront
dw SlowkingPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,									TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS,TM_THUNDER_WAVE
	tmlearn 								TM_IRON_TAIL,					TM_FOUL_PLAY
	tmlearn 								TM_TOXIC,		TM_TRI_ATTACK,	TM_SCALD
	tmlearn TM_CALM_MIND,					TM_ICE_PUNCH,					TM_FLAMETHROWER,								TM_PSYCHIC
	tmlearn TM_EARTHQUAKE,					TM_SHADOW_BALL,									TM_FIRE_BLAST,	TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn TM_PAY_DAY,						TM_DREAM_EATER

db BANK(SlowkingPicFront)
