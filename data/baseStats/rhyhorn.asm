db RHYHORN ; pokedex id
db 80 ; base hp
db 85 ; base attack
db 95 ; base defense
db 25 ; base speed
db 30 ; base special attack
;db 30 ; base special defense
db GROUND ; species type 1
db ROCK ; species type 2
db 120 ; catch rate
db 69 ; base exp yield
INCBIN "pic/mon/rhyhorn.pic",0,1 ; 77, sprite dimensions
dw RhyhornPicFront
dw RhyhornPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,													TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn 				TM_DIG,							TM_FACADE
	tmlearn 								TM_IRON_TAIL,									TM_ROCK_SLIDE
	tmlearn 				TM_POISON_JAB,	TM_TOXIC
	tmlearn 				TM_DRAGON_PULSE,				TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER
	tmlearn TM_EARTHQUAKE,																	TM_FIRE_BLAST
	tmlearn TM_SUPERPOWER,					TM_BLIZZARD,													TM_ICE_BEAM,	TM_STEALTH_ROCK
;	tmlearn 				TM_DRILL_RUN,					TM_MEGAHORN

db BANK(RhyhornPicFront)
