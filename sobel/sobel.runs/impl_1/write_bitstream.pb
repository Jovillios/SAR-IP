
h
Command: %s
53*	vivadotcl27
#write_bitstream -force sobelSys.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
?Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px? 
?
YReport rule limit reached: REQP-1839 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2p
 "Z
!ram_out/RAM_reg_2/ADDRARDADDR[10]!ram_out/RAM_reg_2/ADDRARDADDR[10]2default:default2default:default2Z
 "D
ram_out/RAM_reg_2_0[9]ram_out/RAM_reg_2_0[9]2default:default2default:default2?
 "n
+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[9]	+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[9]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2p
 "Z
!ram_out/RAM_reg_2/ADDRARDADDR[11]!ram_out/RAM_reg_2/ADDRARDADDR[11]2default:default2default:default2\
 "F
ram_out/RAM_reg_2_0[10]ram_out/RAM_reg_2_0[10]2default:default2default:default2?
 "p
,sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[10]	,sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[10]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2p
 "Z
!ram_out/RAM_reg_2/ADDRARDADDR[12]!ram_out/RAM_reg_2/ADDRARDADDR[12]2default:default2default:default2\
 "F
ram_out/RAM_reg_2_0[11]ram_out/RAM_reg_2_0[11]2default:default2default:default2?
 "p
,sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[11]	,sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[11]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2p
 "Z
!ram_out/RAM_reg_2/ADDRARDADDR[13]!ram_out/RAM_reg_2/ADDRARDADDR[13]2default:default2default:default2\
 "F
ram_out/RAM_reg_2_0[12]ram_out/RAM_reg_2_0[12]2default:default2default:default2?
 "p
,sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[12]	,sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[12]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2p
 "Z
!ram_out/RAM_reg_2/ADDRARDADDR[14]!ram_out/RAM_reg_2/ADDRARDADDR[14]2default:default2default:default2\
 "F
ram_out/RAM_reg_2_0[13]ram_out/RAM_reg_2_0[13]2default:default2default:default2?
 "p
,sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[13]	,sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[13]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2n
 "X
 ram_out/RAM_reg_2/ADDRARDADDR[1] ram_out/RAM_reg_2/ADDRARDADDR[1]2default:default2default:default2Z
 "D
ram_out/RAM_reg_2_0[0]ram_out/RAM_reg_2_0[0]2default:default2default:default2?
 "n
+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[0]	+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2n
 "X
 ram_out/RAM_reg_2/ADDRARDADDR[2] ram_out/RAM_reg_2/ADDRARDADDR[2]2default:default2default:default2Z
 "D
ram_out/RAM_reg_2_0[1]ram_out/RAM_reg_2_0[1]2default:default2default:default2?
 "n
+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[1]	+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2n
 "X
 ram_out/RAM_reg_2/ADDRARDADDR[3] ram_out/RAM_reg_2/ADDRARDADDR[3]2default:default2default:default2Z
 "D
ram_out/RAM_reg_2_0[2]ram_out/RAM_reg_2_0[2]2default:default2default:default2?
 "n
+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[2]	+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2n
 "X
 ram_out/RAM_reg_2/ADDRARDADDR[4] ram_out/RAM_reg_2/ADDRARDADDR[4]2default:default2default:default2Z
 "D
ram_out/RAM_reg_2_0[3]ram_out/RAM_reg_2_0[3]2default:default2default:default2?
 "n
+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[3]	+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[3]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2n
 "X
 ram_out/RAM_reg_2/ADDRARDADDR[5] ram_out/RAM_reg_2/ADDRARDADDR[5]2default:default2default:default2Z
 "D
ram_out/RAM_reg_2_0[4]ram_out/RAM_reg_2_0[4]2default:default2default:default2?
 "n
+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[4]	+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[4]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2n
 "X
 ram_out/RAM_reg_2/ADDRARDADDR[6] ram_out/RAM_reg_2/ADDRARDADDR[6]2default:default2default:default2Z
 "D
ram_out/RAM_reg_2_0[5]ram_out/RAM_reg_2_0[5]2default:default2default:default2?
 "n
+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[5]	+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[5]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2n
 "X
 ram_out/RAM_reg_2/ADDRARDADDR[7] ram_out/RAM_reg_2/ADDRARDADDR[7]2default:default2default:default2Z
 "D
