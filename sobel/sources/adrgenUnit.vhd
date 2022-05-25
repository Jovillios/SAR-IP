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

SIGNAL PtrLine : UNSIGNED (6 downto 0);
SIGNAL PtrCol : UNSIGNED (13 downto 0);
SIGNAL Adr : UNSIGNED (13 downto 0);
SIGNAL Adr_bis : unsigned (13 downto 0);
SIGNAL Adr_ter : UNSIGNED (13 downto 0);

begin

    process(clk, reset) 
        begin
        
        -- reset--    
        if (reset = '1') then
            O_EndImage <= '0';
            O_NewLine <= '0';
            O_ADR_R <= "00000000000000";
            O_ADR_W <= "00000000000000";
            Adr <= "00000000000000";
            Adr_bis <= "00000000000000";
            Adr_ter <= "00000000000000";
            PtrCol <= "00000000000000";
            PtrLine <= "0000000";
            
        elsif rising_edge(clk) then
        
            -- pointeur ligne--
            if (I_clr_PtrLine = '1') then
                PtrLine <= "0000000";
                O_EndImage <= '0';
            elsif (I_inc_PtrLine = '1') then
            
                if (PtrLine = to_unsigned(97,14)) then
                    O_EndImage <= '1';
                else
                    PtrLine <= PtrLine + 1;
                end if;
            end if;
                
            -- pointeur colonne--
            if (I_clr_PtrCol = '1') then
                PtrCol <= "00000000000000";
                O_NewLine <= '0';
            elsif (I_inc_PtrCol = '1') then
                if (PtrCol = to_unsigned(99,14)) then
                    O_NewLine <= '1';
                else
                    PtrCol <= PtrCol + 1;
                end if;
            end if;
        
            -- multiplexeur --
            if (I_selPix = "00") then
               O_ADR_R <= std_logic_vector(Adr + to_unsigned(0,14));
            elsif (I_selPix = "01") then
                O_ADR_R <= std_logic_vector(Adr + to_unsigned(100,14));
            elsif (I_selPix = "10") then
                O_ADR_R <= std_logic_vector(Adr + to_unsigned(200,14));
            end if;
            
            Adr <= PtrCol;
            Adr_bis <= (to_unsigned(100,7)*PtrLine);
            Adr_ter <= Adr + Adr_bis;
            
            O_ADR_W <= std_logic_vector(Adr_ter + to_unsigned(99,14));
            

        end if;
        
    end process;

    
    
end Behavioral;

