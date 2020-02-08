db CLOYSTER ; pokedex id
db 50 ; base hp
db 95 ; base attack
db 180 ; base defense
db 70 ; base speed
db 85 ; base special attack
;db 45 ; base special defense
db WATER ; species type 1
db ICE ; species type 2
db 60 ; catch rate
db 184 ; base exp yield
INCBIN "pic/mon/cloyster.pic",0,1 ; 77, sprite dimensions
dw CloysterPicFront
dw CloysterPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,									TM_TELEPORT,	TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 0
	tmlearn 				TM_POISON_JAB,	TM_TOXIC,		TM_TRI_ATTACK
	tmlearn 0
	tmlearn 				TM_SELFDESTRUCT,																TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(CloysterPicFront)
