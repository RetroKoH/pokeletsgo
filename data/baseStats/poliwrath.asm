db POLIWRATH ; pokedex id
db 90 ; base hp
db 95 ; base attack
db 95 ; base defense
db 70 ; base speed
db 70 ; base special attack
;db 90 ; base special attack
db WATER ; species type 1
db FIGHTING ; species type 2
db 45 ; catch rate
db 230 ; base exp yield
INCBIN "pic/mon/poliwrath.pic",0,1 ; 77, sprite dimensions
dw PoliwrathPicFront
dw PoliwrathPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 																				TM_ROCK_SLIDE
	tmlearn TM_WATERFALL,	TM_POISON_JAB,	TM_TOXIC,						TM_SCALD,		TM_BULK_UP
	tmlearn 								TM_ICE_PUNCH,																	TM_PSYCHIC
	tmlearn TM_EARTHQUAKE,																					TM_SURF,		TM_HYPER_BEAM
	tmlearn TM_SUPERPOWER,					TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(PoliwrathPicFront)
