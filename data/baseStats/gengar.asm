db GENGAR ; pokedex id
db 60 ; base hp
db 65 ; base attack
db 60 ; base defense
db 110 ; base speed
db 130 ; base special attack
;db 75 ; base special defense
db GHOST ; species type 1
db POISON ; species type 2
db 45 ; catch rate
db 225 ; base exp yield
INCBIN "pic/mon/gengar.pic",0,1 ; 66, sprite dimensions
dw GengarPicFront
dw GengarPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 								TM_WILL_O_WISP,	TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 												TM_DARK_PULSE,	TM_FOUL_PLAY,					TM_THUNDERPUNCH
	tmlearn 				TM_POISON_JAB,	TM_TOXIC,														TM_FIRE_PUNCH,	TM_DAZZLEGLEAM
	tmlearn 								TM_ICE_PUNCH,	TM_THUNDERBOLT,					TM_THUNDER,						TM_PSYCHIC
	tmlearn 				TM_SELFDESTRUCT,TM_SHADOW_BALL,																	TM_HYPER_BEAM
	tmlearn 												TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 								TM_DREAM_EATER

db BANK(GengarPicFront)
