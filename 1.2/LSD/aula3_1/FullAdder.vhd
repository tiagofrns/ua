library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity FullAdder is
	port(a, b, cin : in std_logic;
			s, cout : out std_logic);
end FullAdder;

architecture Behavioral of FullAdder is
begin
-- Especifique aqui as equações lógicas para as saídas “s” e “cout”
	s <= a xor (b xor cin);
	cout <= (b and a) or (a and cin) or (b and cin);
end Behavioral;