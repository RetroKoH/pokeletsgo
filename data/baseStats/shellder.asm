db SHELLDER ; pokedex id
db 30 ; base hp
db 65 ; base attack
db 100 ; base defense
db 40 ; base speed
db 45 ; base special attack
;db 25 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 190 ; catch rate
db 61 ; base exp yield
INCBIN "pic/mon/shellder.pic",0,1 ; 55, sprite dimensions
dw ShellderPicFront
dw ShellderPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,									TM_TELEPORT,	TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 0
	tmlearn 								TM_TOXIC,		TM_TRI_ATTACK
	tmlearn 0
	tmlearn 				TM_SELFDESTRUCT,																TM_SURF
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(ShellderPicFront)
