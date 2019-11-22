db MELTAN ; pokedex id
db 45 ; base hp
db 65 ; base attack
db 60 ; base defense
db 34 ; base speed
db 35 ; base special
db STEEL ; species type 1
db STEEL ; species type 2
db 190 ; catch rate
db 89 ; base exp yield
INCBIN "pic/mon/meltan.pic",0,1 ; 55, sprite dimensions
dw MeltanPicFront
dw MeltanPicBack
; attacks known at lvl 0
db TACKLE
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10
	tmlearn 20,24
	tmlearn 25,30,31,32
	tmlearn 33,34,39
	tmlearn 44,45
	tmlearn 50,55
db BANK(MeltanPicFront)
