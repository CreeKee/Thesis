
?
Command: %s
53*	vivadotcl2
place_designZ4-113h px� 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2	
xc7a35tZ17-347h px� 
o
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2	
xc7a35tZ17-349h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
^
,Running DRC as a precondition to command %s
22*	vivadotcl2
place_designZ4-22h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
k
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
2Z30-611h px� 
C

Starting %s Task
103*constraints2
PlacerZ18-103h px� 
R

Phase %s%s
101*constraints2
1 2
Placer InitializationZ18-101h px� 
d

Phase %s%s
101*constraints2
1.1 2'
%Placer Initialization Netlist SortingZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0082

2088.6882
0.000Z17-268h px� 
a
%s*common2H
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 1565ef46e
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.125 . Memory (MB): peak = 2088.688 ; gain = 0.000h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0082

2088.6882
0.000Z17-268h px� 
q

Phase %s%s
101*constraints2
1.2 24
2IO Placement/ Clock Placement/ Build Placer DeviceZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
n
%s*common2U
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 17af1e8d3
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2088.688 ; gain = 0.000h px� 
Y

Phase %s%s
101*constraints2
1.3 2
Build Placer Netlist ModelZ18-101h px� 
V
%s*common2=
;Phase 1.3 Build Placer Netlist Model | Checksum: 251066022
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:13 ; elapsed = 00:00:09 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
V

Phase %s%s
101*constraints2
1.4 2
Constrain Clocks/MacrosZ18-101h px� 
S
%s*common2:
8Phase 1.4 Constrain Clocks/Macros | Checksum: 251066022
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:13 ; elapsed = 00:00:09 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
O
%s*common26
4Phase 1 Placer Initialization | Checksum: 251066022
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:13 ; elapsed = 00:00:09 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
M

Phase %s%s
101*constraints2
2 2
Global PlacementZ18-101h px� 
L

