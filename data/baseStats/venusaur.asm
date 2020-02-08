db VENUSAUR ; pokedex id
db 80 ; base hp
db 82 ; base attack
db 83 ; base defense
db 80 ; base speed
db 100 ; base special attack
;db 100 ; base special defense
db GRASS ; species type 1
db POISON ; species type 2
db 45 ; catch rate
db 236 ; base exp yield
INCBIN "pic/mon/venusaur.pic",0,1 ; 77, sprite dimensions
dw VenusaurPicFront
dw VenusaurPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; TM learnset
	tmlearn TM_HEADBUTT,													TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 0
	tmlearn 								TM_TOXIC
	tmlearn 																								TM_OUTRAGE
	tmlearn TM_EARTHQUAKE,													TM_SOLARBEAM,									TM_HYPER_BEAM
	tmlearn 												TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 0

db BANK(VenusaurPicFront)
