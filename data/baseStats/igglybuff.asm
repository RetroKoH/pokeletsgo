db IGGLYBUFF ; pokedex id
db 90 ; base hp
db 30 ; base attack
db 15 ; base defense
db 15 ; base speed
db 40 ; base special attack
;db 20 ; base special defense
db NORMAL ; species type 1
db FAIRY ; species type 2
db 170 ; catch rate
db 42 ; base exp yield
INCBIN "pic/mon/igglybuff.pic",0,1 ; 55, sprite dimensions
dw IgglybuffPicFront
dw IgglybuffPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_FAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 0
	tmlearn 								TM_TOXIC
	tmlearn 																TM_FLAMETHROWER,								TM_PSYCHIC
	tmlearn 								TM_SHADOW_BALL,					TM_SOLARBEAM,	TM_FIRE_BLAST
	tmlearn 0
;	tmlearn 								TM_DREAM_EATER

db BANK(IgglybuffPicFront)
