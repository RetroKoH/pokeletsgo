db HAPPINY ; pokedex id
db 100 ; base hp
db 5 ; base attack
db 5 ; base defense
db 30 ; base speed
db 15 ; base special attack
;db 65 ; base special defense
db NORMAL ; species type 1
db NORMAL ; species type 2
db 130 ; catch rate
db 110 ; base exp yield
INCBIN "pic/mon/happiny.pic",0,1 ; 66, sprite dimensions
dw HappinyPicFront
dw HappinyPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_FAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 0
	tmlearn 								TM_TOXIC
	tmlearn 																TM_FLAMETHROWER,								TM_PSYCHIC
	tmlearn 								TM_SHADOW_BALL,					TM_SOLARBEAM,	TM_FIRE_BLAST
	tmlearn 0
;	tmlearn 								TM_DREAM_EATER

db BANK(HappinyPicFront)
