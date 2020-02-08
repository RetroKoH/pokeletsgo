db VENONAT ; pokedex id
db 60 ; base hp
db 55 ; base attack
db 50 ; base defense
db 45 ; base speed
db 40 ; base special attack
;db 55 ; base special defense
db BUG ; species type 1
db POISON ; species type 2
db 190 ; catch rate
db 61 ; base exp yield
INCBIN "pic/mon/venonat.pic",0,1 ; 55, sprite dimensions
dw VenonatPicFront
dw VenonatPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,									TM_TELEPORT,	TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 0
	tmlearn 								TM_TOXIC
	tmlearn 																												TM_PSYCHIC
	tmlearn 																TM_SOLARBEAM
	tmlearn 												TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 0

db BANK(VenonatPicFront)
