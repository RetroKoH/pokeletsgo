db PIDGEOTTO ; pokedex id
db 63 ; base hp
db 60 ; base attack
db 55 ; base defense
db 71 ; base speed
db 50 ; base special attack
;db 50 ; base special defense
db NORMAL ; species type 1
db FLYING ; species type 2
db 120 ; catch rate
db 122 ; base exp yield
INCBIN "pic/mon/pidgeotto.pic",0,1 ; 66, sprite dimensions
dw PidgeottoPicFront
dw PidgeottoPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,						TM_FLY
	tmlearn 				TM_U_TURN
	tmlearn 								TM_TOXIC
	tmlearn 0
	tmlearn 0
	tmlearn 				TM_ROOST
;	tmlearn 0

db BANK(PidgeottoPicFront)
