
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity adrgenUnit is
    Port ( clk	 		 : in STD_LOGIC;
		   reset	 	 : in STD_LOGIC;
		   I_clr_PtrLine : in STD_LOGIC;
		   I_inc_PtrLine : in STD_LOGIC;
		   I_clr_PtrCol  : in STD_LOGIC;
		   I_inc_PtrCol  : in STD_LOGIC;
		   I_selPix 	 : in STD_LOGIC_VECTOR (1 downto 0);
		   O_EndImage	 : out STD_LOGIC;
		   O_NewLine	 : out STD_LOGIC;
		   O_ADR_R		 : out STD_LOGIC_VECTOR (13 downto 0); -- La profondeur de la mémoire IN = 100x100 = 10000
		   O_ADR_W	 	 : out STD_LOGIC_VECTOR (13 downto 0)  -- La profondeur de la mémoire OUT = 100x100 = 10000   
		   ); 
end adrgenUnit;


architecture Behavioral of adrgenUnit is

-- déclaration des signaux internes
	_BLANK_

begin

	
	_BLANK_
		

end Behavioral;

