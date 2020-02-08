db SYLVEON ; pokedex id
db 95 ; base hp
db 65 ; base attack
db 65 ; base defense
db 60 ; base speed
db 110 ; base special attack
;db 130 ; base special defense
db FAIRY ; species type 1
db FAIRY ; species type 2
db 45 ; catch rate
db 184 ; base exp yield
INCBIN "pic/mon/sylveon.pic",0,1 ; 66, sprite dimensions
dw SylveonPicFront
dw SylveonPicBack

; rare encounter moves
db DOUBLE_KICK, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE
	tmlearn 								TM_IRON_TAIL
	tmlearn 								TM_TOXIC,																		TM_DAZZLEGLEAM
	tmlearn TM_CALM_MIND
	tmlearn 								TM_SHADOW_BALL,	TM_PLAY_ROUGH,													TM_HYPER_BEAM
	tmlearn 0
;	tmlearn TM_PAY_DAY

db BANK(SylveonPicFront)
