
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:082

00:00:122	
502.9772	
221.969Z17-268h px� 
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
14496Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:09 . Memory (MB): peak = 1347.613 ; gain = 440.273
h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2
SEGMENT_INDEX2N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
258@Z8-9661h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2
	SEG_COUNT2N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
268@Z8-9661h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2

MULT_COUNT2N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
278@Z8-9661h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2
	ADD_COUNT2N
JE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Accordian_segment.sv2
288@Z8-9661h px� 
�
@concatenation with an unsized literal will be treated as 32 bits6865*oasys2I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
408@Z8-10604h px� 
�
@concatenation with an unsized literal will be treated as 32 bits6865*oasys2I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
408@Z8-10604h px� 
�
@concatenation with an unsized literal will be treated as 32 bits6865*oasys2I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
408@Z8-10604h px� 
�
@concatenation with an unsized literal will be treated as 32 bits6865*oasys2I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
408@Z8-10604h px� 
�
@concatenation with an unsized literal will be treated as 32 bits6865*oasys2I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
408@Z8-10604h px� 
�
@concatenation with an unsized literal will be treated as 32 bits6865*oasys2I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
408@Z8-10604h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2
	PAGE_SIZE2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
258@Z8-9661h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2
MULTIPLIER_INDEX2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
268@Z8-9661h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2

MULT_COUNT2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
278@Z8-9661h px� 
�
@concatenation with an unsized literal will be treated as 32 bits6865*oasys2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
488@Z8-10604h px� 
�
@concatenation with an unsized literal will be treated as 32 bits6865*oasys2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
488@Z8-10604h px� 
�
@concatenation with an unsized literal will be treated as 32 bits6865*oasys2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
488@Z8-10604h px� 
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
*initial value of parameter '%s' is omitted5919*oasys2

MULT_COUNT2D
@E:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Indexer.sv2
258@Z8-9661h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2
	PAGE_SIZE2P
LE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplication_Core.sv2
248@Z8-9661h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2

MULT_COUNT2P
LE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplication_Core.sv2
258@Z8-9661h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2

SEGMENTS2J
FE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Addition_Core.sv2
258@Z8-9661h px� 
�
*initial value of parameter '%s' is omitted5919*oasys2

MULT_COUNT2K
GE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/mem_controller.sv2
598@Z8-9661h px� 
�
synthesizing module '%s'%s4497*oasys2

impl_top2
 2E
AE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/impl_top.sv2
268@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
mem_controller2
 2K
GE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/mem_controller.sv2
568@Z8-6157h px� 
L
%s
*synth24
2	Parameter PAGE_SIZE bound to: 4 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 4 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
blk_mem_gen_02
 2s
oE:/Seth stuff/Thesis/Thesis/Thesis.runs/synth_1/.Xil/Vivado-29104-WINDOWS-RV84OD0/realtime/blk_mem_gen_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
blk_mem_gen_02
 2
02
12s
oE:/Seth stuff/Thesis/Thesis/Thesis.runs/synth_1/.Xil/Vivado-29104-WINDOWS-RV84OD0/realtime/blk_mem_gen_0_stub.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mem_controller2
 2
02
12K
GE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/mem_controller.sv2
568@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Multiplication_Core2
 2P
LE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplication_Core.sv2
238@Z8-6157h px� 
L
%s
*synth24
2	Parameter PAGE_SIZE bound to: 4 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 4 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
Multiplier_Unit2
 2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
248@Z8-6157h px� 
L
%s
*synth24
2	Parameter PAGE_SIZE bound to: 4 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter MULTIPLIER_INDEX bound to: 0 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 4 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
Mult_Comp_Unit2
 2K
GE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Mult_Comp_Unit.sv2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Mult_Comp_Unit2
 2
02
12K
GE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Mult_Comp_Unit.sv2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Multiplier_Unit2
 2
02
12L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
Multiplier_Unit__parameterized02
 2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
248@Z8-6157h px� 
L
%s
*synth24
2	Parameter PAGE_SIZE bound to: 4 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter MULTIPLIER_INDEX bound to: 1 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 4 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
Multiplier_Unit__parameterized02
 2
02
12L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
Multiplier_Unit__parameterized12
 2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
248@Z8-6157h px� 
L
%s
*synth24
2	Parameter PAGE_SIZE bound to: 4 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter MULTIPLIER_INDEX bound to: 2 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 4 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
Multiplier_Unit__parameterized12
 2
02
12L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
Multiplier_Unit__parameterized22
 2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
248@Z8-6157h px� 
L
%s
*synth24
2	Parameter PAGE_SIZE bound to: 4 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter MULTIPLIER_INDEX bound to: 3 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 4 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
Multiplier_Unit__parameterized22
 2
02
12L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
Indexer2
 2D
@E:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Indexer.sv2
248@Z8-6157h px� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 4 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
Indexer2
 2
02
12D
@E:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Indexer.sv2
248@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Multiplication_Core2
 2
02
12P
LE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplication_Core.sv2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Accordian_Buffer2
 2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
278@Z8-6157h px� 
K
%s
*synth23
1	Parameter SEGMENTS bound to: 4 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter MULTIPLIERS bound to: 4 - type: integer 
h p
x
� 
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
L
%s
*synth24
2	Parameter SEG_COUNT bound to: 4 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 4 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter ADD_COUNT bound to: 2 - type: integer 
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
L
%s
*synth24
2	Parameter SEG_COUNT bound to: 4 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 4 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter ADD_COUNT bound to: 2 - type: integer 
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
L
%s
*synth24
2	Parameter SEG_COUNT bound to: 4 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 4 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter ADD_COUNT bound to: 2 - type: integer 
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
L
%s
*synth24
2	Parameter SEG_COUNT bound to: 4 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter MULT_COUNT bound to: 4 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter ADD_COUNT bound to: 2 - type: integer 
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
synthesizing module '%s'%s4497*oasys2
Addition_Core2
 2J
