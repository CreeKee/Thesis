
B
Command: %s
53*	vivadotcl2
phys_opt_designZ4-113h px� 
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
R

Starting %s Task
103*constraints2
Initial Update TimingZ18-103h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.218 . Memory (MB): peak = 1980.492 ; gain = 6.648h px� 
�
^PhysOpt_Tcl_Interface Runtime Before Starting Physical Synthesis Task | CPU: %ss |  WALL: %ss
566*	vivadotcl2
0.002
0.23Z4-1435h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1980.4922
0.000Z17-268h px� 
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
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.5802

-304.067Z32-619h px� 
[
%s*common2B
@Phase 1 Physical Synthesis Initialization | Checksum: 1cbda16ea
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.193 . Memory (MB): peak = 1980.492 ; gain = 0.000h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.5802

-304.067Z32-619h px� 
V

Phase %s%s
101*constraints2
2 2
DSP Register OptimizationZ18-101h px� 
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
S
%s*common2:
8Phase 2 DSP Register Optimization | Checksum: 1cbda16ea
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.197 . Memory (MB): peak = 1980.492 ; gain = 0.000h px� 
W

Phase %s%s
101*constraints2
3 2
Critical Path OptimizationZ18-101h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.5802

-304.067Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2d
/acc_buff/seg_gen[7].acc_seg/seg_vals[7][val][2]/acc_buff/seg_gen[7].acc_seg/seg_vals[7][val][2]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2J
"acc_buff/add_gen[0].add_unit/o_pop"acc_buff/add_gen[0].add_unit/o_pop2R
&acc_buff/add_gen[0].add_unit/o_pop_reg	&acc_buff/add_gen[0].add_unit/o_pop_reg8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2J
"acc_buff/add_gen[0].add_unit/o_pop"acc_buff/add_gen[0].add_unit/o_pop8Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.4492

-293.259Z32-619h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2J
"acc_buff/add_gen[6].add_unit/o_pop"acc_buff/add_gen[6].add_unit/o_pop2
18Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2J
"acc_buff/add_gen[6].add_unit/o_pop"acc_buff/add_gen[6].add_unit/o_pop8Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.4472

-293.095Z32-619h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2J
"acc_buff/add_gen[0].add_unit/o_pop"acc_buff/add_gen[0].add_unit/o_pop2
28Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2J
"acc_buff/add_gen[0].add_unit/o_pop"acc_buff/add_gen[0].add_unit/o_pop8Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.4452

-292.931Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
"acc_buff/add_gen[6].add_unit/o_pop"acc_buff/add_gen[6].add_unit/o_pop8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2b
.acc_buff/add_gen[0].add_unit/op_count_reg[1]_0.acc_buff/add_gen[0].add_unit/op_count_reg[1]_02l
3acc_buff/add_gen[0].add_unit/o_val[val][2]_i_1_comp	3acc_buff/add_gen[0].add_unit/o_val[val][2]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2j
2acc_buff/add_gen[0].add_unit/o_val[val][2]_i_4_n_02acc_buff/add_gen[0].add_unit/o_val[val][2]_i_4_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.4382

-292.864Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2d
/acc_buff/seg_gen[7].acc_seg/seg_vals[7][val][1]/acc_buff/seg_gen[7].acc_seg/seg_vals[7][val][1]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2b
.acc_buff/add_gen[0].add_unit/op_count_reg[0]_1.acc_buff/add_gen[0].add_unit/op_count_reg[0]_12l
3acc_buff/add_gen[0].add_unit/o_val[val][1]_i_1_comp	3acc_buff/add_gen[0].add_unit/o_val[val][1]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2j
2acc_buff/add_gen[0].add_unit/o_val[val][1]_i_3_n_02acc_buff/add_gen[0].add_unit/o_val[val][1]_i_3_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.3712

-292.824Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2f
0acc_buff/seg_gen[7].acc_seg/seg_vals[7][is_tail]0acc_buff/seg_gen[7].acc_seg/seg_vals[7][is_tail]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2b
.acc_buff/add_gen[0].add_unit/op_count_reg[0]_3.acc_buff/add_gen[0].add_unit/op_count_reg[0]_32n
4acc_buff/add_gen[0].add_unit/o_val[is_tail]_i_1_comp	4acc_buff/add_gen[0].add_unit/o_val[is_tail]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[is_tail]_i_2_n_03acc_buff/add_gen[0].add_unit/o_val[is_tail]_i_2_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.3552

-292.734Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2f
0acc_buff/seg_gen[7].acc_seg/seg_vals[7][is_head]0acc_buff/seg_gen[7].acc_seg/seg_vals[7][is_head]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2b
.acc_buff/add_gen[0].add_unit/op_count_reg[0]_2.acc_buff/add_gen[0].add_unit/op_count_reg[0]_22n
4acc_buff/add_gen[0].add_unit/o_val[is_head]_i_1_comp	4acc_buff/add_gen[0].add_unit/o_val[is_head]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2v
8acc_buff/add_gen[0].add_unit/seg_gen[7].acc_seg/i_seg__68acc_buff/add_gen[0].add_unit/seg_gen[7].acc_seg/i_seg__68Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.3442

-292.787Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2j
2acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7_n_02acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2j
2acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5_n_02acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__0_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__0_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__0_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__0_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2T
'acc_buff/add_gen[0].add_unit/sel0__1[0]'acc_buff/add_gen[0].add_unit/sel0__1[0]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.3432

-292.771Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_18_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_18_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12_n_02n
4acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12_comp	4acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.3412

-291.871Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_15__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_15__0_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
232
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_20_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_20_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.3212

-291.526Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_02d
/acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19	/acc_buff/add_gen[0].add_unit/o_val[val][7]_i_198Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.3132

-291.390Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_n_02t
7acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_comp	7acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.3112

-291.291Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_20_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_20_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_23_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_23_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
232
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.2022

-287.467Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__2_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2T
'acc_buff/add_gen[0].add_unit/sel0__3[0]'acc_buff/add_gen[0].add_unit/sel0__3[0]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
232
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14__1_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14__1_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.1352

-284.370Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.1072

-283.901Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
232
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12__0_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.0812

-283.095Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_15__1_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_15__1_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.0672

-282.396Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12_n_02r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12_comp_1	6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12_comp_18Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2~
<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_0_repN_1<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_0_repN_18Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.0632

-282.239Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2~
<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_0_repN_3<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_0_repN_38Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_n_02t
7acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_comp	7acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.0562

-282.004Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2~
<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_0_repN_4<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_0_repN_42v
8acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_comp_5	8acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_comp_58Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2~
<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_0_repN_4<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_0_repN_48Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.0482

-281.804Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2~
<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_0_repN_4<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_0_repN_48Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
232
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14__1_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14__1_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.0482

-281.296Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2~
<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_n_0_repN_1<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_n_0_repN_18Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__5_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__5_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__5_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__5_n_02r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__5_comp	6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__5_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2T
'acc_buff/add_gen[0].add_unit/sel0__4[0]'acc_buff/add_gen[0].add_unit/sel0__4[0]8Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.0412

-281.032Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_11__1_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_11__1_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__4_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12__5_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12__5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__5_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__5_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__5_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__5_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__5_n_02r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__5_comp	6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__5_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__0_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.0392

-280.932Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2h
1acc_buff/add_gen[0].add_unit/curr_reg[31]_i_4_n_61acc_buff/add_gen[0].add_unit/curr_reg[31]_i_4_n_68Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2h
1acc_buff/add_gen[0].add_unit/curr_reg[27]_i_3_n_01acc_buff/add_gen[0].add_unit/curr_reg[27]_i_3_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2h
1acc_buff/add_gen[0].add_unit/curr_reg[27]_i_4_n_61acc_buff/add_gen[0].add_unit/curr_reg[27]_i_4_n_68Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2h
1acc_buff/add_gen[0].add_unit/curr_reg[23]_i_4_n_01acc_buff/add_gen[0].add_unit/curr_reg[23]_i_4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2h
1acc_buff/add_gen[0].add_unit/curr_reg[19]_i_4_n_01acc_buff/add_gen[0].add_unit/curr_reg[19]_i_4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2h
1acc_buff/add_gen[0].add_unit/curr_reg[15]_i_4_n_01acc_buff/add_gen[0].add_unit/curr_reg[15]_i_4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2h
1acc_buff/add_gen[0].add_unit/curr_reg[11]_i_4_n_01acc_buff/add_gen[0].add_unit/curr_reg[11]_i_4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2f
0acc_buff/add_gen[0].add_unit/curr_reg[7]_i_4_n_00acc_buff/add_gen[0].add_unit/curr_reg[7]_i_4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val_reg[val][0]_i_5_n_06acc_buff/add_gen[0].add_unit/o_val_reg[val][0]_i_5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][0]_i_13_n_03acc_buff/add_gen[0].add_unit/o_val[val][0]_i_13_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
.acc_buff/add_gen[0].add_unit/op_count_reg[0]_2.acc_buff/add_gen[0].add_unit/op_count_reg[0]_28Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2

