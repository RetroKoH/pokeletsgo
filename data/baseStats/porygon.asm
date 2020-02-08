db PORYGON ; pokedex id
db 65 ; base hp
db 60 ; base attack
db 70 ; base defense
db 40 ; base speed
db 85 ; base special attack
;db 75 ; base special defense
db NORMAL ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 79 ; base exp yield
INCBIN "pic/mon/porygon.pic",0,1 ; 66, sprite dimensions
dw PorygonPicFront
dw PorygonPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,									TM_TELEPORT,	TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 								TM_IRON_TAIL,					TM_FOUL_PLAY
	tmlearn 								TM_TOXIC,		TM_TRI_ATTACK
	tmlearn 												TM_THUNDERBOLT,					TM_THUNDER,						TM_PSYCHIC
	tmlearn 								TM_SHADOW_BALL,					TM_SOLARBEAM,									TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 								TM_DREAM_EATER

db BANK(PorygonPicFront)
