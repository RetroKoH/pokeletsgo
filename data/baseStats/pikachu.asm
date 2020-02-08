db PIKACHU ; pokedex id
db 35 ; base hp
db 55 ; base attack
db 40 ; base defense
db 90 ; base speed
db 50 ; base special attack
;db 50 ; base special defense
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 190 ; catch rate
db 112 ; base exp yield
INCBIN "pic/mon/pikachu.pic",0,1 ; 55, sprite dimensions
dw PikachuPicFront
dw PikachuPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS,TM_THUNDER_WAVE
	tmlearn 								TM_IRON_TAIL,													TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC
	tmlearn TM_CALM_MIND,									TM_THUNDERBOLT,					TM_THUNDER
	tmlearn 0
	tmlearn 0
;	tmlearn TM_PAY_DAY

db BANK(PikachuPicFront)
