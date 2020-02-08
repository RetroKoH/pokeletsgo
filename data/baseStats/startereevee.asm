db EEVEE ; pokedex id
db 65 ; base hp
db 75 ; base attack
db 70 ; base defense
db 75 ; base speed
db 65 ; base special attack
;db 85 ; base special defense
db NORMAL ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 92 ; base exp yield
INCBIN "pic/mon/eevee.pic",0,1 ; 55, sprite dimensions
dw EeveePicFront
dw EeveePicBack

; unused bytes
db 0, 0, 0, 0

db 0 ; growth rate

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
