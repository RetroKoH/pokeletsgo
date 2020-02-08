db MAGNEZONE ; pokedex id
db 70 ; base hp
db 70 ; base attack
db 115 ; base defense
db 60 ; base speed
db 130 ; base special attack
;db 90 ; base special defense
db ELECTRIC ; species type 1
db STEEL ; species type 2
db 30 ; catch rate
db 241 ; base exp yield
INCBIN "pic/mon/magnezone.pic",0,1 ; 66, sprite dimensions
dw MagnezonePicFront
dw MagnezonePicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,									TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 0
	tmlearn 								TM_TOXIC,		TM_TRI_ATTACK
	tmlearn 												TM_THUNDERBOLT,					TM_THUNDER
	tmlearn 																												TM_HYPER_BEAM
	tmlearn 																				TM_FLASH_CANNON
;	tmlearn 0

db BANK(MagnezonePicFront)
