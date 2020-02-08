db PSYDUCK ; pokedex id
db 50 ; base hp
db 52 ; base attack
db 48 ; base defense
db 55 ; base speed
db 65 ; base special attack
;db 50 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 190 ; catch rate
db 64 ; base exp yield
INCBIN "pic/mon/psyduck.pic",0,1 ; 55, sprite dimensions
dw PsyduckPicFront
dw PsyduckPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 								TM_IRON_TAIL
	tmlearn TM_WATERFALL,					TM_TOXIC,						TM_SCALD
	tmlearn TM_CALM_MIND,					TM_ICE_PUNCH,																	TM_PSYCHIC
	tmlearn 																								TM_SURF
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn TM_PAY_DAY

db BANK(PsyduckPicFront)
