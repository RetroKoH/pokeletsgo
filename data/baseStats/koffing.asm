db KOFFING ; pokedex id
db 40 ; base hp
db 65 ; base attack
db 95 ; base defense
db 35 ; base speed
db 60 ; base special attack
;db 45 ; base special defense
db POISON ; species type 1
db POISON ; species type 2
db 190 ; catch rate
db 68 ; base exp yield
INCBIN "pic/mon/koffing.pic",0,1 ; 66, sprite dimensions
dw KoffingPicFront
dw KoffingPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 								TM_WILL_O_WISP,	TM_FACADE
	tmlearn 												TM_DARK_PULSE
	tmlearn 								TM_TOXIC
	tmlearn 												TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER
	tmlearn 				TM_SELFDESTRUCT,TM_SHADOW_BALL,									TM_FIRE_BLAST
	tmlearn 												TM_SLUDGE_BOMB
;	tmlearn 0

db BANK(KoffingPicFront)
