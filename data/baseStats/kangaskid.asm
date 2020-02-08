db KANGASKID ; pokedex id
db 55 ; base hp
db 45 ; base attack
db 40 ; base defense
db 45 ; base speed
db 20 ; base special attack
;db 40 ; base special defense
db NORMAL ; species type 1
db NORMAL ; species type 2
db 255 ; catch rate
db 49 ; base exp yield
INCBIN "pic/mon/kangaskid.pic",0,1 ; 77, sprite dimensions
dw KangaskidPicFront
dw KangaskidPicBack

; rare encounter moves
db 0, 0, 0, 0

db EXP_MEDFAST ; growth rate

; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	;tmlearn 0

db BANK(KangaskidPicFront)
