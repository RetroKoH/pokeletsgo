db MOLTRES ; pokedex id
db 90 ; base hp
db 100 ; base attack
db 90 ; base defense
db 90 ; base speed
db 125 ; base special attack
;db 85 ; base special defense
db FIRE ; species type 1
db FLYING ; species type 2
db 3 ; catch rate
db 255 ; (261) base exp yield
INCBIN "pic/mon/moltres.pic",0,1 ; 77, sprite dimensions
dw MoltresPicFront
dw MoltresPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,						TM_WILL_O_WISP,	TM_FACADE,						TM_FLY
	tmlearn 				TM_U_TURN
	tmlearn 								TM_TOXIC
	tmlearn 																TM_FLAMETHROWER
	tmlearn 																TM_SOLARBEAM,	TM_FIRE_BLAST,					TM_HYPER_BEAM
	tmlearn 				TM_ROOST
;	tmlearn 0

db BANK(MoltresPicFront)
