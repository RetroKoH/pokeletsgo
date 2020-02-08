db RAICHU ; pokedex id
db 60 ; base hp
db 90 ; base attack
db 55 ; base defense
db 110 ; base speed
db 90 ; base special attack
;db 80 ; base special defense
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 75 ; catch rate
db 218 ; base exp yield
INCBIN "pic/mon/raichu.pic",0,1 ; 77, sprite dimensions
dw RaichuPicFront
dw RaichuPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS,TM_THUNDER_WAVE
	tmlearn 								TM_IRON_TAIL,													TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC
	tmlearn TM_CALM_MIND,									TM_THUNDERBOLT,					TM_THUNDER
	tmlearn 																												TM_HYPER_BEAM
	tmlearn 0
;	tmlearn TM_PAY_DAY

db BANK(RaichuPicFront)
