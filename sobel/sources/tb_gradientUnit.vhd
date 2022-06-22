
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_gradientUnit is
end entity tb_gradientUnit;

architecture archi_tb_gradientUnit of tb_gradientUnit is
  component gradientUnit is
    port ( I_Pix11, I_Pix12, I_Pix13 : in STD_LOGIC_VECTOR (7 downto 0);
		   I_Pix21, I_Pix22, I_Pix23 : in STD_LOGIC_VECTOR (7 downto 0);
		   I_Pix31, I_Pix32, I_Pix33 : in STD_LOGIC_VECTOR (7 downto 0);
		   O_pixEdge : out  STD_LOGIC		
		   );
  end component gradientUnit;

  signal S_pixEdge  : std_logic;
  signal S_Pix11, S_Pix12, S_Pix13 :  STD_LOGIC_VECTOR (7 downto 0);
  signal S_Pix21, S_Pix22, S_Pix23 :  STD_LOGIC_VECTOR (7 downto 0);
  signal S_Pix31, S_Pix32, S_Pix33 :  STD_LOGIC_VECTOR (7 downto 0);	


begin


  S_Pix11 <= STD_LOGIC_VECTOR(to_unsigned(15,8)) , STD_LOGIC_VECTOR(to_unsigned(15,8)) after 200 ns;
  S_Pix12 <= STD_LOGIC_VECTOR(to_unsigned(15,8)) , STD_LOGIC_VECTOR(to_unsigned(80,8)) after 200 ns;
  S_Pix13 <= STD_LOGIC_VECTOR(to_unsigned(15,8)) , STD_LOGIC_VECTOR(to_unsigned(150,8)) after 200 ns;
  
  S_Pix21 <= STD_LOGIC_VECTOR(to_unsigned(80,8)) , STD_LOGIC_VECTOR(to_unsigned(15,8)) after 200 ns;
  S_Pix22 <= STD_LOGIC_VECTOR(to_unsigned(80,8)) , STD_LOGIC_VECTOR(to_unsigned(80,8)) after 200 ns;
  S_Pix23 <= STD_LOGIC_VECTOR(to_unsigned(80,8)) , STD_LOGIC_VECTOR(to_unsigned(150,8)) after 200 ns;
  
  S_Pix31 <= STD_LOGIC_VECTOR(to_unsigned(150,8)) , STD_LOGIC_VECTOR(to_unsigned(15,8)) after 200 ns;
  S_Pix32 <= STD_LOGIC_VECTOR(to_unsigned(150,8)) , STD_LOGIC_VECTOR(to_unsigned(80,8)) after 200 ns;
  S_Pix33 <= STD_LOGIC_VECTOR(to_unsigned(150,8)) , STD_LOGIC_VECTOR(to_unsigned(150,8)) after 200 ns;
  

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
      

end architecture archi_tb_gradientUnit;