Phase %s%s
101*constraints2
2.1 2
FloorplanningZ18-101h px� 
I
%s*common20
.Phase 2.1 Floorplanning | Checksum: 1e8757d23
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:17 ; elapsed = 00:00:11 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
`

Phase %s%s
101*constraints2
2.2 2#
!Update Timing before SLR Path OptZ18-101h px� 
]
%s*common2D
BPhase 2.2 Update Timing before SLR Path Opt | Checksum: 1eabf2851
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:19 ; elapsed = 00:00:13 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
_

Phase %s%s
101*constraints2
2.3 2"
 Post-Processing in FloorplanningZ18-101h px� 
\
%s*common2C
APhase 2.3 Post-Processing in Floorplanning | Checksum: 1eabf2851
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:19 ; elapsed = 00:00:13 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
T

Phase %s%s
101*constraints2
2.4 2
Global Placement CoreZ18-101h px� 
g

Phase %s%s
101*constraints2
2.4.1 2(
&UpdateTiming Before Physical SynthesisZ18-101h px� 
d
%s*common2K
IPhase 2.4.1 UpdateTiming Before Physical Synthesis | Checksum: 21b343916
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:49 ; elapsed = 00:00:30 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
]

Phase %s%s
101*constraints2
2.4.2 2
Physical Synthesis In PlacerZ18-101h px� 
w
FFound %s LUTNM shape to break, %s LUT instances to create LUTNM shape
553*physynth2
72
393Z32-1035h px� 
�
YBreak lutnm for timing: one critical %s, two critical %s, total %s, new lutff created %s
561*physynth2
62
12
72
0Z32-1044h px� 
�
^End %s Pass. Optimized %s %s. Breaked %s %s, combined %s existing %s and moved %s existing %s
576*physynth2
12
1692
nets or LUTs2
72
LUTs2
1622
LUTs2
02
LUTZ32-1138h px� 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px� 
e
$Optimized %s %s. Created %s new %s.
216*physynth2
02
net2
02

instanceZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
i
DNo candidate cells found for Shift Register to Pipeline optimization564*physynthZ32-1123h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
^
9No candidate cells found for Shift Register optimization.631*physynthZ32-1401h px� 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
o
KNo candidate nets found for dynamic/static region interface net replication521*physynthZ32-949h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0082

2170.5312
0.000Z17-268h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  LUT Combining                                    |            7  |            162  |                   169  |           0  |           1  |  00:00:00  |
|  Retime                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |            7  |            162  |                   169  |           0  |           9  |  00:00:01  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
Z
%s*common2A
?Phase 2.4.2 Physical Synthesis In Placer | Checksum: 1f98f6ee1
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:53 ; elapsed = 00:00:32 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
Q
%s*common28
6Phase 2.4 Global Placement Core | Checksum: 1719a772b
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:54 ; elapsed = 00:00:33 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
J
%s*common21
/Phase 2 Global Placement | Checksum: 1719a772b
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:54 ; elapsed = 00:00:33 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
M

Phase %s%s
101*constraints2
3 2
Detail PlacementZ18-101h px� 
Y

Phase %s%s
101*constraints2
3.1 2
Commit Multi Column MacrosZ18-101h px� 
V
%s*common2=
;Phase 3.1 Commit Multi Column Macros | Checksum: 16c9ab531
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:57 ; elapsed = 00:00:35 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
[

Phase %s%s
101*constraints2
3.2 2
Commit Most Macros & LUTRAMsZ18-101h px� 
X
%s*common2?
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1995bc987
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:01:06 ; elapsed = 00:00:41 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
U

Phase %s%s
101*constraints2
3.3 2
Area Swap OptimizationZ18-101h px� 
R
%s*common29
7Phase 3.3 Area Swap Optimization | Checksum: 1abdad1ae
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:01:06 ; elapsed = 00:00:41 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
]

Phase %s%s
101*constraints2
3.4 2 
Pipeline Register OptimizationZ18-101h px� 
Z
%s*common2A
?Phase 3.4 Pipeline Register Optimization | Checksum: 1a5720eca
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:01:06 ; elapsed = 00:00:41 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
P

Phase %s%s
101*constraints2
3.5 2
Fast OptimizationZ18-101h px� 
M
%s*common24
2Phase 3.5 Fast Optimization | Checksum: 17b4263c0
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:01:15 ; elapsed = 00:00:46 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
[

Phase %s%s
101*constraints2
3.6 2
Small Shape Detail PlacementZ18-101h px� 
X
%s*common2?
=Phase 3.6 Small Shape Detail Placement | Checksum: 175ee8342
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:01:22 ; elapsed = 00:00:54 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
Q

Phase %s%s
101*constraints2
3.7 2
Re-assign LUT pinsZ18-101h px� 
N
%s*common25
3Phase 3.7 Re-assign LUT pins | Checksum: 15a6eae36
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:01:24 ; elapsed = 00:00:56 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
]

Phase %s%s
101*constraints2
3.8 2 
Pipeline Register OptimizationZ18-101h px� 
Z
%s*common2A
?Phase 3.8 Pipeline Register Optimization | Checksum: 14da802df
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:01:24 ; elapsed = 00:00:56 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
J
%s*common21
/Phase 3 Detail Placement | Checksum: 14da802df
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:01:24 ; elapsed = 00:00:56 . Memory (MB): peak = 2170.531 ; gain = 81.844h px� 
e

Phase %s%s
101*constraints2
4 2*
(Post Placement Optimization and Clean-UpZ18-101h px� 
W

Phase %s%s
101*constraints2
4.1 2
Post Commit OptimizationZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
\

Phase %s%s
101*constraints2
4.1.1 2
Post Placement OptimizationZ18-101h px� 
U
@Post Placement Optimization Initialization | Checksum: 911954e2
*commonh px� 
Q

Phase %s%s
101*constraints2

4.1.1.1 2
BUFG InsertionZ18-101h px� 
O

Starting %s Task
103*constraints2
Physical SynthesisZ18-103h px� 
^

Phase %s%s
101*constraints2
1 2#
!Physical Synthesis InitializationZ18-101h px� 
n
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
2Z32-721h px� 
q
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-0.6832
-1.921Z32-619h px� 
Z
%s*common2A
?Phase 1 Physical Synthesis Initialization | Checksum: 82e08fb2
h px� 
�

%s
*constraints2b
`Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.996 . Memory (MB): peak = 2202.664 ; gain = 20.562h px� 
�
�BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to netlist editing failed: %s.43*	placeflow2
02
02
02
02
02
0Z46-56h px� 
O
%s*common26
4Ending Physical Synthesis Task | Checksum: 82e08fb2
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 2205.469 ; gain = 23.367h px� 
M
%s*common24
2Phase 4.1.1.1 BUFG Insertion | Checksum: 911954e2
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:35 ; elapsed = 00:01:04 . Memory (MB): peak = 2205.469 ; gain = 116.781h px� 
e

