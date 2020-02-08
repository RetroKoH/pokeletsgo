db AERODACTYL ; pokedex id
db 80 ; base hp
db 105 ; base attack
db 65 ; base defense
db 130 ; base speed
db 60 ; base special attack
;db 75 ; base special defense
db ROCK ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 180 ; base exp yield
INCBIN "pic/mon/aerodactyl.pic",0,1 ; 77, sprite dimensions
dw AerodactylPicFront
dw AerodactylPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,						TM_FLY
	tmlearn 								TM_IRON_TAIL,									TM_ROCK_SLIDE
	tmlearn 								TM_TOXIC
	tmlearn 				TM_DRAGON_PULSE,								TM_FLAMETHROWER
	tmlearn TM_EARTHQUAKE,																	TM_FIRE_BLAST,					TM_HYPER_BEAM
	tmlearn 				TM_ROOST,																						TM_STEALTH_ROCK
;	tmlearn 0

db BANK(AerodactylPicFront)
