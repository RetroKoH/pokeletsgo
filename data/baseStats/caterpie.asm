db CATERPIE ; pokedex id
db 45 ; base hp
db 30 ; base attack
db 35 ; base defense
db 45 ; base speed
db 20 ; base special attack
;db 20 ; base special defense
db BUG ; species type 1
db BUG ; species type 2
db 255 ; catch rate
db 39 ; base exp yield
INCBIN "pic/mon/caterpie.pic",0,1 ; 55, sprite dimensions
dw CaterpiePicFront
dw CaterpiePicBack

; unused bytes
db 0,0,0,0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	;tmlearn 0

db BANK(CaterpiePicFront)
