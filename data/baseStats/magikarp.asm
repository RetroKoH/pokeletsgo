db MAGIKARP ; pokedex id
db 20 ; base hp
db 10 ; base attack
db 55 ; base defense
db 80 ; base speed
db 15 ; base special attack
;db 20 ; base special defense
db WATER ; species type 1
db WATER ; species type 2
db 255 ; catch rate
db 40 ; base exp yield
INCBIN "pic/mon/magikarp.pic",0,1 ; 66, sprite dimensions
dw MagikarpPicFront
dw MagikarpPicBack

; rare encounter moves
db HYDRO_PUMP, 0, 0, 0

db EXP_SLOW ; growth rate

; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
;	tmlearn 0

db BANK(MagikarpPicFront)
