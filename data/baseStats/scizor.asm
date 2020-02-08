db SCIZOR ; pokedex id
db 70 ; base hp
db 130 ; base attack
db 100 ; base defense
db 65 ; base speed
db 55 ; base special attack
;db 80 ; base special defense
db BUG ; species type 1
db STEEL ; species type 2
db 25 ; catch rate
db 175 ; base exp yield
INCBIN "pic/mon/scizor.pic",0,1 ; 77, sprite dimensions
dw ScizorPicFront
dw ScizorPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE,		TM_BRICK_BREAK
	tmlearn 				TM_U_TURN,																						TM_X_SCISSOR
	tmlearn 								TM_TOXIC
	tmlearn 0
	tmlearn 																												TM_HYPER_BEAM
	tmlearn TM_SUPERPOWER,	TM_ROOST,														TM_FLASH_CANNON
;	tmlearn 0

db BANK(ScizorPicFront)