i_clk_IBUF
i_clk_IBUF8Z32-702h px� 
z
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
i_clki_clk8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2f
0acc_buff/seg_gen[7].acc_seg/seg_vals[7][is_head]0acc_buff/seg_gen[7].acc_seg/seg_vals[7][is_head]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
"acc_buff/add_gen[6].add_unit/o_pop"acc_buff/add_gen[6].add_unit/o_pop8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2j
2acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7_n_02acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2j
2acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5_n_02acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__0_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__0_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__0_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__0_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2T
'acc_buff/add_gen[0].add_unit/sel0__1[0]'acc_buff/add_gen[0].add_unit/sel0__1[0]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_18_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_18_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_n_02t
7acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_comp	7acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_comp8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.0362

-280.884Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_15__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_15__0_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_20_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_20_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_23_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_23_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_n_02t
7acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_comp	7acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_comp8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.0262

-280.514Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__3_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__3_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_11__1_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_11__1_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__4_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12__5_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12__5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__5_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__5_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
222
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__5_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__5_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.9472

-276.610Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2T
'acc_buff/add_gen[0].add_unit/sel0__5[0]'acc_buff/add_gen[0].add_unit/sel0__5[0]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
222
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2T
'acc_buff/add_gen[0].add_unit/sel0__6[0]'acc_buff/add_gen[0].add_unit/sel0__6[0]8Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.8582