FE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Addition_Core.sv2
248@Z8-6157h px� 
K
%s
*synth23
1	Parameter SEGMENTS bound to: 4 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter ADD_COUNT bound to: 2 - type: integer 
h p
x
� 
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
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Addition_Core2
 2
02
12J
FE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Addition_Core.sv2
248@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Accordian_Buffer2
 2
02
12L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/AccordianBuffer.sv2
278@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
output_memory_controller2
 2U
QE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/output_memory_controller.sv2
238@Z8-6157h px� 
L
%s
*synth24
2	Parameter ADD_COUNT bound to: 2 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter PAGE_SIZE bound to: 4 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
blk_mem_gen_12
 2s
oE:/Seth stuff/Thesis/Thesis/Thesis.runs/synth_1/.Xil/Vivado-29104-WINDOWS-RV84OD0/realtime/blk_mem_gen_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
blk_mem_gen_12
 2
02
12s
oE:/Seth stuff/Thesis/Thesis/Thesis.runs/synth_1/.Xil/Vivado-29104-WINDOWS-RV84OD0/realtime/blk_mem_gen_1_stub.v2
68@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
142
addrb2
122
blk_mem_gen_12U
QE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/output_memory_controller.sv2
698@Z8-689h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
douta2
blk_mem_gen_12
bram2U
QE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/output_memory_controller.sv2
618@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
bram2
blk_mem_gen_12
102
92U
QE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/output_memory_controller.sv2
618@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
output_memory_controller2
 2
02
12U
QE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/output_memory_controller.sv2
238@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
162
	read_data2
322
output_memory_controller2E
AE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/impl_top.sv2
1648@Z8-689h px� 
�
-case statement is not full and has no default155*oasys2E
AE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/impl_top.sv2
1908@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

impl_top2
 2
02
12E
AE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/impl_top.sv2
268@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
L_addr_sel_reg2K
GE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/mem_controller.sv2
1328@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
R_addr_sel_reg2K
GE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/mem_controller.sv2
1608@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
res_check_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1638@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
get_mul_res_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1648@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
curr_L_val_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
2768@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
curr_R_val_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
2778@Z8-6014h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2

m_pull_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1118@Z8-87h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
o_end2
Multiplier_Unit2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
508@Z8-3848h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
res_check_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1638@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
get_mul_res_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1648@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
curr_L_val_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
2768@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
curr_R_val_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
2778@Z8-6014h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2

m_pull_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1118@Z8-87h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
o_end2!
Multiplier_Unit__parameterized02L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
508@Z8-3848h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
res_check_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1638@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
get_mul_res_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1648@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
curr_L_val_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
2768@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
curr_R_val_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
2778@Z8-6014h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2

m_pull_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1118@Z8-87h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
o_end2!
Multiplier_Unit__parameterized12L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
508@Z8-3848h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
res_check_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1638@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
get_mul_res_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1648@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
curr_L_val_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
2768@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
curr_R_val_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
2778@Z8-6014h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2

m_pull_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1118@Z8-87h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
o_end2!
Multiplier_Unit__parameterized22L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
508@Z8-3848h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
A_val_reg[is_end]2I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
698@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
A_val_reg[is_head]2I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
698@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
A_val_reg[is_tail]2I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
698@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
A_val_reg[val]2I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
698@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
B_val_reg[is_end]2I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
708@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
B_val_reg[is_head]2I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
708@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
B_val_reg[is_tail]2I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
708@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
B_val_reg[val]2I
EE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Simple_Adder.sv2
708@Z8-6014h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2
	clear_reg2E
AE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/impl_top.sv2
1428@Z8-87h px� 
�
9always_comb on '%s' did not result in combinational logic87*oasys2
next_state_reg2E
AE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/impl_top.sv2
1938@Z8-87h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
o_TxD2

impl_top2E
AE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/impl_top.sv2
358@Z8-3848h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][31]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][30]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][29]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][28]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][27]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][26]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][25]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][24]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][23]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][22]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][21]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][20]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][19]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][18]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][17]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][16]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][15]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][14]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][13]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][12]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][11]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][10]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][9]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][8]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][7]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][6]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][5]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][4]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][3]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][2]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][1]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_vals[1][0]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_read_addr[15]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
i_read_addr[14]2
output_memory_controllerZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[31]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[30]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[29]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[28]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[27]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[26]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[25]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[24]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[23]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[22]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[21]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[20]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[19]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[18]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[17]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[16]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[15]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[14]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[13]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[12]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[11]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[10]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[9]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[8]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[7]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[6]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[5]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[4]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[3]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[2]2#
!Accordian_Segment__parameterized2Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[31]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[30]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[29]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[28]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[27]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[26]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[25]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[24]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[23]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[22]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[21]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[20]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[19]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[18]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[17]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[16]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[15]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[14]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[13]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[12]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[11]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[10]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[9]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[8]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[7]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[6]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[5]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[4]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[3]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	i_pops[2]2#
!Accordian_Segment__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[31]2#
!Accordian_Segment__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[30]2#
!Accordian_Segment__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[29]2#
!Accordian_Segment__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[28]2#
!Accordian_Segment__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[27]2#
!Accordian_Segment__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