ram_out/RAM_reg_2_0[6]ram_out/RAM_reg_2_0[6]2default:default2default:default2?
 "n
+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[6]	+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2n
 "X
 ram_out/RAM_reg_2/ADDRARDADDR[8] ram_out/RAM_reg_2/ADDRARDADDR[8]2default:default2default:default2Z
 "D
ram_out/RAM_reg_2_0[7]ram_out/RAM_reg_2_0[7]2default:default2default:default2?
 "n
+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[7]	+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[7]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2n
 "X
 ram_out/RAM_reg_2/ADDRARDADDR[9] ram_out/RAM_reg_2/ADDRARDADDR[9]2default:default2default:default2Z
 "D
ram_out/RAM_reg_2_0[8]ram_out/RAM_reg_2_0[8]2default:default2default:default2?
 "n
+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[8]	+sobelProc_inst1/adrgenUnit_1/O_ADR_W_reg[8]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2p
 "Z
!ram_out/RAM_reg_2/ADDRBWRADDR[10]!ram_out/RAM_reg_2/ADDRBWRADDR[10]2default:default2default:default2Z
 "D
ram_out/ADDRBWRADDR[9]ram_out/ADDRBWRADDR[9]2default:default2default:default2j
 "T
vga_inst1/S_adr_region2_reg[9]	vga_inst1/S_adr_region2_reg[9]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2p
 "Z
!ram_out/RAM_reg_2/ADDRBWRADDR[11]!ram_out/RAM_reg_2/ADDRBWRADDR[11]2default:default2default:default2\
 "F
ram_out/ADDRBWRADDR[10]ram_out/ADDRBWRADDR[10]2default:default2default:default2l
 "V
vga_inst1/S_adr_region2_reg[10]	vga_inst1/S_adr_region2_reg[10]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2p
 "Z
!ram_out/RAM_reg_2/ADDRBWRADDR[12]!ram_out/RAM_reg_2/ADDRBWRADDR[12]2default:default2default:default2\
 "F
ram_out/ADDRBWRADDR[11]ram_out/ADDRBWRADDR[11]2default:default2default:default2l
 "V
vga_inst1/S_adr_region2_reg[11]	vga_inst1/S_adr_region2_reg[11]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2p
 "Z
!ram_out/RAM_reg_2/ADDRBWRADDR[13]!ram_out/RAM_reg_2/ADDRBWRADDR[13]2default:default2default:default2\
 "F
ram_out/ADDRBWRADDR[12]ram_out/ADDRBWRADDR[12]2default:default2default:default2l
 "V
vga_inst1/S_adr_region2_reg[12]	vga_inst1/S_adr_region2_reg[12]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2p
 "Z
!ram_out/RAM_reg_2/ADDRBWRADDR[14]!ram_out/RAM_reg_2/ADDRBWRADDR[14]2default:default2default:default2\
 "F
ram_out/ADDRBWRADDR[13]ram_out/ADDRBWRADDR[13]2default:default2default:default2l
 "V
vga_inst1/S_adr_region2_reg[13]	vga_inst1/S_adr_region2_reg[13]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2P
 ":
ram_out/RAM_reg_2	ram_out/RAM_reg_22default:default2default:default2n
 "X
 ram_out/RAM_reg_2/ADDRBWRADDR[9] ram_out/RAM_reg_2/ADDRBWRADDR[9]2default:default2default:default2Z
 "D
ram_out/ADDRBWRADDR[8]ram_out/ADDRBWRADDR[8]2default:default2default:default2j
 "T
vga_inst1/S_adr_region2_reg[8]	vga_inst1/S_adr_region2_reg[8]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 22 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
82default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
_
Writing bitstream %s...
11*	bitstream2"
./sobelSys.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
s
QWebTalk data collection is enabled (User setting is ON. Install Setting is ON.).
118*projectZ1-118h px? 
?
?'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2\
H/homes/t21khieu/SAR/sobel/sobel.runs/impl_1/usage_statistics_webtalk.xml2default:default2,
Wed Jun 15 15:07:20 20222default:default2d
P/usr/home/enstb1/Xilinx/Vivado2019.2/Vivado/2019.2/doc/webtalk_introduction.html2default:defaultZ17-186h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1172default:default2
442default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
write_bitstream: 2default:default2
00:00:092default:default2
00:00:152default:default2
3191.7732default:default2
208.3712default:default2
81662default:default2
137882default:defaultZ17-722h px? 


End Record