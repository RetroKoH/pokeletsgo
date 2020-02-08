db NIDORAN_F ; pokedex id
db 55 ; base hp
db 47 ; base attack
db 52 ; base defense
db 41 ; base speed
db 40 ; base special attack
;db 40 ; base special defense
db POISON ; species type 1
db POISON ; species type 2
db 235 ; catch rate
db 55 ; base exp yield
INCBIN "pic/mon/nidoranf.pic",0,1 ; 55, sprite dimensions
dw NidoranFPicFront
dw NidoranFPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE
	tmlearn 								TM_IRON_TAIL
	tmlearn 				TM_POISON_JAB,	TM_TOXIC
	tmlearn 												TM_THUNDERBOLT,					TM_THUNDER
	tmlearn 0
	tmlearn 								TM_BLIZZARD,	TM_SLUDGE_BOMB,									TM_ICE_BEAM
;	tmlearn 0

db BANK(NidoranFPicFront)
