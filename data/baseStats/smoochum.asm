db SMOOCHUM ; pokedex id
db 45 ; base hp
db 30 ; base attack
db 15 ; base defense
db 65 ; base speed
db 85 ; base special attack
;db 65 ; base special defense
db ICE ; species type 1
db PSYCHIC ; species type 2
db 45 ; catch rate
db 61 ; base exp yield
INCBIN "pic/mon/smoochum.pic",0,1 ; 66, sprite dimensions
dw SmoochumPicFront
dw SmoochumPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn 								TM_HELPING_HAND,TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 0
	tmlearn 								TM_TOXIC
	tmlearn TM_CALM_MIND,					TM_ICE_PUNCH,																	TM_PSYCHIC
	tmlearn 								TM_SHADOW_BALL
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 								TM_DREAM_EATER

db BANK(SmoochumPicFront)
