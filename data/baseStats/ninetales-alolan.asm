db NINETALES ; pokedex id
db 73 ; base hp
db 76 ; base attack
db 75 ; base defense
db 100 ; base speed
db 100 ; base special
db ICE ; species type 1
db FAIRY ; species type 2
db 75 ; catch rate
db 178 ; base exp yield
INCBIN "pic/mon/ninetales-a.pic",0,1 ; 77, sprite dimensions
dw NinetalesAPicFront
dw NinetalesAPicBack

; unused bytes
db 0
db 0
db 0
db 0

db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20
	tmlearn 28,31,32
	tmlearn 33,34,38,39,40
	tmlearn 44
	tmlearn 50
db BANK(NinetalesAPicFront)
