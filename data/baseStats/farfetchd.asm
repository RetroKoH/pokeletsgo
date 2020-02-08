db FARFETCHD ; pokedex id
db 52 ; base hp
db 90 ; base attack
db 55 ; base defense
db 60 ; base speed
db 58 ; base special attack
;db 62 ; base special defense
db NORMAL ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 132 ; base exp yield
INCBIN "pic/mon/farfetchd.pic",0,1 ; 66, sprite dimensions
dw FarfetchdPicFront
dw FarfetchdPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,						TM_FLY
	tmlearn 				TM_U_TURN,		TM_IRON_TAIL
	tmlearn 				TM_POISON_JAB,	TM_TOXIC
	tmlearn 0
	tmlearn 0
	tmlearn 				TM_ROOST
;	tmlearn 0

db BANK(FarfetchdPicFront)
