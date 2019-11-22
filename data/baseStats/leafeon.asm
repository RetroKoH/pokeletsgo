db LEAFEON ; pokedex id
db 65 ; base hp
db 110 ; base attack
db 130 ; base defense
db 95 ; base speed
db 65 ; base special
db GRASS ; species type 1
db GRASS ; species type 2
db 45 ; catch rate
db 198 ; base exp yield
INCBIN "pic/mon/leafeon.pic",0,1 ; 66, sprite dimensions
dw LeafeonPicFront
dw LeafeonPicBack
; attacks known at lvl 0
db TACKLE
db TAIL_WHIP
db QUICK_ATTACK
db EMBER
db 0 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20
	tmlearn 31,32
	tmlearn 33,34,38,39,40
	tmlearn 44
	tmlearn 50
db BANK(LeafeonPicFront)
