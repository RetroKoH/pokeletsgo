db STEELIX ; pokedex id
db 75 ; base hp
db 85 ; base attack
db 200 ; base defense
db 30 ; base speed
db 55 ; base special attack
;db 65 ; base special defense
db ROCK ; species type 1
db STEEL ; species type 2
db 25 ; catch rate
db 179 ; base exp yield
INCBIN "pic/mon/steelix.pic",0,1 ; 77, sprite dimensions
dw SteelixPicFront
dw SteelixPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE
	tmlearn TM_DRAGON_TAIL,					TM_IRON_TAIL,	TM_DARK_PULSE,					TM_ROCK_SLIDE
	tmlearn 								TM_TOXIC
	tmlearn 				TM_DRAGON_PULSE
	tmlearn TM_EARTHQUAKE,	TM_SELFDESTRUCT,																				TM_HYPER_BEAM
	tmlearn 																				TM_FLASH_CANNON,				TM_STEALTH_ROCK
;	tmlearn 				TM_DRILL_RUN

db BANK(SteelixPicFront)
