library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity AddSub4 is 

	port( a: in std_logic_vector (3 downto 0);
			b: in std_logic_vector (3 downto 0);
			sub: in std_logic;
			cout: out std_logic;
			s: out std_logic_vector (3 downto 0));



end AddSub4;



architecture Structural of AddSub4 is

signal s_b: std_logic_vector(3 downto 0);

begin
s_b <= b when (sub = '0') else not b;
system_core: work.Adder4(Structural)
					port map( cin => sub,
								b => s_b,
								a => a,
								cout => cout,
								s => s);

	

end Structural;