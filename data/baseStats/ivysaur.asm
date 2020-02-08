db IVYSAUR ; pokedex id
db 60 ; base hp
db 62 ; base attack
db 63 ; base defense
db 60 ; base speed
db 80 ; base special attack
;db 80 ; base special defense
db GRASS ; species type 1
db POISON ; species type 2
db 45 ; catch rate
db 142 ; base exp yield
INCBIN "pic/mon/ivysaur.pic",0,1 ; 66, sprite dimensions
dw IvysaurPicFront
dw IvysaurPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; TM learnset
	tmlearn TM_HEADBUTT,													TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 0
	tmlearn 								TM_TOXIC
	tmlearn 																								TM_OUTRAGE
	tmlearn 																TM_SOLARBEAM
	tmlearn 												TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 0

db BANK(IvysaurPicFront)
