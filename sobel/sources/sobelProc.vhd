
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity  sobelProc is
    Port ( clk				: in STD_LOGIC;
		   reset			: in STD_LOGIC;
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
end  sobelProc;


architecture Behavioral of  sobelProc is

-- déclaration des sous-composants

  -- unité opérative 
  component operativeUnit is
    port (clk,reset	:in STD_LOGIC;
		  I_pixel : in  STD_LOGIC_VECTOR (7 downto 0); -- Pixel from the memory
          I_ldPix11 : in  STD_LOGIC;
          I_ldPix21 : in  STD_LOGIC;
          I_ldPix31 : in  STD_LOGIC;
          I_shReg : in  STD_LOGIC;
		  I_ldPixEdge : in STD_LOGIC;
		  O_pixEdge : out  STD_LOGIC	
		  );
  end component operativeUnit;
  
  -- générateur d'adresses
  component adrgenUnit is
    port ( clk,reset	 : in STD_LOGIC;
		   I_clr_PtrLine : in STD_LOGIC;
		   I_inc_PtrLine : in STD_LOGIC;
		   I_clr_PtrCol  : in STD_LOGIC;
		   I_inc_PtrCol  : in STD_LOGIC;
		   I_selPix 	 : in STD_LOGIC_VECTOR (1 downto 0);
		   O_EndImage	 : out STD_LOGIC;
		   O_NewLine	 : out STD_LOGIC;
		   O_ADR_R		 : out STD_LOGIC_VECTOR (13 downto 0);
		   O_ADR_W	 	 : out STD_LOGIC_VECTOR (13 downto 0)   
		   );
  end component adrgenUnit;
  
  -- automate
  component automate is
    Port (clk,reset	 : in STD_LOGIC;
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
  end component automate;
 
-- déclaration des signaux internes
signal S_EndImage	 	: STD_LOGIC;
signal S_NewLine	 	: STD_LOGIC;
signal S_ldPix11 	 	: STD_LOGIC;
signal S_ldPix21 	 	: STD_LOGIC;
signal S_ldPix31 	 	: STD_LOGIC;
signal S_shReg 	 	: STD_LOGIC;
signal S_ldPixEdge		: STD_LOGIC;
signal S_clr_PtrLine 	: STD_LOGIC;
signal S_inc_PtrLine 	: STD_LOGIC;
signal S_clr_PtrCol  	: STD_LOGIC;
signal S_inc_PtrCol  	: STD_LOGIC;
signal S_selPix 	 	: STD_LOGIC_VECTOR (1 downto 0);		   
		   

begin

-- instanciation des sous-composants et établissement des interconnexions
  
  -- instanciation de l'unité opérative
  operativeUnit_1 : entity work.operativeUnit
    port map (
      clk          => clk,
      reset        => reset,
	  I_pixel      => I_pixel, 
	  I_ldPix11    => S_ldPix11,
	  I_ldPix21    => S_ldPix21,
	  I_ldPix31    => S_ldPix31,
	  I_shReg      => S_shReg,
	  I_ldPixEdge  => S_ldPixEdge,
	  O_pixEdge    => O_pixEdge
	  );
	  
  -- instanciation du générateur d'adresses 
  adrgenUnit_1 : entity work.adrgenUnit
    port map (
      clk           => clk,
      reset         => reset,
	  I_clr_PtrLine => S_clr_PtrLine, 
      I_inc_PtrLine => S_inc_PtrLine,
      I_clr_PtrCol  => S_clr_PtrCol,
      I_inc_PtrCol  => S_inc_PtrCol, 
	  I_selPix 	    => S_selPix, 
	  O_EndImage	=> S_EndImage,	
	  O_NewLine	    => S_NewLine, 
	  O_ADR_R		=> O_ADR_R,	
	  O_ADR_W	 	=> O_ADR_W
	  );
	  
  -- instanciation de l'automate
  automate_1 : entity work.automate
    port map (
      clk           => clk,
      reset         => reset,
	  I_go	   		 => I_go,
	  I_EndImage	 => S_EndImage,	 
	  I_NewLine	     => S_NewLine,	 
      O_ldPix11 	 => S_ldPix11, 	 
      O_ldPix21 	 => S_ldPix21, 	 
      O_ldPix31 	 => S_ldPix31, 	 
      O_shReg 		 => S_shReg, 		 
      O_ldPixEdge 	 => S_ldPixEdge, 	 
      O_clr_PtrLine  => S_clr_PtrLine, 
      O_inc_PtrLine  => S_inc_PtrLine, 
      O_clr_PtrCol   => S_clr_PtrCol, 
      O_inc_PtrCol   => S_inc_PtrCol,  
      O_selPix 	     => S_selPix, 	 
      O_enM_R		 => O_enM_R,		 
      O_enM_W		 => O_enM_W,		 
      O_StartDisplay => O_StartDisplay
      );
  
end Behavioral;

