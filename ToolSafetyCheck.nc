%
O01587

(------Verify that Tools are Properly Setup------------------)
(Macro Argument 'R' or #18 is set to 1 or greater, will Re-Probe the tool before checking the offset.)
(This is a simple way to check the tool for wear and make sure that the offsets are accurate before starting milling operations.)



(---MAIN-----------------------------------------------------)
(Macro Argument 'T' or #20 is the tool number to be checked.)
IF [#20 GT 0] GOTO 1
#3000 = 100 (Macro Argument T not set!)

N1 (Optional Macro Argument M or #13 is the minimum height offset. The default is 3.1 if not set in the 'M' Argument.)
IF [#13 GT 3.1] GOTO 2
#1 = 3.1
GOTO 3

N2 (Set the minimum to the given 'M' Argument.)
#1 = #13


N3
IF #20 EQ 1 GOTO 10
IF #20 EQ 2 GOTO 20
IF #20 EQ 3 GOTO 30
IF #20 EQ 4 GOTO 40
IF #20 EQ 5 GOTO 50
IF #20 EQ 6 GOTO 60
IF #20 EQ 7 GOTO 70
IF #20 EQ 8 GOTO 80
IF #20 EQ 9 GOTO 90
IF #20 EQ 10 GOTO 100
#3000 = 100 (Invalid Tool Number!)


N10 (Tool 1)
IF [#18 LT 1] GOTO 12 (If Macro Argument 'R' or #18 is not set than skip the probing Operation.)
(Probing Operation)
IF [#51801 LT #1] GOTO 11 (Safety check for a reasonable 'Approximate Length'.)
G65 P9853 T[#20] B0. H0.1
GOTO 12
N11 (Else Throw Error.)
#3000 = 100 (Tool 1 Approximate Length needs to be set!)
N12 (Tool Offset Check.)
IF [#2001 GT #1] GOTO 199
#3000 = 100 (Tool 1 offset needs to be set!)


N20 (Tool 2)
IF [#18 LT 1] GOTO 22 (If Macro Argument 'R' or #18 is not set than skip the probing Operation.)
(Probing Operation)
IF [#51802 LT #1] GOTO 21 (Safety check for a reasonable 'Approximate Length'.)
G65 P9853 T[#20] B0. H0.1
GOTO 22
N21 (Else Throw Error.)
#3000 = 100 (Tool 2 Approximate Length needs to be set!)
N22 (Tool Offset Check.)
IF [#2002 GT #1] GOTO 199
#3000 = 100 (Tool 2 offset needs to be set!)


N30 (Tool 3)
IF [#18 LT 1] GOTO 32 (If Macro Argument 'R' or #18 is not set than skip the probing Operation.)
(Probing Operation)
IF [#51803 LT #1] GOTO 31 (Safety check for a reasonable 'Approximate Length'.)
G65 P9853 T[#20] B0. H0.1
GOTO 32
N31 (Else Throw Error.)
#3000 = 100 (Tool 3 Approximate Length needs to be set!)
N32 (Tool Offset Check.)
IF [#2003 GT #1] GOTO 199
#3000 = 100 (Tool 3 offset needs to be set!)


N40 (Tool 4)
IF [#18 LT 1] GOTO 42 (If Macro Argument 'R' or #18 is not set than skip the probing Operation.)
(Probing Operation)
IF [#51804 LT #1] GOTO 41 (Safety check for a reasonable 'Approximate Length'.)
G65 P9853 T[#20] B0. H0.1
GOTO 42
N41 (Else Throw Error.)
#3000 = 100 (Tool 4 Approximate Length needs to be set!)
N42 (Tool Offset Check.)
IF [#2004 GT #1] GOTO 199
#3000 = 100 (Tool 4 offset needs to be set!)


N50 (Tool 5)
IF [#18 LT 1] GOTO 52 (If Macro Argument 'R' or #18 is not set than skip the probing Operation.)
(Probing Operation)
IF [#51805 LT #1] GOTO 51 (Safety check for a reasonable 'Approximate Length'.)
G65 P9853 T[#20] B0. H0.1
GOTO 52
N51 (Else Throw Error.)
#3000 = 100 (Tool 5 Approximate Length needs to be set!)
N52 (Tool Offset Check.)
IF [#2005 GT #1] GOTO 199
#3000 = 100 (Tool 5 offset needs to be set!)


N60 (Tool 6)
IF [#18 LT 1] GOTO 62 (If Macro Argument 'R' or #18 is not set than skip the probing Operation.)
(Probing Operation)
IF [#51806 LT #1] GOTO 61 (Safety check for a reasonable 'Approximate Length'.)
G65 P9853 T[#20] B0. H0.1
GOTO 62
N61 (Else Throw Error.)
#3000 = 100 (Tool 6 Approximate Length needs to be set!)
N62 (Tool Offset Check.)
IF [#2006 GT #1] GOTO 199
#3000 = 100 (Tool 6 offset needs to be set!)


N70 (Tool 7)
IF [#18 LT 1] GOTO 72 (If Macro Argument 'R' or #18 is not set than skip the probing Operation.)
(Probing Operation)
IF [#51807 LT #1] GOTO 71 (Safety check for a reasonable 'Approximate Length'.)
G65 P9853 T[#20] B0. H0.1
GOTO 72
N71 (Else Throw Error.)
#3000 = 100 (Tool 7 Approximate Length needs to be set!)
N72 (Tool Offset Check.)
IF [#2007 GT #1] GOTO 199
#3000 = 100 (Tool 7 offset needs to be set!)


N80 (Tool 8)
IF [#18 LT 1] GOTO 82 (If Macro Argument 'R' or #18 is not set than skip the probing Operation.)
(Probing Operation)
IF [#51808 LT #1] GOTO 81 (Safety check for a reasonable 'Approximate Length'.)
G65 P9853 T[#20] B0. H0.1
GOTO 82
N81 (Else Throw Error.)
#3000 = 100 (Tool 8 Approximate Length needs to be set!)
N82 (Tool Offset Check.)
IF [#2008 GT #1] GOTO 199
#3000 = 100 (Tool 8 offset needs to be set!)


N90 (Tool 9)
IF [#18 LT 1] GOTO 92 (If Macro Argument 'R' or #18 is not set than skip the probing Operation.)
(Probing Operation)
IF [#51809 LT #1] GOTO 91 (Safety check for a reasonable 'Approximate Length'.)
G65 P9853 T[#20] B0. H0.1
GOTO 92
N91 (Else Throw Error.)
#3000 = 100 (Tool 9 Approximate Length needs to be set!)
N92 (Tool Offset Check.)
IF [#2009 GT #1] GOTO 199
#3000 = 100 (Tool 9 offset needs to be set!)


N100 (Tool 10)
IF [#18 LT 1] GOTO 102 (If Macro Argument 'R' or #18 is not set than skip the probing Operation.)
(Probing Operation)
IF [#51810 LT #1] GOTO 101 (Safety check for a reasonable 'Approximate Length'.)
G65 P9853 T[#20] B0. H0.1
GOTO 102
N101 (Else Throw Error.)
#3000 = 100 (Tool 10 Approximate Length needs to be set!)
N102 (Tool Offset Check.)
IF [#2010 GT #1] GOTO 199
#3000 = 100 (Tool 10 offset needs to be set!)


N199
M99
(---END MAIN-------------------------------------------------)