-272.160Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
222
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2T
'acc_buff/add_gen[0].add_unit/sel0__6[0]'acc_buff/add_gen[0].add_unit/sel0__6[0]8Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.8152

-269.982Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_3__6_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_3__6_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_11__4_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_11__4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_20__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_20__0_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_22_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_22_n_02d
/acc_buff/add_gen[0].add_unit/o_val[val][7]_i_22	/acc_buff/add_gen[0].add_unit/o_val[val][7]_i_228Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_22_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_22_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.8102

-269.588Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
172
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_22_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_22_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.8072

-266.666Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2T
'acc_buff/add_gen[0].add_unit/sel0__6[0]'acc_buff/add_gen[0].add_unit/sel0__6[0]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12__2_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12__2_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17__0_n_02j
2acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17__0	2acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17__08Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17__0_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.8052

-266.566Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17__0_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2h
1acc_buff/add_gen[0].add_unit/curr_reg[23]_i_3_n_61acc_buff/add_gen[0].add_unit/curr_reg[23]_i_3_n_68Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2h
1acc_buff/add_gen[0].add_unit/curr_reg[19]_i_4_n_61acc_buff/add_gen[0].add_unit/curr_reg[19]_i_4_n_68Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][0]_i_13_n_03acc_buff/add_gen[0].add_unit/o_val[val][0]_i_13_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
.acc_buff/add_gen[0].add_unit/op_count_reg[0]_2.acc_buff/add_gen[0].add_unit/op_count_reg[0]_28Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2

i_clk_IBUF
i_clk_IBUF8Z32-702h px� 
z
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
i_clki_clk8Z32-702h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.8052

-266.566Z32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0102

2060.2662
0.000Z17-268h px� 
T
%s*common2;
9Phase 3 Critical Path Optimization | Checksum: 12fe53dd5
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:20 ; elapsed = 00:00:13 . Memory (MB): peak = 2060.266 ; gain = 79.773h px� 
W

Phase %s%s
101*constraints2
4 2
Critical Path OptimizationZ18-101h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.8052

