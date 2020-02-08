db ONIX ; pokedex id
db 35 ; base hp
db 45 ; base attack
db 160 ; base defense
db 70 ; base speed
db 30 ; base special attack
;db 45 ; base special defense
db ROCK ; species type 1
db GROUND ; species type 2
db 45 ; catch rate
db 77 ; base exp yield
INCBIN "pic/mon/onix.pic",0,1 ; 77, sprite dimensions
dw OnixPicFront
dw OnixPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE
	tmlearn TM_DRAGON_TAIL,					TM_IRON_TAIL,									TM_ROCK_SLIDE
	tmlearn 								TM_TOXIC
	tmlearn 				TM_DRAGON_PULSE
	tmlearn TM_EARTHQUAKE,	TM_SELFDESTRUCT
	tmlearn 																				TM_FLASH_CANNON,				TM_STEALTH_ROCK
;	tmlearn 0

db BANK(OnixPicFront)
