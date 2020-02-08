db NINETALES ; pokedex id
db 73 ; base hp
db 76 ; base attack
db 75 ; base defense
db 100 ; base speed
db 81 ; base special attack
;db 100 ; base special defense
db FIRE ; species type 1
db FIRE ; species type 2
db 75 ; catch rate
db 177 ; base exp yield
INCBIN "pic/mon/ninetales.pic",0,1 ; 77, sprite dimensions
dw NinetalesPicFront
dw NinetalesPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,			TM_WILL_O_WISP,	TM_FACADE
	tmlearn 								TM_IRON_TAIL,	TM_DARK_PULSE,	TM_FOUL_PLAY
	tmlearn 								TM_TOXIC
	tmlearn TM_CALM_MIND,													TM_FLAMETHROWER
	tmlearn 																TM_SOLARBEAM,	TM_FIRE_BLAST,					TM_HYPER_BEAM
	tmlearn 0
;	tmlearn 								TM_DREAM_EATER

db BANK(NinetalesPicFront)
