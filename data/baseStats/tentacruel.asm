db TENTACRUEL ; pokedex id
db 80 ; base hp
db 70 ; base attack
db 65 ; base defense
db 100 ; base speed
db 80 ; base special attack
;db 120 ; base special defense
db WATER ; species type 1
db POISON ; species type 2
db 60 ; catch rate
db 180 ; base exp yield
INCBIN "pic/mon/tentacruel.pic",0,1 ; 66, sprite dimensions
dw TentacruelPicFront
dw TentacruelPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 0
	tmlearn TM_WATERFALL,	TM_POISON_JAB,	TM_TOXIC,						TM_SCALD,										TM_DAZZLEGLEAM
	tmlearn 0
	tmlearn 																								TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,	TM_SLUDGE_BOMB,	TM_MEGA_DRAIN,					TM_ICE_BEAM
;	tmlearn 0

db BANK(TentacruelPicFront)
