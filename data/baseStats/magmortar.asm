db MAGMORTAR ; pokedex id
db 75 ; base hp
db 95 ; base attack
db 67 ; base defense
db 83 ; base speed
db 125 ; base special attack
;db 95 ; base special defense
db FIRE ; species type 1
db FIRE ; species type 2
db 30 ; catch rate
db 243 ; base exp yield
INCBIN "pic/mon/magmortar.pic",0,1 ; 66, sprite dimensions
dw MagmortarPicFront
dw MagmortarPicBack

; rare encounter moves
db BARRIER,FOCUS_ENERGY,IRON_TAIL,MEGA_PUNCH

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,		TM_HELPING_HAND,TM_TELEPORT,	TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 								TM_WILL_O_WISP,	TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 								TM_IRON_TAIL,									TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 												TM_THUNDERBOLT,	TM_FLAMETHROWER,								TM_PSYCHIC
	tmlearn TM_EARTHQUAKE,													TM_SOLARBEAM,	TM_FIRE_BLAST,					TM_HYPER_BEAM
	tmlearn 0
;	tmlearn 0

db BANK(MagmortarPicFront)
