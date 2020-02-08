db GYARADOS ; pokedex id
db 95 ; base hp
db 125 ; base attack
db 79 ; base defense
db 81 ; base speed
;db 60 ; base special attack
db 100 ; base special defense
db WATER ; species type 1
db FLYING ; species type 2
db 45 ; catch rate
db 189 ; base exp yield
INCBIN "pic/mon/gyarados.pic",0,1 ; 77, sprite dimensions
dw GyaradosPicFront
dw GyaradosPicBack

; rare encounter moves
db HYDRO_PUMP, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn TM_HEADBUTT,	TM_TAUNT,										TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,														TM_THUNDER_WAVE
	tmlearn TM_DRAGON_TAIL,					TM_IRON_TAIL,	TM_DARK_PULSE
	tmlearn TM_WATERFALL,					TM_TOXIC,						TM_SCALD
	tmlearn 				TM_DRAGON_PULSE,				TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER,		TM_OUTRAGE
	tmlearn TM_EARTHQUAKE,																	TM_FIRE_BLAST,	TM_SURF,		TM_HYPER_BEAM
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM
;	tmlearn 0

db BANK(GyaradosPicFront)
