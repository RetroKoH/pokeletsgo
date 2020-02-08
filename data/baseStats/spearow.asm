db SPEAROW ; pokedex id
db 40 ; base hp
db 60 ; base attack
db 30 ; base defense
db 70 ; base speed
db 31 ; base special attack
;db 31 ; base special defense
db NORMAL ; species type 1
db FLYING ; species type 2
db 255 ; catch rate
db 52 ; base exp yield
INCBIN "pic/mon/spearow.pic",0,1 ; 55, sprite dimensions
dw SpearowPicFront
dw SpearowPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE,						TM_FLY
	tmlearn 				TM_U_TURN
	tmlearn 								TM_TOXIC,		TM_TRI_ATTACK
	tmlearn 0
	tmlearn 0
	tmlearn 				TM_ROOST
;	tmlearn 				TM_DRILL_RUN

db BANK(SpearowPicFront)
