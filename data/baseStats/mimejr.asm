db MIME_JR ; pokedex id
db 20 ; base hp
db 25 ; base attack
db 45 ; base defense
db 60 ; base speed
db 70 ; base special
db PSYCHIC ; species type 1
db FAIRY ; species type 2
db 45 ; catch rate
db 136 ; base exp yield
INCBIN "pic/mon/mimejr.pic",0,1 ; 66, sprite dimensions
dw MimeJrPicFront
dw MimeJrPicBack
; attacks known at lvl 0
db CONFUSION
db BARRIER
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 1,5,6,8
	tmlearn 9,10,15
	tmlearn 17,18,19,20,22,24
	tmlearn 25,29,30,31,32
	tmlearn 33,34,35,40
	tmlearn 44,45,46
	tmlearn 50,55
db BANK(MimeJrPicFront)
