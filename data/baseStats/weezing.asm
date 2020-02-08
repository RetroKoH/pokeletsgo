db WEEZING ; pokedex id
db 65 ; base hp
db 90 ; base attack
db 120 ; base defense
db 60 ; base speed
db 85 ; base special attack
;db 70 ; base special defense
db POISON ; species type 1
db POISON ; species type 2
db 60 ; catch rate
db 172 ; base exp yield
INCBIN "pic/mon/weezing.pic",0,1 ; 77, sprite dimensions
dw WeezingPicFront
dw WeezingPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 								TM_WILL_O_WISP,	TM_FACADE
	tmlearn 												TM_DARK_PULSE
	tmlearn 								TM_TOXIC
	tmlearn 												TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER
	tmlearn 				TM_SELFDESTRUCT,TM_SHADOW_BALL,									TM_FIRE_BLAST,					TM_HYPER_BEAM
	tmlearn 												TM_SLUDGE_BOMB
;	tmlearn 0

db BANK(WeezingPicFront)
