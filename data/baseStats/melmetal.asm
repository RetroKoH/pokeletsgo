db MELMETAL ; pokedex id
db 135 ; base hp
db 143 ; base attack
db 143 ; base defense
db 34 ; base speed
db 80 ; base special attack
;db 65 ; base special defense
db STEEL ; species type 1
db STEEL ; species type 2
db 3 ; catch rate
db 255 ; (270) base exp yield
INCBIN "pic/mon/melmetal.pic",0,1 ; 55, sprite dimensions
dw MelmetalPicFront
dw MelmetalPicBack

; rare encounter moves
db DOUBLE_EDGE, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE,		TM_BRICK_BREAK,									TM_THUNDER_WAVE
	tmlearn 																				TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC
	tmlearn 								TM_ICE_PUNCH,	TM_THUNDERBOLT,					TM_THUNDER
	tmlearn TM_EARTHQUAKE,	TM_SELFDESTRUCT,								TM_SOLARBEAM,									TM_HYPER_BEAM
	tmlearn TM_SUPERPOWER,																	TM_FLASH_CANNON,TM_ICE_BEAM
;	tmlearn 0

db BANK(MelmetalPicFront)
