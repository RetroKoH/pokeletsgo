db IGGLYBUFF ; pokedex id
db 90 ; base hp
db 30 ; base attack
db 15 ; base defense
db 15 ; base speed
db 20 ; base special
db NORMAL ; species type 1
db FAIRY ; species type 2
db 170 ; catch rate
db 76 ; base exp yield
INCBIN "pic/mon/igglybuff.pic",0,1 ; 55, sprite dimensions
dw IgglybuffPicFront
dw IgglybuffPicBack
; attacks known at lvl 0
db SING
db GROWL;CHARM
db 0
db 0
db 4 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,12,13,14
	tmlearn 17,18,19,20,22,24
	tmlearn 25,29,30,31,32
	tmlearn 33,34,38,40
	tmlearn 44,45,46
	tmlearn 49,50,54,55
db BANK(IgglybuffPicFront)
