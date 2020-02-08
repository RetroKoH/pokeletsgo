db DUGTRIO ; pokedex id
db 35 ; base hp
db 100 ; base attack
db 60 ; base defense
db 110 ; base speed
db 50 ; base special attack
;db 70 ; base special defense
db GROUND ; species type 1
db STEEL ; species type 2
db 50 ; catch rate
db 149 ; base exp yield
INCBIN "pic/mon/dugtrio-a.pic",0,1 ; 77, sprite dimensions
dw DugtrioAPicFront
dw DugtrioAPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE
	tmlearn 																				TM_ROCK_SLIDE
	tmlearn 								TM_TOXIC,		TM_TRI_ATTACK
	tmlearn 0
	tmlearn TM_EARTHQUAKE,																									TM_HYPER_BEAM
	tmlearn 												TM_SLUDGE_BOMB,					TM_FLASH_CANNON,				TM_STEALTH_ROCK
;	tmlearn 0

db BANK(DugtrioAPicFront)
