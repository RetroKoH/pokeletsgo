db KAKUNA ; pokedex id
db 45 ; base hp
db 25 ; base attack
db 50 ; base defense
db 35 ; base speed
db 25 ; base special attack
;db 25 ; base special defense
db BUG ; species type 1
db POISON ; species type 2
db 120 ; catch rate
db 72 ; base exp yield
INCBIN "pic/mon/kakuna.pic",0,1 ; 55, sprite dimensions
dw KakunaPicFront
dw KakunaPicBack

; unused bytes
db 0,0,0,0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
;	tmlearn 0

db BANK(KakunaPicFront)
