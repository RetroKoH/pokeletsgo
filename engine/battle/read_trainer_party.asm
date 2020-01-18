ReadTrainer: ; don't change any moves in a link battle
	ld a, [wLinkState]
	and a
	ret nz

; set [wEnemyPartyCount] to 0, [wEnemyPartyMons] to FF
; XXX first is total enemy pokemon?
; XXX second is species of first pokemon?
	ld hl, wEnemyPartyCount
	xor a
	ld [hli], a
	dec a
	ld [hl], a

; check if the upcoming battle is a gym leader
	ld a, [wGymLeaderNo]
	and a
	jr z, .notGymLeader
	cp 8
	jr z, .notGymLeader 	; Giovanni loads normally
	dec a
	add a
	ld hl, GymLeaderDataPointers
	ld c, a
	ld b, 0
	add hl, bc ; hl points to gym leader
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wBadgeCount]
	ld b, a
; At this point b contains the number of badges, while a is 9, as each lineup consists of 9 bytes.
; hl points to the gym leader.
; Our next task is to iterate through the trainers,
; decrementing b each time, until we get to the right one.
.gymOuter
	and a
	jr z, .iterateLeader ; branch ahead at the right badge count
	dec b
	ld a, 9
.gymInner
	inc hl
	dec a
	jr nz, .gymInner 	; skip 9 bytes to the next badge table
	ld a, b
	jr .gymOuter

; The first byte of trainer data is a specific level
;      (as opposed to the whole team being of the same level)
; - if [wLoneAttackNo] != 0, one pokemon on the team has a special move
; else the first byte is the level of every pokemon on the team
.iterateLeader
	ld b, 3		; three Pokemon will be selected
.nextLeaderMon
	ld a, [hli]
	ld [wCurEnemyLVL], a ; a = level of the next selected mon
	ld c, b
	ld a, b
.loopLeaderData
	cp 3
	jr c, .loopLeaderData2
	call Random
	ld a, [hRandomAdd]
	cp $55					; (0-55) first mon
	jr c, .loadLeaderMon
	dec c
	inc hl
	cp $AA 					; (55-AA) second mon
	jr c, .loadLeaderMon
	dec c
	inc hl 					; (AA-FF) third mon
	jr c, .loadLeaderMon
.loopLeaderData2
	cp 2
	jr c, .loadLeaderMon 	; skip random selections for the final mon
	ld a, [hRandomSub]
	cp $80
	jr c, .loadLeaderMon
	dec c
	inc hl
;.finalLeaderMon
	;jr c, .loadLeaderMon fallthrough

; loads the selected mon (randomly chosen from each selection pool)
.loadLeaderMon
	ld a, [hl]
	ld [wcf91], a ; write species somewhere (XXX why?)
	ld a, ENEMY_PARTY_DATA
	ld [wMonDataLocation], a
	push hl
	call AddPartyMon
	pop hl
.loopLeaderMons
	inc hl
	dec c
	ld a, c
	jr nz, .loopLeaderMons
	dec b 					; one of the leader's three mons is done. NEXT!
	ld a, b
	jr nz, .nextLeaderMon
	jr .addLoneMove

; get the pointer to trainer data for this class
.notGymLeader
	ld a, [wCurOpponent]
	sub $C9 ; convert value from pokemon to trainer
	add a
	ld hl, TrainerDataPointers
	ld c, a
	ld b, 0
	add hl, bc ; hl points to trainer class
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wTrainerNo]
	ld b, a
; At this point b contains the trainer number,
; and hl points to the trainer class.
; Our next task is to iterate through the trainers,
; decrementing b each time, until we get to the right one.
.outer
	dec b
	jr z, .iterateTrainer
.inner
	ld a, [hli]
	and a
	jr nz, .inner
	jr .outer

; if the first byte of trainer data is FF,
; - each pokemon has a specific level
;      (as opposed to the whole team being of the same level)
; - if [wLoneAttackNo] != 0, one pokemon on the team has a special move
; else the first byte is the level of every pokemon on the team
.iterateTrainer
	ld a, [hli]
	cp $FF ; is the trainer special?
	jr z, .specialTrainer ; if so, check for special moves
	ld [wCurEnemyLVL], a
.loopTrainerData
	ld a, [hli]
	and a ; have we reached the end of the trainer data?
	jr z, .FinishUp
	ld [wcf91], a ; write species somewhere (XXX why?)
	ld a, ENEMY_PARTY_DATA
	ld [wMonDataLocation], a
	push hl
	call AddPartyMon
	pop hl
	jr .loopTrainerData
.specialTrainer
; if this code is being run:
; - each pokemon has a specific level
;      (as opposed to the whole team being of the same level)
; - if [wLoneAttackNo] != 0, one pokemon on the team has a special move
	ld a, [hli]
	and a ; have we reached the end of the trainer data?
	jr z, .addLoneMove
	ld [wCurEnemyLVL], a
	ld a, [hli]
	ld [wcf91], a
	ld a, ENEMY_PARTY_DATA
	ld [wMonDataLocation], a
	push hl
	call AddPartyMon
	pop hl
	jr .specialTrainer
.addLoneMove
; does the trainer have a single monster with a different move
	ld a, [wLoneAttackNo] ; Brock is 01, Misty is 02, Erika is 04, etc
	and a
	jr z, .addTeamMove
	dec a
	add a
	ld c, a
	ld b, 0
	ld hl, LoneMoves
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld hl, wEnemyMon1Moves + 2
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	ld [hl], d
	jr .FinishUp
.addTeamMove
; check if our trainer's team has special moves
; get trainer class number
	ld a, [wCurOpponent]
	sub 200
	ld b, a
	ld hl, TeamMoves

; iterate through entries in TeamMoves, checking each for our trainer class
.IterateTeamMoves
	ld a, [hli]
	cp b
	jr z, .GiveTeamMoves ; is there a match?
	inc hl ; if not, go to the next entry
	inc a
	jr nz, .IterateTeamMoves

; no matches found. is this trainer champion rival?
	ld a, b
	cp SONY3
	jr z, .ChampionRival
	jr .FinishUp ; nope
.GiveTeamMoves
	ld a, [hl]
	ld [wEnemyMon5Moves + 2], a
	jr .FinishUp
.ChampionRival ; give moves to his team

; pidgeot
	ld a, SKY_ATTACK
	ld [wEnemyMon1Moves + 2], a

; starter
	ld a, [wRivalStarter]
	;cp STARTER3
	;ld b, MEGA_DRAIN
	;jr z, .GiveStarterMove
	cp STARTER1
	ld b, FIRE_BLAST
	jr z, .GiveStarterMove
	ld b, BLIZZARD ; must be squirtle
.GiveStarterMove
	ld a, b
	ld [wEnemyMon6Moves + 2], a
.FinishUp
; clear wAmountMoneyWon addresses
	xor a
	ld de, wAmountMoneyWon
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [de], a
	ld a, [wCurEnemyLVL]
	ld b, a
.LastLoop
; update wAmountMoneyWon addresses (money to win) based on enemy's level
	ld hl, wTrainerBaseMoney + 1
	ld c, 2 ; wAmountMoneyWon is a 3-byte number
	push bc
	predef AddBCDPredef
	pop bc
	inc de
	inc de
	dec b
	jr nz, .LastLoop ; repeat wCurEnemyLVL times
	ret