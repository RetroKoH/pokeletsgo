db KABUTO ; pokedex id
db 30 ; base hp
db 80 ; base attack
db 90 ; base defense
db 55 ; base speed
db 55 ; base special attack
;db 45 ; base special defense
db ROCK ; species type 1
db WATER ; species type 2
db 45 ; catch rate
db 71 ; base exp yield
INCBIN "pic/mon/kabuto.pic",0,1 ; 55, sprite dimensions
dw KabutoPicFront
dw KabutoPicBack

; rare encounter moves
db AURORA_BEAM, BUBBLEBEAM, CONFUSE_RAY, SCREECH

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE
	tmlearn 																				TM_ROCK_SLIDE
	tmlearn TM_WATERFALL,					TM_TOXIC,						TM_SCALD
	tmlearn 0
	tmlearn 																								TM_SURF
	tmlearn 								TM_BLIZZARD,					TM_MEGA_DRAIN,					TM_ICE_BEAM,	TM_STEALTH_ROCK
;	tmlearn 0

db BANK(KabutoPicFront)
