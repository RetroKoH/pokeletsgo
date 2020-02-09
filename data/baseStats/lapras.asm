db LAPRAS ; pokedex id
db 130 ; base hp
db 85 ; base attack
db 80 ; base defense
db 60 ; base speed
;db 85 ; base special attack
db 95 ; base special defense
db WATER ; species type 1
db ICE ; species type 2
db 45 ; catch rate
db 187 ; base exp yield
INCBIN "pic/mon/lapras.pic",0,1 ; 77, sprite dimensions
dw LaprasPicFront
dw LaprasPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 								TM_IRON_TAIL
	tmlearn TM_WATERFALL,					TM_TOXIC
	tmlearn 				TM_DRAGON_PULSE,				TM_THUNDERBOLT,					TM_THUNDER,		TM_OUTRAGE,		TM_PSYCHIC
	tmlearn 																TM_SOLARBEAM,					TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 				TM_DRILL_RUN,	TM_DREAM_EATER,	TM_MEGAHORN

db BANK(LaprasPicFront)
