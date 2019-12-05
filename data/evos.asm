; See constants/evolution_constants.asm
; The max number of evolutions per monster is MAX_EVOLUTIONS

EvosPointerTable:
	dw BulbasaurEvolutions
	dw IvysaurEvolutions
	dw NoEvolutions
	dw CharmanderEvolutions
	dw CharmeleonEvolutions
	dw NoEvolutions
	dw SquirtleEvolutions
	dw WartortleEvolutions
	dw NoEvolutions
	dw CaterpieEvolutions
	dw MetapodEvolutions
	dw NoEvolutions
	dw WeedleEvolutions
	dw KakunaEvolutions
	dw NoEvolutions
	dw PidgeyEvolutions
	dw PidgeottoEvolutions
	dw NoEvolutions
	dw RattataEvolutions
	dw NoEvolutions
	dw SpearowEvolutions
	dw NoEvolutions
	dw EkansEvolutions
	dw NoEvolutions
	dw PichuEvolutions
	dw PikachuEvolutions
	dw NoEvolutions
	dw SandshrewEvolutions
	dw NoEvolutions
	dw NidoranFEvolutions
	dw NidorinaEvolutions
	dw NoEvolutions
	dw NidoranMEvolutions
	dw NidorinoEvolutions
	dw NoEvolutions
	dw CleffaEvolutions
	dw ClefairyEvolutions
	dw NoEvolutions
	dw VulpixEvolutions
	dw NoEvolutions
	dw IgglybuffEvolutions
	dw JigglypuffEvolutions
	dw NoEvolutions
	dw ZubatEvolutions
	dw GolbatEvolutions
	dw NoEvolutions
	dw OddishEvolutions
	dw GloomEvolutions
	dw NoEvolutions
	dw NoEvolutions
	dw ParasEvolutions
	dw NoEvolutions
	dw VenonatEvolutions
	dw NoEvolutions
	dw DiglettEvolutions
	dw NoEvolutions
	dw MeowthEvolutions
	dw NoEvolutions
	dw PsyduckEvolutions
	dw NoEvolutions
	dw MankeyEvolutions
	dw NoEvolutions
	dw GrowlitheEvolutions
	dw NoEvolutions
	dw PoliwagEvolutions
	dw PoliwhirlEvolutions
	dw NoEvolutions
	dw NoEvolutions
	dw AbraEvolutions
	dw KadabraEvolutions
	dw NoEvolutions
	dw MachopEvolutions
	dw MachokeEvolutions
	dw NoEvolutions
	dw BellsproutEvolutions
	dw WeepinbellEvolutions
	dw NoEvolutions
	dw TentacoolEvolutions
	dw NoEvolutions
	dw GeodudeEvolutions
	dw GravelerEvolutions
	dw NoEvolutions
	dw PonytaEvolutions
	dw NoEvolutions
	dw SlowpokeEvolutions
	dw NoEvolutions
	dw NoEvolutions
	dw MagnemiteEvolutions
	dw MagnetonEvolutions
	dw NoEvolutions
	dw NoEvolutions ; FARFETCHD
	dw DoduoEvolutions
	dw NoEvolutions
	dw SeelEvolutions
	dw NoEvolutions
	dw GrimerEvolutions
	dw NoEvolutions
	dw ShellderEvolutions
	dw NoEvolutions
	dw GastlyEvolutions
	dw HaunterEvolutions
	dw NoEvolutions
	dw OnixEvolutions
	dw NoEvolutions
	dw DrowzeeEvolutions
	dw NoEvolutions
	dw KrabbyEvolutions
	dw NoEvolutions
	dw VoltorbEvolutions
	dw NoEvolutions
	dw ExeggcuteEvolutions
	dw NoEvolutions
	dw CuboneEvolutions
	dw NoEvolutions
	dw TyrogueEvolutions
	dw NoEvolutions
	dw NoEvolutions
	dw NoEvolutions
	dw LickitungEvolutions
	dw NoEvolutions
	dw KoffingEvolutions
	dw NoEvolutions
	dw RhyhornEvolutions
	dw RhydonEvolutions
	dw NoEvolutions
	dw HappinyEvolutions
	dw ChanseyEvolutions
	dw NoEvolutions
	dw TangelaEvolutions
	dw NoEvolutions
	dw NoEvolutions ; Kangaskhan
	dw HorseaEvolutions
	dw SeadraEvolutions
	dw NoEvolutions
	dw GoldeenEvolutions
	dw NoEvolutions
	dw StaryuEvolutions
	dw NoEvolutions
	dw MimeJrEvolutions
	dw NoEvolutions
	dw ScytherEvolutions
	dw NoEvolutions
	dw SmoochumEvolutions
	dw NoEvolutions
	dw ElekidEvolutions
	dw ElectabuzzEvolutions
	dw NoEvolutions
	dw MagbyEvolutions
	dw MagmarEvolutions
	dw NoEvolutions
	dw NoEvolutions ; PINSIR
	dw NoEvolutions ; TAUROS
	dw NoEvolutions ; MILTANK
	dw MagikarpEvolutions
	dw NoEvolutions ; GYARADOS
	dw NoEvolutions ; LAPRAS
	dw NoEvolutions ; DITTO
	dw EeveeEvolutions
	dw NoEvolutions
	dw NoEvolutions
	dw NoEvolutions
	dw NoEvolutions
	dw NoEvolutions
	dw NoEvolutions
	dw NoEvolutions
	dw NoEvolutions ; SYLVEOB
	dw PorygonEvolutions
	dw Porygon2Evolutions
	dw NoEvolutions ; PORYGONZ
	dw OmanyteEvolutions
	dw NoEvolutions ; OMASTAR
	dw KabutoEvolutions
	dw NoEvolutions ; KABUTOPS
	dw NoEvolutions ; AERODACTYL
	dw MunchlaxEvolutions
	dw NoEvolutions ; SNORLAX
	dw NoEvolutions ; ARTICUNO
	dw NoEvolutions
	dw NoEvolutions
	dw DratiniEvolutions
	dw DragonairEvolutions
	dw NoEvolutions ; DRAGONITE
	dw NoEvolutions
	dw NoEvolutions
	dw MeltanEvolutions
	dw NoEvolutions			; MELMETAL

