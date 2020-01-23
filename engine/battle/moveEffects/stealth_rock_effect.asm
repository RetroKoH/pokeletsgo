StealthRockEffect_:
	ld hl, wEnemyBattleStatus3
	ld a, [H_WHOSETURN]
	and a
	jr z, .stealthRockEffect
	ld hl, wPlayerBattleStatus3

.stealthRockEffect
	set HAS_STEALTH_ROCKS, [hl] ; mon is now protected
	callab PlayCurrentMoveAnimation
	ld hl, StealthRocksText
	jp PrintText
	ret

;	bit HAS_STEALTH_ROCKS, [hl] ; fails if rocks are already down!
;	jr nz, .moveFailed
;	set HAS_STEALTH_ROCKS, [hl] ; mon is now protected by reflect
;	ld hl, StealthRocksText

;	push hl
;	ld hl, PlayCurrentMoveAnimation
;	call BankswitchEtoF
;	pop hl
;	jp PrintText

;.moveFailed
;	ld c, 50
;	call DelayFrames
;	ld hl, PrintButItFailedText_
;	jp BankswitchEtoF

StealthRocksText:
	TX_FAR _StealthRocksText
	db "@"

;BankswitchEtoF:
;	ld b, BANK(BattleCore)
;	jp Bankswitch
