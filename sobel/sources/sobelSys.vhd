
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity  sobelSys is
    Port ( clk_i : in  STD_LOGIC;
		   reset_i : in  STD_LOGIC;
		   go_i    : in STD_LOGIC;
           -- VGA Output Signals
           vga_hs_o : out  STD_LOGIC; -- HSYNC OUT
           vga_vs_o : out  STD_LOGIC; -- VSYNC OUT
           vga_red_o    : out  STD_LOGIC_VECTOR (3 downto 0); -- Red signal going to the VGA interface
           vga_green_o  : out  STD_LOGIC_VECTOR (3 downto 0); -- Green signal going to the VGA interface
           vga_blue_o   : out  STD_LOGIC_VECTOR (3 downto 0) -- Blue signal going to the VGA interface
        ); 
end  sobelSys;


architecture Behavioral of  sobelSys is

-- déclaration des sous-composants

  -- processeur Sobel 
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
  
  -- Contrôleur VGA
   COMPONENT vga_nexys4_2regions
   PORT(   clk_i : in  STD_LOGIC;
		   reset_i : in  STD_LOGIC;
           -- VGA Output Signals
           vga_hs_o : out  STD_LOGIC; -- HSYNC OUT
           vga_vs_o : out  STD_LOGIC; -- VSYNC OUT
           vga_red_o    : out  STD_LOGIC_VECTOR (3 downto 0); -- Red signal going to the VGA interface
           vga_green_o  : out  STD_LOGIC_VECTOR (3 downto 0); -- Green signal going to the VGA interface
           vga_blue_o   : out  STD_LOGIC_VECTOR (3 downto 0); -- Blue signal going to the VGA interface
		   ----------------------
           -- I/O internes, pour lire la mémoire de sortie de Sobel
   		   O_clk_25MHz : out STD_LOGIC;
		   I_StartDisplay : in STD_LOGIC;
		   ----
		   O_enM_vga_region1 : out STD_LOGIC;
 		   O_addr_M_vga_region1 : out STD_LOGIC_VECTOR(13 downto 0);
		   I_data_M_vga_region1 : in STD_LOGIC_VECTOR(7 downto 0);
		   -----
		   O_enM_vga_region2 : out STD_LOGIC;
 		   O_addr_M_vga_region2 : out STD_LOGIC_VECTOR(13 downto 0);
		   I_data_M_vga_region2 : in STD_LOGIC_VECTOR(7 downto 0)		   		   
        );
   END COMPONENT;
  
  -- Mémoire d'entrée
  component SinglePortROMFileInitGeneric is
   generic (
            G_MemoryWidth  : Integer;
            G_MemoryDepth  : Integer;
            G_AddressWidth : Integer;
            G_InitFileName : String  
            );
  port (
  	    I_clk : In std_logic;
  		I_en    : In std_logic;
  		I_addr  : In std_logic_vector(G_AddressWidth - 1 Downto 0);
  		O_dout  : Out std_logic_vector(G_MemoryWidth - 1 Downto 0)
        );
  end component;

  -- Mémoire de sortie
  component DualPortRamGeneric is
  generic (
           G_MemoryWidth  : Integer;
           G_MemoryDepth  : Integer;
           G_AddressWidth : Integer
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
  end component;
  
-- déclaration des signaux internes
signal S_clk_25MHz  :  std_logic;
signal S_StartDisplay  :  std_logic;
signal reset_h  :  std_logic;


signal S_enM_R    :  std_logic;
signal S_addr_R :  std_logic_vector(13 Downto 0); 
signal S_Pixel    :  std_logic_vector(7 Downto 0);

signal S_enM_W    :  std_logic;
signal S_addr_W :  std_logic_vector(13 Downto 0); 
signal S_PixEdge_1bit  :  std_logic;
signal S_PixEdge_8bits    :  std_logic_vector(7 Downto 0);

signal S_enM_vga_region1    :  std_logic;
signal S_addr_M_vga_region1 :  std_logic_vector(13 Downto 0);   
signal S_data_M_vga_region1 :  std_logic_vector(7 Downto 0);

signal S_enM_vga_region2    :  std_logic;
signal S_addr_M_vga_region2 :  std_logic_vector(13 Downto 0);   
signal S_data_M_vga_region2 :  std_logic_vector(7 Downto 0);
		   
signal S_mux_enM_R    :  std_logic;
signal S_mux_ADR_R :  std_logic_vector(13 Downto 0); 

signal s_douta_not_used    :  std_logic_vector(7 Downto 0);


begin

S_PixEdge_8bits <= S_PixEdge_1bit&S_PixEdge_1bit&S_PixEdge_1bit&S_PixEdge_1bit&S_PixEdge_1bit&S_PixEdge_1bit&S_PixEdge_1bit&S_PixEdge_1bit;

-- instanciation des sous-composants et établissement des interconnexions
reset_h <= not reset_i;

S_mux_ADR_R <= S_addr_R when S_StartDisplay = '0' else S_addr_M_vga_region1;
S_mux_enM_R <= S_enM_R when S_StartDisplay = '0' else S_enM_vga_region1;
S_data_M_vga_region1 <= S_Pixel;

  -- instanciation du processeur Sobel
  sobelProc_inst1 : entity work.sobelProc
    port map (
      clk              => S_clk_25MHz,
      reset            => reset_h,
	  I_go	   		   => go_i,
	  O_enM_R		   => S_enM_R,
	  O_ADR_R		   => S_addr_R,
	  I_pixel 		   => S_Pixel,
	  O_enM_W		   => S_enM_W,
	  O_ADR_W	 	   => S_addr_W,
	  O_pixEdge 	   => S_PixEdge_1bit,
	  O_StartDisplay   => S_StartDisplay
	  );
	  
  -- instanciation du contrôleur VGA 
  vga_inst1 : vga_nexys4_2regions
  port map (
       clk_i            =>   clk_i         ,
       reset_i          =>   reset_h       ,
       vga_hs_o         =>   vga_hs_o      ,
       vga_vs_o         =>   vga_vs_o      ,
       vga_red_o        =>   vga_red_o     ,
       vga_green_o      =>   vga_green_o   ,
       vga_blue_o       =>   vga_blue_o    ,
       O_clk_25MHz      =>   S_clk_25MHz   ,
       I_StartDisplay   =>   S_StartDisplay      ,
       O_enM_vga_region1        =>   S_enM_vga_region1     ,
       O_addr_M_vga_region1     =>   S_addr_M_vga_region1 , 
       I_data_M_vga_region1    =>   S_data_M_vga_region1     ,
       O_enM_vga_region2        =>   S_enM_vga_region2     ,
       O_addr_M_vga_region2     =>   S_addr_M_vga_region2 ,
	   I_data_M_vga_region2    =>   S_data_M_vga_region2       
	   );
	  
  -- instanciation de la mémoire d'entrée
  rom_in : SinglePortROMFileInitGeneric
  generic map (
       G_MemoryWidth => 8,
       G_MemoryDepth => 10000,
       G_AddressWidth => 14,
       G_InitFileName => "dancing_spider.txt" 
       )
  port map (
       I_clk  => S_clk_25MHz,
       I_en     => S_mux_enM_R,
       I_addr   => S_mux_ADR_R,
       O_dout   => S_Pixel
       );


  -- instanciation de la mémoire de sortie
  ram_out : DualPortRamGeneric
  generic map (
       G_MemoryWidth => 8,
       G_MemoryDepth => 10000,
       G_AddressWidth => 14
       )
  port map (
       I_clk    => S_clk_25MHz,
       I_ena    => S_enM_W,  
       I_enb    => S_enM_vga_region2,  
       I_wea    => S_enM_W,  
       I_addra  => S_addr_W,
       I_addrb  => S_addr_M_vga_region2,
       I_dina   => S_PixEdge_8bits, 
       O_douta  => s_douta_not_used,
       O_doutb  => S_data_M_vga_region2
       );


	   
end Behavioral;

