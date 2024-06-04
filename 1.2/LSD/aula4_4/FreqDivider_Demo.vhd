library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreqDivider_Demo is
port( CLOCK_50: in std_logic;
		SW: in std_logic_vector(1 downto 0);
		LEDR: out std_logic_vector(0 downto 0);
		HEX0: out std_logic_vector(6 downto 0));
end FreqDivider_Demo;

architecture Structural of FreqDivider_Demo is

begin
	divisor: entity work.FreqDivider(Behavioral)
		port map(clkin => CLOCK_50,
					reset => SW(0),
					clkout => LEDR(0),
					k => x"017D7840");

	updown: entity work.CounterUpDown4(Shell)
			port map(clkin => clk,
			reset => SW(0),
			upDown => SW(1),
			count => HEX(0));
			
	signal 

end Structural;