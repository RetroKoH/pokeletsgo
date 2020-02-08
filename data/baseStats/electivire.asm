db ELECTIVIRE ; pokedex id
db 75 ; base hp
db 123 ; base attack
db 67 ; base defense
db 95 ; base speed
db 95 ; base special attack
;db 85 ; base special defense
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 30 ; catch rate
db 243 ; base exp yield
INCBIN "pic/mon/electivire.pic",0,1 ; 66, sprite dimensions
dw ElectivirePicFront
dw ElectivirePicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,		TM_HELPING_HAND,TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS,TM_THUNDER_WAVE
	tmlearn 								TM_IRON_TAIL,									TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 								TM_ICE_PUNCH,	TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER,						TM_PSYCHIC
	tmlearn 																												TM_HYPER_BEAM
	tmlearn 0
;	tmlearn 0

db BANK(ElectivirePicFront)
