-makelib xcelium_lib/xpm -sv \
  "/usr/home/enstb1/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/usr/home/enstb1/Xilinx/Vivado2019.2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../sources/ip/clk_wiz_vga_25MHz/clk_wiz_vga_25MHz_clk_wiz.v" \
  "../../../../sources/ip/clk_wiz_vga_25MHz/clk_wiz_vga_25MHz.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

