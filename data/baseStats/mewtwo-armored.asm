db MEWTWO ; pokedex id
db 106 ; base hp
db 100 ; base attack
db 159 ; base defense
db 110 ; base speed
db 90 ; base special attack
;db 115 ; base special defense
db PSYCHIC ; species type 1
db PSYCHIC ; species type 2
db 0 ; catch rate
db 255 ; (306) base exp yield
INCBIN "pic/mon/mewtwo-armor.pic",0,1 ; 77, sprite dimensions
dw MewtwoArmorPicFront
dw MewtwoArmorPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0

db BANK(MewtwoArmorPicFront)
