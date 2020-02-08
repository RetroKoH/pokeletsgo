db POLIWHIRL ; pokedex id
db 65 ; base hp
db 65 ; base attack
db 65 ; base defense
db 90 ; base speed
db 50 ; base special attack
;db 50 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 120 ; catch rate
db 135 ; base exp yield
INCBIN "pic/mon/poliwhirl.pic",0,1 ; 66, sprite dimensions
dw PoliwhirlPicFront
dw PoliwhirlPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 0
	tmlearn TM_WATERFALL,					TM_TOXIC,						TM_SCALD
	tmlearn 								TM_ICE_PUNCH,																	TM_PSYCHIC
	tmlearn TM_EARTHQUAKE,																					TM_SURF
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(PoliwhirlPicFront)
