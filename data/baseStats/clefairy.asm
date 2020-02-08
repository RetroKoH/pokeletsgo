db CLEFAIRY ; pokedex id
db 70 ; base hp
db 45 ; base attack
db 48 ; base defense
db 35 ; base speed
db 60 ; base special attack
;db 65 ; base special defense
db FAIRY ; species type 1
db FAIRY ; species type 2
db 150 ; catch rate
db 113 ; base exp yield
INCBIN "pic/mon/clefairy.pic",0,1 ; 55, sprite dimensions
dw ClefairyPicFront
dw ClefairyPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_FAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,		TM_BRICK_BREAK,					TM_SEISMIC_TOSS,TM_THUNDER_WAVE
	tmlearn 								TM_IRON_TAIL,													TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC,		TM_TRI_ATTACK,									TM_FIRE_PUNCH,	TM_DAZZLEGLEAM
	tmlearn TM_CALM_MIND,					TM_ICE_PUNCH,	TM_THUNDERBOLT,	TM_FLAMETHROWER,TM_THUNDER,						TM_PSYCHIC
	tmlearn 								TM_SHADOW_BALL,	TM_PLAY_ROUGH,	TM_SOLARBEAM,	TM_FIRE_BLAST
	tmlearn 								TM_BLIZZARD,													TM_ICE_BEAM,	TM_STEALTH_ROCK
;	tmlearn 								TM_DREAM_EATER

db BANK(ClefairyPicFront)
