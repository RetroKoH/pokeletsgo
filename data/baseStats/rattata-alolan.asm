db RATTATA ; pokedex id
db 30 ; base hp
db 56 ; base attack
db 35 ; base defense
db 72 ; base speed
db 25 ; base special attack
;db 35 ; base special defense
db DARK ; species type 1
db NORMAL ; species type 2
db 255 ; catch rate
db 51 ; base exp yield
INCBIN "pic/mon/rattata-a.pic",0,1 ; 55, sprite dimensions
dw RattataAPicFront
dw RattataAPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 				TM_U_TURN,		TM_IRON_TAIL,	TM_DARK_PULSE
	tmlearn 								TM_TOXIC
	tmlearn 0
	tmlearn 								TM_SHADOW_BALL
	tmlearn 								TM_BLIZZARD,	TM_SLUDGE_BOMB,									TM_ICE_BEAM
;	tmlearn 0

db BANK(RattataAPicFront)
