db POLITOED ; pokedex id
db 90 ; base hp
db 75 ; base attack
db 75 ; base defense
db 70 ; base speed
db 90 ; base special attack
;db 100 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 45 ; catch rate
db 225 ; base exp yield
INCBIN "pic/mon/politoed.pic",0,1 ; 77, sprite dimensions
dw PolitoedPicFront
dw PolitoedPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 0
	tmlearn TM_WATERFALL,					TM_TOXIC,						TM_SCALD
	tmlearn 								TM_ICE_PUNCH,																	TM_PSYCHIC
	tmlearn TM_EARTHQUAKE,																					TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(PolitoedPicFront)
