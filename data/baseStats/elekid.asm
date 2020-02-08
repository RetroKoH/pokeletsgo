db ELEKID ; pokedex id
db 45 ; base hp
db 63 ; base attack
db 37 ; base defense
db 95 ; base speed
db 65 ; base special attack
;db 55 ; base special defense
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 45 ; catch rate
db 72 ; base exp yield
INCBIN "pic/mon/elekid.pic",0,1 ; 66, sprite dimensions
dw ElekidPicFront
dw ElekidPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS,TM_THUNDER_WAVE
	tmlearn 																								TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 								TM_ICE_PUNCH,	TM_THUNDERBOLT,					TM_THUNDER,						TM_PSYCHIC
	tmlearn 0
	tmlearn 0
;	tmlearn 0

db BANK(ElekidPicFront)
