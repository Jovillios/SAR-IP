----------------------------------------------------------------------------------
----------------------------------------------------------------------------
-- Author:  Albert Fazakas adapted from Alec Wyen and Mihaita Nagy
--          Copyright 2014 Digilent, Inc.
----------------------------------------------------------------------------
-- 
-- Create Date:    13:01:51 02/15/2013 
-- Design Name: 
-- Module Name:    Vga - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--       This module represents the Vga controller that creates the HSYNC and VSYNC signals
--    for the VGA screen and formats the 4-bit R, G and B signals to display various items
--    on the screen:
--       - A moving colorbar in the background
--       - A Digilent - Analog Devices logo for the Nexys4 board, the RGB data is provided 
--    by the LogoDisplay component. The logo bitmap is stored in the BRAM_1 Block RAM in .ngc format.
--       - The FPGA temperature on a 0..80C scale. Temperature data is taken from the XADC
--    component in the Artix-7 FPGA, provided by the upper level FPGAMonitor component and the RGB data is
--    provided by the Inst_XadcTempDisplay instance of the TempDisplay component.
--       - The Nexys4 Onboard ADT7420 Temperature Sensor temperature on a 0..80C scale. 
--    Temperature data is provided by the upper level TempSensorCtl component and the RGB data is
--    provided by the Inst_Adt7420TempDisplay instance of the TempDisplay component.
--       - The Nexys4 Onboard ADXL362 Accelerometer Temperature Sensor temperature on a 0..80C scale. 
--    Temperature data is provided by the upper level AccelerometerCtl component and the RGB data is
--    provided by the Inst_Adxl362TempDisplay instance of the TempDisplay component.
--       - The R, G and B data which is also sent to the Nexys4 onboard RGB Leds LD16 and LD17. The 
--    incomming RGB Led data is taken from the upper level RgbLed component and the formatted RGB data is provided
--    by the RGBLedDisplay component.
--       - The audio signal coming from the Nexys4 Onboard ADMP421 Omnidirectional Microphone. The formatted
--    RGB data is provided by the MicDisplay component.
--       - The X and Y acceleration in a form of a moving box and the acceleration magnitude determined by 
--    the SQRT (X^2 + Y^2 + Z^2) formula. The acceleration and magnitude data is provided by the upper level 
--    AccelerometerCtl component and the formatted RGB data is provided by the AccelDisplay component.
--       - The mouse cursor on the top on all of the items. The USB mouse should be connected to the Nexys4 board before 
--    the FPGA is configured. The mouse cursor data is provided by the upper level MouseCtl component and the 
--    formatted RGB data for the mouse cursor shape is provided by the MouseDisplay component.
--       - An overlay that displayed the frames and text for the displayed items described above. The overlay data is
--    stored in the overlay_bram Block RAM in the .ngc format and the data is provided by the OverlayCtl component.
--       The Vga controller holds the synchronization signal generation, the moving colorbar generation and the main
--    multiplexers for the outgoing R, G and B signals. Also the 108 MHz pixel clock (pxl_clk) generator is instantiated
--    inside the Vga controller.
--       The current resolution is 1280X1024 pixels, however, other resolutions can also be selected by 
--    commenting/uncommenting the corresponding VGA resolution constants. In the case when a different resolution
--    is selected, the pixel clock generator output frequency also has to be updated accordingly.
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.math_real.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_nexys4_2regions is
    Port ( clk_i : in  STD_LOGIC;
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
end vga_nexys4_2regions;

architecture Behavioral of vga_nexys4_2regions is

-------------------------------------------------------------------------

-- Component Declarations

-------------------------------------------------------------------------

   -- 108 MHz Pixel Clock needed for a resolution of 1280*1024 pixels
   -- 25  MHz Pixel Clock needed for a resolution of 640*480 pixels

   -- To generate the 25 MHz Pixel Clock
   COMPONENT clk_wiz_vga_25MHz
   PORT
    (-- Clock in ports
     CLK_IN1           : in std_logic;
     -- Clock out ports
     CLK_OUT1          : out std_logic;
     -- Status and control signals
     LOCKED            : out std_logic
    );
   END COMPONENT;




-------------------------------------------------------------

-- Constants for various VGA Resolutions

-------------------------------------------------------------

--***640x480@60Hz***--  
constant FRAME_WIDTH : natural := 640;
constant FRAME_HEIGHT : natural := 480;

constant H_FP : natural := 16; --H front porch width (pixels)
constant H_PW : natural := 96; --H sync pulse width (pixels)
constant H_MAX : natural := 800; --H total period (pixels)

constant V_FP : natural := 10; --V front porch width (lines)
constant V_PW : natural := 2; --V sync pulse width (lines)
constant V_MAX : natural := 525; --V total period (lines)

constant H_POL : std_logic := '0';
constant V_POL : std_logic := '0';

--***800x600@60Hz***--
--constant FRAME_WIDTH : natural := 800;
--constant FRAME_HEIGHT : natural := 600;
--
--constant H_FP : natural := 40; --H front porch width (pixels)
--constant H_PW : natural := 128; --H sync pulse width (pixels)
--constant H_MAX : natural := 1056; --H total period (pixels)
--
--constant V_FP : natural := 1; --V front porch width (lines)
--constant V_PW : natural := 4; --V sync pulse width (lines)
--constant V_MAX : natural := 628; --V total period (lines)
--
--constant H_POL : std_logic := '1';
--constant V_POL : std_logic := '1';

--***1280x1024@60Hz***--
--constant FRAME_WIDTH : natural := 1280;
--constant FRAME_HEIGHT : natural := 1024;

--constant H_FP : natural := 48; --H front porch width (pixels)
--constant H_PW : natural := 112; --H sync pulse width (pixels)
--constant H_MAX : natural := 1688; --H total period (pixels)

--constant V_FP : natural := 1; --V front porch width (lines)
--constant V_PW : natural := 3; --V sync pulse width (lines)
--constant V_MAX : natural := 1066; --V total period (lines)

--constant H_POL : std_logic := '1';
--constant V_POL : std_logic := '1';

--***1920x1080@60Hz***--
--constant FRAME_WIDTH : natural := 1920;
--constant FRAME_HEIGHT : natural := 1080;
--
--constant H_FP : natural := 88; --H front porch width (pixels)
--constant H_PW : natural := 44; --H sync pulse width (pixels)
--constant H_MAX : natural := 2200; --H total period (pixels)
--
--constant V_FP : natural := 4; --V front porch width (lines)
--constant V_PW : natural := 5; --V sync pulse width (lines)
--constant V_MAX : natural := 1125; --V total period (lines)
--
--constant H_POL : std_logic := '1';
--constant V_POL : std_logic := '1';

------------------------------------------------------------------

-- Constants for setting the displayed logo size and coordinates

------------------------------------------------------------------
-- constant SZ_LOGO_WIDTH 	   : natural := 335; -- Width of the logo frame
-- constant SZ_LOGO_HEIGHT 	: natural := 280; -- Height of the logo frame

-- constant FRM_LOGO_H_LOC 	: natural := 25; --  Starting horizontal location of the logo frame
-- constant FRM_LOGO_V_LOC 	: natural := 176; -- Starting vertical location of the logo frame

-- Logo frame limits
-- constant LOGO_LEFT 			: natural := FRM_LOGO_H_LOC - 1;
-- constant LOGO_RIGHT 		   : natural := FRM_LOGO_H_LOC + SZ_LOGO_WIDTH + 1;
-- constant LOGO_TOP 			: natural := FRM_LOGO_V_LOC - 1;
-- constant LOGO_BOTTOM 		: natural := FRM_LOGO_V_LOC + SZ_LOGO_HEIGHT + 1;

-- Constants for setting size and location for the Accelerometer display

--------------------------------------------------------------------------
-- Original Image frame limits
constant REGION1_LEFT			: natural := 200;
constant REGION1_RIGHT			: natural := REGION1_LEFT + 101;
constant REGION1_TOP			: natural := 190;
constant REGION1_BOTTOM			: natural := REGION1_TOP + 101;

-- Edge Image frame limits
constant REGION2_LEFT			: natural := 340;
constant REGION2_RIGHT			: natural := REGION2_LEFT + 101;
constant REGION2_TOP			: natural := 190;
constant REGION2_BOTTOM			: natural := REGION2_TOP + 101;



-------------------------------------------------------------------------

-- Signal Declarations

-------------------------------------------------------------------------


-------------------------------------------------------------------------

-- VGA Controller specific signals: Counters, Sync, R, G, B

-------------------------------------------------------------------------
-- Pixel clock, in this case 25 MHz
signal pxl_clk : std_logic;
-- The active signal is used to signal the active region of the screen (when not blank)
signal active  : std_logic;

-- Horizontal and Vertical counters
signal h_cntr_reg : std_logic_vector(11 downto 0) := (others =>'0');
signal v_cntr_reg : std_logic_vector(11 downto 0) := (others =>'0');

-- Horizontal and Vertical Sync
signal h_sync_reg : std_logic := not(H_POL);
signal v_sync_reg : std_logic := not(V_POL);
-- Pipe Horizontal and Vertical Sync
signal h_sync_reg_dly : std_logic := not(H_POL);
signal v_sync_reg_dly : std_logic :=  not(V_POL);

-- VGA R, G and B signals coming from the main multiplexers
signal vga_red_cmb   : std_logic_vector(3 downto 0);
signal vga_green_cmb : std_logic_vector(3 downto 0);
signal vga_blue_cmb  : std_logic_vector(3 downto 0);
--The main VGA R, G and B signals, validated by active
signal vga_red    : std_logic_vector(3 downto 0);
signal vga_green  : std_logic_vector(3 downto 0);
signal vga_blue   : std_logic_vector(3 downto 0);
-- Register VGA R, G and B signals
signal vga_red_reg   : std_logic_vector(3 downto 0) := (others =>'0');
signal vga_green_reg : std_logic_vector(3 downto 0) := (others =>'0');
signal vga_blue_reg  : std_logic_vector(3 downto 0) := (others =>'0');

-------------------------------------------------------------------------

-- Signals for registering the inputs

-------------------------------------------------------------------------

-----------------------------------------------------------
-- Signals for generating the background (moving colorbar)
-----------------------------------------------------------
-- Colorbar red, greeen and blue signals
signal bg_red 				: std_logic_vector(3 downto 0);
signal bg_blue 			: std_logic_vector(3 downto 0);
signal bg_green 			: std_logic_vector(3 downto 0);



-- Added
signal	S_inc_adr_region1 : std_logic;
signal	S_inc_adr_region2 : std_logic;
signal	S_adr_region1	  : integer range 0 to 9999;
signal	S_adr_region2	  : integer range 0 to 9999;


begin
  
------------------------------------

-- Generate the 25 MHz pixel clock 

------------------------------------
   Inst_clk_wiz_vga_25MHz : clk_wiz_vga_25MHz
   port map
    (-- Clock in ports
     CLK_IN1   => CLK_I,
     -- Clock out ports
     CLK_OUT1  => pxl_clk,
     -- Status and control signals
     LOCKED   => open
    );

	O_clk_25MHz <= pxl_clk;
---------------------------------------------------------------

-- Generate Horizontal, Vertical counters and the Sync signals

---------------------------------------------------------------
  -- Horizontal counter
  process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then
      if (h_cntr_reg = (H_MAX - 1)) then
        h_cntr_reg <= (others =>'0');
      else
        h_cntr_reg <= h_cntr_reg + 1;
      end if;
    end if;
  end process;
  -- Vertical counter
  process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then
      if ((h_cntr_reg = (H_MAX - 1)) and (v_cntr_reg = (V_MAX - 1))) then
        v_cntr_reg <= (others =>'0');
      elsif (h_cntr_reg = (H_MAX - 1)) then
        v_cntr_reg <= v_cntr_reg + 1;
      end if;
    end if;
  end process;
  -- Horizontal sync
  process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then
      if (h_cntr_reg >= (H_FP + FRAME_WIDTH - 1)) and (h_cntr_reg < (H_FP + FRAME_WIDTH + H_PW - 1)) then
        h_sync_reg <= H_POL;
      else
        h_sync_reg <= not(H_POL);
      end if;
    end if;
  end process;
  -- Vertical sync
  process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then
      if (v_cntr_reg >= (V_FP + FRAME_HEIGHT - 1)) and (v_cntr_reg < (V_FP + FRAME_HEIGHT + V_PW - 1)) then
        v_sync_reg <= V_POL;
      else
        v_sync_reg <= not(V_POL);
      end if;
    end if;
  end process;
  
--------------------
-- The active 
--------------------  
  -- active signal
  active <= '1' when h_cntr_reg < FRAME_WIDTH and v_cntr_reg < FRAME_HEIGHT else '0';

---------------------------------------
-- Generate colorbar background
---------------------------------------
	
	bg_red <= h_cntr_reg(3 downto 0) when (h_cntr_reg < 100)
			 else h_cntr_reg(7 downto 4) when (h_cntr_reg < 400)
			 else "0101";

	bg_green <= "0011" when (h_cntr_reg < 100)
			 else "1001" when (h_cntr_reg < 400)
			 else "0101";			 

	bg_blue <= v_cntr_reg(3 downto 0) when (v_cntr_reg < 100)
			 else v_cntr_reg(7 downto 4) when (v_cntr_reg < 400)
			 else "0100";

	
---------------------------------------
-- Generate addresses to the memory frame buffer Region1
---------------------------------------
	process(reset_i,pxl_clk)
	begin
		if (reset_i = '1') then 
			S_adr_region1 <= 9999;
		elsif(rising_edge(pxl_clk)) then
		  if I_StartDisplay = '1' then
			if S_inc_adr_region1 = '1' then
				if S_adr_region1 = 0 then
					S_adr_region1 <= 9999;
				else
					S_adr_region1 <= S_adr_region1 - 1;
				end if;
			end if;
		  end if;
		end if;
	end process;

	O_addr_M_vga_region1 <= conv_std_logic_vector(S_adr_region1, 14); 
	
	S_inc_adr_region1 <= '1' when (h_cntr_reg = REGION1_LEFT and v_cntr_reg = (REGION1_TOP+1)) OR
						   (h_cntr_reg > REGION1_LEFT and h_cntr_reg < REGION1_RIGHT 
                          and v_cntr_reg > REGION1_TOP and v_cntr_reg < (REGION1_BOTTOM-1)) OR
						   (h_cntr_reg > REGION1_LEFT and h_cntr_reg < (REGION1_RIGHT-1) and v_cntr_reg = (REGION1_BOTTOM-1))
				 else '0';
				 
	O_enM_vga_region1 <= S_inc_adr_region1;


---------------------------------------
-- Generate addresses to the memory frame buffer Region2
---------------------------------------
	process(reset_i,pxl_clk)
	begin
		if (reset_i = '1') then 
			S_adr_region2 <= 9999;
		elsif(rising_edge(pxl_clk)) then
		  if I_StartDisplay = '1' then
			if S_inc_adr_region2 = '1' then
				if S_adr_region2 = 0 then
					S_adr_region2 <= 9999;
				else
					S_adr_region2 <= S_adr_region2 - 1;
				end if;
			end if;
		  end if;
		end if;
	end process;

	O_addr_M_vga_region2 <= conv_std_logic_vector(S_adr_region2, 14); 
	
	S_inc_adr_region2 <= '1' when (h_cntr_reg = REGION2_LEFT and v_cntr_reg = (REGION2_TOP + 1)) OR
						   (h_cntr_reg > REGION2_LEFT and h_cntr_reg < REGION2_RIGHT 
                          and v_cntr_reg > REGION2_TOP and v_cntr_reg < (REGION2_BOTTOM-1)) OR
						   (h_cntr_reg > REGION2_LEFT and h_cntr_reg < (REGION2_RIGHT-1) and v_cntr_reg = (REGION2_BOTTOM-1))
				 else '0';

	O_enM_vga_region2 <= S_inc_adr_region2;
	
-------------------------------------------------------------
-- Main Multiplexers for the VGA Red, Green and Blue signals
			  
  vga_red <=  I_data_M_vga_region1(7 downto 4) when h_cntr_reg > REGION1_LEFT+2 and h_cntr_reg < REGION1_RIGHT-2 
                          and v_cntr_reg > REGION1_TOP+2 and v_cntr_reg < REGION1_BOTTOM-2
			  else I_data_M_vga_region2(7 downto 4) when h_cntr_reg > REGION2_LEFT+2 and h_cntr_reg < REGION2_RIGHT-2 
                          and v_cntr_reg > REGION2_TOP+2 and v_cntr_reg < REGION2_BOTTOM-2
			  else bg_red;
			  
  vga_green <= I_data_M_vga_region1(7 downto 4) when h_cntr_reg > REGION1_LEFT+2 and h_cntr_reg < REGION1_RIGHT-2 
                          and v_cntr_reg > REGION1_TOP+2 and v_cntr_reg < REGION1_BOTTOM-2
			  else I_data_M_vga_region2(7 downto 4) when h_cntr_reg > REGION2_LEFT+2 and h_cntr_reg < REGION2_RIGHT-2 
                          and v_cntr_reg > REGION2_TOP+2 and v_cntr_reg < REGION2_BOTTOM-2
			  else bg_green;

  vga_blue <=  I_data_M_vga_region1(7 downto 4) when h_cntr_reg > REGION1_LEFT+2 and h_cntr_reg < REGION1_RIGHT-2 
                          and v_cntr_reg > REGION1_TOP+2 and v_cntr_reg < REGION1_BOTTOM-2
			  else I_data_M_vga_region2(7 downto 4) when h_cntr_reg > REGION2_LEFT+2 and h_cntr_reg < REGION2_RIGHT-2 
                          and v_cntr_reg > REGION2_TOP+2 and v_cntr_reg < REGION2_BOTTOM-2
			  else bg_blue;

  
  

------------------------------------------------------------
-- Turn Off VGA RBG Signals if outside of the active screen
-- Make a 4-bit AND logic with the R, G and B signals
------------------------------------------------------------
 vga_red_cmb <= (active & active & active & active) and vga_red;
 vga_green_cmb <= (active & active & active & active) and vga_green;
 vga_blue_cmb <= (active & active & active & active) and vga_blue;
 

 -- Register Outputs
  process (pxl_clk)
  begin
    if (rising_edge(pxl_clk)) then

      v_sync_reg_dly <= v_sync_reg;
      h_sync_reg_dly <= h_sync_reg;
      vga_red_reg    <= vga_red_cmb;
      vga_green_reg  <= vga_green_cmb;
      vga_blue_reg   <= vga_blue_cmb;      
    end if;
  end process;

  -- Assign outputs
  VGA_HS_O     <= h_sync_reg_dly;
  VGA_VS_O     <= v_sync_reg_dly;
  VGA_RED_O    <= vga_red_reg;
  VGA_GREEN_O  <= vga_green_reg;
  VGA_BLUE_O   <= vga_blue_reg;

end Behavioral;