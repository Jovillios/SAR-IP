
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity  operativeUnit is
    Port ( clk		:in STD_LOGIC;
		   reset	:in STD_LOGIC;
		   I_pixel : in  STD_LOGIC_VECTOR (7 downto 0); -- Pixel from the memory
           I_ldPix11 : in  STD_LOGIC;
           I_ldPix21 : in  STD_LOGIC;
           I_ldPix31 : in  STD_LOGIC;
           I_shReg : in  STD_LOGIC;
		   I_ldPixEdge : in STD_LOGIC;
		   O_pixEdge : out  STD_LOGIC		   
		   ); 
end  operativeUnit;


architecture Behavioral of  operativeUnit is

-- déclaration des sous-composants

  -- banc de registres
  component regUnit is
    port (clk,reset	:in STD_LOGIC;
		   I_pixel : in  STD_LOGIC_VECTOR (7 downto 0); -- Pixel from the memory
           I_ldPix11 : in  STD_LOGIC;
           I_ldPix21 : in  STD_LOGIC;
           I_ldPix31 : in  STD_LOGIC;
           I_shReg : in  STD_LOGIC;
		   O_Pix11, O_Pix12, O_Pix13 : out STD_LOGIC_VECTOR (7 downto 0);
		   O_Pix21, O_Pix22, O_Pix23 : out STD_LOGIC_VECTOR (7 downto 0);
		   O_Pix31, O_Pix32, O_Pix33 : out STD_LOGIC_VECTOR (7 downto 0)	
		   );
  end component regUnit;
  
  -- unité de calcul du gradient
  component gradientUnit is
    port ( I_Pix11, I_Pix12, I_Pix13 : in STD_LOGIC_VECTOR (7 downto 0);
		   I_Pix21, I_Pix22, I_Pix23 : in STD_LOGIC_VECTOR (7 downto 0);
		   I_Pix31, I_Pix32, I_Pix33 : in STD_LOGIC_VECTOR (7 downto 0);
		   O_pixEdge : out  STD_LOGIC		
		   );
  end component gradientUnit;
  
  -- registre de sortie
  component pixedgeReg is
    Port (clk,reset	:in STD_LOGIC;
		   I_pixEdge : in  STD_LOGIC;
		   I_ldPixEdge : in STD_LOGIC;
		   O_pixEdge : out  STD_LOGIC		   
		   ); 
  end component pixedgeReg;
 
-- déclaration des signaux internes
signal S_Pix11, S_Pix12, S_Pix13 : STD_LOGIC_VECTOR (7 downto 0);
signal S_Pix21, S_Pix22, S_Pix23 : STD_LOGIC_VECTOR (7 downto 0);
signal S_Pix31, S_Pix32, S_Pix33 : STD_LOGIC_VECTOR (7 downto 0);	
signal S_pixEdge : STD_LOGIC;

begin

-- instanciation des sous-composants et établissement des interconnexions
  
  -- instanciation d'un banc de registres
  regUnit_1 : entity work.regUnit
    port map (
      clk          => clk,
      reset        => reset,
      I_pixel      => I_pixel,   
      I_ldPix11    => I_ldPix11,
      I_ldPix21    => I_ldPix21,
      I_ldPix31    => I_ldPix31,
      I_shReg      => I_shReg,
      O_Pix11      => S_Pix11,
      O_Pix12      => S_Pix12,
      O_Pix13      => S_Pix13,
      O_Pix21      => S_Pix21,
      O_Pix22      => S_Pix22,
      O_Pix23      => S_Pix23,
      O_Pix31      => S_Pix31,
      O_Pix32      => S_Pix32,
      O_Pix33      => S_Pix33);
	  
  -- instanciation d'une unité de calcul du gradient 
  gradientUnit_1 : entity work.gradientUnit
    port map (
      O_pixEdge    => S_pixEdge,
      I_Pix11      => S_Pix11,
      I_Pix12      => S_Pix12,
      I_Pix13      => S_Pix13,
      I_Pix21      => S_Pix21,
      I_Pix22      => S_Pix22,
      I_Pix23      => S_Pix23,
      I_Pix31      => S_Pix31,
      I_Pix32      => S_Pix32,
      I_Pix33      => S_Pix33);
	  
  -- instanciation d'un registre de sortie
  pixedgeReg_1 : entity work.pixedgeReg
    port map (
      clk          => clk,
      reset        => reset,
	  I_pixEdge    => S_pixEdge,
      I_ldPixEdge  => I_ldPixEdge,
      O_pixEdge    => O_pixEdge);
  
end Behavioral;

