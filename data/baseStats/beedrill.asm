db BEEDRILL ; pokedex id
db 65 ; base hp
db 90 ; base attack
db 40 ; base defense
db 75 ; base speed
db 45 ; base special attack
;db 80 ; base special defense
db BUG ; species type 1
db POISON ; species type 2
db 45 ; catch rate
db 178 ; base exp yield
INCBIN "pic/mon/beedrill.pic",0,1 ; 77, sprite dimensions
dw BeedrillPicFront
dw BeedrillPicBack

; unused bytes
db 0,0,0,0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,		TM_BRICK_BREAK
	tmlearn 				TM_U_TURN,																						TM_X_SCISSOR
	tmlearn 				TM_POISON_JAB,	TM_TOXIC
	tmlearn 																								TM_OUTRAGE
	tmlearn 																TM_SOLARBEAM,									TM_HYPER_BEAM
	tmlearn 				TM_ROOST,						TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 				TM_DRILL_RUN

db BANK(BeedrillPicFront)
