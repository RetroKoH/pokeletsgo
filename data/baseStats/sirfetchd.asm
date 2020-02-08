db SIRFETCHD ; pokedex id
db 62 ; base hp
db 135 ; base attack
db 95 ; base defense
db 65 ; base speed
db 68 ; base special attack
;db 82 ; base special defense
db FIGHTING ; species type 1
db FIGHTING ; species type 2
db 45 ; catch rate
db 177 ; base exp yield
INCBIN "pic/mon/sirfetchd.pic",0,1 ; 66, sprite dimensions
dw SirfetchdPicFront
dw SirfetchdPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,		TM_BRICK_BREAK
	tmlearn 0
	tmlearn 				TM_POISON_JAB,	TM_TOXIC
	tmlearn 0
	tmlearn 0
	tmlearn TM_SUPERPOWER
;	tmlearn 0

db BANK(SirfetchdPicFront)
