%
O01587

(------Verify that Tools are Properly Setup------------------)
(This is a simple way to check the tool for wear and make sure that the offsets are accurate before starting milling operations.)

(Accepted Macro Arguments:)
('T' Required: The tool number to be checked. T is local variable #20.)
('R' Not Required: 1 - will Re-Probe the tool before checking the offset. 0 - Does nothing. R is local variable #18.)
('M' Not Required: The minimum tool length, a tool length below this will throw an error, above will pass the check. Default value of 3.1. M is local variable #13.)


(---MAIN-----------------------------------------------------)

IF [#20 GT 0] GOTO 1
IF [#20 GT 200] GOTO 
#3000 = 100 (Macro Argument T not set!)

N1 (Minimum Tool Length)
IF [#13 GT 3.1] GOTO 2
#13 = 3.1
GOTO 2

N2 
(TODO: Find a way to check for integers. What happens if a decimal is passed in? Currently this only works for the Mini Mill with 10 tools.)
IF #20 EQ 1 GOTO 10
IF #20 EQ 2 GOTO 10
IF #20 EQ 3 GOTO 10
IF #20 EQ 4 GOTO 10
IF #20 EQ 5 GOTO 10
IF #20 EQ 6 GOTO 10
IF #20 EQ 7 GOTO 10
IF #20 EQ 8 GOTO 10
IF #20 EQ 9 GOTO 10
IF #20 EQ 10 GOTO 10

N3
#3000 = #20 (Invalid Tool Number!)


N10 
(If Macro Argument 'R' or #18 is not set than skip the probing Operation.)
IF [#18 LT 1] GOTO 12 

(Probing Operation)
IF [#[ 51800 + #20] LT #1] GOTO 11 (Safety check for a reasonable 'Approximate Length'.)
G00 G17 G40 G49 G80 G90
T[#20] M6 (Switch to the correct tool.)
G65 P9995 A0. B[#[ 50000 + #20]] C[#[ 52600 + #20]] T[#20] E[#[ 51800 + #20]] D[#[ 52000 + #20]] K[#[ 52200 + #20]]
GOTO 12

N11 (Else Throw Error.)
#3000 = #20 (Tool Approximate Length needs to be set!)

N12 (Tool Offset Check.)
IF [#[ 2000 + #20] GT #1] GOTO 99
#3000 = #20 (Tool Length Offset needs to be set!)


N99
M99
(---END MAIN-------------------------------------------------)

