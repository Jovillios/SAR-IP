
v
Command: %s
53*	vivadotcl2E
1synth_design -top sobelSys -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
%s*synth2?
?Starting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 1962.859 ; gain = 201.441 ; free physical = 8804 ; free virtual = 14414
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
sobelSys2default:default2D
./homes/t21khieu/SAR/sobel/sources/sobelSys.vhd2default:default2
212default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
	sobelProc2default:default2E
//homes/t21khieu/SAR/sobel/sources/sobelProc.vhd2default:default2
252default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2!
operativeUnit2default:default2f
P/homes/t21khieu/SAR/sobel/sobel.srcs/sources_1/imports/sources/operativeUnit.vhd2default:default2
212default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
regUnit2default:default2C
-/homes/t21khieu/SAR/sobel/sources/regUnit.vhd2default:default2
222default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
regUnit2default:default2
12default:default2
12default:default2C
-/homes/t21khieu/SAR/sobel/sources/regUnit.vhd2default:default2
222default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2 
gradientUnit2default:default2H
2/homes/t21khieu/SAR/sobel/sources/gradientUnit.vhd2default:default2
152default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
gradientUnit2default:default2
22default:default2
12default:default2H
2/homes/t21khieu/SAR/sobel/sources/gradientUnit.vhd2default:default2
152default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2

pixedgeReg2default:default2F
0/homes/t21khieu/SAR/sobel/sources/pixedgeReg.vhd2default:default2
162default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

pixedgeReg2default:default2
32default:default2
12default:default2F
0/homes/t21khieu/SAR/sobel/sources/pixedgeReg.vhd2default:default2
162default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2!
operativeUnit2default:default2
42default:default2
12default:default2f
P/homes/t21khieu/SAR/sobel/sobel.srcs/sources_1/imports/sources/operativeUnit.vhd2default:default2
212default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2

adrgenUnit2default:default2F
0/homes/t21khieu/SAR/sobel/sources/adrgenUnit.vhd2default:default2
222default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
PtrCol2default:default2F
0/homes/t21khieu/SAR/sobel/sources/adrgenUnit.vhd2default:default2
322default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
PtrLine2default:default2F
0/homes/t21khieu/SAR/sobel/sources/adrgenUnit.vhd2default:default2
322default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

adrgenUnit2default:default2
52default:default2
12default:default2F
0/homes/t21khieu/SAR/sobel/sources/adrgenUnit.vhd2default:default2
222default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
automate2default:default2D
./homes/t21khieu/SAR/sobel/sources/automate.vhd2default:default2
342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
automate2default:default2
62default:default2
12default:default2D
./homes/t21khieu/SAR/sobel/sources/automate.vhd2default:default2
342default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	sobelProc2default:default2
72default:default2
12default:default2E
//homes/t21khieu/SAR/sobel/sources/sobelProc.vhd2default:default2
252default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
vga_nexys4_2regions2default:default2M
9/homes/t21khieu/SAR/sobel/sources/vga_nexys4_2regions.vhd2default:default2
692default:default2
	vga_inst12default:default2'
