db DIGLETT ; pokedex id
db 10 ; base hp
db 55 ; base attack
db 30 ; base defense
db 90 ; base speed
db 35 ; base special attack
;db 45 ; base special defense
db GROUND ; species type 1
db STEEL ; species type 2
db 255 ; catch rate
db 53 ; base exp yield
INCBIN "pic/mon/diglett-a.pic",0,1 ; 55, sprite dimensions
dw DiglettAPicFront
dw DiglettAPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE
	tmlearn 																				TM_ROCK_SLIDE
	tmlearn 								TM_TOXIC
	tmlearn 0
	tmlearn TM_EARTHQUAKE
	tmlearn 												TM_SLUDGE_BOMB,					TM_FLASH_CANNON,				TM_STEALTH_ROCK
;	tmlearn 0

db BANK(DiglettAPicFront)
