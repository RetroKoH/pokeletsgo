db MAGNETON ; pokedex id
db 50 ; base hp
db 60 ; base attack
db 95 ; base defense
db 70 ; base speed
db 120 ; base special attack
;db 70 ; base special defense
db ELECTRIC ; species type 1
db STEEL ; species type 2
db 60 ; catch rate
db 163 ; base exp yield
INCBIN "pic/mon/magneton.pic",0,1 ; 66, sprite dimensions
dw MagnetonPicFront
dw MagnetonPicBack

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

db BANK(MagnetonPicFront)
