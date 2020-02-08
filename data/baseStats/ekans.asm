db EKANS ; pokedex id
db 35 ; base hp
db 60 ; base attack
db 44 ; base defense
db 55 ; base speed
db 40 ; base special attack
;db 54 ; base special defense
db POISON ; species type 1
db POISON ; species type 2
db 255 ; catch rate
db 58 ; base exp yield
INCBIN "pic/mon/ekans.pic",0,1 ; 55, sprite dimensions
dw EkansPicFront
dw EkansPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE
	tmlearn 								TM_IRON_TAIL,	TM_DARK_PULSE,					TM_ROCK_SLIDE
	tmlearn 				TM_POISON_JAB,	TM_TOXIC
	tmlearn 0
	tmlearn TM_EARTHQUAKE
	tmlearn 												TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 0

db BANK(EkansPicFront)
