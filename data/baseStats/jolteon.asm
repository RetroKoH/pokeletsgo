db JOLTEON ; pokedex id
db 65 ; base hp
db 65 ; base attack
db 60 ; base defense
db 130 ; base speed
db 110 ; base special attack
;db 95 ; base special defense
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 45 ; catch rate
db 184 ; base exp yield
INCBIN "pic/mon/jolteon.pic",0,1 ; 66, sprite dimensions
dw JolteonPicFront
dw JolteonPicBack

; rare encounter moves
db DOUBLE_KICK, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 								TM_IRON_TAIL
	tmlearn 								TM_TOXIC
	tmlearn 												TM_THUNDERBOLT,					TM_THUNDER
	tmlearn 								TM_SHADOW_BALL,																	TM_HYPER_BEAM
	tmlearn 0
;	tmlearn TM_PAY_DAY

db BANK(JolteonPicFront)
