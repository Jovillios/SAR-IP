
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_adrgenUnit is
end entity tb_adrgenUnit;

architecture archi_tb_adrgenUnit of tb_adrgenUnit is
 
  signal S_clk      	: std_logic := '1';
  signal S_reset    	: std_logic := '1';
  signal S_clr_PtrLine 	: STD_LOGIC := '0';
  signal S_inc_PtrLine 	: STD_LOGIC := '0';
  signal S_clr_PtrCol  	: STD_LOGIC := '0';
  signal S_inc_PtrCol  	: STD_LOGIC := '0';
  signal S_selPix 	 	: STD_LOGIC_VECTOR (1 downto 0)  := "00";
  signal S_EndImage	 	: STD_LOGIC;
  signal S_NewLine	 	: STD_LOGIC;
  signal S_ADR_R		: STD_LOGIC_VECTOR (13 downto 0); 	
  signal S_ADR_W	 	: STD_LOGIC_VECTOR (13 downto 0);

  constant clk_period : time := 10 ns;

begin

  S_clk <= not S_clk after clk_period/2;
  S_reset <= '1', '0' after 2*clk_period;
  S_clr_PtrLine <= '1', '0' after 2*clk_period;
  S_clr_PtrCol <= '1', '0' after 2*clk_period;
  

  process
  begin
    wait for 2*clk_period;
    while true loop
       S_selPix <= "00";
	   wait for clk_period;
	   S_selPix <= "01";
	   wait for clk_period;
	   S_selPix <= "10";
	   wait for clk_period;
	   wait for clk_period; -- pour le "shift" des registres
	end loop;
  end process;
 
  process
  begin
    wait for 2*clk_period;
    while true loop
	   wait for 3*clk_period;
	   S_inc_PtrCol <= '1';
	   wait for clk_period;
	   S_inc_PtrCol <= '0';
	end loop;
  end process; 

  process
  begin
    --wait until S_reset = '0';
    wait for 2*clk_period;
    while true loop	
	   wait for (4*clk_period*100 - clk_period); -- 40 ns x 100 - 10 ns
	   S_inc_PtrLine <= '1';
	   wait for clk_period;
	   S_inc_PtrLine <= '0';
    end loop;
  end process; 
  
  
  adrgenUnit_1 : entity work.adrgenUnit
    port map (
      clk            => S_clk,
      reset          => S_reset,
      I_clr_PtrLine  => S_clr_PtrLine,
      I_inc_PtrLine  => S_inc_PtrLine,
      I_clr_PtrCol   => S_clr_PtrCol,
      I_inc_PtrCol   => S_inc_PtrCol,
      I_selPix 	     => S_selPix,
      O_EndImage	 => S_EndImage,
      O_NewLine	     => S_NewLine,
      O_ADR_R		 => S_ADR_R,		
      O_ADR_W	 	 => S_ADR_W	 	
	  );


end architecture archi_tb_adrgenUnit;
