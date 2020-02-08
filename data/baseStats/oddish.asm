db ODDISH ; pokedex id
db 45 ; base hp
db 50 ; base attack
db 55 ; base defense
db 30 ; base speed
db 75 ; base special attack
;db 65 ; base special defense
db GRASS ; species type 1
db POISON ; species type 2
db 255 ; catch rate
db 64 ; base exp yield
INCBIN "pic/mon/oddish.pic",0,1 ; 55, sprite dimensions
dw OddishPicFront
dw OddishPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 0
	tmlearn 								TM_TOXIC,																		TM_DAZZLEGLEAM
	tmlearn 0
	tmlearn 																TM_SOLARBEAM
	tmlearn 												TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 0

db BANK(OddishPicFront)