i_pops[26]2#
!Accordian_Segment__parameterized0Z8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:13 . Memory (MB): peak = 1492.988 ; gain = 585.648
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:09 ; elapsed = 00:00:13 . Memory (MB): peak = 1492.988 ; gain = 585.648
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:13 . Memory (MB): peak = 1492.988 ; gain = 585.648
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.1592

1492.9882
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2p
le:/Seth stuff/Thesis/Thesis/Thesis.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1/blk_mem_gen_1_in_context.xdc2
output_controller/bram	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2p
le:/Seth stuff/Thesis/Thesis/Thesis.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1/blk_mem_gen_1_in_context.xdc2
output_controller/bram	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2p
le:/Seth stuff/Thesis/Thesis/Thesis.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2
input_mem/bram	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2p
le:/Seth stuff/Thesis/Thesis/Thesis.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2
input_mem/bram	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2K
GE:/Seth stuff/Thesis/Thesis/Thesis.srcs/constrs_1/new/Basys3_Master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2K
GE:/Seth stuff/Thesis/Thesis/Thesis.srcs/constrs_1/new/Basys3_Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2I
GE:/Seth stuff/Thesis/Thesis/Thesis.srcs/constrs_1/new/Basys3_Master.xdc2
.Xil/impl_top_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1530.1482
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0402

1530.1482
0.000Z17-268h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002
input_mem/bram2
clka2
10.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002
output_controller/bram2
clka2
10.000Z38-316h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:20 ; elapsed = 00:00:25 . Memory (MB): peak = 1536.242 ; gain = 628.902
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:20 ; elapsed = 00:00:25 . Memory (MB): peak = 1536.242 ; gain = 628.902
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:25 . Memory (MB): peak = 1536.242 ; gain = 628.902
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
3inferred FSM for state register '%s' in module '%s'802*oasys2
curr_state_reg2	
IndexerZ8-802h px� 
q
3inferred FSM for state register '%s' in module '%s'802*oasys2
curr_state_reg2

impl_topZ8-802h px� 
�
!inferring latch for variable '%s'327*oasys2

m_pull_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1118@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2

m_pull_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1118@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2

m_pull_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1118@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2

m_pull_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1118@Z8-327h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    IDLE |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                STARTING |                               01 |                               01
h p
x
� 
y
%s
*synth2a
_                  ACTIVE |                               10 |                               10
h p
x
� 
y
%s
*synth2a
_                  ENDING |                               11 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
curr_state_reg2

sequential2	
IndexerZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
	clear_reg2E
AE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/impl_top.sv2
1428@Z8-327h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    IDLE |                                0 |                               00
h p
x
� 
y
%s
*synth2a
_                  ACTIVE |                                1 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
curr_state_reg2

sequential2

impl_topZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
FSM_sequential_next_state_reg2E
AE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/impl_top.sv2
1938@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:22 ; elapsed = 00:00:27 . Memory (MB): peak = 1536.242 ; gain = 628.902
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 19    
h p
x
� 
F
%s
*synth2.
,	   4 Input   32 Bit       Adders := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 43    
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 7     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 8     
h p
x
� 
F
%s
*synth2.
,	   3 Input    2 Bit       Adders := 5     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit       Adders := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 81    
h p
x
� 
H
%s
*synth20
.	               12 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 18    
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 80    
h p
x
� 
-
%s
*synth2
+---Multipliers : 
h p
x
� 
F
%s
*synth2.
,	              32x32  Multipliers := 12    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   4 Input   32 Bit        Muxes := 37    
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit        Muxes := 8     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 53    
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   3 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 15    
h p
x
� 
F
%s
*synth2.
,	   6 Input    2 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 17    
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 189   
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 192   
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 15    
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
mul_gen[0].mult/z_reg2L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
888@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
mul_gen[0].mult/next_R_dex02L
HE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Multiplier_Unit.sv2
1018@Z8-6014h px� 
Y
%s
*synth2A
?DSP Report: Generating DSP o_result0, operation Mode is: A2*B.
h p
x
� 
Y
%s
*synth2A
?DSP Report: register o_result0 is absorbed into DSP o_result0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator o_result0 is absorbed into DSP o_result0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator o_result0 is absorbed into DSP o_result0.
h p
x
� 
f
%s
*synth2N
LDSP Report: Generating DSP o_result_reg, operation Mode is: (PCIN>>17)+A*B.
h p
x
� 
_
%s
*synth2G
EDSP Report: register o_result_reg is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
Z
%s
*synth2B
@DSP Report: Generating DSP o_result0, operation Mode is: A2*B2.
h p
x
� 
Y
%s
*synth2A
?DSP Report: register o_result0 is absorbed into DSP o_result0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: register o_result0 is absorbed into DSP o_result0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator o_result0 is absorbed into DSP o_result0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator o_result0 is absorbed into DSP o_result0.
h p
x
� 
g
%s
*synth2O
MDSP Report: Generating DSP o_result_reg, operation Mode is: (PCIN>>17)+A2*B.
h p
x
� 
_
%s
*synth2G
EDSP Report: register o_result_reg is absorbed into DSP o_result_reg.
h p
x
� 
_
%s
*synth2G
EDSP Report: register o_result_reg is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
o_result_reg2
482
152K
GE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Mult_Comp_Unit.sv2
438@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
o_result_reg2
482
152K
GE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Mult_Comp_Unit.sv2
438@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
o_result_reg2
482
172K
GE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Mult_Comp_Unit.sv2
438@Z8-3936h px� 
_
%s
*synth2G
EDSP Report: Generating DSP o_result_reg, operation Mode is: (A2*B)'.
h p
x
� 
_
%s
*synth2G
EDSP Report: register o_result_reg is absorbed into DSP o_result_reg.
h p
x
� 
_
%s
*synth2G
EDSP Report: register o_result_reg is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
Z
%s
*synth2B
@DSP Report: Generating DSP o_result0, operation Mode is: A2*B2.
h p
x
� 
Y
%s
*synth2A
?DSP Report: register o_result0 is absorbed into DSP o_result0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: register o_result0 is absorbed into DSP o_result0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator o_result0 is absorbed into DSP o_result0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator o_result0 is absorbed into DSP o_result0.
h p
x
� 
g
%s
*synth2O
MDSP Report: Generating DSP o_result_reg, operation Mode is: (PCIN>>17)+A2*B.
h p
x
� 
\
%s
*synth2D
BDSP Report: register o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
_
%s
*synth2G
EDSP Report: register o_result_reg is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
	o_result02
