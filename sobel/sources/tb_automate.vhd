
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_automate is
end entity tb_automate;

architecture archi_tb_automate of tb_automate is
 
  signal S_clk      	: STD_LOGIC := '1';
  signal S_reset    	: STD_LOGIC := '1';
  signal S_go	   		: STD_LOGIC := '0';  
  signal S_EndImage	    : STD_LOGIC := '0';
  signal S_NewLine	    : STD_LOGIC := '0';  
  signal S_ldPix11 	    : STD_LOGIC;
  signal S_ldPix21 	    : STD_LOGIC;
  signal S_ldPix31 	    : STD_LOGIC;
  signal S_shReg 		: STD_LOGIC;  
  signal S_ldPixEdge 	: STD_LOGIC;  
  signal S_clr_PtrLine  : STD_LOGIC; 
  signal S_inc_PtrLine  : STD_LOGIC; 
  signal S_clr_PtrCol   : STD_LOGIC; 
  signal S_inc_PtrCol   : STD_LOGIC; 
  signal S_selPix 	    : STD_LOGIC_VECTOR (1 downto 0);  
  signal S_enM_R		: STD_LOGIC;  
  signal S_enM_W		: STD_LOGIC;  
  signal S_StartDisplay : STD_LOGIC;

  constant clk_period : time := 10 ns;

begin

  S_clk <= not S_clk after clk_period/2;
  S_reset <= '1', '0' after 2*clk_period;
  S_go <= '0', '1' after 4*clk_period, '0' after 5*clk_period;

  process
  begin
    S_NewLine <= '0';
    wait for 4*clk_period; -- wait for go = '1'
	wait for (2 + 13)*clk_period; -- traitement du 1er pixel
	wait for (2*6)*clk_period;    -- traitement de 2 pixels suivants (pas besoin de répéter 100 fois pour ce testbench)
	S_NewLine <= '1';	
	wait for clk_period;
	S_NewLine <= '0';
  end process;
 
  S_EndImage <= '0', '1' after 100*clk_period; -- just pour tester le passage à l'état final EndSobel
  
  
  automate_1 : entity work.automate
    port map (
      clk            => S_clk,
      reset          => S_reset,
      I_go	   		 => S_go,	   		
      I_EndImage	 => S_EndImage,	
      I_NewLine	     => S_NewLine,	    
      O_ldPix11 	 => S_ldPix11, 	
      O_ldPix21 	 => S_ldPix21, 	
      O_ldPix31 	 => S_ldPix31, 	
      O_shReg 		 => S_shReg, 		
      O_ldPixEdge 	 => S_ldPixEdge, 	
      O_clr_PtrLine  => S_clr_PtrLine, 
      O_inc_PtrLine  => S_inc_PtrLine, 
      O_clr_PtrCol   => S_clr_PtrCol,  
      O_inc_PtrCol   => S_inc_PtrCol,  
      O_selPix 	     => S_selPix, 	    
      O_enM_R		 => S_enM_R,		
      O_enM_W		 => S_enM_W,		
      O_StartDisplay => S_StartDisplay	
	  );
	  
end architecture archi_tb_automate;
