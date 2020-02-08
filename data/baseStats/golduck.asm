db GOLDUCK ; pokedex id
db 80 ; base hp
db 82 ; base attack
db 78 ; base defense
db 85 ; base speed
db 95 ; base special attack
;db 80 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 75 ; catch rate
db 175 ; base exp yield
INCBIN "pic/mon/golduck.pic",0,1 ; 77, sprite dimensions
dw GolduckPicFront
dw GolduckPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 								TM_IRON_TAIL
	tmlearn TM_WATERFALL,					TM_TOXIC,						TM_SCALD
	tmlearn TM_CALM_MIND,					TM_ICE_PUNCH,																	TM_PSYCHIC
	tmlearn 																								TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn TM_PAY_DAY

db BANK(GolduckPicFront)