172
152K
GE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Mult_Comp_Unit.sv2
438@Z8-3936h px� 
_
%s
*synth2G
EDSP Report: Generating DSP o_result_reg, operation Mode is: (A*B2)'.
h p
x
� 
_
%s
*synth2G
EDSP Report: register o_result_reg is absorbed into DSP o_result_reg.
h p
x
� 
_
%s
*synth2G
EDSP Report: register o_result_reg is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
Z
%s
*synth2B
@DSP Report: Generating DSP o_result0, operation Mode is: A2*B2.
h p
x
� 
Y
%s
*synth2A
?DSP Report: register o_result0 is absorbed into DSP o_result0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: register o_result0 is absorbed into DSP o_result0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator o_result0 is absorbed into DSP o_result0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator o_result0 is absorbed into DSP o_result0.
h p
x
� 
g
%s
*synth2O
MDSP Report: Generating DSP o_result_reg, operation Mode is: (PCIN>>17)+A2*B.
h p
x
� 
\
%s
*synth2D
BDSP Report: register o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
_
%s
*synth2G
EDSP Report: register o_result_reg is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
o_result_reg2
172
152K
GE:/Seth stuff/Thesis/Thesis/Thesis.srcs/sources_1/new/Mult_Comp_Unit.sv2
438@Z8-3936h px� 
_
%s
*synth2G
EDSP Report: Generating DSP o_result_reg, operation Mode is: (A*B2)'.
h p
x
� 
_
%s
*synth2G
EDSP Report: register o_result_reg is absorbed into DSP o_result_reg.
h p
x
� 
_
%s
*synth2G
EDSP Report: register o_result_reg is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
Z
%s
*synth2B
@DSP Report: Generating DSP o_result0, operation Mode is: A2*B2.
h p
x
� 
Y
%s
*synth2A
?DSP Report: register o_result0 is absorbed into DSP o_result0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: register o_result0 is absorbed into DSP o_result0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator o_result0 is absorbed into DSP o_result0.
h p
x
� 
Y
%s
*synth2A
?DSP Report: operator o_result0 is absorbed into DSP o_result0.
h p
x
� 
g
%s
*synth2O
MDSP Report: Generating DSP o_result_reg, operation Mode is: (PCIN>>17)+A2*B.
h p
x
� 
\
%s
*synth2D
BDSP Report: register o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
_
%s
*synth2G
EDSP Report: register o_result_reg is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
\
%s
*synth2D
BDSP Report: operator o_result0 is absorbed into DSP o_result_reg.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[0].mult/next_L_dex0, operation Mode is: A2*B2.
h p
x
� 
w
%s
*synth2_
]DSP Report: register mul_gen[0].mult/x_reg is absorbed into DSP mul_gen[0].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[0].mult/next_L_dex0 is absorbed into DSP mul_gen[0].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[0].mult/next_L_dex0 is absorbed into DSP mul_gen[0].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[0].mult/next_L_dex0 is absorbed into DSP mul_gen[0].mult/next_L_dex0.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[0].mult/next_L_dex0, operation Mode is: A2*B2.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[0].mult/next_L_dex0 is absorbed into DSP mul_gen[0].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[0].mult/next_L_dex0 is absorbed into DSP mul_gen[0].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[0].mult/next_L_dex0 is absorbed into DSP mul_gen[0].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[0].mult/next_L_dex0 is absorbed into DSP mul_gen[0].mult/next_L_dex0.
h p
x
� 
v
%s
*synth2^
\DSP Report: Generating DSP mul_gen[0].mult/next_L_dex0, operation Mode is: (PCIN>>17)+A2*B.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[0].mult/next_L_dex0 is absorbed into DSP mul_gen[0].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[0].mult/next_L_dex0 is absorbed into DSP mul_gen[0].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[0].mult/next_L_dex0 is absorbed into DSP mul_gen[0].mult/next_L_dex0.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[0].mult/next_R_dex0, operation Mode is: A2*B2.
h p
x
� 
y
%s
*synth2a
_DSP Report: register mul_gen[0].mult/c_z_reg is absorbed into DSP mul_gen[0].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[0].mult/next_R_dex0 is absorbed into DSP mul_gen[0].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[0].mult/next_R_dex0 is absorbed into DSP mul_gen[0].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[0].mult/next_R_dex0 is absorbed into DSP mul_gen[0].mult/next_R_dex0.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[0].mult/next_R_dex0, operation Mode is: A2*B2.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[0].mult/next_R_dex0 is absorbed into DSP mul_gen[0].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[0].mult/next_R_dex0 is absorbed into DSP mul_gen[0].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[0].mult/next_R_dex0 is absorbed into DSP mul_gen[0].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[0].mult/next_R_dex0 is absorbed into DSP mul_gen[0].mult/next_R_dex0.
h p
x
� 
v
%s
*synth2^
\DSP Report: Generating DSP mul_gen[0].mult/next_R_dex0, operation Mode is: (PCIN>>17)+A2*B.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[0].mult/next_R_dex0 is absorbed into DSP mul_gen[0].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[0].mult/next_R_dex0 is absorbed into DSP mul_gen[0].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[0].mult/next_R_dex0 is absorbed into DSP mul_gen[0].mult/next_R_dex0.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[1].mult/next_L_dex0, operation Mode is: A2*B2.
h p
x
� 
w
%s
*synth2_
]DSP Report: register mul_gen[1].mult/x_reg is absorbed into DSP mul_gen[1].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[1].mult/next_L_dex0 is absorbed into DSP mul_gen[1].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[1].mult/next_L_dex0 is absorbed into DSP mul_gen[1].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[1].mult/next_L_dex0 is absorbed into DSP mul_gen[1].mult/next_L_dex0.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[1].mult/next_L_dex0, operation Mode is: A2*B2.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[1].mult/next_L_dex0 is absorbed into DSP mul_gen[1].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[1].mult/next_L_dex0 is absorbed into DSP mul_gen[1].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[1].mult/next_L_dex0 is absorbed into DSP mul_gen[1].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[1].mult/next_L_dex0 is absorbed into DSP mul_gen[1].mult/next_L_dex0.
h p
x
� 
v
%s
*synth2^
\DSP Report: Generating DSP mul_gen[1].mult/next_L_dex0, operation Mode is: (PCIN>>17)+A2*B.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[1].mult/next_L_dex0 is absorbed into DSP mul_gen[1].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[1].mult/next_L_dex0 is absorbed into DSP mul_gen[1].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[1].mult/next_L_dex0 is absorbed into DSP mul_gen[1].mult/next_L_dex0.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[1].mult/next_R_dex0, operation Mode is: A2*B2.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[1].mult/next_R_dex0 is absorbed into DSP mul_gen[1].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[1].mult/next_R_dex0 is absorbed into DSP mul_gen[1].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[1].mult/next_R_dex0 is absorbed into DSP mul_gen[1].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[1].mult/next_R_dex0 is absorbed into DSP mul_gen[1].mult/next_R_dex0.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[1].mult/next_R_dex0, operation Mode is: A2*B2.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[1].mult/next_R_dex0 is absorbed into DSP mul_gen[1].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[1].mult/next_R_dex0 is absorbed into DSP mul_gen[1].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[1].mult/next_R_dex0 is absorbed into DSP mul_gen[1].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[1].mult/next_R_dex0 is absorbed into DSP mul_gen[1].mult/next_R_dex0.
h p
x
� 
v
%s
*synth2^
\DSP Report: Generating DSP mul_gen[1].mult/next_R_dex0, operation Mode is: (PCIN>>17)+A2*B.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[1].mult/next_R_dex0 is absorbed into DSP mul_gen[1].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[1].mult/next_R_dex0 is absorbed into DSP mul_gen[1].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[1].mult/next_R_dex0 is absorbed into DSP mul_gen[1].mult/next_R_dex0.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[2].mult/next_L_dex0, operation Mode is: A2*B2.
h p
x
� 
w
%s
*synth2_
]DSP Report: register mul_gen[2].mult/x_reg is absorbed into DSP mul_gen[2].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[2].mult/next_L_dex0 is absorbed into DSP mul_gen[2].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[2].mult/next_L_dex0 is absorbed into DSP mul_gen[2].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[2].mult/next_L_dex0 is absorbed into DSP mul_gen[2].mult/next_L_dex0.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[2].mult/next_L_dex0, operation Mode is: A2*B2.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[2].mult/next_L_dex0 is absorbed into DSP mul_gen[2].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[2].mult/next_L_dex0 is absorbed into DSP mul_gen[2].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[2].mult/next_L_dex0 is absorbed into DSP mul_gen[2].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[2].mult/next_L_dex0 is absorbed into DSP mul_gen[2].mult/next_L_dex0.
h p
x
� 
v
%s
*synth2^
\DSP Report: Generating DSP mul_gen[2].mult/next_L_dex0, operation Mode is: (PCIN>>17)+A2*B.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[2].mult/next_L_dex0 is absorbed into DSP mul_gen[2].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[2].mult/next_L_dex0 is absorbed into DSP mul_gen[2].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[2].mult/next_L_dex0 is absorbed into DSP mul_gen[2].mult/next_L_dex0.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[2].mult/next_R_dex0, operation Mode is: A2*B2.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[2].mult/next_R_dex0 is absorbed into DSP mul_gen[2].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[2].mult/next_R_dex0 is absorbed into DSP mul_gen[2].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[2].mult/next_R_dex0 is absorbed into DSP mul_gen[2].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[2].mult/next_R_dex0 is absorbed into DSP mul_gen[2].mult/next_R_dex0.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[2].mult/next_R_dex0, operation Mode is: A2*B2.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[2].mult/next_R_dex0 is absorbed into DSP mul_gen[2].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[2].mult/next_R_dex0 is absorbed into DSP mul_gen[2].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[2].mult/next_R_dex0 is absorbed into DSP mul_gen[2].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[2].mult/next_R_dex0 is absorbed into DSP mul_gen[2].mult/next_R_dex0.
h p
x
� 
v
%s
*synth2^
\DSP Report: Generating DSP mul_gen[2].mult/next_R_dex0, operation Mode is: (PCIN>>17)+A2*B.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[2].mult/next_R_dex0 is absorbed into DSP mul_gen[2].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[2].mult/next_R_dex0 is absorbed into DSP mul_gen[2].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[2].mult/next_R_dex0 is absorbed into DSP mul_gen[2].mult/next_R_dex0.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[3].mult/next_L_dex0, operation Mode is: A2*B2.
h p
x
� 
w
%s
*synth2_
]DSP Report: register mul_gen[3].mult/x_reg is absorbed into DSP mul_gen[3].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[3].mult/next_L_dex0 is absorbed into DSP mul_gen[3].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[3].mult/next_L_dex0 is absorbed into DSP mul_gen[3].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[3].mult/next_L_dex0 is absorbed into DSP mul_gen[3].mult/next_L_dex0.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[3].mult/next_L_dex0, operation Mode is: A2*B2.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[3].mult/next_L_dex0 is absorbed into DSP mul_gen[3].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[3].mult/next_L_dex0 is absorbed into DSP mul_gen[3].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[3].mult/next_L_dex0 is absorbed into DSP mul_gen[3].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[3].mult/next_L_dex0 is absorbed into DSP mul_gen[3].mult/next_L_dex0.
h p
x
� 
v
%s
*synth2^
\DSP Report: Generating DSP mul_gen[3].mult/next_L_dex0, operation Mode is: (PCIN>>17)+A2*B.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[3].mult/next_L_dex0 is absorbed into DSP mul_gen[3].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[3].mult/next_L_dex0 is absorbed into DSP mul_gen[3].mult/next_L_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[3].mult/next_L_dex0 is absorbed into DSP mul_gen[3].mult/next_L_dex0.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[3].mult/next_R_dex0, operation Mode is: A2*B2.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[3].mult/next_R_dex0 is absorbed into DSP mul_gen[3].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[3].mult/next_R_dex0 is absorbed into DSP mul_gen[3].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[3].mult/next_R_dex0 is absorbed into DSP mul_gen[3].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[3].mult/next_R_dex0 is absorbed into DSP mul_gen[3].mult/next_R_dex0.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP mul_gen[3].mult/next_R_dex0, operation Mode is: A2*B2.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[3].mult/next_R_dex0 is absorbed into DSP mul_gen[3].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[3].mult/next_R_dex0 is absorbed into DSP mul_gen[3].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[3].mult/next_R_dex0 is absorbed into DSP mul_gen[3].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[3].mult/next_R_dex0 is absorbed into DSP mul_gen[3].mult/next_R_dex0.
h p
x
� 
v
%s
*synth2^
\DSP Report: Generating DSP mul_gen[3].mult/next_R_dex0, operation Mode is: (PCIN>>17)+A2*B.
h p
x
� 
}
%s
*synth2e
cDSP Report: register mul_gen[3].mult/next_R_dex0 is absorbed into DSP mul_gen[3].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[3].mult/next_R_dex0 is absorbed into DSP mul_gen[3].mult/next_R_dex0.
h p
x
� 
}
%s
*synth2e
cDSP Report: operator mul_gen[3].mult/next_R_dex0 is absorbed into DSP mul_gen[3].mult/next_R_dex0.
h p
x
� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2 
mul_gen[0].mult/next_R_dex0__02
Multiplication_CoreZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	clear_reg2

