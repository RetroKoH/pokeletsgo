db SNORLAX ; pokedex id
db 160 ; base hp
db 110 ; base attack
db 65 ; base defense
db 30 ; base speed
db 65 ; base special attack
;db 110 ; base special defense
db NORMAL ; species type 1
db NORMAL ; species type 2
db 25 ; catch rate
db 189 ; base exp yield
INCBIN "pic/mon/snorlax.pic",0,1 ; 77, sprite dimensions
dw SnorlaxPicFront
dw SnorlaxPicBack

; rare encounter moves (Charm, Zen Headbutt)
db DOUBLE_EDGE, LICK, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS
	tmlearn 																				TM_ROCK_SLIDE,	TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,														TM_FIRE_PUNCH
	tmlearn 								TM_ICE_PUNCH,	TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER,		TM_OUTRAGE,		TM_PSYCHIC
	tmlearn TM_EARTHQUAKE,	TM_SELFDESTRUCT,TM_SHADOW_BALL,					TM_SOLARBEAM,	TM_FIRE_BLAST,	TM_SURF,		TM_HYPER_BEAM
	tmlearn TM_SUPERPOWER,					TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn TM_PAY_DAY

db BANK(SnorlaxPicFront)
