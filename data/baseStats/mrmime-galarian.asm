db MR_MIME ; pokedex id
db 50 ; base hp
db 65 ; base attack
db 65 ; base defense
db 100 ; base speed
db 90 ; base special
db ICE ; species type 1
db PSYCHIC ; species type 2
db 45 ; catch rate
db 161 ; base exp yield
INCBIN "pic/mon/mrmime-g.pic",0,1 ; 66, sprite dimensions
dw MrMimeGPicFront
dw MrMimeGPicBack

; unused bytes
db 0
db 0
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
db BANK(MrMimeGPicFront)
