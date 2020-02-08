db EXEGGUTOR ; pokedex id
db 95 ; base hp
db 105 ; base attack
db 85 ; base defense
db 45 ; base speed
db 125 ; base special attack
;db 75 ; base special defense
db GRASS ; species type 1
db DRAGON ; species type 2
db 45 ; catch rate
db 186 ; base exp yield
INCBIN "pic/mon/exeggutor-a.pic",0,1 ; 77, sprite dimensions
dw ExeggutorAPicFront
dw ExeggutorAPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,									TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,		TM_BRICK_BREAK
	tmlearn TM_DRAGON_TAIL,					TM_IRON_TAIL
	tmlearn 								TM_TOXIC
	tmlearn 				TM_DRAGON_PULSE,								TM_FLAMETHROWER,				TM_OUTRAGE,		TM_PSYCHIC
	tmlearn TM_EARTHQUAKE,	TM_SELFDESTRUCT,								TM_SOLARBEAM,									TM_HYPER_BEAM
	tmlearn TM_SUPERPOWER,									TM_SLUDGE_BOMB,	TM_MEGA_DRAIN
;	tmlearn 								TM_DREAM_EATER

db BANK(ExeggutorAPicFront)