NoEvolutions:
	db 0

BulbasaurEvolutions:
	db EV_LEVEL, 16, IVYSAUR
	db 0

IvysaurEvolutions:
	db EV_LEVEL, 32, VENUSAUR
	db 0

CharmanderEvolutions:
	db EV_LEVEL, 16, CHARMELEON
	db 0

CharmeleonEvolutions:
	db EV_LEVEL, 36, CHARIZARD
	db 0

SquirtleEvolutions:
	db EV_LEVEL, 16, WARTORTLE
	db 0

WartortleEvolutions:
	db EV_LEVEL, 36, BLASTOISE
	db 0

CaterpieEvolutions:
	db EV_LEVEL, 7, METAPOD
	db 0

MetapodEvolutions:
	db EV_LEVEL, 10, BUTTERFREE
	db 0

WeedleEvolutions:
	db EV_LEVEL, 7, KAKUNA
	db 0

KakunaEvolutions:
	db EV_LEVEL, 10, BEEDRILL
	db 0

PidgeyEvolutions:
	db EV_LEVEL, 18, PIDGEOTTO
	db 0

PidgeottoEvolutions:
	db EV_LEVEL, 36, PIDGEOT
	db 0

RattataEvolutions:
	db EV_LEVEL, 20, RATICATE
	db 0

SpearowEvolutions:
	db EV_LEVEL, 20, FEAROW
	db 0

EkansEvolutions:
	db EV_LEVEL, 22, ARBOK
	db 0

PichuEvolutions:
	db EV_LEVEL, 8, PIKACHU
	db 0

PikachuEvolutions:
	db EV_ITEM, THUNDER_STONE, 1, RAICHU
	db 0

