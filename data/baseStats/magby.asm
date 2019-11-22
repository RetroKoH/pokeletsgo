db MAGBY ; pokedex id
db 45 ; base hp
db 75 ; base attack
db 37 ; base defense
db 83 ; base speed
db 55 ; base special
db FIRE ; species type 1
db FIRE ; species type 2
db 45 ; catch rate
db 167 ; base exp yield
INCBIN "pic/mon/magby.pic",0,1 ; 66, sprite dimensions
dw MagbyPicFront
dw MagbyPicBack
; attacks known at lvl 0
db EMBER
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20
	tmlearn 29,30,31,32
	tmlearn 34,35,38,40
	tmlearn 44,46
	tmlearn 50,54
db BANK(MagbyPicFront)
