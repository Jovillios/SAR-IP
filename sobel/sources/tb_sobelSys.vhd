
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_sobelSys is
end entity tb_sobelSys;

architecture archi_tb_sobelSys of tb_sobelSys is
  component sobelSys is
    Port ( clk_i : in  STD_LOGIC;
		   reset_i : in  STD_LOGIC;
		   go_i    : in STD_LOGIC;
           -- VGA Output Signals
           vga_hs_o : out  STD_LOGIC; -- HSYNC OUT
           vga_vs_o : out  STD_LOGIC; -- VSYNC OUT
           vga_red_o    : out  STD_LOGIC_VECTOR (3 downto 0); -- Red signal going to the VGA interface
           vga_green_o  : out  STD_LOGIC_VECTOR (3 downto 0); -- Green signal going to the VGA interface
           vga_blue_o   : out  STD_LOGIC_VECTOR (3 downto 0) -- Blue signal going to the VGA interface
        );
  end component sobelSys;

  
  
  signal S_clk_i       :  std_logic := '0';
  signal S_reset_i     :  std_logic;
  signal S_go_i        :  std_logic;
  signal S_vga_hs_o    :  std_logic;
  signal S_vga_vs_o    :  std_logic;
  signal S_vga_red_o   :  STD_LOGIC_VECTOR (3 downto 0);
  signal S_vga_green_o :  STD_LOGIC_VECTOR (3 downto 0);
  signal S_vga_blue_o  :  STD_LOGIC_VECTOR (3 downto 0); 
  

begin

  S_clk_i <= not S_clk_i after 5 ns;
  S_reset_i <= '1', '0' after 2064 ns;
  S_go_i <= '0', '1' after 2264 ns, '0' after 2664 ns;
  

  sobelSys_1 : entity work.sobelSys
    port map (
      clk_i          => S_clk_i       ,
      reset_i        => S_reset_i     ,
      go_i           => S_go_i        ,
      vga_hs_o       => S_vga_hs_o    ,
      vga_vs_o       => S_vga_vs_o    ,
      vga_red_o      => S_vga_red_o   ,
      vga_green_o    => S_vga_green_o ,
      vga_blue_o     => S_vga_blue_o  
	);


end architecture archi_tb_sobelSys;