-266.566Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2f
0acc_buff/seg_gen[7].acc_seg/seg_vals[7][is_head]0acc_buff/seg_gen[7].acc_seg/seg_vals[7][is_head]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
"acc_buff/add_gen[6].add_unit/o_pop"acc_buff/add_gen[6].add_unit/o_pop8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2j
2acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7_n_02acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2j
2acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5_n_02acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__0_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__0_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__0_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__0_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_15__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_15__0_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_20_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_20_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_23_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_23_n_08Z32-702h px� 
�
'Processed net %s. Replicated %s times.
81*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_02
18Z32-81h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.7912

-268.055Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_n_02x
9acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_comp_1	9acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__5_comp_18Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__3_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__3_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.7772

-267.613Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2z
:acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_n_0_repN:acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_n_0_repN8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2z
:acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_n_0_repN:acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_n_0_repN2v
8acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_comp_2	8acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_comp_28Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__5_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__5_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.7722

-267.422Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2T
'acc_buff/add_gen[0].add_unit/sel0__1[0]'acc_buff/add_gen[0].add_unit/sel0__1[0]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.7712

-267.406Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_18_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_18_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.7572

-266.459Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_02d
/acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19	/acc_buff/add_gen[0].add_unit/o_val[val][7]_i_198Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.7532

-266.391Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_19_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.7492

-266.323Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_n_02t
7acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_comp	7acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_comp8Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__0_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.7462

-266.367Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__2_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2T
'acc_buff/add_gen[0].add_unit/sel0__3[0]'acc_buff/add_gen[0].add_unit/sel0__3[0]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14__1_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14__1_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
232
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17__2_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17__2_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.7172

-265.207Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17__2_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17__2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__3_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__3_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_3__6_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_3__6_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_3__6_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_3__6_n_02r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_3__6_comp	6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_3__6_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_11__4_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_11__4_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.7132

-265.084Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2~
<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_n_0_repN_1<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_n_0_repN_12v
8acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_comp_1	8acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_comp_18Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2~
<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_n_0_repN_1<acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__3_n_0_repN_18Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.7032

-264.775Z32-619h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__3_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__3_n_02t
7acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__3_comp	7acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__3_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2T
'acc_buff/add_gen[0].add_unit/sel0__6[0]'acc_buff/add_gen[0].add_unit/sel0__6[0]8Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.6962

-264.515Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__4_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12__5_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12__5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__5_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__5_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__0_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__1_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__1_n_02j
2acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__1	2acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__18Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__1_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__1_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.6942

-264.435Z32-619h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__0_n_02x
9acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__0_comp_2	9acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__0_comp_28Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__1_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__1_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.6842

-264.227Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_11__5_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_11__5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__1_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__1_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__4_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__4_n_02j
2acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__4	2acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__4_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__4_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.6822

-264.147Z32-619h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__1_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__1_n_02r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__1_comp	6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__4_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_13__4_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.6812

-264.107Z32-619h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2b
.acc_buff/add_gen[0].add_unit/sel0__6[0]_repN_1.acc_buff/add_gen[0].add_unit/sel0__6[0]_repN_12x
9acc_buff/add_gen[0].add_unit/o_val[val][7]_i_15__2_comp_1	9acc_buff/add_gen[0].add_unit/o_val[val][7]_i_15__2_comp_18Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2b
.acc_buff/add_gen[0].add_unit/sel0__6[0]_repN_1.acc_buff/add_gen[0].add_unit/sel0__6[0]_repN_18Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.6722

-263.747Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
.acc_buff/add_gen[0].add_unit/sel0__6[0]_repN_1.acc_buff/add_gen[0].add_unit/sel0__6[0]_repN_18Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__3_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__3_n_02h
1acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__3	1acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__38Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__3_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__3_n_08Z32-735h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.6702

-263.667Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__2_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2f
0acc_buff/add_gen[0].add_unit/curr_reg[7]_i_3_n_60acc_buff/add_gen[0].add_unit/curr_reg[7]_i_3_n_68Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val_reg[val][0]_i_2_n_06acc_buff/add_gen[0].add_unit/o_val_reg[val][0]_i_2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2j
2acc_buff/add_gen[0].add_unit/o_val[val][0]_i_9_n_02acc_buff/add_gen[0].add_unit/o_val[val][0]_i_9_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!acc_buff/add_gen[0].add_unit/O[0]!acc_buff/add_gen[0].add_unit/O[0]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][0]_i_13_n_03acc_buff/add_gen[0].add_unit/o_val[val][0]_i_13_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
.acc_buff/add_gen[0].add_unit/op_count_reg[0]_2.acc_buff/add_gen[0].add_unit/op_count_reg[0]_28Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2

