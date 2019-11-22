db TANGROWTH ; pokedex id
db 100 ; base hp
db 100 ; base attack
db 125 ; base defense
db 50 ; base speed
db 110 ; base special
db GRASS ; species type 1
db GRASS ; species type 2
db 45 ; catch rate
db 166 ; base exp yield
INCBIN "pic/mon/tangrowth.pic",0,1 ; 66, sprite dimensions
dw TangrowthPicFront
dw TangrowthPicBack
; attacks known at lvl 0
db CONSTRICT
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,15
	tmlearn 20,21,22
	tmlearn 31,32
	tmlearn 34,40
	tmlearn 44
	tmlearn 50,51
db BANK(TangrowthPicFront)
