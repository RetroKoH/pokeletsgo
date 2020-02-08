db MR_MIME ; pokedex id
db 40 ; base hp
db 45 ; base attack
db 65 ; base defense
db 90 ; base speed
db 100 ; base special attack
;db 120 ; base special defense
db PSYCHIC ; species type 1
db FAIRY ; species type 2
db 45 ; catch rate
db 161 ; base exp yield
INCBIN "pic/mon/mrmime.pic",0,1 ; 66, sprite dimensions
dw MrMimePicFront
dw MrMimePicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,		TM_HELPING_HAND,TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS,TM_THUNDER_WAVE
	tmlearn 																TM_FOUL_PLAY,					TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH,	TM_DAZZLEGLEAM
	tmlearn TM_CALM_MIND,					TM_ICE_PUNCH,	TM_THUNDERBOLT,					TM_THUNDER,						TM_PSYCHIC
	tmlearn 								TM_SHADOW_BALL,					TM_SOLARBEAM,									TM_HYPER_BEAM
	tmlearn 0
;	tmlearn 								TM_DREAM_EATER

db BANK(MrMimePicFront)
