PrizeDifferentMenuPtrs:
	dw PrizeMenuMon1Entries
	dw PrizeMenuMon1Cost

	dw PrizeMenuMon2Entries
	dw PrizeMenuMon2Cost

	dw PrizeMenuTMsEntries
	dw PrizeMenuTMsCost

NoThanksText:
	db "NO THANKS@"

PrizeMenuMon1Entries:
	db ABRA
	db VULPIX
	db DRATINI
	db "@"

PrizeMenuMon1Cost:
	coins 120
	coins 550
	coins 1200
	db "@"

PrizeMenuMon2Entries:
	db SCYTHER
	db PINSIR
	db PORYGON
	db "@"

PrizeMenuMon2Cost:
	coins 2500
	coins 4600
	coins 6500
	db "@"

PrizeMenuTMsEntries:
	db TM_23
	db TM_15
	db TM_50
	db "@"

PrizeMenuTMsCost:
	coins 3300
	coins 5500
	coins 7700
	db "@"