Phase %s%s
101*constraints2

4.1.1.2 2$
"Post Placement Timing OptimizationZ18-101h px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
0.511Z30-746h px� 
b
%s*common2I
GPhase 4.1.1.2 Post Placement Timing Optimization | Checksum: 1ad072da5
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:39 ; elapsed = 00:01:08 . Memory (MB): peak = 2206.891 ; gain = 118.203h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:39 ; elapsed = 00:01:08 . Memory (MB): peak = 2206.891 ; gain = 118.203h px� 
T
%s*common2;
9Phase 4.1 Post Commit Optimization | Checksum: 1ad072da5
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:40 ; elapsed = 00:01:08 . Memory (MB): peak = 2206.891 ; gain = 118.203h px� 
U

Phase %s%s
101*constraints2
4.2 2
Post Placement CleanupZ18-101h px� 
R
%s*common29
7Phase 4.2 Post Placement Cleanup | Checksum: 1ad072da5
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:40 ; elapsed = 00:01:08 . Memory (MB): peak = 2206.891 ; gain = 118.203h px� 
O

Phase %s%s
101*constraints2
4.3 2
Placer ReportingZ18-101h px� 
[

Phase %s%s
101*constraints2
4.3.1 2
Print Estimated CongestionZ18-101h px� 
�
'Post-Placement Estimated Congestion %s
38*	placeflow2�
�
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                4x4|
|___________|___________________|___________________|
|      South|                1x1|                2x2|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|
Z30-612h px� 
X
%s*common2?
=Phase 4.3.1 Print Estimated Congestion | Checksum: 1ad072da5
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:40 ; elapsed = 00:01:08 . Memory (MB): peak = 2206.891 ; gain = 118.203h px� 
L
%s*common23
1Phase 4.3 Placer Reporting | Checksum: 1ad072da5
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:40 ; elapsed = 00:01:08 . Memory (MB): peak = 2206.891 ; gain = 118.203h px� 
V

Phase %s%s
101*constraints2
4.4 2
Final Placement CleanupZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0072

2206.8912
0.000Z17-268h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:40 ; elapsed = 00:01:08 . Memory (MB): peak = 2206.891 ; gain = 118.203h px� 
b
%s*common2I
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 245749ef5
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:40 ; elapsed = 00:01:09 . Memory (MB): peak = 2206.891 ; gain = 118.203h px� 
D
%s*common2+
)Ending Placer Task | Checksum: 18d348817
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:40 ; elapsed = 00:01:09 . Memory (MB): peak = 2206.891 ; gain = 118.203h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
692
02
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
place_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
place_design: 2

00:01:432

00:01:102

2206.8912	
118.203Z17-268h px� 
Q
%s4*runtcl25
3Executing : report_io -file impl_top_io_placed.rpt
h px� 
�
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.045 . Memory (MB): peak = 2206.891 ; gain = 0.000
*commonh px� 
�
%s4*runtcl2j
hExecuting : report_utilization -file impl_top_utilization_placed.rpt -pb impl_top_utilization_placed.pb
h px� 
n
%s4*runtcl2R
PExecuting : report_control_sets -verbose -file impl_top_control_sets_placed.rpt
h px� 
�
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.031 . Memory (MB): peak = 2206.891 ; gain = 0.000
*commonh px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.1442

2221.8672
2.934Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PlaceDB: 2

00:00:052

00:00:022

2221.8672
0.980Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

2221.8672
0.000Z17-268h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote RouteStorage: 2

00:00:002
00:00:00.0432

2221.8672
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Netlist Cache: 2

00:00:002
00:00:00.0532

2221.8672
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Device Cache: 2

00:00:002
00:00:00.0052

2221.8672
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write Physdb Complete: 2

00:00:052

00:00:022

2221.8672
2.934Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2D
BE:/Seth stuff/Thesis/Thesis/Thesis.runs/impl_1/impl_top_placed.dcpZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:092

00:00:062

2221.8672
14.977Z17-268h px� 


End Record