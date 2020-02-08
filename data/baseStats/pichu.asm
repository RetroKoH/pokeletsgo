db PICHU ; pokedex id
db 20 ; base hp
db 40 ; base attack
db 15 ; base defense
db 60 ; base speed
db 35 ; base special attack
;db 35 ; base special defense
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 190 ; catch rate
db 41 ; base exp yield
INCBIN "pic/mon/pichu.pic",0,1 ; 55, sprite dimensions
dw PichuPicFront
dw PichuPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,		TM_LIGHT_SCREEN,TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE,														TM_THUNDER_WAVE
	tmlearn 								TM_IRON_TAIL,													TM_THUNDERPUNCH
	tmlearn 								TM_TOXIC
	tmlearn 												TM_THUNDERBOLT,					TM_THUNDER
	tmlearn 0
	tmlearn 0
;	tmlearn 0

db BANK(PichuPicFront)
