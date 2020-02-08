db FEAROW ; pokedex id
db 65 ; base hp
db 90 ; base attack
db 65 ; base defense
db 100 ; base speed
db 61 ; base special attack
;db 61 ; base special defense
db NORMAL ; species type 1
db FLYING ; species type 2
db 90 ; catch rate
db 155 ; base exp yield
INCBIN "pic/mon/fearow.pic",0,1 ; 77, sprite dimensions
dw FearowPicFront
dw FearowPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE,						TM_FLY
	tmlearn 				TM_U_TURN
	tmlearn 								TM_TOXIC,		TM_TRI_ATTACK
	tmlearn 0
	tmlearn 																												TM_HYPER_BEAM
	tmlearn 				TM_ROOST
;	tmlearn 				TM_DRILL_RUN

db BANK(FearowPicFront)
