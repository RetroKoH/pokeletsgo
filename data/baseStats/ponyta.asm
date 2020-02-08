db PONYTA ; pokedex id
db 50 ; base hp
db 85 ; base attack
db 55 ; base defense
db 90 ; base speed
db 65 ; base special attack
;db 65 ; base special defense
db FIRE ; species type 1
db FIRE ; species type 2
db 190 ; catch rate
db 82 ; base exp yield
INCBIN "pic/mon/ponyta.pic",0,1 ; 66, sprite dimensions
dw PonytaPicFront
dw PonytaPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,						TM_WILL_O_WISP,	TM_FACADE
	tmlearn 								TM_IRON_TAIL
	tmlearn 				TM_POISON_JAB,	TM_TOXIC
	tmlearn 																TM_FLAMETHROWER
	tmlearn 																TM_SOLARBEAM,	TM_FIRE_BLAST
	tmlearn 0
;	tmlearn 0

db BANK(PonytaPicFront)
