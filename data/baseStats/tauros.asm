db TAUROS ; pokedex id
db 75 ; base hp
db 100 ; base attack
db 95 ; base defense
db 110 ; base speed
db 40 ; base special attack
;db 70 ; base special defense
db NORMAL ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 172 ; base exp yield
INCBIN "pic/mon/tauros.pic",0,1 ; 77, sprite dimensions
dw TaurosPicFront
dw TaurosPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 												TM_FACADE
	tmlearn 								TM_IRON_TAIL,									TM_ROCK_SLIDE
	tmlearn 								TM_TOXIC
	tmlearn 												TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER,		TM_OUTRAGE
	tmlearn TM_EARTHQUAKE,													TM_SOLARBEAM,	TM_FIRE_BLAST,	TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(TaurosPicFront)
