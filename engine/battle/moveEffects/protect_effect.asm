ProtectEffect_:
;	jp ProtectChance ; Chance to invoke Protect
;	ret c

	ld hl, wPlayerBattleStatus2
	ld a, [H_WHOSETURN]
	and a
	jr z, .protectEffect
	ld hl, wEnemyBattleStatus2

.protectEffect
	set SUBSTATUS_PROTECT, [hl] ; mon is now protected
	callab PlayCurrentMoveAnimation
	ld hl, ProtectedItselfText
	jp PrintText
	ret

;ProtectChance:
;	ld de, wPlayerProtectCount
;	ld a, [H_WHOSETURN] ;hBattleTurn
;	and a
;	jr z, .cont
;	ld de, wEnemyProtectCount

;.cont
;	call CheckOpponentWentFirst
;	jr nz, .moveFailed

; Skip substitute check. Protect can be used w/ Substitute from Gen 3 onward
; Halve the chance of a successful Protect for each consecutive use.

;	ld b, $ff	; Start with b = 255 (Chance of success)
;	ld a, [de]
;	ld c, a		; c = Number of consecutive Protect/Endure uses
;.loop
;	ld a, c
;	and a
;	jr z, .done		; if c = 0, finish 
;	dec c

;	srl b			; divide success chance by 2
;	ld a, b
;	and a
;	jr nz, .loop	; branch if greater than 0%
;	jr .moveFailed	; otherwise the move fails
;
;.done
;.rand
;	call BattleRandom
;	and a
;	jr z, .rand			; reroll if random value is 0
;
;	dec a
;	cp b
;	jr nc, .moveFailed	; if rand-1 is higher than b, the move will fail

; Another consecutive Protect use.
;	ld a, [de]
;	inc a
;	ld [de], a		; increment Protect use count
;	and a
;	ret

;.moveFailed
;	xor a
;	ld [de], a		; reset Protect use count on failure
	;ld c, 50
	;call DelayFrames
;	ld hl, PrintButItFailedText_
;	jp PrintText

ProtectedItselfText:
	TX_FAR _ProtectedItselfText
	db "@"
