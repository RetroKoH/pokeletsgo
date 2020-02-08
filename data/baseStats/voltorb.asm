db VOLTORB ; pokedex id
db 40 ; base hp
db 30 ; base attack
db 50 ; base defense
db 100 ; base speed
db 55 ; base special attack
;db 55 ; base special defense
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 190 ; catch rate
db 66 ; base exp yield
INCBIN "pic/mon/voltorb.pic",0,1 ; 55, sprite dimensions
dw VoltorbPicFront
dw VoltorbPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,						TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 																TM_FOUL_PLAY
	tmlearn 								TM_TOXIC
	tmlearn 												TM_THUNDERBOLT,					TM_THUNDER
	tmlearn 				TM_SELFDESTRUCT
	tmlearn 0
;	tmlearn 0

db BANK(VoltorbPicFront)
