db PORYGONZ ; pokedex id
db 85 ; base hp
db 80 ; base attack
db 70 ; base defense
db 90 ; base speed
db 135 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 130 ; base exp yield
INCBIN "pic/mon/porygon-z.pic",0,1 ; 66, sprite dimensions
dw PorygonZPicFront
dw PorygonZPicBack
; attacks known at lvl 0
db TACKLE
db SHARPEN
db CONVERSION
db 0
db 0 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,13,14,15
	tmlearn 20,24
	tmlearn 25,29,30,31,32
	tmlearn 33,34,39,40
	tmlearn 44,45,46
	tmlearn 49,50,55
db BANK(PorygonZPicFront)
