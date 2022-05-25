
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-----------------------------------------------------
entity automate is
    Port ( clk			 : in STD_LOGIC;
		   reset		 : in STD_LOGIC;
		   I_go	   		 : in STD_LOGIC;
		   I_EndImage	 : in STD_LOGIC;
		   I_NewLine	 : in STD_LOGIC;
		   -- signaux de commandes vers l'unité opérative
           O_ldPix11 	 : out  STD_LOGIC;
           O_ldPix21 	 : out  STD_LOGIC;
           O_ldPix31 	 : out  STD_LOGIC;
           O_shReg 		 : out  STD_LOGIC;
		   O_ldPixEdge 	 : out STD_LOGIC;
		   -- signaux de commandes vers le générateur d'adresses		   
		   O_clr_PtrLine : out STD_LOGIC;
		   O_inc_PtrLine : out STD_LOGIC;
		   O_clr_PtrCol  : out STD_LOGIC;
		   O_inc_PtrCol  : out STD_LOGIC;
		   O_selPix 	 : out STD_LOGIC_VECTOR (1 downto 0);		   
		   -- signaux de commandes vers les mémoires		   
		   O_enM_R		 : out STD_LOGIC;
		   O_enM_W		 : out STD_LOGIC;
		   -- signal de commande vers le contrôleur VGA		   		   
		   O_StartDisplay  : out STD_LOGIC		   
		   ); 
end automate;
-----------------------------------------------------


architecture Behavioral of automate is

-- définir un type énuméré avec les états de la FSM et deux signaux de ce type
type automate_state_type is (Idle, Init, Pix1, Pix2, Pix3, sh1, Pix4, Pix5, 
							 Pix6, sh2, Pix7, Pix8, Pix9, Exec, OutEdge, 
							 sh3, EndSobel);
signal current_state, next_state : automate_state_type := Idle;
  
begin

-- Le registre d'état
state_reg: process(_BLANK_TO_FILL_)
begin
	if (reset='1') then  				-- asynchronous reset (active high)
        current_state <= Idle;
	elsif (clk'event and clk='1') then	-- rising edge of clk
	    current_state <= next_state;
	end if;
end process state_reg;

	
-- Calcul de l'état suivant et des sorties
comb_logic: process(_BLANK_TO_FILL_)
begin
	-- initialisation de TOUTES les sorties
    O_ldPix11		<= '0';
    O_ldPix21 	    <= '0';
    O_ldPix31 	    <= '0';
    O_shReg 		<= '0'; 
	O_ldPixEdge 	<= '0'; 
	O_clr_PtrLine   <= '0';
	O_inc_PtrLine   <= '0';
	O_clr_PtrCol    <= '0';
	O_inc_PtrCol    <= '0';
	O_selPix 	 	<= "00";   
	O_enM_R		    <= '0';
	O_enM_W		    <= '0';
	O_StartDisplay	<= '0';
	next_state		<= Idle;
	
	case current_state is

		when Idle =>			
				-- calcul des sorties SPECIFIQUES à l'état
				O_clr_PtrLine	<= I_go;
				O_clr_PtrCol	<= I_go;
				
				-- calcul de l'état suivant
				if(I_go = '1') then
					next_state	<= Init;
				else
					next_state	<= Idle;
				end if;

		when Init =>			
				-- calcul des sorties SPECIFIQUES à l'état
				O_enM_R		<= '1';
				O_selPix	<= "00";
				
				-- calcul de l'état suivant
				next_state	<= Pix1;

		when Pix1 =>			
				-- calcul des sorties SPECIFIQUES à l'état
				O_ldPix11	<= '1';
				O_enM_R		<= '1';
				O_selPix	<= "01";
				
				-- calcul de l'état suivant
				if(I_EndImage = '0') then
					next_state	<= Pix2;
				else
					next_state	<= EndSobel;
				end if;
				
		when Pix2 => 
				-- calcul des sorties SPECIFIQUES à l'état
				__BLANK_TO_FILL__
				
				-- calcul de l'état suivant
				next_state	<= __BLANK_TO_FILL__	
		

		
		

		
		
		__BLANK_TO_FILL__
			



			
			
	    when others =>	
				next_state	<= Idle;
	end case;
end process comb_logic;
	
end Behavioral;



