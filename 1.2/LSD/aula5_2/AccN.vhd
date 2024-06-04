library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;



entity AccN is
	generic(N : positive := 8);
	port(operand0: in std_logic_vector(N-1 downto 0);
		  operand1: in std_logic_vector(N-1 downto 0);
		  result: out std_logic_vector(N-1 downto 0)
	);
	
end AccN;


architecture Shell of AccN is

begin

	result <= std_logic_vector(unsigned(operand0) + unsigned(operand1));

end Shell;

