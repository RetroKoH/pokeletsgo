db BLASTOISE ; pokedex id
db 79 ; base hp
db 83 ; base attack
db 100 ; base defense
db 78 ; base speed
db 85 ; base special attack
;db 105 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 45 ; catch rate
db 239 ; base exp yield
INCBIN "pic/mon/blastoise.pic",0,1 ; 77, sprite dimensions
dw BlastoisePicFront
dw BlastoisePicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDSLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn TM_DRAGON_TAIL,					TM_IRON_TAIL,	TM_DARK_PULSE,					TM_ROCK_SLIDE
	tmlearn TM_WATERFALL,					TM_TOXIC,						TM_SCALD
	tmlearn 				TM_DRAGON_PULSE,TM_ICE_PUNCH,													TM_OUTRAGE
	tmlearn TM_EARTHQUAKE,																					TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,									TM_FLASH_CANNON,TM_ICE_BEAM
;	tmlearn 0

db BANK(BlastoisePicFront)
