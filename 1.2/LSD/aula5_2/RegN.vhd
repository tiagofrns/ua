library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;



entity RegN is

	port(
			generic(N : positive := 8);
			dataIn: in std_logic_vector (N-1 downto 0);
			enable: in std_logic;
			reset: in std_logic;
			clk: in std_logic;
			dataOut: in std_logic_vector (N-1 downto 0)
			
			
			);
end RegN;

architecture Behavioral of RegN is

begin
		if (rising_edge(clk)) then
			if (reset='1') then
				dataOut <= (others => '0');
			elsif (enable = '1') then
				dataOut <= dataIn;
			end if;
		end if;


end Behavioral;