i_clk_IBUF
i_clk_IBUF8Z32-702h px� 
z
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
i_clki_clk8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2f
0acc_buff/seg_gen[7].acc_seg/seg_vals[7][is_head]0acc_buff/seg_gen[7].acc_seg/seg_vals[7][is_head]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2J
"acc_buff/add_gen[6].add_unit/o_pop"acc_buff/add_gen[6].add_unit/o_pop8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2j
2acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7_n_02acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2j
2acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5_n_02acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__0_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__0_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__0_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__0_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_15__0_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_15__0_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_20_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_20_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][7]_i_23_n_03acc_buff/add_gen[0].add_unit/o_val[val][7]_i_23_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__2_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_5__2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2T
'acc_buff/add_gen[0].add_unit/sel0__3[0]'acc_buff/add_gen[0].add_unit/sel0__3[0]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14__1_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_14__1_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17__2_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_17__2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__4_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12__5_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_12__5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__5_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_7__5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_11__5_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_11__5_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2p
5acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__1_n_05acc_buff/add_gen[0].add_unit/o_val[val][7]_i_9__1_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2r
6acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__2_n_06acc_buff/add_gen[0].add_unit/o_val[val][7]_i_10__2_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2f
0acc_buff/add_gen[0].add_unit/curr_reg[7]_i_3_n_60acc_buff/add_gen[0].add_unit/curr_reg[7]_i_3_n_68Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2j
2acc_buff/add_gen[0].add_unit/o_val[val][0]_i_9_n_02acc_buff/add_gen[0].add_unit/o_val[val][0]_i_9_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!acc_buff/add_gen[0].add_unit/O[0]!acc_buff/add_gen[0].add_unit/O[0]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2l
3acc_buff/add_gen[0].add_unit/o_val[val][0]_i_13_n_03acc_buff/add_gen[0].add_unit/o_val[val][0]_i_13_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2b
.acc_buff/add_gen[0].add_unit/op_count_reg[0]_2.acc_buff/add_gen[0].add_unit/op_count_reg[0]_28Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2

i_clk_IBUF
i_clk_IBUF8Z32-702h px� 
z
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
i_clki_clk8Z32-702h px� 
s
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-6.6702

-263.667Z32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0072

2131.9962
0.000Z17-268h px� 
T
%s*common2;
9Phase 4 Critical Path Optimization | Checksum: 12fe53dd5
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:35 ; elapsed = 00:00:23 . Memory (MB): peak = 2131.996 ; gain = 151.504h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

2131.9962
0.000Z17-268h px� 
x
>Post Physical Optimization Timing Summary | WNS=%s | TNS=%s |
318*physynth2
-6.6702

-263.667Z32-603h px� 
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
�-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization   |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  DSP Register   |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Path  |          0.910  |         40.400  |            4  |              0  |                    49  |           0  |           2  |  00:00:23  |
|  Total          |          0.910  |         40.400  |            4  |              0  |                    49  |           0  |           3  |  00:00:23  |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

2131.9962
0.000Z17-268h px� 
P
%s*common27
5Ending Physical Synthesis Task | Checksum: 123c582e1
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:35 ; elapsed = 00:00:23 . Memory (MB): peak = 2131.996 ; gain = 151.504h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
3782
02
02
0Z4-41h px� 
O
%s completed successfully
29*	vivadotcl2
phys_opt_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
phys_opt_design: 2

00:00:352

00:00:232

2131.9962	
158.152Z17-268h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0042

2153.9532
6.926Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PlaceDB: 2

00:00:012
00:00:00.1252

2153.9532
3.973Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

2153.9532
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
00:00:00.0162

2153.9532
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Netlist Cache: 2

00:00:002
00:00:00.0032

2153.9532
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Device Cache: 2

00:00:002
00:00:00.0052

2153.9532
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write Physdb Complete: 2

00:00:012
00:00:00.1542

2153.9532
6.926Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2E
CE:/Seth stuff/Thesis/Thesis/Thesis.runs/impl_1/impl_top_physopt.dcpZ17-1381h px� 


End Record