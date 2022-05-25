--
-- Dual-Port RAM with Enable on Each Port
-- 1st port implements read and write
-- 2nd port only read
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DualPortRamGeneric is
    generic(
        G_MemoryWidth   : integer;  
        G_MemoryDepth   : integer;  
        G_AddressWidth  : integer   
    );
	port (	
		I_clk   : in std_logic;
		I_ena   : in std_logic;
		I_enb   : in std_logic;
		I_wea   : in std_logic;
		I_addra : in std_logic_vector(G_AddressWidth-1 downto 0);
		I_addrb : in std_logic_vector(G_AddressWidth-1 downto 0);
		I_dina   : in std_logic_vector(G_MemoryWidth-1 downto 0);
		O_douta   : out std_logic_vector(G_MemoryWidth-1 downto 0);
		O_doutb   : out std_logic_vector(G_MemoryWidth-1 downto 0)
	);
end DualPortRamGeneric;

architecture rtl of DualPortRamGeneric is

	type ram_type is array (0 to G_MemoryDepth-1) of std_logic_vector(G_MemoryWidth-1 downto 0);
	signal RAM : ram_type := (others => (others => '1')); -- attention initialisation à '1'
	signal read_addra : std_logic_vector(G_AddressWidth-1 downto 0);
	signal read_addrb : std_logic_vector(G_AddressWidth-1 downto 0);

begin

-- pragma synthesis_off
	assert (not( G_MemoryDepth > 2**G_AddressWidth)) 
	report "bad value for G_MemoryDepth or G_AddressWidth" 
	severity error;
-- pragma synthesis_on


  process (I_clk)
  begin
  	if (I_clk'event and I_clk = '1') then
  		if (I_ena = '1') then
  			if (I_wea = '1') then
  				RAM(to_integer(unsigned(I_addra))) <= I_dina;
  			end if;
  			read_addra <= I_addra;
  		end if;
  		if (I_enb = '1') then
  			read_addrb <= I_addrb;
  		end if;
  	end if;
  end process;
  
  O_douta <= RAM(to_integer(unsigned(read_addra)));
  O_doutb <= RAM(to_integer(unsigned(read_addrb)));

end rtl;

-- The following is an instantiation template
--
--
-- Component Declaration
--component DualPortRamGeneric is
-- generic (
--          G_MemoryWidth  : Integer;
--          G_MemoryDepth  : Integer;
--          G_AddressWidth : Integer
--          );
--port (
--		I_clk   : in std_logic;
--		I_ena   : in std_logic;
--		I_enb   : in std_logic;
--		I_wea   : in std_logic;
--		I_addra : in std_logic_vector(G_AddressWidth-1 downto 0);
--		I_addrb : in std_logic_vector(G_AddressWidth-1 downto 0);
--		I_dina   : in std_logic_vector(G_MemoryWidth-1 downto 0);
--		O_douta   : out std_logic_vector(G_MemoryWidth-1 downto 0);
--		O_doutb   : out std_logic_vector(G_MemoryWidth-1 downto 0)
--      );
--end component;

-- Instantiation
--<your_instance_name> : DualPortRamGeneric
-- generic map (
--      G_MemoryWidth => 8,
--      G_MemoryDepth => 10000,
--      G_AddressWidth => 14
--      )
-- port map (
--      I_clk    => clk,
--      I_ena    => ena,  
--      I_enb    => enb,  
--      I_wea    => wea,  
--      I_addra  => addra,
--      I_addrb  => addrb,
--      I_dina   => dina, 
--      O_douta  => douta,
--      O_doutb  => doutb
--      );





