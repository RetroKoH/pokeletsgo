db DITTO ; pokedex id
db 48 ; base hp
db 48 ; base attack
db 48 ; base defense
db 48 ; base speed
db 48 ; base special attack
;db 48 ; base special defense
db NORMAL ; species type 1
db NORMAL ; species type 2
db 35 ; catch rate
db 101 ; base exp yield
INCBIN "pic/mon/ditto.pic",0,1 ; 55, sprite dimensions
dw DittoPicFront
dw DittoPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
;	tmlearn 0

db BANK(DittoPicFront)
