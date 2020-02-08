db PONYTA ; pokedex id
db 50 ; base hp
db 85 ; base attack
db 55 ; base defense
db 90 ; base speed
db 65 ; base special attack
;db 65 ; base special defense
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 190 ; catch rate
db 82 ; base exp yield
INCBIN "pic/mon/ponyta-g.pic",0,1 ; 66, sprite dimensions
dw PonytaGPicFront
dw PonytaGPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,									TM_TELEPORT,	TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE
	tmlearn 								TM_IRON_TAIL
	tmlearn 								TM_TOXIC,																		TM_DAZZLEGLEAM
	tmlearn TM_CALM_MIND,																									TM_PSYCHIC
	tmlearn 												TM_PLAY_ROUGH
	tmlearn 0
;	tmlearn 0

db BANK(PonytaGPicFront)
