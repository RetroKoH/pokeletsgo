db SEEL ; pokedex id
db 65 ; base hp
db 45 ; base attack
db 55 ; base defense
db 45 ; base speed
db 45 ; base special attack
;db 70 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 190 ; catch rate
db 65 ; base exp yield
INCBIN "pic/mon/seel.pic",0,1 ; 66, sprite dimensions
dw SeelPicFront
dw SeelPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE
	tmlearn 								TM_IRON_TAIL
	tmlearn TM_WATERFALL,					TM_TOXIC
	tmlearn 0
	tmlearn 																								TM_SURF
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn TM_PAY_DAY,		TM_DRILL_RUN,					TM_MEGAHORN

db BANK(SeelPicFront)
