db RAICHU ; pokedex id
db 60 ; base hp
db 85 ; base attack
db 50 ; base defense
db 110 ; base speed
db 95 ; base special attack
;db 85 ; base special defense
db ELECTRIC ; species type 1
db PSYCHIC ; species type 2
db 75 ; catch rate
db 218 ; base exp yield
INCBIN "pic/mon/raichu-a.pic",0,1 ; 77, sprite dimensions
dw RaichuAPicFront
dw RaichuAPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS,TM_THUNDER_WAVE
	tmlearn 								TM_IRON_TAIL,													TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC
	tmlearn TM_CALM_MIND,									TM_THUNDERBOLT,					TM_THUNDER,						TM_PSYCHIC
	tmlearn 																												TM_HYPER_BEAM
	tmlearn 0
;	tmlearn TM_PAY_DAY

db BANK(RaichuAPicFront)
