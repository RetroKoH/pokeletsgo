db MAGBY ; pokedex id
db 45 ; base hp
db 75 ; base attack
db 37 ; base defense
db 83 ; base speed
db 70 ; base special attack
;db 55 ; base special defense
db FIRE ; species type 1
db FIRE ; species type 2
db 45 ; catch rate
db 73 ; base exp yield
INCBIN "pic/mon/magby.pic",0,1 ; 66, sprite dimensions
dw MagbyPicFront
dw MagbyPicBack

; rare encounter moves
db BARRIER,FOCUS_ENERGY,IRON_TAIL,MEGA_PUNCH

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 								TM_WILL_O_WISP,	TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 								TM_IRON_TAIL,													TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 																TM_FLAMETHROWER,								TM_PSYCHIC
	tmlearn 																				TM_FIRE_BLAST
	tmlearn 0
;	tmlearn 0

db BANK(MagbyPicFront)
