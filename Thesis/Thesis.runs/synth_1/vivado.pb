
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:072

00:00:082	
500.1172	
219.629Z17-268h px� 
�
Command: %s
1870*	planAhead2
}read_checkpoint -auto_incremental -incremental {E:/Seth stuff/Thesis/Thesis/Thesis.srcs/utils_1/imports/synth_1/impl_top.dcp}Z12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2N
LE:/Seth stuff/Thesis/Thesis/Thesis.srcs/utils_1/imports/synth_1/impl_top.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
c
Command: %s
53*	vivadotcl22
0synth_design -top impl_top -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
26800Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1339.148 ; gain = 440.297
h px� 
�
converting %s to %s4549*oasys2
concatenation2
assignment pattern2E
AE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/impl_top.sv2
628@Z8-6716h px� 
�
.identifier '%s' is used before its declaration4750*oasys2
ld2E
AE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/impl_top.sv2
428@Z8-6901h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2	
add_clk2
wire2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
508@Z8-11241h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2
SEGMENT_INDEX2N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
258@Z8-9661h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2

MULT_COUNT2N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
268@Z8-9661h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2
	ADD_COUNT2N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
278@Z8-9661h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2
	ADD_COUNT2H
DE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Buffer_Port.sv2
268@Z8-9661h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2

MOD_MASK2H
DE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Buffer_Port.sv2
278@Z8-9661h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2	
PORT_ID2H
DE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Buffer_Port.sv2
288@Z8-9661h px� 
�
'%s' is not declared36*oasys2
i_tail2H
DE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Buffer_Port.sv2
468@Z8-36h px� 
�
'%s' is not declared36*oasys2
i_tail2H
DE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Buffer_Port.sv2
608@Z8-36h px� 
�
)%s '%s' is ignored due to previous errors6546*oasys2
module2
Buffer_Port2H
DE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Buffer_Port.sv2
658@Z8-10285h px� 
�
'Verilog file '%s' ignored due to errors5342*oasys2F
DE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Buffer_Port.svZ8-9084h px� 
�
synthesizing module '%s'%s4497*oasys2

impl_top2
 2E
AE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/impl_top.sv2
328@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
Accordian_Buffer2
 2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
278@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
Accordian_Segment2
 2N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6157h px� 
P
%s
*synth28
6	Parameter SEGMENT_INDEX bound to: 0 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 8 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter ADD_COUNT bound to: 4 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Accordian_Segment2
 2
02
12N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
i_pull2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
868@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322	
i_clear2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
878@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2#
!Accordian_Segment__parameterized02
 2N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6157h px� 
P
%s
*synth28
6	Parameter SEGMENT_INDEX bound to: 1 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 8 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter ADD_COUNT bound to: 4 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!Accordian_Segment__parameterized02
 2
02
12N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
i_pull2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
628@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322	
i_clear2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
638@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2#
!Accordian_Segment__parameterized12
 2N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6157h px� 
P
%s
*synth28
6	Parameter SEGMENT_INDEX bound to: 2 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 8 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter ADD_COUNT bound to: 4 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!Accordian_Segment__parameterized12
 2
02
12N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
i_pull2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
628@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322	
i_clear2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
638@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2#
!Accordian_Segment__parameterized22
 2N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6157h px� 
P
%s
*synth28
6	Parameter SEGMENT_INDEX bound to: 3 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 8 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter ADD_COUNT bound to: 4 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!Accordian_Segment__parameterized22
 2
02
12N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
i_pull2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
628@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322	
i_clear2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
638@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2#
!Accordian_Segment__parameterized32
 2N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6157h px� 
P
%s
*synth28
6	Parameter SEGMENT_INDEX bound to: 4 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 8 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter ADD_COUNT bound to: 4 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!Accordian_Segment__parameterized32
 2
02
12N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
i_pull2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
628@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322	
i_clear2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
638@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2#
!Accordian_Segment__parameterized42
 2N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6157h px� 
P
%s
*synth28
6	Parameter SEGMENT_INDEX bound to: 5 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 8 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter ADD_COUNT bound to: 4 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!Accordian_Segment__parameterized42
 2
02
12N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
i_pull2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
628@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322	
i_clear2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
638@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2#
!Accordian_Segment__parameterized52
 2N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6157h px� 
P
%s
*synth28
6	Parameter SEGMENT_INDEX bound to: 6 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 8 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter ADD_COUNT bound to: 4 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!Accordian_Segment__parameterized52
 2
02
12N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
i_pull2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
628@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322	
i_clear2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
638@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2#
!Accordian_Segment__parameterized62
 2N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6157h px� 
P
%s
*synth28
6	Parameter SEGMENT_INDEX bound to: 7 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 8 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter ADD_COUNT bound to: 4 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
!Accordian_Segment__parameterized62
 2
02
12N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
248@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322
i_pull2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
628@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322	
i_clear2
12
Accordian_Segment2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
638@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
Simple_Adder2
 2I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Simple_Adder2
 2
02
12I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Accordian_Buffer2
 2
02
12L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
278@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322	
i_clear2
12
Accordian_Buffer2E
AE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/impl_top.sv2
688@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
Output_Buffer2
 2J
FE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Output_Buffer.sv2
238@Z8-6157h px� 
�
module '%s' not found439*oasys2
Buffer_Port2J
FE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Output_Buffer.sv2
708@Z8-439h px� 
M
%s
*synth25
3	Parameter BUFF_SIZE bound to: 32 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter MOD_MASK bound to: 31 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter ADD_COUNT bound to: 4 - type: integer 
h p
x
� 
^
%s
*synth2F
D	Parameter PORT_ID bound to: 32'sb00000000000000000000000000000000 
h p
x
� 
�
:conditional expression could not be resolved to a constant196*oasys2J
FE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Output_Buffer.sv2
678@Z8-196h px� 
�
!failed synthesizing module '%s'%s4496*oasys2
Output_Buffer2
 2J
FE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Output_Buffer.sv2
238@Z8-6156h px� 
�
!failed synthesizing module '%s'%s4496*oasys2

impl_top2
 2E
AE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/impl_top.sv2
328@Z8-6156h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1447.902 ; gain = 549.051
h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
352
252
02
7Z4-41h px� 
<

%s failed
30*	vivadotcl2
synth_designZ4-43h px� 
|
Command failed: %s
69*common2G
ESynthesis failed - please see the console or run log file for detailsZ17-69h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Dec 17 16:02:10 2024Z17-206h px� 


End Record