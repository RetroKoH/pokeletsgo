db PERRSERKER ; pokedex id
db 70 ; base hp
db 110 ; base attack
db 100 ; base defense
db 50 ; base speed
db 50 ; base special
db STEEL ; species type 1
db STEEL ; species type 2
db 90 ; catch rate
db 154 ; base exp yield
INCBIN "pic/mon/perrserker.pic",0,1 ; 77, sprite dimensions
dw PerrserkerPicFront
dw PerrserkerPicBack

; unused bytes
db 0
db 0
db 0
db 0

db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,11,12,15,16
	tmlearn 20,24
	tmlearn 25,31,32
	tmlearn 34,39,40
	tmlearn 44
	tmlearn 50
db BANK(PerrserkerPicFront)
