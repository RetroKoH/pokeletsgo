db SEAKING ; pokedex id
db 80 ; base hp
db 92 ; base attack
db 65 ; base defense
db 68 ; base speed
db 65 ; base special attack
;db 80 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 60 ; catch rate
db 158 ; base exp yield
INCBIN "pic/mon/seaking.pic",0,1 ; 77, sprite dimensions
dw SeakingPicFront
dw SeakingPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE
	tmlearn 0
	tmlearn TM_WATERFALL,	TM_POISON_JAB,	TM_TOXIC,						TM_SCALD
	tmlearn 0
	tmlearn 																								TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 				TM_DRILL_RUN,					TM_MEGAHORN

db BANK(SeakingPicFront)
