db NINETALES ; pokedex id
db 73 ; base hp
db 67 ; base attack
db 75 ; base defense
db 109 ; base speed
db 81 ; base special attack
;db 100 ; base special defense
db ICE ; species type 1
db FAIRY ; species type 2
db 75 ; catch rate
db 177 ; base exp yield
INCBIN "pic/mon/ninetales-a.pic",0,1 ; 77, sprite dimensions
dw NinetalesAPicFront
dw NinetalesAPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE
	tmlearn 								TM_IRON_TAIL,	TM_DARK_PULSE,	TM_FOUL_PLAY
	tmlearn 								TM_TOXIC,																		TM_DAZZLEGLEAM
	tmlearn TM_CALM_MIND
	tmlearn 																												TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 								TM_DREAM_EATER

db BANK(NinetalesAPicFront)
