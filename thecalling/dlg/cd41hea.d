BEGIN CD41HEA

//1ST TALK

CHAIN IF ~Global("CDShamanCalling","GLOBAL",6) NumTimesTalkedTo(0)~ THEN CD41HEA 01.00
@60021
==NEERAJ IF ~InParty("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @60022
==DORNJ IF ~InParty("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @60023
==%DYNAHEIR_JOINED% IF ~InParty("DYNAHEIR") !StateCheck("DYNAHEIR",CD_STATE_NOTVALID)~ THEN @60024
==BAELOTHJ IF ~InParty("BAELOTH") !StateCheck("BAELOTH",CD_STATE_NOTVALID)~ THEN @60025
==CD41HEA @60026
END
IF~~THEN REPLY @60027 EXTERN CD41HEA 01.01
IF~~THEN REPLY @60028 EXTERN CD41HEA 01.01

CHAIN IF ~Global("CDShamanCalling","GLOBAL",6) NumTimesTalkedToGT(0)~ THEN CD41HEA 01.0R
@60029
END
IF~~THEN REPLY @60030 EXTERN CD41HEA 01.02
IF~~THEN REPLY @60031 DO ~AddJournalEntry(@60150,QUEST) EraseJournalEntry(@60149)~ EXIT

CHAIN CD41HEA 01.01
@60032
==CD41HEA @60033
END
IF~~THEN REPLY @60034 EXTERN CD41HEA 01.02
IF~~THEN REPLY @60035 EXTERN CD41HEA 01.02

CHAIN CD41HEA 01.02
@60036
==CD41HEA @60037
END
IF~~THEN REPLY @60038 EXTERN CD41HEA 01.03
IF~~THEN REPLY @60039 EXTERN CD41HEA 01.04
IF~~THEN REPLY @60040 EXTERN CD41HEA 01.04

CHAIN CD41HEA 01.03
@60041
EXTERN CD41HEA 01.04

CHAIN CD41HEA 01.04
@60042
==CD41HEA @60043
==%JAHEIRA_JOINED% IF ~InParty("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @60044
==%FALDORN_JOINED% IF ~InParty("FALDORN") !StateCheck("FALDORN",CD_STATE_NOTVALID)~ THEN @60045
==CD41HEA @60046
END
IF~~THEN REPLY @60047 EXTERN CD41HEA 01.05
IF~~THEN REPLY @60048 EXTERN CD41HEA 01.06

CHAIN CD41HEA 01.05
@60049
==CD41HEA @60050
==CD41HEA @60051
==CD41HEA @60052
==CD41HEA @60053
==CD41HEA @60054
END
IF~~THEN REPLY @60055 EXTERN CD41HEA 01.07
IF~~THEN REPLY @60056 EXTERN CD41HEA 01.07
IF~~THEN REPLY @60057 EXTERN CD41HEA 01.06

CHAIN CD41HEA 01.07
@60058
==CD41HEA @60059
DO ~SetGlobal("CDShamanCalling","GLOBAL",7) AddJournalEntry(@60151,QUEST) EraseJournalEntry(@60149) EraseJournalEntry(@60150)~ EXIT

CHAIN CD41HEA 01.06
@60060
EXIT

//2nd TALK

CHAIN IF ~Global("CDShamanCalling","GLOBAL",7)~ THEN CD41HEA 02.00
@60061
END
IF~PartyHasItem("CD41WOL")~THEN REPLY @60062 DO ~TakePartyItem("CD41WOL") DestroyItem("CD41WOL")~ EXTERN CD41HEA 02.01
IF~~THEN REPLY @60063 EXIT

CHAIN IF ~Global("CDShamanCalling","GLOBAL",8)~ THEN CD41HEA 02.0R
@60064
END
IF~~THEN REPLY @60065 EXTERN CD41HEA 02.06
IF~~THEN REPLY @60066 EXIT 

CHAIN CD41HEA 02.01
@60067
==CD41HEA @60068
==CD41HEA @60069
END
IF~~THEN REPLY @60070 EXTERN CD41HEA 02.02
IF~~THEN REPLY @60071 EXTERN CD41HEA 02.03

CHAIN CD41HEA 02.02
@60072
EXTERN CD41HEA 02.04

CHAIN CD41HEA 02.03
@60073
EXTERN CD41HEA 02.04

CHAIN CD41HEA 02.04
@60074
==CD41HEA @60075
END
IF~~THEN REPLY @60076 EXTERN CD41HEA 02.05
IF~~THEN REPLY @60077 EXTERN CD41HEA 02.06
IF~~THEN REPLY @60078 EXTERN CD41HEA 02.06
IF~~THEN REPLY @60079 EXTERN CD41HEA 02.07

CHAIN CD41HEA 02.05
@60080
END
IF~~THEN REPLY @60081 EXTERN CD41HEA 02.06
IF~~THEN REPLY @60082 EXTERN CD41HEA 02.07

CHAIN CD41HEA 02.06
@60083
==CD41HEA @60084
==CD41HEA @60085
END
IF~~THEN REPLY @60086 EXTERN CD41HEA 02.08
IF~~THEN REPLY @60087 EXTERN CD41HEA 02.07

CHAIN CD41HEA 02.08
@60088
DO ~GiveItemCreate("CD41FIG",Player1,1,1,0) SetGlobal("CDShamanCalling","GLOBAL",9) AddJournalEntry(@60156,QUEST) EraseJournalEntry(@60152) EraseJournalEntry(@60155)~ EXIT

CHAIN CD41HEA 02.07
@60089
DO ~SetGlobal("CDShamanCalling","GLOBAL",8) AddJournalEntry(@60155,QUEST) EraseJournalEntry(@60152)~ EXIT

//3rd Talk

CHAIN IF ~Global("CDShamanCalling","GLOBAL",9)~ THEN CD41HEA 03.0A
@60090
EXIT

CHAIN IF ~Global("CDShamanCalling","GLOBAL",10)~ THEN CD41HEA 03.00
@60091
==CD41HEA @60092
==CD41HEA @60093
END
IF~~THEN REPLY @60094 EXTERN CD41HEA 03.01
IF~~THEN REPLY @60095 EXTERN CD41HEA 03.02
IF~~THEN REPLY @60096 EXTERN CD41HEA 03.02

CHAIN CD41HEA 03.01
@60097
DO ~SetGlobal("CDShamanCalling","GLOBAL",11) AddJournalEntry(@60153,QUEST) EraseJournalEntry(@60155) EraseJournalEntry(@60156)~ EXIT

CHAIN CD41HEA 03.02
@60098
DO ~SetGlobal("CDShamanCalling","GLOBAL",11) AddJournalEntry(@60153,QUEST) EraseJournalEntry(@60155) EraseJournalEntry(@60156)~ EXIT

//4th Talk

CHAIN IF ~Global("CDShamanCalling","GLOBAL",11) !PartyHasItem("CD41HER")~ THEN CD41HEA 04.0A
@60099
EXIT

CHAIN IF ~Global("CDShamanCalling","GLOBAL",11) PartyHasItem("CD41HER")~ THEN CD41HEA 04.00
@60100
==CD41HEA @60101
DO ~SetGlobal("CDShamanCalling","GLOBAL",12)~
EXIT

//5th

CHAIN IF ~Global("CDShamanCalling","GLOBAL",12)~ THEN CD41HEA 05.0A
@60102
EXIT

CHAIN IF ~Global("CDShamanCalling","GLOBAL",13) !Dead("CD41COR")~ THEN CD41HEA 05.0B
@60103
EXIT

CHAIN IF ~Global("CDShamanCalling","GLOBAL",13) Dead("CD41COR")~ THEN CD41HEA 05.00
@60104
END
IF~~THEN REPLY @60105 EXTERN CD41HEA 05.01
IF~~THEN REPLY @60106 EXTERN CD41HEA 05.01

CHAIN CD41HEA 05.01
@60107
END
IF~~THEN REPLY @60108 EXTERN CD41HEA 05.02
IF~~THEN REPLY @60109 EXTERN CD41HEA 05.02

CHAIN CD41HEA 05.02
@60110
==CD41HEA @60111
==CD41HEA @60112
==%JAHEIRA_JOINED% IF ~InParty("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @60113
==%FALDORN_JOINED% IF ~InParty("FALDORN") !StateCheck("FALDORN",CD_STATE_NOTVALID)~ THEN @60114
==%DYNAHEIR_JOINED% IF ~InParty("DYNAHEIR") !StateCheck("DYNAHEIR",CD_STATE_NOTVALID)~ THEN @60115
==%KIVAN_JOINED% IF ~InParty("KIVAN") !StateCheck("KIVAN",CD_STATE_NOTVALID)~ THEN @60116
==%MINSC_JOINED% IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @60117
==%VICONIA_JOINED% IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @60118
==CD41HEA @60119
==CD41HEA @60120
DO ~SetGlobal("CDShamanCalling","GLOBAL",14)~ EXIT

//6th talk

CHAIN IF ~Global("CDShamanCalling","GLOBAL",16)~ THEN CD41HEA 06.00
@60121
==CD41HEA @60122
END
IF~~THEN REPLY @60123 EXTERN CD41HEA 06.01
IF~~THEN REPLY @60124 EXTERN CD41HEA 06.02
IF~~THEN REPLY @60125 EXTERN CD41HEA 06.03

CHAIN CD41HEA 06.01
@60126
EXTERN CD41HEA 06.04

CHAIN CD41HEA 06.02
@60127
EXTERN CD41HEA 06.04

CHAIN CD41HEA 06.03
@60128
EXTERN CD41HEA 06.04

CHAIN CD41HEA 06.04
@60129
END
IF~~THEN REPLY @60130 EXTERN CD41HEA 06.05
IF~~THEN REPLY @60131 EXTERN CD41HEA 06.06

CHAIN CD41HEA 06.06
@60132
END
IF~~THEN REPLY @60133 EXTERN CD41HEA 06.07
IF~~THEN REPLY @60134 EXTERN CD41HEA 06.05

CHAIN CD41HEA 06.07
@60135
==CD41HEA @60136
==CD41HEA @60137
DO ~SetGlobal("CDShamanCalling","GLOBAL",17) AddJournalEntry(@60159,QUEST) EraseJournalEntry(@60157)~ EXIT

CHAIN CD41HEA 06.05
@60138
==CD41HEA @60139
DO ~SetGlobal("CDShamanCalling","GLOBAL",30) AddJournalEntry(@60158,QUEST_DONE) EraseJournalEntry(@60148) EraseJournalEntry(@60149) EraseJournalEntry(@60150) EraseJournalEntry(@60151) EraseJournalEntry(@60152) EraseJournalEntry(@60153) EraseJournalEntry(@60154) EraseJournalEntry(@60155) EraseJournalEntry(@60156) EraseJournalEntry(@60157) EraseJournalEntry(@60159)~ EXIT

//THE REST

CHAIN IF ~Global("CDShamanCalling","GLOBAL",30)~ THEN CD41HEA 07.0A
@60140
EXIT

CHAIN IF ~Global("CDShamanCalling","GLOBAL",17)~ THEN CD41HEA 07.00
@60140
END
IF~~THEN REPLY @60141 EXIT
IF~PartyHasItem("BOOK36")~THEN REPLY @60142 DO ~TakePartyItem("BOOK36") DestroyItem("BOOK36") AddJournalEntry(@60148,QUEST_DONE) EraseJournalEntry(@60149) EraseJournalEntry(@60150) EraseJournalEntry(@60151) EraseJournalEntry(@60152) EraseJournalEntry(@60153) EraseJournalEntry(@60154) EraseJournalEntry(@60155) EraseJournalEntry(@60156) EraseJournalEntry(@60157) EraseJournalEntry(@60158) EraseJournalEntry(@60159)~ EXTERN CD41HEA 07.01

CHAIN CD41HEA 07.01
@60143
==CD41HEA @60144
==CD41HEA @60145
DO ~SetGlobal("CDShamanCalling","GLOBAL",30) AddXPObject(Player1,1000)~ EXIT


