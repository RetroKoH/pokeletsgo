db RAPIDASH ; pokedex id
db 65 ; base hp
db 100 ; base attack
db 70 ; base defense
db 105 ; base speed
db 80 ; base special attack
;db 80 ; base special defense
db PSYCHIC ; species type 1
db FAIRY ; species type 2
db 60 ; catch rate
db 175 ; base exp yield
INCBIN "pic/mon/rapidash-g.pic",0,1 ; 77, sprite dimensions
dw RapidashGPicFront
dw RapidashGPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,									TM_TELEPORT,	TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 								TM_IRON_TAIL
	tmlearn 								TM_TOXIC,																		TM_DAZZLEGLEAM
	tmlearn TM_CALM_MIND,																									TM_PSYCHIC
	tmlearn 												TM_PLAY_ROUGH,													TM_HYPER_BEAM
	tmlearn 0
;	tmlearn 				TM_DRILL_RUN,					TM_MEGAHORN

db BANK(RapidashGPicFront)
