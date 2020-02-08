db MELTAN ; pokedex id
db 45 ; base hp
db 65 ; base attack
db 60 ; base defense
db 34 ; base speed
db 55 ; base special attack
;db 35 ; base special defense
db STEEL ; species type 1
db STEEL ; species type 2
db 3 ; catch rate
db 135 ; base exp yield
INCBIN "pic/mon/meltan.pic",0,1 ; 55, sprite dimensions
dw MeltanPicFront
dw MeltanPicBack

; rare encounter moves
db DOUBLE_EDGE, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 																												TM_THUNDER_WAVE
	tmlearn 0
	tmlearn 								TM_TOXIC
	tmlearn 												TM_THUNDERBOLT
	tmlearn 0
	tmlearn 																				TM_FLASH_CANNON
;	tmlearn 0

db BANK(MeltanPicFront)
