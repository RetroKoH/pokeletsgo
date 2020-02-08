db PARAS ; pokedex id
db 35 ; base hp
db 70 ; base attack
db 55 ; base defense
db 25 ; base speed
db 45 ; base special attack
;db 55 ; base special defense
db BUG ; species type 1
db GRASS ; species type 2
db 190 ; catch rate
db 57 ; base exp yield
INCBIN "pic/mon/paras.pic",0,1 ; 55, sprite dimensions
dw ParasPicFront
dw ParasPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,		TM_BRICK_BREAK
	tmlearn 																												TM_X_SCISSOR
	tmlearn 								TM_TOXIC
	tmlearn 0
	tmlearn 																TM_SOLARBEAM
	tmlearn 												TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 0

db BANK(ParasPicFront)
