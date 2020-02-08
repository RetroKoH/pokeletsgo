db ARBOK ; pokedex id
db 60 ; base hp
db 95 ; base attack
db 69 ; base defense
db 80 ; base speed
db 65 ; base special attack
;db 79 ; base special defense
db POISON ; species type 1
db POISON ; species type 2
db 90 ; catch rate
db 157 ; base exp yield
INCBIN "pic/mon/arbok.pic",0,1 ; 77, sprite dimensions
dw ArbokPicFront
dw ArbokPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE
	tmlearn TM_DRAGON_TAIL,					TM_IRON_TAIL,	TM_DARK_PULSE,					TM_ROCK_SLIDE
	tmlearn 				TM_POISON_JAB,	TM_TOXIC
	tmlearn 0
	tmlearn TM_EARTHQUAKE,																									TM_HYPER_BEAM
	tmlearn 												TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 0

db BANK(ArbokPicFront)
