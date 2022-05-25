
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_sobelProc is
end entity tb_sobelProc;

architecture archi_tb_sobelProc of tb_sobelProc is
  component sobelProc is
    Port ( clk,reset		: in STD_LOGIC;
		   I_go	   			: in STD_LOGIC;
		   -- interface avec la mémoire IN (lecture)
		   O_enM_R		 	: out STD_LOGIC;
		   O_ADR_R		 	: out STD_LOGIC_VECTOR (13 downto 0); 
		   I_pixel 			: in  STD_LOGIC_VECTOR (7 downto 0); -- Pixel from memory IN
		   -- interface avec la mémoire OUT (écriture)
		   O_enM_W		 	: out STD_LOGIC;		   
		   O_ADR_W	 	 	: out STD_LOGIC_VECTOR (13 downto 0); 
		   O_pixEdge 		: out  STD_LOGIC; -- Edge to memory OUT
		   -- signal de commande vers le contrôleur VGA		   		   
		   O_StartDisplay	: out STD_LOGIC
		   ); 
  end component sobelProc;

signal S_clk             :  STD_LOGIC := '0';
signal S_reset	       :  STD_LOGIC;
signal S_go	   		   :  STD_LOGIC;
signal S_enM_R		   :  STD_LOGIC;
signal S_ADR_R		   :  STD_LOGIC_VECTOR (13 downto 0);
signal S_pixel 		   :  STD_LOGIC_VECTOR (7 downto 0);
signal S_enM_W		   :  STD_LOGIC;
signal S_ADR_W	 	   :  STD_LOGIC_VECTOR (13 downto 0);
signal S_pixEdge 	   :  STD_LOGIC;
signal S_StartDisplay  :  STD_LOGIC;
  


begin

  S_pixel <= "00000111";

  S_clk <= not S_clk after 5 ns;
  S_reset <= '1', '0' after 64 ns;
  S_go <= '0', '1' after 164 ns, '0' after 264 ns;  

  sobelProc_1 : entity work.sobelProc
    port map (
      clk               => S_clk          ,
      reset	            => S_reset	      ,
      I_go	   		    => S_go	   		  ,
      O_enM_R		    => S_enM_R		  ,
      O_ADR_R		    => S_ADR_R		  ,
      I_pixel 		    => S_pixel 		  ,
      O_enM_W		    => S_enM_W		  ,
      O_ADR_W	 	    => S_ADR_W	 	  ,
      O_pixEdge 	    => S_pixEdge 	  ,
      O_StartDisplay    => S_StartDisplay 
	  );
      

end architecture archi_tb_sobelProc;
