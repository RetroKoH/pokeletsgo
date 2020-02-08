db FLAREON ; pokedex id
db 65 ; base hp
db 130 ; base attack
db 60 ; base defense
db 65 ; base speed
db 95 ; base special attack
;db 110 ; base special defense
db FIRE ; species type 1
db FIRE ; species type 2
db 45 ; catch rate
db 184 ; base exp yield
INCBIN "pic/mon/flareon.pic",0,1 ; 66, sprite dimensions
dw FlareonPicFront
dw FlareonPicBack

; rare encounter moves
db DOUBLE_KICK, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,			TM_WILL_O_WISP,	TM_FACADE
	tmlearn 								TM_IRON_TAIL
	tmlearn 								TM_TOXIC
	tmlearn 																TM_FLAMETHROWER
	tmlearn 								TM_SHADOW_BALL,									TM_FIRE_BLAST,					TM_HYPER_BEAM
	tmlearn 				TM_SUPERPOWER
;	tmlearn TM_PAY_DAY

db BANK(FlareonPicFront)
