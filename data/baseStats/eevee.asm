db EEVEE ; pokedex id
db 55 ; base hp
db 55 ; base attack
db 50 ; base defense
db 55 ; base speed
db 45 ; base special attack
;db 65 ; base special defense
db NORMAL ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 65 ; base exp yield
INCBIN "pic/mon/eevee.pic",0,1 ; 55, sprite dimensions
dw EeveePicFront
dw EeveePicBack

; rare encounter moves
db DOUBLE_KICK, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn TM_HEADBUTT,					TM_HELPING_HAND,				TM_REST,						TM_PROTECT,		TM_SUBSTITUTE
	tmlearn TM_REFLECT,		TM_DIG,							TM_FACADE
	tmlearn 								TM_IRON_TAIL
	tmlearn 								TM_TOXIC
	tmlearn 0
	tmlearn 								TM_SHADOW_BALL
	tmlearn 0
;	tmlearn TM_PAY_DAY

db BANK(EeveePicFront)
