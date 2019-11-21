db PICHU ; pokedex id
db 20 ; base hp
db 40 ; base attack
db 15 ; base defense
db 60 ; base speed
db 35 ; base special
db ELECTRIC ; species type 1
db ELECTRIC ; species type 2
db 190 ; catch rate
db 41 ; base exp yield
INCBIN "pic/mon/pichu.pic",0,1 ; 55, sprite dimensions
dw PichuPicFront
dw PichuPicBack
; attacks known at lvl 0
db THUNDERSHOCK
db GROWL ;CHARM
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,16
	tmlearn 17,18,19,24
	tmlearn 25,31,32
	tmlearn 33,34,39,40
	tmlearn 44,45
	tmlearn 50
db BANK(PichuPicFront)
