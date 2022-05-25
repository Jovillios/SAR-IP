
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_operativeUnit is
end entity tb_operativeUnit;

architecture archi_tb_operativeUnit of tb_operativeUnit is
  component operativeUnit is
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
  end component operativeUnit;

  signal S_clk      : std_logic := '0';
  signal S_reset    : std_logic;
  signal S_pixel : STD_LOGIC_VECTOR (7 downto 0);
  signal S_ldPix11	: std_logic;	
  signal S_ldPix21  : std_logic;
  signal S_ldPix31  : std_logic;
  signal S_shReg  : std_logic;
  signal S_ldPixEdge  : std_logic;
  signal S_pixEdge  : std_logic;

begin

  S_clk <= not S_clk after 5 ns;
  S_reset <= '0', '1' after 23 ns, '0' after 64 ns;

  S_ldPix11 <= '0', '1' after 102 ns, '0' after 112 ns, '1' after 142 ns, '0' after 152 ns, '1' after 182 ns, '0' after 192 ns, '1' after 222 ns, '0' after 232 ns;   
  
  S_ldPix21 <= '0', '1' after 112 ns, '0' after 122 ns, '1' after 152 ns, '0' after 162 ns, '1' after 192 ns, '0' after 202 ns, '1' after 232 ns, '0' after 242 ns;
  
  S_ldPix31 <= '0', '1' after 122 ns, '0' after 132 ns, '1' after 162 ns, '0' after 172 ns, '1' after 202 ns, '0' after 212 ns, '1' after 242 ns, '0' after 252 ns;
  
  S_shReg <= '0', '1' after 132 ns, '0' after 142 ns, '1' after 172 ns, '0' after 182 ns, '1' after 212 ns, '0' after 222 ns, '1' after 252 ns, '0' after 262 ns;
  
  S_ldPixEdge <= '0', '1' after 212 ns, '0' after 222 ns, '1' after 252 ns, '0' after 262 ns;

  process (S_clk, s_reset)
  begin
    if s_reset = '1' then
	  S_pixel <= (others => '0');
    elsif (rising_edge(S_clk)) then
	  S_pixel <= STD_LOGIC_VECTOR(unsigned(S_pixel) + 50);
    end if;
  end process;
  

  operativeUnit_1 : entity work.operativeUnit
    port map (
      clk          => S_clk,
      reset        => S_reset,
      I_pixel      => S_pixel,   
      I_ldPix11    => S_ldPix11,
      I_ldPix21    => S_ldPix21,
      I_ldPix31    => S_ldPix31,
      I_shReg      => S_shReg,
      I_ldPixEdge  => S_ldPixEdge,
      O_pixEdge    => S_pixEdge
	  );	   


end architecture archi_tb_operativeUnit;
