
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_regUnit is
end entity tb_regUnit;

architecture archi_tb_regUnit of tb_regUnit is
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

  signal S_clk      : std_logic := '0';
  signal S_reset    : std_logic;
  signal S_pixel : STD_LOGIC_VECTOR (7 downto 0);
  signal S_ldPix11	: std_logic;	
  signal S_ldPix21  : std_logic;
  signal S_ldPix31  : std_logic;
  signal S_shReg  : std_logic;
  signal S_Pix11, S_Pix12, S_Pix13 :  STD_LOGIC_VECTOR (7 downto 0);
  signal S_Pix21, S_Pix22, S_Pix23 :  STD_LOGIC_VECTOR (7 downto 0);
  signal S_Pix31, S_Pix32, S_Pix33 :  STD_LOGIC_VECTOR (7 downto 0);	


begin

  S_clk <= not S_clk after 5 ns;
  S_reset <= '0', '1' after 23 ns, '0' after 64 ns;

  S_ldPix11 <= '0', '1' after 102 ns, '0' after 112 ns, '1' after 142 ns, '0' after 152 ns, '1' after 182 ns, '0' after 192 ns, '1' after 222 ns, '0' after 232 ns;   
  
  S_ldPix21 <= '0', '1' after 112 ns, '0' after 122 ns, '1' after 152 ns, '0' after 162 ns, '1' after 192 ns, '0' after 202 ns, '1' after 232 ns, '0' after 242 ns;
  
  S_ldPix31 <= '0', '1' after 122 ns, '0' after 132 ns, '1' after 162 ns, '0' after 172 ns, '1' after 202 ns, '0' after 212 ns, '1' after 242 ns, '0' after 252 ns;
  
  S_shReg <= '0', '1' after 132 ns, '0' after 142 ns, '1' after 172 ns, '0' after 182 ns, '1' after 212 ns, '0' after 222 ns, '1' after 252 ns, '0' after 262 ns;
  

  process (S_clk, s_reset)
  begin
    if s_reset = '1' then
	  S_pixel <= (others => '0');
    elsif (rising_edge(S_clk)) then
	  S_pixel <= STD_LOGIC_VECTOR(unsigned(S_pixel) + 1);
    end if;
  end process;
  

  regUnit_1 : entity work.regUnit
    port map (
      clk          => S_clk,
      reset        => S_reset,
      I_pixel      => S_pixel,   
      I_ldPix11    => S_ldPix11,
      I_ldPix21    => S_ldPix21,
      I_ldPix31    => S_ldPix31,
      I_shReg      => S_shReg,
      O_Pix11      => S_Pix11,
      O_Pix12      => S_Pix12,
      O_Pix13      => S_Pix13,
      O_Pix21      => S_Pix21,
      O_Pix22      => S_Pix22,
      O_Pix23      => S_Pix23,
      O_Pix31      => S_Pix31,
      O_Pix32      => S_Pix32,
      O_Pix33      => S_Pix33);


end architecture archi_tb_regUnit;
