vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic" \
"/usr/home/enstb1/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/usr/home/enstb1/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../sources/ip/clk_wiz_vga_25MHz/clk_wiz_vga_25MHz_clk_wiz.v" \
"../../../../sources/ip/clk_wiz_vga_25MHz/clk_wiz_vga_25MHz.v" \

vlog -work xil_defaultlib \
"glbl.v"
