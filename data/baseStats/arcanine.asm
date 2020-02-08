db ARCANINE ; pokedex id
db 90 ; base hp
db 110 ; base attack
db 80 ; base defense
db 95 ; base speed
db 100 ; base special attack
;db 80 ; base special defense
db FIRE ; species type 1
db FIRE ; species type 2
db 75 ; catch rate
db 194 ; base exp yield
INCBIN "pic/mon/arcanine.pic",0,1 ; 77, sprite dimensions
dw ArcaninePicFront
dw ArcaninePicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,TM_TELEPORT,	TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,			TM_WILL_O_WISP,	TM_FACADE
	tmlearn 								TM_IRON_TAIL
	tmlearn 								TM_TOXIC
	tmlearn 				TM_DRAGON_PULSE,								TM_FLAMETHROWER,				TM_OUTRAGE
	tmlearn 												TM_PLAY_ROUGH,	TM_SOLARBEAM,	TM_FIRE_BLAST,					TM_HYPER_BEAM
	tmlearn TM_SUPERPOWER
;	tmlearn 0

db BANK(ArcaninePicFront)
