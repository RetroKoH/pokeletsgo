db HORSEA ; pokedex id
db 30 ; base hp
db 40 ; base attack
db 70 ; base defense
db 60 ; base speed
db 70 ; base special attack
;db 25 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 225 ; catch rate
db 59 ; base exp yield
INCBIN "pic/mon/horsea.pic",0,1 ; 55, sprite dimensions
dw HorseaPicFront
dw HorseaPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE
	tmlearn 0
	tmlearn TM_WATERFALL,					TM_TOXIC,						TM_SCALD
	tmlearn 				TM_DRAGON_PULSE,																TM_OUTRAGE
	tmlearn 																								TM_SURF
	tmlearn 								TM_BLIZZARD,									TM_FLASH_CANNON,TM_ICE_BEAM
;	tmlearn 0

db BANK(HorseaPicFront)
