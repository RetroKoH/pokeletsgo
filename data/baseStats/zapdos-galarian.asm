db ZAPDOS ; pokedex id
db 90 ; base hp
db 90 ; base attack
db 85 ; base defense
db 100 ; base speed
db 125 ; base special attack
;db 90 ; base special defense
db ELECTRIC ; species type 1
db FLYING ; species type 2
db 3 ; catch rate
db 255 ; (261) base exp yield
INCBIN "pic/mon/zapdos-g.pic",0,1 ; 77, sprite dimensions
dw ZapdosGPicFront
dw ZapdosGPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,						TM_FLY,							TM_THUNDER_WAVE
	tmlearn 				TM_U_TURN
	tmlearn 								TM_TOXIC
	tmlearn 												TM_THUNDERBOLT,					TM_THUNDER
	tmlearn 																												TM_HYPER_BEAM
	tmlearn 				TM_ROOST
;	tmlearn 0

db BANK(ZapdosGPicFront)
