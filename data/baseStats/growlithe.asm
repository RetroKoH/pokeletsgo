db GROWLITHE ; pokedex id
db 55 ; base hp
db 70 ; base attack
db 45 ; base defense
db 60 ; base speed
db 70 ; base special attack
;db 50 ; base special defense
db FIRE ; species type 1
db FIRE ; species type 2
db 190 ; catch rate
db 70 ; base exp yield
INCBIN "pic/mon/growlithe.pic",0,1 ; 55, sprite dimensions
dw GrowlithePicFront
dw GrowlithePicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,			TM_WILL_O_WISP,	TM_FACADE
	tmlearn 								TM_IRON_TAIL
	tmlearn 								TM_TOXIC
	tmlearn 																TM_FLAMETHROWER,				TM_OUTRAGE
	tmlearn 												TM_PLAY_ROUGH,					TM_FIRE_BLAST
	tmlearn 0
;	tmlearn 0

db BANK(GrowlithePicFront)
