db MIME_JR ; pokedex id
db 20 ; base hp
db 25 ; base attack
db 45 ; base defense
db 60 ; base speed
db 70 ; base special attack
;db 90 ; base special attack
db PSYCHIC ; species type 1
db FAIRY ; species type 2
db 145 ; catch rate
db 62 ; base exp yield
INCBIN "pic/mon/mimejr.pic",0,1 ; 66, sprite dimensions
dw MimeJrPicFront
dw MimeJrPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn 				TM_TAUNT,		TM_HELPING_HAND,TM_TELEPORT,	TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,										TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 																TM_FOUL_PLAY
	tmlearn 								TM_TOXIC,																		TM_DAZZLEGLEAM
	tmlearn TM_CALM_MIND,									TM_THUNDERBOLT,					TM_THUNDER,						TM_PSYCHIC
	tmlearn 								TM_SHADOW_BALL,					TM_SOLARBEAM
	tmlearn 0
;	tmlearn 								TM_DREAM_EATER

db BANK(MimeJrPicFront)
