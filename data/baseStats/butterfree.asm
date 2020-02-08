db BUTTERFREE ; pokedex id
db 60 ; base hp
db 45 ; base attack
db 50 ; base defense
db 70 ; base speed
db 90 ; base special attack
;db 80 ; base special defense
db BUG ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 178 ; base exp yield
INCBIN "pic/mon/butterfree.pic",0,1 ; 77, sprite dimensions
dw ButterfreePicFront
dw ButterfreePicBack

; unused bytes
db 0,0,0,0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,									TM_TELEPORT,	TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 				TM_U_TURN
	tmlearn 								TM_TOXIC
	tmlearn 																												TM_PSYCHIC
	tmlearn 								TM_SHADOW_BALL,					TM_SOLARBEAM,									TM_HYPER_BEAM
	tmlearn 																TM_MEGA_DRAIN
;	tmlearn 								TM_DREAM_EATER

db BANK(ButterfreePicFront)
