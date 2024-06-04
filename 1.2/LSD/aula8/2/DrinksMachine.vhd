library IEEE;
use IEEE.std_logic_1164.all;

entity DrinksMachine is

	port(	CLOCK_50	:	in std_logic;
			SW			:	in std_logic_vector(4 downto 0);
			KEY		:	in std_logic_vector(0 downto 0);
			LEDG		:	out std_logic_vector(0 downto 0));

end DrinksMachine;

architecture Shell of DrinksMachine is

	signal clk50Mhz, s_clk, s_clk2, s_clk3, s,s_clk33	:	std_logic;

begin

	clk50MHz <= CLOCK_50;

	sw_debounce : entity WORK.DebounceUnit(Behavioral)
		generic map(clkFrekHz => 50000,
						blindmSec => 100,
						inPol		 => '0',
						outPol	 => '1')
		port map(reset			 => SW(0),
					refClk		 => clk50MHz,
					dirtyIn		 => KEY(0),
					pulsedOut	 => s_clk);
		sw_debounce2 : entity WORK.DebounceUnit(Behavioral)
		generic map(clkFrekHz => 50000,
						blindmSec => 100,
						inPol		 => '0',
						outPol	 => '1')
		port map(reset			 => SW(0),
					refClk		 => clk50MHz,
					dirtyIn		 => SW(1),
					pulsedOut	 => s_clk2);
		sw_debounce1 : entity WORK.DebounceUnit(Behavioral)
		generic map(clkFrekHz => 50000,
						blindmSec => 100,
						inPol		 => '0',
						outPol	 => '1')
		port map(reset			 => SW(0),
					refClk		 => clk50MHz,
					dirtyIn		 => SW(2),
					pulsedOut	 => s_clk3);
					
		sw_debounce14 : entity WORK.DebounceUnit(Behavioral)
		generic map(clkFrekHz => 50000,
						blindmSec => 100,
						inPol		 => '0',
						outPol	 => '1')
		port map(reset			 => SW(0),
					refClk		 => clk50MHz,
					dirtyIn		 => SW(0),
					pulsedOut	 => s_clk33);
					
	drink_core	:	entity work.DrinksFSM(Behavioral)
		port map(C		=>	s_clk3,
					V		=>	s_clk2,
					reset =>	s_clk33,
					clk	=>	s_clk,
					drink	=>	s);

	timer_core : entity work.TimerN(Behavioral)
		generic map(N => 50_000_000)
		port map(reset => s_clk,
					clk => s_clk,
					enable => '1',
					start => s);

end Shell;