db EEVEE ; pokedex id
db 65 ; base hp
db 75 ; base attack
db 70 ; base defense
db 75 ; base speed
db 85 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 92 ; base exp yield
INCBIN "pic/mon/eevee.pic",0,1 ; 55, sprite dimensions
dw EeveeSPicFront
dw EeveePicBack

; unused bytes
db 0
db 0
db 0
db 0

db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10
	tmlearn 20
	tmlearn 31,32
	tmlearn 33,34,39,40
	tmlearn 44
	tmlearn 50
db BANK(EeveeSPicFront)
