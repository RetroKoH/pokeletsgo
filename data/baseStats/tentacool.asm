db TENTACOOL ; pokedex id
db 40 ; base hp
db 40 ; base attack
db 35 ; base defense
db 70 ; base speed
db 50 ; base special attack
;db 100 ; base special defense
db WATER ; species type 1
db POISON ; species type 2
db 190 ; catch rate
db 67 ; base exp yield
INCBIN "pic/mon/tentacool.pic",0,1 ; 55, sprite dimensions
dw TentacoolPicFront
dw TentacoolPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 0
	tmlearn TM_WATERFALL,	TM_POISON_JAB,	TM_TOXIC,						TM_SCALD,										TM_DAZZLEGLEAM
	tmlearn 0
	tmlearn 																								TM_SURF
	tmlearn 								TM_BLIZZARD,	TM_SLUDGE_BOMB,	TM_MEGA_DRAIN,					TM_ICE_BEAM
;	tmlearn 0

db BANK(TentacoolPicFront)
