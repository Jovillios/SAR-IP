
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-----------------------------------------------------
entity automate is
    Port ( clk			 : in STD_LOGIC;
		   reset		 : in STD_LOGIC;
		   I_go	   		 : in STD_LOGIC;
		   I_EndImage	 : in STD_LOGIC;
		   I_NewLine	 : in STD_LOGIC;
		   -- signaux de commandes vers l'unit� op�rative
           O_ldPix11 	 : out  STD_LOGIC;
           O_ldPix21 	 : out  STD_LOGIC;
           O_ldPix31 	 : out  STD_LOGIC;
           O_shReg 		 : out  STD_LOGIC;
		   O_ldPixEdge 	 : out STD_LOGIC;
		   -- signaux de commandes vers le g�n�rateur d'adresses		   
		   O_clr_PtrLine : out STD_LOGIC;
		   O_inc_PtrLine : out STD_LOGIC;
		   O_clr_PtrCol  : out STD_LOGIC;
		   O_inc_PtrCol  : out STD_LOGIC;
		   O_selPix 	 : out STD_LOGIC_VECTOR (1 downto 0);		   
		   -- signaux de commandes vers les m�moires		   
		   O_enM_R		 : out STD_LOGIC;
		   O_enM_W		 : out STD_LOGIC;
		   -- signal de commande vers le contr�leur VGA		   		   
		   O_StartDisplay  : out STD_LOGIC		   
		   ); 
end automate;
-----------------------------------------------------


architecture Behavioral of automate is

-- d�finir un type �num�r� avec les �tats de la FSM et deux signaux de ce type
type automate_state_type is (Idle, Init, Pix1, Pix2, Pix3, sh1, Pix4, Pix5, 
							 Pix6, sh2, Pix7, Pix8, Pix9, Exec, OutEdge, 
							 sh3, EndSobel);
signal current_state, next_state : automate_state_type := Idle;
  
begin

-- Le registre d'�tat
state_reg: process(clk, reset)
begin
	if (reset='1') then  				-- asynchronous reset (active high)
        current_state <= Idle;
	elsif (clk'event and clk='1') then	-- rising edge of clk
	    current_state <= next_state;
	end if;
end process state_reg;

	
-- Calcul de l'�tat suivant et des sorties
comb_logic: process(current_state,I_go,I_EndImage,I_NewLine)
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
				-- calcul des sorties SPECIFIQUES � l'�tat
				O_clr_PtrLine	<= I_go;
				O_clr_PtrCol	<= I_go;
				
				-- calcul de l'�tat suivant
				if(I_go = '1') then
					next_state	<= Init;
				else
					next_state	<= Idle;
				end if;

		when Init =>			
				-- calcul des sorties SPECIFIQUES � l'�tat
				O_enM_R		<= '1';
				O_selPix	<= "00";
				
				-- calcul de l'�tat suivant
				next_state	<= Pix1;

		when Pix1 =>			
				-- calcul des sorties SPECIFIQUES � l'�tat
				O_ldPix11	<= '1';
				O_enM_R		<= '1';
				O_selPix	<= "01";
				
				-- calcul de l'�tat suivant
				if(I_EndImage = '0') then
					next_state	<= Pix2;
				else
					next_state	<= EndSobel;
				end if;
				
		when Pix2 => 
				-- calcul des sorties SPECIFIQUES � l'�tat
				O_ldPix21	<= '1';
				O_enM_R		<= '1';
				O_selPix	<= "10";
				
				-- calcul de l'état suivant
				next_state <= Pix3;
		when Pix3 => 
				-- calcul des sorties SPECIFIQUES � l'�tat
				O_ldPix31	<= '1';
				O_inc_PtrCol <= '1';
								
				-- calcul de l'état suivant
				next_state <= sh1;
				
		when sh1 =>
		      
		      O_shReg <= '1';
		      O_enM_R <= '1';
		      O_selPix <= "00";
	
	          next_state <= Pix4;
	          
        when Pix4 => 
				-- calcul des sorties SPECIFIQUES � l'�tat
				O_ldPix11	<= '1';
				O_enM_R		<= '1';
				O_selPix	<= "01";
				
				-- calcul de l'état suivant
				next_state <= Pix5;
				
		when Pix5 => 
				-- calcul des sorties SPECIFIQUES � l'�tat
				O_ldPix21	<= '1';
				O_enM_R		<= '1';
				O_selPix	<= "10";
				
				-- calcul de l'état suivant
				next_state <= Pix6;
				
		when Pix6 => 
				-- calcul des sorties SPECIFIQUES � l'�tat
				O_ldPix31	<= '1';
				O_inc_PtrCol <= '1';
								
				-- calcul de l'état suivant
				next_state <= sh2;		
		
		when sh2 =>
		      
		      O_shReg <= '1';
		      O_enM_R <= '1';
		      O_selPix <= "00";
	
	          next_state <= Pix7;

        when Pix7 => 
				-- calcul des sorties SPECIFIQUES � l'�tat
				O_ldPix11	<= '1';
				O_enM_R		<= '1';
				O_selPix	<= "01";
				
				-- calcul de l'état suivant
				next_state <= Pix8;
				
		when Pix8 => 
				-- calcul des sorties SPECIFIQUES � l'�tat
				O_ldPix21	<= '1';
				O_enM_R		<= '1';
				O_selPix	<= "10";
				
				-- calcul de l'état suivant
				next_state <= Pix9;

		when Pix9 => 
				-- calcul des sorties SPECIFIQUES � l'�tat
				O_ldPix31	<= '1';
				O_inc_PtrCol <= '1';
								
				-- calcul de l'état suivant
				next_state <= Exec;	
				
		when Exec =>
		          O_ldPixEdge <= '1';
		          next_state <= OutEdge;
		when OutEdge =>
		          O_enM_W <= '1';
		          next_state <= sh3;
		          
		when sh3 =>
		      
		      O_shReg <= '1';
		      O_enM_R <= '1';
		      O_selPix <= "00";
	          if (I_NewLine = '1') then
	               O_inc_PtrLine <= '1';
	               next_state <= Pix1;
	          else
	               O_inc_PtrLine <= '0';
	               next_state <= Pix7;
	          end if;
	          
	    when EndSobel =>
	           O_StartDisplay <= '1';
	           next_state <= EndSobel;
	           
	    when others =>	
				next_state	<= Idle;
	end case;
end process comb_logic;
	
end Behavioral;