SandshrewEvolutions:
	db EV_LEVEL, 22, SANDSLASH
	db 0

NidoranFEvolutions:
	db EV_LEVEL, 16, NIDORINA
	db 0

NidorinaEvolutions:
	db EV_ITEM, MOON_STONE, 1, NIDOQUEEN
	db 0

NidoranMEvolutions:
	db EV_LEVEL, 16, NIDORINO
	db 0

NidorinoEvolutions:
	db EV_ITEM, MOON_STONE, 1, NIDOKING
	db 0

CleffaEvolutions:
	db EV_LEVEL, 10, CLEFAIRY
	db 0

ClefairyEvolutions:
	db EV_ITEM, MOON_STONE, 1, CLEFABLE
	db 0

VulpixEvolutions:
	db EV_ITEM, FIRE_STONE, 1, NINETALES
	db 0

IgglybuffEvolutions:
	db EV_LEVEL, 10, JIGGLYPUFF
	db 0

JigglypuffEvolutions:
	db EV_ITEM, MOON_STONE, 1, WIGGLYTUFF
	db 0

ZubatEvolutions:
	db EV_LEVEL, 22, GOLBAT
	db 0

GolbatEvolutions:
	db EV_LEVEL, 40, CROBAT ; Friendship
	db 0

OddishEvolutions:
	db EV_LEVEL, 21, GLOOM
	db 0

GloomEvolutions:
	db EV_ITEM, LEAF_STONE, 1, VILEPLUME
	db EV_ITEM, FIRE_STONE, 1, BELLOSSOM
	db 0

ParasEvolutions:
	db EV_LEVEL, 24, PARASECT
	db 0

VenonatEvolutions:
	db EV_LEVEL, 31, VENOMOTH
	db 0

DiglettEvolutions:
	db EV_LEVEL, 26, DUGTRIO
	db 0

MeowthEvolutions:
	db EV_LEVEL, 28, PERSIAN
	db 0

PsyduckEvolutions:
	db EV_LEVEL, 33, GOLDUCK
	db 0

MankeyEvolutions:
	db EV_LEVEL, 28, PRIMEAPE
	db 0

GrowlitheEvolutions:
	db EV_ITEM, FIRE_STONE, 1, ARCANINE
	db 0

PoliwagEvolutions:
	db EV_LEVEL, 25, POLIWHIRL
	db 0

PoliwhirlEvolutions:
	db EV_ITEM, WATER_STONE, 1, POLIWRATH
	db EV_ITEM, MOON_STONE, 1, POLITOED ; Supposed to be King's Rock
	db 0

AbraEvolutions:
	db EV_LEVEL, 16, KADABRA
	db 0

KadabraEvolutions:
	db EV_LEVEL, 40, ALAKAZAM
	db 0

MachopEvolutions:
	db EV_LEVEL, 28, MACHOKE
	db 0

MachokeEvolutions:
	db EV_LEVEL, 40, MACHAMP
	db 0

BellsproutEvolutions:
	db EV_LEVEL, 21, WEEPINBELL
	db 0

WeepinbellEvolutions:
	db EV_ITEM, LEAF_STONE, 1, VICTREEBEL
	db 0

TentacoolEvolutions:
	db EV_LEVEL, 30, TENTACRUEL
	db 0

GeodudeEvolutions:
	db EV_LEVEL, 25, GRAVELER
	db 0

GravelerEvolutions:
	db EV_LEVEL, 40, GOLEM
	db 0

PonytaEvolutions:
	db EV_LEVEL, 40, RAPIDASH
	db 0

SlowpokeEvolutions:
	db EV_LEVEL, 37, SLOWBRO
	db EV_ITEM, MOON_STONE, 1, SLOWKING
	db 0

MagnemiteEvolutions:
	db EV_LEVEL, 30, MAGNETON
	db 0

MagnetonEvolutions:
	db EV_LEVEL, 30, MAGNEZONE
	db 0

DoduoEvolutions:
	db EV_LEVEL, 31, DODRIO
	db 0