vga_nexys4_2regions2default:default2D
./homes/t21khieu/SAR/sobel/sources/sobelSys.vhd2default:default2
1592default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2'
vga_nexys4_2regions2default:default2O
9/homes/t21khieu/SAR/sobel/sources/vga_nexys4_2regions.vhd2default:default2
932default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2%
clk_wiz_vga_25MHz2default:default2?
p/homes/t21khieu/SAR/sobel/sobel.runs/synth_1/.Xil/Vivado-58224-fl-tp-br-429/realtime/clk_wiz_vga_25MHz_stub.vhdl2default:default2
52default:default2*
Inst_clk_wiz_vga_25MHz2default:default2%
clk_wiz_vga_25MHz2default:default2O
9/homes/t21khieu/SAR/sobel/sources/vga_nexys4_2regions.vhd2default:default2
2902default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2%
clk_wiz_vga_25MHz2default:default2?
p/homes/t21khieu/SAR/sobel/sobel.runs/synth_1/.Xil/Vivado-58224-fl-tp-br-429/realtime/clk_wiz_vga_25MHz_stub.vhdl2default:default2
142default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2'
vga_nexys4_2regions2default:default2
82default:default2
12default:default2O
9/homes/t21khieu/SAR/sobel/sources/vga_nexys4_2regions.vhd2default:default2
932default:default8@Z8-256h px? 
b
%s
*synth2J
6	Parameter G_MemoryWidth bound to: 8 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MemoryDepth bound to: 10000 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AddressWidth bound to: 14 - type: integer 
2default:defaulth p
x
? 
s
%s
*synth2[
G	Parameter G_InitFileName bound to: dancing_spider.txt - type: string 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys20
SinglePortROMFileInitGeneric2default:default2V
B/homes/t21khieu/SAR/sobel/sources/SinglePortROMFileInitGeneric.vhd2default:default2
102default:default2
rom_in2default:default20
SinglePortROMFileInitGeneric2default:default2D
./homes/t21khieu/SAR/sobel/sources/sobelSys.vhd2default:default2
1792default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys20
SinglePortROMFileInitGeneric2default:default2X
B/homes/t21khieu/SAR/sobel/sources/SinglePortROMFileInitGeneric.vhd2default:default2
252default:default8@Z8-638h px? 
b
%s
*synth2J
6	Parameter G_MemoryWidth bound to: 8 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MemoryDepth bound to: 10000 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AddressWidth bound to: 14 - type: integer 
2default:defaulth p
x
? 
s
%s
*synth2[
G	Parameter G_InitFileName bound to: dancing_spider.txt - type: string 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys20
SinglePortROMFileInitGeneric2default:default2
92default:default2
12default:default2X
B/homes/t21khieu/SAR/sobel/sources/SinglePortROMFileInitGeneric.vhd2default:default2
252default:default8@Z8-256h px? 
b
%s
*synth2J
6	Parameter G_MemoryWidth bound to: 8 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MemoryDepth bound to: 10000 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AddressWidth bound to: 14 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2&
DualPortRamGeneric2default:default2L
8/homes/t21khieu/SAR/sobel/sources/DualPortRamGeneric.vhd2default:default2
102default:default2
ram_out2default:default2&
DualPortRamGeneric2default:default2D
./homes/t21khieu/SAR/sobel/sources/sobelSys.vhd2default:default2
1952default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2&
DualPortRamGeneric2default:default2N
8/homes/t21khieu/SAR/sobel/sources/DualPortRamGeneric.vhd2default:default2
292default:default8@Z8-638h px? 
b
%s
*synth2J
6	Parameter G_MemoryWidth bound to: 8 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter G_MemoryDepth bound to: 10000 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter G_AddressWidth bound to: 14 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2&
DualPortRamGeneric2default:default2
102default:default2
12default:default2N
8/homes/t21khieu/SAR/sobel/sources/DualPortRamGeneric.vhd2default:default2
292default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
sobelSys2default:default2
112default:default2
12default:default2D
./homes/t21khieu/SAR/sobel/sources/sobelSys.vhd2default:default2
212default:default8@Z8-256h px? 
?
!design %s has unconnected port %s3331*oasys2'
vga_nexys4_2regions2default:default2+
I_data_M_vga_region1[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
vga_nexys4_2regions2default:default2+
I_data_M_vga_region1[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
vga_nexys4_2regions2default:default2+
I_data_M_vga_region1[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
vga_nexys4_2regions2default:default2+
I_data_M_vga_region1[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
vga_nexys4_2regions2default:default2+
I_data_M_vga_region2[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
vga_nexys4_2regions2default:default2+
I_data_M_vga_region2[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
vga_nexys4_2regions2default:default2+
I_data_M_vga_region2[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
vga_nexys4_2regions2default:default2+
I_data_M_vga_region2[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
gradientUnit2default:default2

I_Pix22[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
gradientUnit2default:default2

I_Pix22[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
gradientUnit2default:default2

I_Pix22[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
gradientUnit2default:default2

I_Pix22[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
gradientUnit2default:default2

I_Pix22[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
gradientUnit2default:default2

I_Pix22[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
gradientUnit2default:default2

I_Pix22[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2 
gradientUnit2default:default2

I_Pix22[0]2default:defaultZ8-3331h px? 
?
%s*synth2?
?Finished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 2039.609 ; gain = 278.191 ; free physical = 8826 ; free virtual = 14436
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:10 . Memory (MB): peak = 2051.484 ; gain = 290.066 ; free physical = 8826 ; free virtual = 14435
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:10 . Memory (MB): peak = 2051.484 ; gain = 290.066 ; free physical = 8826 ; free virtual = 14435
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2051.4842default:default2
0.0002default:default2
88172default:default2
144272default:defaultZ17-722h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2
i/homes/t21khieu/SAR/sobel/sources/ip/clk_wiz_vga_25MHz/clk_wiz_vga_25MHz/clk_wiz_vga_25MHz_in_context.xdc2default:default26
 vga_inst1/Inst_clk_wiz_vga_25MHz	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2
i/homes/t21khieu/SAR/sobel/sources/ip/clk_wiz_vga_25MHz/clk_wiz_vga_25MHz/clk_wiz_vga_25MHz_in_context.xdc2default:default26
 vga_inst1/Inst_clk_wiz_vga_25MHz	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2H
2/homes/t21khieu/SAR/sobel/sources/Nexys4_Sobel.xdc2default:default8Z20-179h px? 
?
nA clock with name '%s' already exists, creating a clock with the same name will overwrite the previous clock.
576*constraints2
clk_i2default:default2H
2/homes/t21khieu/SAR/sobel/sources/Nexys4_Sobel.xdc2default:default2
1062default:default8@Z18-619h px?
?
Finished Parsing XDC File [%s]
178*designutils2H
2/homes/t21khieu/SAR/sobel/sources/Nexys4_Sobel.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2F
2/homes/t21khieu/SAR/sobel/sources/Nexys4_Sobel.xdc2default:default2.
.Xil/sobelSys_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2215.2662default:default2
0.0002default:default2
87292default:default2
143392default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2
00:00:00.012default:default2
2215.2662default:default2
0.0002default:default2
87302default:default2
143392default:defaultZ17-722h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:17 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8797 ; free virtual = 14407
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:17 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8797 ; free virtual = 14407
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:17 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8797 ; free virtual = 14407
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2%
current_state_reg2default:default2
automate2default:defaultZ8-802h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
O_StartDisplay2default:defaultZ8-5546h px? 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
O_enM_W2default:defaultZ8-5546h px? 
?
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2
O_enM_R2default:defaultZ8-5587h px? 
x
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
O_selPix2default:defaultZ8-5546h px? 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
O_ldPixEdge2default:defaultZ8-5546h px? 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
O_shReg2default:defaultZ8-5546h px? 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	O_ldPix312default:defaultZ8-5546h px? 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	O_ldPix212default:defaultZ8-5546h px? 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	O_ldPix112default:defaultZ8-5546h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    idle |                00000000000000001 |                            00000
2default:defaulth p
x
? 
?
%s
*synth2s
_                    init |                00000000000000010 |                            00001
2default:defaulth p
x
? 
?
%s
*synth2s
_                    pix1 |                00000000000000100 |                            00010
2default:defaulth p
x
? 
?
%s
*synth2s
_                    pix2 |                00000000000001000 |                            00011
2default:defaulth p
x
? 
?
%s
*synth2s
_                    pix3 |                00000000000010000 |                            00100
2default:defaulth p
x
? 
?
%s
*synth2s
_                     sh1 |                00000000000100000 |                            00101
2default:defaulth p
x
? 
?
%s
*synth2s
_                    pix4 |                00000000001000000 |                            00110
2default:defaulth p
x
? 
?
%s
*synth2s
_                    pix5 |                00000000010000000 |                            00111
2default:defaulth p
x
? 
?
%s
*synth2s
_                    pix6 |                00000000100000000 |                            01000
2default:defaulth p
x
? 
?
%s
*synth2s
_                     sh2 |                00000001000000000 |                            01001
2default:defaulth p
x
? 
?
%s
*synth2s
_                    pix7 |                00000010000000000 |                            01010
2default:defaulth p
x
? 
?
%s
*synth2s
_                    pix8 |                00000100000000000 |                            01011
2default:defaulth p
x
? 
?
%s
*synth2s
_                    pix9 |                00001000000000000 |                            01100
2default:defaulth p
x
? 
?
%s
*synth2s
_                    exec |                00010000000000000 |                            01101
2default:defaulth p
x
? 
?
%s
*synth2s
_                 outedge |                00100000000000000 |                            01110
2default:defaulth p
x
? 
?
%s
*synth2s
_                     sh3 |                01000000000000000 |                            01111
2default:defaulth p
x
? 
?
%s
*synth2s
_                endsobel |                10000000000000000 |                            10000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
current_state_reg2default:default2
one-hot2default:default2
automate2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:19 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8778 ; free virtual = 14388
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit       Adders := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input     10 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              78K Bit         RAMs := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---ROMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                              ROMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input     17 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     17 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
=
%s
*synth2%
Module sobelSys 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
<
%s
*synth2$
Module regUnit 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 9     
2default:defaulth p
x
? 
A
%s
*synth2)
Module gradientUnit 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input     10 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 2     
2default:defaulth p
x
? 
?
%s
*synth2'
Module pixedgeReg 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module adrgenUnit 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
Module automate 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input     17 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     17 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
H
%s
*synth20
Module vga_nexys4_2regions 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Q
%s
*synth29
%Module SinglePortROMFileInitGeneric 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---ROMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                              ROMs := 1     
2default:defaulth p
x
? 
G
%s
*synth2/
Module DualPortRamGeneric 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              78K Bit         RAMs := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
?The Block RAM %s may get memory collision error if read and write address collide. Use attribute (* rw_addr_collision= "yes" *) to avoid collision 
4524*oasys2.
"sobelSys/ram_out/RAM_reg"2default:defaultZ8-6430h px? 
?
%s
*synth2?
?RAM Pipeline Warning: Read Address Register Found For RAM ram_out/RAM_reg. We will not be able to pipeline it. This may degrade performance. 
2default:defaulth p
x
? 
?
%s
*synth2?
?RAM Pipeline Warning: Read Address Register Found For RAM ram_out/RAM_reg. We will not be able to pipeline it. This may degrade performance. 
2default:defaulth p
x
? 
?
?The Block RAM %s may get memory collision error if read and write address collide. Use attribute (* rw_addr_collision= "yes" *) to avoid collision 
4524*oasys2.
"sobelSys/ram_out/RAM_reg"2default:defaultZ8-6430h px? 
?
PSwapped enable and write-enable on %s RAM instances of RAM %s to conserve power
3784*oasys2
42default:default2#
ram_out/RAM_reg2default:defaultZ8-4652h px? 
?
%s
*synth2?
?RAM Pipeline Warning: Read Address Register Found For RAM ram_out/RAM_reg. We will not be able to pipeline it. This may degrade performance. 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:30 ; elapsed = 00:00:37 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8764 ; free virtual = 14379
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
2
%s*synth2

ROM:
2default:defaulth px? 
p
%s*synth2X
D+------------+-------------------+---------------+----------------+
2default:defaulth px? 
q
%s*synth2Y
E|Module Name | RTL Object        | Depth x Width | Implemented As | 
2default:defaulth px? 
p
%s*synth2X
D+------------+-------------------+---------------+----------------+
2default:defaulth px? 
q
%s*synth2Y
E|sobelSys    | rom_in/O_dout_reg | 16384x8       | Block RAM      | 
2default:defaulth px? 
q
%s*synth2Y
E+------------+-------------------+---------------+----------------+

2default:defaulth px? 
d
%s*synth2L
8
Block RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+------------+-----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name | RTL Object      | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px? 
?
%s*synth2?
?+------------+-----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|sobelSys    | ram_out/RAM_reg | 16 K x 8(READ_FIRST)   | W |   | 16 K x 8(WRITE_FIRST)  |   | R | Port A and B     | 0      | 4      | 
2default:defaulth px? 
?
%s*synth2?
?+------------+-----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
P
redefining clock '%s'565*oasys2
clk_i2default:defaultZ8-565h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:34 ; elapsed = 00:00:42 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8642 ; free virtual = 14257
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Timing Optimization : Time (s): cpu = 00:00:34 ; elapsed = 00:00:42 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8637 ; free virtual = 14252
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!
Block RAM: Final Mapping	Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+-----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name | RTL Object      | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+-----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|sobelSys    | ram_out/RAM_reg | 16 K x 8(READ_FIRST)   | W |   | 16 K x 8(WRITE_FIRST)  |   | R | Port A and B     | 0      | 4      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+-----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
$decloning instance '%s' (%s) to '%s'223*oasys2%
ram_out/RAM_reg_32default:default2

RAMB36E1_42default:default2%
ram_out/RAM_reg_22default:defaultZ8-223h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2'
rom_in/O_dout_reg_02default:default2
Block2default:defaultZ8-7053h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2'
rom_in/O_dout_reg_12default:default2
Block2default:defaultZ8-7053h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2'
rom_in/O_dout_reg_22default:default2
Block2default:defaultZ8-7053h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2'
rom_in/O_dout_reg_32default:default2
Block2default:defaultZ8-7053h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4800*oasys2%
ram_out/RAM_reg_22default:default2
Block2default:defaultZ8-7053h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Technology Mapping : Time (s): cpu = 00:00:34 ; elapsed = 00:00:43 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8635 ; free virtual = 14251
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished IO Insertion : Time (s): cpu = 00:00:37 ; elapsed = 00:00:45 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8628 ; free virtual = 14245
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:37 ; elapsed = 00:00:45 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8628 ; free virtual = 14245
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:37 ; elapsed = 00:00:45 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8628 ; free virtual = 14244
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:37 ; elapsed = 00:00:45 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8628 ; free virtual = 14244
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:37 ; elapsed = 00:00:45 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8628 ; free virtual = 14244
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:37 ; elapsed = 00:00:45 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8628 ; free virtual = 14244
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
S
%s
*synth2;
'+------+------------------+----------+
2default:defaulth p
x
? 
S
%s
*synth2;
'|      |BlackBox name     |Instances |
2default:defaulth p
x
? 
S
%s
*synth2;
'+------+------------------+----------+
2default:defaulth p
x
? 
S
%s
*synth2;
'|1     |clk_wiz_vga_25MHz |         1|
2default:defaulth p
x
? 
S
%s
*synth2;
'+------+------------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
V
%s*synth2>
*+------+-------------------------+------+
2default:defaulth px? 
V
%s*synth2>
*|      |Cell                     |Count |
2default:defaulth px? 
V
%s*synth2>
*+------+-------------------------+------+
2default:defaulth px? 
V
%s*synth2>
*|1     |clk_wiz_vga_25MHz_bbox_0 |     1|
2default:defaulth px? 
V
%s*synth2>
*|2     |CARRY4                   |    91|
2default:defaulth px? 
V
%s*synth2>
*|3     |LUT1                     |    61|
2default:defaulth px? 
V
%s*synth2>
*|4     |LUT2                     |   277|
2default:defaulth px? 
V
%s*synth2>
*|5     |LUT3                     |    73|
2default:defaulth px? 
V
%s*synth2>
*|6     |LUT4                     |    39|
2default:defaulth px? 
V
%s*synth2>
*|7     |LUT5                     |    31|
2default:defaulth px? 
V
%s*synth2>
*|8     |LUT6                     |    78|
2default:defaulth px? 
V
%s*synth2>
*|9     |RAMB36E1                 |     1|
2default:defaulth px? 
V
%s*synth2>
*|10    |RAMB36E1_1               |     1|
2default:defaulth px? 
V
%s*synth2>
*|11    |RAMB36E1_2               |     1|
2default:defaulth px? 
V
%s*synth2>
*|12    |RAMB36E1_3               |     1|
2default:defaulth px? 
V
%s*synth2>
*|13    |RAMB36E1_4               |     1|
2default:defaulth px? 
V
%s*synth2>
*|14    |FDCE                     |   152|
2default:defaulth px? 
V
%s*synth2>
*|15    |FDPE                     |    17|
2default:defaulth px? 
V
%s*synth2>
*|16    |FDRE                     |    54|
2default:defaulth px? 
V
%s*synth2>
*|17    |IBUF                     |     2|
2default:defaulth px? 
V
%s*synth2>
*|18    |OBUF                     |    14|
2default:defaulth px? 
V
%s*synth2>
*+------+-------------------------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
p
%s
*synth2X
D+------+---------------------+-----------------------------+------+
2default:defaulth p
x
? 
p
%s
*synth2X
D|      |Instance             |Module                       |Cells |
2default:defaulth p
x
? 
p
%s
*synth2X
D+------+---------------------+-----------------------------+------+
2default:defaulth p
x
? 
p
%s
*synth2X
D|1     |top                  |                             |   896|
2default:defaulth p
x
? 
p
%s
*synth2X
D|2     |  ram_out            |DualPortRamGeneric           |     2|
2default:defaulth p
x
? 
p
%s
*synth2X
D|3     |  rom_in             |SinglePortROMFileInitGeneric |     4|
2default:defaulth p
x
? 
p
%s
*synth2X
D|4     |  sobelProc_inst1    |sobelProc                    |   387|
2default:defaulth p
x
? 
p
%s
*synth2X
D|5     |    adrgenUnit_1     |adrgenUnit                   |   123|
2default:defaulth p
x
? 
p
%s
*synth2X
D|6     |    automate_1       |automate                     |    65|
2default:defaulth p
x
? 
p
%s
*synth2X
D|7     |    operativeUnit_1  |operativeUnit                |   199|
2default:defaulth p
x
? 
p
%s
*synth2X
D|8     |      gradientUnit_1 |gradientUnit                 |    45|
2default:defaulth p
x
? 
p
%s
*synth2X
D|9     |      pixedgeReg_1   |pixedgeReg                   |     1|
2default:defaulth p
x
? 
p
%s
*synth2X
D|10    |      regUnit_1      |regUnit                      |   153|
2default:defaulth p
x
? 
p
%s
*synth2X
D|11    |  vga_inst1          |vga_nexys4_2regions          |   473|
2default:defaulth p
x
? 
p
%s
*synth2X
D+------+---------------------+-----------------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:37 ; elapsed = 00:00:45 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8628 ; free virtual = 14244
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:00:36 ; elapsed = 00:00:43 . Memory (MB): peak = 2215.266 ; gain = 290.066 ; free physical = 8681 ; free virtual = 14297
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:37 ; elapsed = 00:00:45 . Memory (MB): peak = 2215.266 ; gain = 453.848 ; free physical = 8682 ; free virtual = 14299
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2215.2662default:default2
0.0002default:default2
87492default:default2
143652default:defaultZ17-722h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
962default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2215.2662default:default2
0.0002default:default2
87072default:default2
143132default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
592default:default2
202default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:422default:default2
00:00:532default:default2
2215.2662default:default2
695.4062default:default2
88422default:default2
144482default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2215.2662default:default2
0.0002default:default2
88422default:default2
144482default:defaultZ17-722h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2M
9/homes/t21khieu/SAR/sobel/sobel.runs/synth_1/sobelSys.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2z
fExecuting : report_utilization -file sobelSys_utilization_synth.rpt -pb sobelSys_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Jun 15 15:05:53 20222default:defaultZ17-206h px? 


End Record