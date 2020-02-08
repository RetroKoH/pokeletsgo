db VULPIX ; pokedex id
db 38 ; base hp
db 41 ; base attack
db 40 ; base defense
db 65 ; base speed
db 50 ; base special attack
;db 65 ; base special defense
db FIRE ; species type 1
db FIRE ; species type 2
db 190 ; catch rate
db 60 ; base exp yield
INCBIN "pic/mon/vulpix.pic",0,1 ; 66, sprite dimensions
dw VulpixPicFront
dw VulpixPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,			TM_WILL_O_WISP,	TM_FACADE
	tmlearn 								TM_IRON_TAIL,	TM_DARK_PULSE,	TM_FOUL_PLAY
	tmlearn 								TM_TOXIC
	tmlearn 																TM_FLAMETHROWER
	tmlearn 																				TM_FIRE_BLAST
	tmlearn 0
;	tmlearn 0

db BANK(VulpixPicFront)
