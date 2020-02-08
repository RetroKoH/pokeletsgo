db GASTLY ; pokedex id
db 30 ; base hp
db 35 ; base attack
db 30 ; base defense
db 80 ; base speed
db 100 ; base special attack
;db 35 ; base special defense
db GHOST ; species type 1
db POISON ; species type 2
db 190 ; catch rate
db 62 ; base exp yield
INCBIN "pic/mon/gastly.pic",0,1 ; 66, sprite dimensions
dw GastlyPicFront
dw GastlyPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 								TM_WILL_O_WISP,	TM_FACADE
	tmlearn 												TM_DARK_PULSE,	TM_FOUL_PLAY,					TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH,	TM_DAZZLEGLEAM
	tmlearn 								TM_ICE_PUNCH,	TM_THUNDERBOLT,					TM_THUNDER,						TM_PSYCHIC
	tmlearn 				TM_SELFDESTRUCT,TM_SHADOW_BALL
	tmlearn 												TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 								TM_DREAM_EATER

db BANK(GastlyPicFront)
