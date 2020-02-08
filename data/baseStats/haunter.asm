db HAUNTER ; pokedex id
db 45 ; base hp
db 50 ; base attack
db 45 ; base defense
db 95 ; base speed
db 115 ; base special attack
;db 55 ; base special defense
db GHOST ; species type 1
db POISON ; species type 2
db 90 ; catch rate
db 142 ; base exp yield
INCBIN "pic/mon/haunter.pic",0,1 ; 66, sprite dimensions
dw HaunterPicFront
dw HaunterPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 								TM_WILL_O_WISP,	TM_FACADE
	tmlearn 												TM_DARK_PULSE,	TM_FOUL_PLAY,					TM_THUNDERPUNCH
	tmlearn 				TM_POISON_JAB,	TM_TOXIC,														TM_FIRE_PUNCH,	TM_DAZZLEGLEAM
	tmlearn 								TM_ICE_PUNCH,	TM_THUNDERBOLT,					TM_THUNDER,						TM_PSYCHIC
	tmlearn 				TM_SELFDESTRUCT,TM_SHADOW_BALL
	tmlearn 												TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 								TM_DREAM_EATER

db BANK(HaunterPicFront)
