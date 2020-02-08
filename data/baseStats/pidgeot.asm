db PIDGEOT ; pokedex id
db 83 ; base hp
db 80 ; base attack
db 75 ; base defense
db 91 ; base speed
db 70 ; base special attack
;db 70 ; base special defense
db NORMAL ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 216 ; base exp yield
INCBIN "pic/mon/pidgeot.pic",0,1 ; 77, sprite dimensions
dw PidgeotPicFront
dw PidgeotPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,						TM_FLY
	tmlearn 				TM_U_TURN
	tmlearn 								TM_TOXIC
	tmlearn 0
	tmlearn 																												TM_HYPER_BEAM
	tmlearn 				TM_ROOST
;	tmlearn 0

db BANK(PidgeotPicFront)
