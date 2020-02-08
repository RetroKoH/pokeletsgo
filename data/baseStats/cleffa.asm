db CLEFFA ; pokedex id
db 50 ; base hp
db 25 ; base attack
db 28 ; base defense
db 15 ; base speed
db 45 ; base special attack
db 55 ; base special defense
db FAIRY ; species type 1
db FAIRY ; species type 2
db 150 ; catch rate
db 44 ; base exp yield
INCBIN "pic/mon/cleffa.pic",0,1 ; 55, sprite dimensions
dw CleffaPicFront
dw CleffaPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_FAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 								TM_IRON_TAIL
	tmlearn 								TM_TOXIC
	tmlearn 																TM_FLAMETHROWER,								TM_PSYCHIC
	tmlearn 								TM_SHADOW_BALL,	TM_PLAY_ROUGH,	TM_SOLARBEAM,	TM_FIRE_BLAST
	tmlearn 0
;	tmlearn 								TM_DREAM_EATER

db BANK(CleffaPicFront)
