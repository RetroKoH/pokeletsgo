db STARMIE ; pokedex id
db 60 ; base hp
db 75 ; base attack
db 85 ; base defense
db 115 ; base speed
db 100 ; base special attack
;db 85 ; base special defense
db WATER ; species type 1
db PSYCHIC ; species type 2
db 60 ; catch rate
db 182 ; base exp yield
INCBIN "pic/mon/starmie.pic",0,1 ; 66, sprite dimensions
dw StarmiePicFront
dw StarmiePicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,									TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 0
	tmlearn TM_WATERFALL,					TM_TOXIC,		TM_TRI_ATTACK,	TM_SCALD,										TM_DAZZLEGLEAM
	tmlearn 												TM_THUNDERBOLT,					TM_THUNDER,						TM_PSYCHIC
	tmlearn 																								TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,									TM_FLASH_CANNON,TM_ICE_BEAM
;	tmlearn 								TM_DREAM_EATER

db BANK(StarmiePicFront)
