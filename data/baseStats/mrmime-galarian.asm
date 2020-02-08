db MR_MIME ; pokedex id
db 50 ; base hp
db 65 ; base attack
db 65 ; base defense
db 100 ; base speed
db 90 ; base special attack
;db 90 ; base special defense
db ICE ; species type 1
db PSYCHIC ; species type 2
db 45 ; catch rate
db 161 ; base exp yield
INCBIN "pic/mon/mrmime-g.pic",0,1 ; 66, sprite dimensions
dw MrMimeGPicFront
dw MrMimeGPicBack

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
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 								TM_DREAM_EATER

db BANK(MrMimeGPicFront)
