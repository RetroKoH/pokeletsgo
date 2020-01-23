; non-volatile statuses
SLP EQU %111 ; sleep counter
PSN EQU 3
BRN EQU 4
FRZ EQU 5
PAR EQU 6

; volatile statuses 1
STORING_ENERGY           EQU 0 ; Bide
THRASHING_ABOUT          EQU 1 ; e.g. Thrash
ATTACKING_MULTIPLE_TIMES EQU 2 ; e.g. Double Kick, Fury Attack
FLINCHED                 EQU 3 ; Flinch
CHARGING_UP              EQU 4 ; e.g. Solar Beam, Fly
USING_TRAPPING_MOVE      EQU 5 ; e.g. Wrap
INVULNERABLE             EQU 6 ; charging up Fly/Dig
CONFUSED                 EQU 7 ; Confusion

; volatile statuses 2
USING_X_ACCURACY    EQU 0 ; X Accuracy
PROTECTED_BY_MIST   EQU 1 ; Mist
GETTING_PUMPED      EQU 2 ; Focus Energy
SUBSTATUS_PROTECT	EQU 3 ; Protect
HAS_SUBSTITUTE_UP   EQU 4 ; Substitute
NEEDS_TO_RECHARGE   EQU 5 ; Hyper Beam
USING_RAGE          EQU 6 ; Rage
SEEDED              EQU 7 ; Leech Seed

; volatile statuses 3
BADLY_POISONED      EQU 0
HAS_LIGHT_SCREEN_UP EQU 1
HAS_REFLECT_UP      EQU 2
TRANSFORMED         EQU 3
HAS_STEALTH_ROCKS	EQU 4
