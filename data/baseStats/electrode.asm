db ELECTRODE ; pokedex id
db 60 ; base hp
db 50 ; base attack
db 70 ; base defense
db 150 ; base speed
db 80 ; base special attack
;db 80 ; base special defense
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 60 ; catch rate
db 172 ; base exp yield
INCBIN "pic/mon/electrode.pic",0,1 ; 55, sprite dimensions
dw ElectrodePicFront
dw ElectrodePicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,						TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 																TM_FOUL_PLAY
	tmlearn 								TM_TOXIC
	tmlearn 												TM_THUNDERBOLT,					TM_THUNDER
	tmlearn 				TM_SELFDESTRUCT,																				TM_HYPER_BEAM
	tmlearn 0
;	tmlearn 0

db BANK(ElectrodePicFront)
