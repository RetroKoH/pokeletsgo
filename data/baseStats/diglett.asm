db DIGLETT ; pokedex id
db 10 ; base hp
db 55 ; base attack
db 25 ; base defense
db 95 ; base speed
db 35 ; base special attack
;db 45 ; base special defense
db GROUND ; species type 1
db GROUND ; species type 2
db 255 ; catch rate
db 53 ; base exp yield
INCBIN "pic/mon/diglett.pic",0,1 ; 55, sprite dimensions
dw DiglettPicFront
dw DiglettPicBack

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
	tmlearn 												TM_SLUDGE_BOMB,													TM_STEALTH_ROCK
;	tmlearn 0

db BANK(DiglettPicFront)
