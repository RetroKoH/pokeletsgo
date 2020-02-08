db STARYU ; pokedex id
db 30 ; base hp
db 45 ; base attack
db 55 ; base defense
db 85 ; base speed
db 70 ; base special attack
;db 55 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 225 ; catch rate
db 68 ; base exp yield
INCBIN "pic/mon/staryu.pic",0,1 ; 66, sprite dimensions
dw StaryuPicFront
dw StaryuPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,									TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 0
	tmlearn TM_WATERFALL,					TM_TOXIC,		TM_TRI_ATTACK,	TM_SCALD,										TM_DAZZLEGLEAM
	tmlearn 												TM_THUNDERBOLT,					TM_THUNDER,						TM_PSYCHIC
	tmlearn 																								TM_SURF
	tmlearn 								TM_BLIZZARD,									TM_FLASH_CANNON,TM_ICE_BEAM
;	tmlearn 0

db BANK(StaryuPicFront)
