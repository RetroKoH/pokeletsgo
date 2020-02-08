db DEWGONG ; pokedex id
db 90 ; base hp
db 70 ; base attack
db 80 ; base defense
db 70 ; base speed
db 70 ; base special attack
;db 95 ; base special defense
db WATER ; species type 1
db ICE ; species type 2
db 75 ; catch rate
db 166 ; base exp yield
INCBIN "pic/mon/dewgong.pic",0,1 ; 77, sprite dimensions
dw DewgongPicFront
dw DewgongPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE
	tmlearn 								TM_IRON_TAIL
	tmlearn TM_WATERFALL,					TM_TOXIC
	tmlearn 0
	tmlearn 																								TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn TM_PAY_DAY,		TM_DRILL_RUN,					TM_MEGAHORN

db BANK(DewgongPicFront)
