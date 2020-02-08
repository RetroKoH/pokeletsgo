db METAPOD ; pokedex id
db 50 ; base hp
db 20 ; base attack
db 55 ; base defense
db 30 ; base speed
db 25 ; base special attack
;db 25 ; base special defense
db BUG ; species type 1
db BUG ; species type 2
db 120 ; catch rate
db 72 ; base exp yield
INCBIN "pic/mon/metapod.pic",0,1 ; 55, sprite dimensions
dw MetapodPicFront
dw MetapodPicBack

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

db BANK(MetapodPicFront)
