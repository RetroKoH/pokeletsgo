db DODUO ; pokedex id
db 35 ; base hp
db 85 ; base attack
db 45 ; base defense
db 75 ; base speed
db 35 ; base special attack
;db 35 ; base special defense
db NORMAL ; species type 1
db FLYING ; species type 2
db 190 ; catch rate
db 62 ; base exp yield
INCBIN "pic/mon/doduo.pic",0,1 ; 55, sprite dimensions
dw DoduoPicFront
dw DoduoPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,						TM_FLY
	tmlearn 0
	tmlearn 								TM_TOXIC
	tmlearn 0
	tmlearn 0
	tmlearn 				TM_ROOST
;	tmlearn 0

db BANK(DoduoPicFront)
