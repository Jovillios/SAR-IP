vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -sv "+incdir+../../../ipstatic" \
"/usr/home/enstb1/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/usr/home/enstb1/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic" \
"../../../../sources/ip/clk_wiz_vga_25MHz/clk_wiz_vga_25MHz_clk_wiz.v" \
"../../../../sources/ip/clk_wiz_vga_25MHz/clk_wiz_vga_25MHz.v" \

vlog -work xil_defaultlib \
"glbl.v"

