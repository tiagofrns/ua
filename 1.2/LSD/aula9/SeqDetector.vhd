library IEEE;
use IEEE.std_logic_1164.all;

entity SeqDetector is

	port(	SW		:	in std_logic_vector(1 downto 0);
			CLOCK_50 : in std_logic;
			KEY : in std_logic(0 downto 0);
			
			LEDR	:	out std_logic(0 downto 0));

end SeqDetector;

architecture Shell of SeqDetector is
	signal bounce_sw, bounce_key, bounce_led: std_logic;
begin
		divider : entity WORK.ClkDivider(Behavioral)
		sw_debounce : entity WORK.DebounceUnit(Behavioral)
		generic map(clkFrekHz => 50000,
						blindmSec => 100,
						inPol		 => '0',
						outPol	 => '1')
		port map(reset			 => SW(1),
					refClk		 => CLOCK_50,
					dirtyIn		 => LEDR(0),
					pulsedOut	 => bounce_led);
					
					
		--------------------------------------------------	
		sw_debounce1 : entity WORK.DebounceUnit(Behavioral)
		generic map(clkFrekHz => 50000,
						blindmSec => 100,
						inPol		 => '0',
						outPol	 => '1')
		port map(reset			 => SW(1),
					refClk		 => CLOCK_50,
					dirtyIn		 => SW(0),
					pulsedOut	 => bounce_sw);
					
		-------------------------------------------------		
		sw_debounce2 : entity WORK.DebounceUnit(Behavioral)
		generic map(clkFrekHz => 50000,
						blindmSec => 100,
						inPol		 => '0',
						outPol	 => '1')
		port map(reset			 => SW(1),
					refClk		 => clk1,
					dirtyIn		 => KEY(0),
					pulsedOut	 => bounce_key);								 
		---------------------------------------------------------|
		
		S : WORK.SeqDetFSM(MealyArch)
			port map(
						clk => clk1,
						Xin => bounce_sw,
						reset => bounce_key,
						Yout => bounce_led);




end Shell;