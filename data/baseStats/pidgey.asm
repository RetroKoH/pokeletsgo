db PIDGEY ; pokedex id
db 40 ; base hp
db 45 ; base attack
db 40 ; base defense
db 56 ; base speed
db 35 ; base special attack
;db 35 ; base special defense
db NORMAL ; species type 1
db FLYING ; species type 2
db 255 ; catch rate
db 50 ; base exp yield
INCBIN "pic/mon/pidgey.pic",0,1 ; 55, sprite dimensions
dw PidgeyPicFront
dw PidgeyPicBack

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

db BANK(PidgeyPicFront)
