MonBaseStats:
db BULBASAUR ; pokedex id
db 45 ; base hp
db 49 ; base attack
db 49 ; base defense
db 45 ; base speed
db 65 ; base special
db GRASS ; species type 1
db POISON ; species type 2
db 45 ; catch rate
db 64 ; base exp yield
INCBIN "pic/mon/bulbasaur.pic",0,1 ; 55, sprite dimensions
dw BulbasaurPicFront
dw BulbasaurPicBack

; attacks known at lvl 0
db 0
db 0
db 0
db 0

db 3 ; growth rate

; TM learnset
	tmlearn 1,5,6,7,8
	tmlearn 9,12
	tmlearn 0
	tmlearn 27
	tmlearn 39
	tmlearn 45
	tmlearn 52,53
; 08 16 24 32 40 48 56
;Support for only 56 TMs


db BANK(BulbasaurPicFront)

MonBaseStatsEnd:
