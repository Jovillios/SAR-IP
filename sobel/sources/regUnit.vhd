
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity regUnit is
    Port ( clk			:in STD_LOGIC;
	       reset		:in STD_LOGIC;
		   I_pixel : in  STD_LOGIC_VECTOR (7 downto 0); -- Pixel from the memory
           I_ldPix11 : in  STD_LOGIC;
           I_ldPix21 : in  STD_LOGIC;
           I_ldPix31 : in  STD_LOGIC;
           I_shReg : in  STD_LOGIC;
		   O_Pix11, O_Pix12, O_Pix13 : out STD_LOGIC_VECTOR (7 downto 0);
		   O_Pix21, O_Pix22, O_Pix23 : out STD_LOGIC_VECTOR (7 downto 0);
		   O_Pix31, O_Pix32, O_Pix33 : out STD_LOGIC_VECTOR (7 downto 0)		   
		   ); 
end regUnit;


architecture Behavioral of regUnit is


signal S_Pix11, S_Pix12, S_Pix13 : STD_LOGIC_VECTOR (7 downto 0);
signal S_Pix21, S_Pix22, S_Pix23 : STD_LOGIC_VECTOR (7 downto 0);
signal S_Pix31, S_Pix32, S_Pix33 : STD_LOGIC_VECTOR (7 downto 0);	

begin

	-- banc de registres
	process(reset, clk)
	begin
	if(reset = '1') then
		S_Pix11 <= (others => '0');
		S_Pix12 <= (others => '0');
		S_Pix13 <= (others => '0');
		S_Pix21 <= (others => '0');
		S_Pix22 <= (others => '0');
		S_Pix23 <= (others => '0');
		S_Pix31 <= (others => '0');
		S_Pix32 <= (others => '0');
		S_Pix33 <= (others => '0');		
	elsif(rising_edge(clk)) then
	   
	   if I_shReg = '1' then
           S_Pix33 <= S_Pix32;
           S_Pix32 <= S_Pix31;
           S_Pix13 <= S_Pix12;
           S_Pix12 <= S_Pix11;
           S_Pix23 <= S_Pix22;
           S_Pix22 <= S_Pix21;
       end if;
        
	   if I_ldPix11 = '1' then 
        S_Pix11 <= I_pixel;
       end if;
		
	   if I_ldPix21 = '1' then 
        S_Pix21 <= I_pixel;
       end if;
       
       if I_ldPix31 = '1' then 
        S_Pix31 <= I_pixel;
       end if;

		
	end if;
	end process;

	-- Connecter les sorties des registres aux ports 
	-- d’entrée/sortie du banc de registres 
	O_Pix11 <= S_Pix11;
	O_Pix12 <= S_Pix12;
	O_Pix13 <= S_Pix13;
	O_Pix21 <= S_Pix21;
	O_Pix22 <= S_Pix22;
	O_Pix23 <= S_Pix23;
	O_Pix31 <= S_Pix31;
	O_Pix32 <= S_Pix32;
	O_Pix33 <= S_Pix33;
	
end Behavioral;