impl_topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
FSM_sequential_next_state_reg2

impl_topZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:47 ; elapsed = 00:00:53 . Memory (MB): peak = 1536.242 ; gain = 628.902
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
W
%s
*synth2?
= Sort Area is  o_result0_0 : 0 0 : 3137 5981 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  o_result0_0 : 0 1 : 2844 5981 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  o_result0_3 : 0 0 : 2777 5484 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  o_result0_3 : 0 1 : 2707 5484 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  o_result0_6 : 0 0 : 3137 4924 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  o_result0_6 : 0 1 : 1787 4924 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  o_result0_a : 0 0 : 3137 4924 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  o_result0_a : 0 1 : 1787 4924 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  o_result0_d : 0 0 : 3137 4924 : Used 1 time 0
h p
x
� 
W
%s
*synth2?
= Sort Area is  o_result0_d : 0 1 : 1787 4924 : Used 1 time 0
h p
x
� 
i
%s
*synth2Q
O Sort Area is  mul_gen[0].mult/next_L_dex0_f : 0 0 : 3137 4910 : Used 1 time 0
h p
x
� 
i
%s
*synth2Q
O Sort Area is  mul_gen[0].mult/next_L_dex0_f : 0 1 : 1773 4910 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[0].mult/next_R_dex0_13 : 0 0 : 3137 4910 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[0].mult/next_R_dex0_13 : 0 1 : 1773 4910 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[1].mult/next_L_dex0_15 : 0 0 : 3137 4910 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[1].mult/next_L_dex0_15 : 0 1 : 1773 4910 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[1].mult/next_R_dex0_17 : 0 0 : 3137 4910 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[1].mult/next_R_dex0_17 : 0 1 : 1773 4910 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[2].mult/next_L_dex0_19 : 0 0 : 3137 4910 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[2].mult/next_L_dex0_19 : 0 1 : 1773 4910 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[2].mult/next_R_dex0_1b : 0 0 : 3137 4910 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[2].mult/next_R_dex0_1b : 0 1 : 1773 4910 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[3].mult/next_L_dex0_1d : 0 0 : 3137 4910 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[3].mult/next_L_dex0_1d : 0 1 : 1773 4910 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[3].mult/next_R_dex0_1f : 0 0 : 3137 4910 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[3].mult/next_R_dex0_1f : 0 1 : 1773 4910 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[0].mult/next_L_dex0_11 : 0 0 : 2373 2373 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[0].mult/next_R_dex0_14 : 0 0 : 2373 2373 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[1].mult/next_L_dex0_16 : 0 0 : 2373 2373 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[1].mult/next_R_dex0_18 : 0 0 : 2373 2373 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[2].mult/next_L_dex0_1a : 0 0 : 2373 2373 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[2].mult/next_R_dex0_1c : 0 0 : 2373 2373 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[3].mult/next_L_dex0_1e : 0 0 : 2373 2373 : Used 1 time 0
h p
x
� 
j
%s
*synth2R
P Sort Area is  mul_gen[3].mult/next_R_dex0_20 : 0 0 : 2373 2373 : Used 1 time 0
h p
x
� 
Z
%s
*synth2B
@ Sort Area is  o_result_reg_8 : 0 0 : 2372 2372 : Used 1 time 0
h p
x
� 
Z
%s
*synth2B
@ Sort Area is  o_result_reg_b : 0 0 : 1787 1787 : Used 1 time 0
h p
x
� 
Z
%s
*synth2B
@ Sort Area is  o_result_reg_e : 0 0 : 1787 1787 : Used 1 time 0
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
v
%s*synth2^
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
h px� 
�
%s*synth2�
�+--------------------+-----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|Module Name         | DSP Mapping     | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h px� 
�
%s*synth2�
�+--------------------+-----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|Mult_Comp_Unit      | A2*B            | 18     | 16     | -      | -      | 48     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Mult_Comp_Unit      | (PCIN>>17)+A*B  | 16     | 16     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 1    | 
h px� 
�
%s*synth2�
�|Mult_Comp_Unit      | A2*B2           | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Mult_Comp_Unit      | (PCIN>>17)+A2*B | 18     | 16     | -      | -      | 48     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h px� 
�
%s*synth2�
�|Mult_Comp_Unit      | (A2*B)'         | 18     | 16     | -      | -      | 48     | 1    | 0    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
�|Mult_Comp_Unit      | A2*B2           | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Mult_Comp_Unit      | (PCIN>>17)+A2*B | 15     | 15     | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h px� 
�
%s*synth2�
�|Mult_Comp_Unit      | (A*B2)'         | 15     | 15     | -      | -      | 15     | 0    | 1    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
�|Mult_Comp_Unit      | A2*B2           | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Mult_Comp_Unit      | (PCIN>>17)+A2*B | 15     | 15     | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h px� 
�
%s*synth2�
�|Mult_Comp_Unit      | (A*B2)'         | 15     | 15     | -      | -      | 15     | 0    | 1    | -    | -    | -     | 1    | 0    | 
h px� 
�
%s*synth2�
�|Mult_Comp_Unit      | A2*B2           | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Mult_Comp_Unit      | (PCIN>>17)+A2*B | 15     | 15     | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 1    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 16     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | (PCIN>>17)+A2*B | 15     | 15     | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 16     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | (PCIN>>17)+A2*B | 15     | 15     | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 16     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | (PCIN>>17)+A2*B | 15     | 15     | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 16     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | (PCIN>>17)+A2*B | 15     | 15     | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 16     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | (PCIN>>17)+A2*B | 15     | 15     | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 16     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | (PCIN>>17)+A2*B | 15     | 15     | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 16     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | (PCIN>>17)+A2*B | 15     | 15     | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 16     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | A2*B2           | 18     | 18     | -      | -      | 48     | 1    | 1    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|Multiplication_Core | (PCIN>>17)+A2*B | 15     | 15     | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�+--------------------+-----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:58 ; elapsed = 00:01:04 . Memory (MB): peak = 1536.242 ; gain = 628.902
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:01:00 ; elapsed = 00:01:07 . Memory (MB): peak = 1539.023 ; gain = 631.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:01:05 ; elapsed = 00:01:11 . Memory (MB): peak = 1640.910 ; gain = 733.570
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:01:11 ; elapsed = 00:01:17 . Memory (MB): peak = 1652.867 ; gain = 745.527
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:11 ; elapsed = 00:01:17 . Memory (MB): peak = 1652.867 ; gain = 745.527
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:13 ; elapsed = 00:01:19 . Memory (MB): peak = 1652.867 ; gain = 745.527
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:13 ; elapsed = 00:01:19 . Memory (MB): peak = 1652.867 ; gain = 745.527
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:13 ; elapsed = 00:01:19 . Memory (MB): peak = 1652.867 ; gain = 745.527
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:13 ; elapsed = 00:01:19 . Memory (MB): peak = 1652.867 ; gain = 745.527
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
W
%s
*synth2?
=
DSP Final Report (the ' indicates corresponding REG is set)
h p
x
� 
�
%s
*synth2�
�+--------------------+---------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
�|Module Name         | DSP Mapping         | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h p
x
� 
�
%s
*synth2�
�+--------------------+---------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A*B'                | 2      | 15     | -      | -      | 48     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A'*B                | 17     | 2      | -      | -      | 48     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | PCIN>>17+A'*B       | 15     | 0      | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A*B'                | 3      | 15     | -      | -      | 48     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A'*B                | 17     | 3      | -      | -      | 48     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | PCIN>>17+A'*B       | 15     | 0      | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Mult_Comp_Unit      | (A''*B'')'          | 15     | 15     | -      | -      | 15     | 2    | 2    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�|Mult_Comp_Unit      | A''*B''             | 17     | 17     | -      | -      | 48     | 2    | 2    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Mult_Comp_Unit      | (PCIN>>17+A''*B'')' | 15     | 15     | -      | -      | 15     | 2    | 2    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A*B'                | 2      | 15     | -      | -      | 48     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A'*B                | 17     | 2      | -      | -      | 48     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | PCIN>>17+A'*B       | 15     | 0      | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A*B'                | 3      | 15     | -      | -      | 48     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A'*B                | 17     | 3      | -      | -      | 48     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | PCIN>>17+A'*B       | 15     | 0      | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Mult_Comp_Unit      | (A''*B'')'          | 15     | 15     | -      | -      | 15     | 2    | 2    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�|Mult_Comp_Unit      | A''*B''             | 17     | 17     | -      | -      | 48     | 2    | 2    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Mult_Comp_Unit      | (PCIN>>17+A''*B'')' | 15     | 15     | -      | -      | 15     | 2    | 2    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A*B'                | 2      | 15     | -      | -      | 48     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A'*B                | 17     | 2      | -      | -      | 48     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | PCIN>>17+A'*B       | 15     | 0      | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A*B'                | 3      | 15     | -      | -      | 48     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A'*B                | 17     | 3      | -      | -      | 48     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | PCIN>>17+A'*B       | 15     | 0      | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Mult_Comp_Unit      | (A''*B'')'          | 15     | 15     | -      | -      | 15     | 2    | 2    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�|Mult_Comp_Unit      | A''*B''             | 17     | 17     | -      | -      | 48     | 2    | 2    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Mult_Comp_Unit      | (PCIN>>17+A''*B'')' | 15     | 15     | -      | -      | 15     | 2    | 2    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A*B'                | 2      | 15     | -      | -      | 48     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A'*B                | 17     | 2      | -      | -      | 48     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | PCIN>>17+A'*B       | 15     | 0      | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A*B'                | 3      | 15     | -      | -      | 48     | 0    | 1    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | A'*B                | 17     | 3      | -      | -      | 48     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Multiplication_Core | PCIN>>17+A'*B       | 15     | 0      | -      | -      | 15     | 1    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Mult_Comp_Unit      | (A''*B'')'          | 15     | 15     | -      | -      | 15     | 2    | 2    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�|Mult_Comp_Unit      | A''*B''             | 17     | 17     | -      | -      | 48     | 2    | 2    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|Mult_Comp_Unit      | (PCIN>>17+A''*B'')' | 15     | 15     | -      | -      | 15     | 2    | 2    | -    | -    | -     | 0    | 1    | 
h p
x
� 
�
%s
*synth2�
�+--------------------+---------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|      |BlackBox name |Instances |
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|1     |blk_mem_gen_0 |         1|
h p
x
� 
=
%s
*synth2%
#|2     |blk_mem_gen_1 |         1|
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
7
%s*synth2
+------+------------+------+
h px� 
7
%s*synth2
|      |Cell        |Count |
h px� 
7
%s*synth2
+------+------------+------+
h px� 
7
%s*synth2
|1     |blk_mem_gen |     2|
h px� 
7
%s*synth2
|3     |BUFG        |     1|
h px� 
7
%s*synth2
|4     |CARRY4      |   790|
h px� 
7
%s*synth2
|5     |DSP48E1     |    36|
h px� 
7
%s*synth2
|10    |LUT1        |   244|
h px� 
7
%s*synth2
|11    |LUT2        |  2451|
h px� 
7
%s*synth2
|12    |LUT3        |   552|
h px� 
7
%s*synth2
|13    |LUT4        |   338|
h px� 
7
%s*synth2
|14    |LUT5        |   271|
h px� 
7
%s*synth2
|15    |LUT6        |  1579|
h px� 
7
%s*synth2
|16    |MUXF7       |   105|
h px� 
7
%s*synth2
|17    |FDRE        |  2079|
h px� 
7
%s*synth2
|18    |FDSE        |     7|
h px� 
7
%s*synth2
|19    |LD          |     4|
h px� 
7
%s*synth2
|20    |IBUF        |    16|
h px� 
7
%s*synth2
|21    |OBUF        |    16|
h px� 
7
%s*synth2
|22    |OBUFT       |     1|
h px� 
7
%s*synth2
+------+------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:13 ; elapsed = 00:01:19 . Memory (MB): peak = 1652.867 ; gain = 745.527
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
c
%s
*synth2K
ISynthesis finished with 0 errors, 0 critical warnings and 1045 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:01:00 ; elapsed = 00:01:15 . Memory (MB): peak = 1652.867 ; gain = 702.273
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:13 ; elapsed = 00:01:19 . Memory (MB): peak = 1652.867 ; gain = 745.527
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.1492

1666.3672
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
935Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1670.4882
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2G
E  A total of 4 instances were transformed.
  LD => LDCE: 4 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

79e24910Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
652
1842
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:202

00:01:342

1670.4882

1150.578Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0232

1670.4882
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2>
<E:/Seth stuff/Thesis/Thesis/Thesis.runs/synth_1/impl_top.dcpZ17-1381h px� 
�
%s4*runtcl2h
fExecuting : report_utilization -file impl_top_utilization_synth.rpt -pb impl_top_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Mar  4 08:31:32 2025Z17-206h px� 


End Record