SeelEvolutions:
	db EV_LEVEL, 34, DEWGONG
	db 0

GrimerEvolutions:
	db EV_LEVEL, 38, MUK
	db 0

ShellderEvolutions:
	db EV_ITEM, WATER_STONE, 1, CLOYSTER
	db 0

GastlyEvolutions:
	db EV_LEVEL, 25, HAUNTER
	db 0

HaunterEvolutions:
	db EV_LEVEL, 40, GENGAR
	db 0

OnixEvolutions:
	db EV_LEVEL, 30, STEELIX
	db 0

DrowzeeEvolutions:
	db EV_LEVEL, 26, HYPNO
	db 0

KrabbyEvolutions:
	db EV_LEVEL, 28, KINGLER
	db 0

VoltorbEvolutions:
	db EV_LEVEL, 30, ELECTRODE
	db 0

ExeggcuteEvolutions:
	db EV_ITEM, LEAF_STONE, 1, EXEGGUTOR
	db 0

CuboneEvolutions:
	db EV_LEVEL, 28, MAROWAK
	db 0

TyrogueEvolutions:
	db 0

LickitungEvolutions:
	db EV_LEVEL, 40, LICKILICKY
	db 0

KoffingEvolutions:
	db EV_LEVEL, 35, WEEZING
	db 0

RhyhornEvolutions:
	db EV_LEVEL, 42, RHYDON
	db 0

RhydonEvolutions:
	db EV_LEVEL, 55, RHYPERIOR
	db 0

HappinyEvolutions:
	db EV_LEVEL, 10, CHANSEY
	db 0

ChanseyEvolutions:
	db EV_LEVEL, 30, BLISSEY
	db 0

TangelaEvolutions:
	db EV_LEVEL, 30, TANGROWTH
	db 0

HorseaEvolutions:
	db EV_LEVEL, 32, SEADRA
	db 0

SeadraEvolutions:
	db EV_LEVEL, 48, KINGDRA
	db 0

GoldeenEvolutions:
	db EV_LEVEL, 33, SEAKING
	db 0

StaryuEvolutions:
	db EV_ITEM, WATER_STONE, 1, STARMIE
	db 0

MimeJrEvolutions:
	db EV_LEVEL, 10, MR_MIME
	db 0

ScytherEvolutions:
	db EV_LEVEL, 30, SCIZOR
	db 0

SmoochumEvolutions:
	db EV_LEVEL, 10, JYNX
	db 0

ElekidEvolutions:
	db EV_LEVEL, 10, ELECTABUZZ
	db 0

ElectabuzzEvolutions:
	db EV_ITEM, THUNDER_STONE, 1, ELECTIVIRE
	db 0

MagbyEvolutions:
	db EV_LEVEL, 10, MAGMAR
	db 0

MagmarEvolutions:
	db EV_ITEM, FIRE_STONE, 1, MAGMORTAR
	db 0

MagikarpEvolutions:
	db EV_LEVEL, 20, GYARADOS
	db 0

EeveeEvolutions:
	db EV_ITEM, FIRE_STONE, 1, FLAREON
	db EV_ITEM, THUNDER_STONE, 1, JOLTEON
	db EV_ITEM, WATER_STONE, 1, VAPOREON
	db 0

PorygonEvolutions:
	db EV_LEVEL, 1, PORYGON2
	db 0

Porygon2Evolutions:
	db EV_LEVEL, 1, PORYGONZ
	db 0

OmanyteEvolutions:
	db EV_LEVEL, 40, OMASTAR
	db 0

KabutoEvolutions:
	db EV_LEVEL, 40, KABUTOPS
	db 0

MunchlaxEvolutions:
	db EV_LEVEL, 10, SNORLAX
	db 0

DratiniEvolutions:
	db EV_LEVEL, 30, DRAGONAIR
	db 0

DragonairEvolutions:
	db EV_LEVEL, 55, DRAGONITE
	db 0

MeltanEvolutions:
;Evolutions
	db EV_LEVEL,55,MELMETAL
	db 0