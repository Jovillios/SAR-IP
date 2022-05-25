library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity gradientUnit is
    Port ( I_Pix11, I_Pix12, I_Pix13 : in STD_LOGIC_VECTOR (7 downto 0);
		   I_Pix21, I_Pix22, I_Pix23 : in STD_LOGIC_VECTOR (7 downto 0);
		   I_Pix31, I_Pix32, I_Pix33 : in STD_LOGIC_VECTOR (7 downto 0);
		   O_pixEdge : out  STD_LOGIC		   
		   ); 
end gradientUnit;


architecture Behavioral of gradientUnit is

-- déclaration des signaux internes
signal Gh : SIGNED (9 downto 0);
signal Gv : SIGNED (9 downto 0);
signal Sum : SIGNED (10 downto 0);

begin

	-- gradient unit process
    process(I_Pix11, I_Pix13, I_Pix21, I_Pix23, I_Pix31, I_Pix33)
    begin
        -- conversion of std vector to unsigned values in order to make operations on the vectors
        Gh <= SIGNED("00"&I_Pix13) 
            + SIGNED('0'&I_Pix23&'0') 
            + SIGNED("00"&I_Pix33)
            - SIGNED("00"&I_Pix11) 
            - SIGNED('0'&I_Pix21&'0')
            - SIGNED("00"&I_Pix31);
    end process;
    
    process(I_Pix11, I_Pix12, I_Pix13, I_Pix31, I_Pix32, I_Pix33)
    begin
    
        Gv <= SIGNED("00"&I_Pix11) 
            + SIGNED('0'&I_Pix12&'0') 
            + SIGNED("00"&I_Pix13)
            - SIGNED("00"&I_Pix31) 
            - SIGNED('0'&I_Pix32&'0')
            - SIGNED("00"&I_Pix33);

		
    end process;
    Sum <= ('0'&abs(Gh)) + ('0'&abs(Gv));

    O_pixEdge <= '1' when Sum > 255 else '0';
    
end Behavioral;

