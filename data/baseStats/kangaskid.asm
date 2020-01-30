db KANGASKID ; pokedex id
db 55 ; base hp
db 45 ; base attack
db 40 ; base defense
db 45 ; base speed
db 20 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 190 ; catch rate
db 87 ; base exp yield
INCBIN "pic/mon/kangaskid.pic",0,1 ; 77, sprite dimensions
dw KangaskidPicFront
dw KangaskidPicBack

; unused bytes
db 0
db 0
db 0
db 0

db 0 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,11,12,13,14,15
	tmlearn 17,18,19,20,24
	tmlearn 25,26,27,31,32
	tmlearn 34,38,40
	tmlearn 44,48
	tmlearn 50,53,54
db BANK(KangaskidPicFront)
