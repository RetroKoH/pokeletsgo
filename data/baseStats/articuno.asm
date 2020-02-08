db ARTICUNO ; pokedex id
db 90 ; base hp
db 85 ; base attack
db 100 ; base defense
db 85 ; base speed
;db 95 ; base special attack
db 125 ; base special defense
db ICE ; species type 1
db FLYING ; species type 2
db 3 ; catch rate
db 255 ; (261) base exp yield
INCBIN "pic/mon/articuno.pic",0,1 ; 77, sprite dimensions
dw ArticunoPicFront
dw ArticunoPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,						TM_FLY
	tmlearn 				TM_U_TURN
	tmlearn 								TM_TOXIC
	tmlearn 0
	tmlearn 																												TM_HYPER_BEAM
	tmlearn 				TM_ROOST,		TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(ArticunoPicFront)
