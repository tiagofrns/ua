library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;



entity Aula3TPC is 
	port(s: in std_logic_vector (3 downto 0);
			enable: in std_logic;
			bcd0: out std_logic_vector(3 downto 0);
			bcd1: out std_logic_vector(3 downto 0);
			decOut_l : out std_logic_vector(6 downto 0);
			decOut_h : out std_logic_vector(6 downto 0));


end Aula3TPC;

architecture Behavioral of Aula3TPC is	

	signal s_dez, s_int, s_rem : unsigned(3 downto 0);


	
begin
	 s_dez <=  to_unsigned(10,4);
	 s_int <= unsigned(s)/s_dez;
	 s_rem <= unsigned(s) rem s_dez;
	 
	 bcd0 <= std_logic_vector (s_rem);
	 bcd1 <= std_logic_vector (s_int);
	
	decOut_l <= "1111111" when (enable='0' and s="0000") else --nothing
				"1111001" when (s = "0001") else --1
				"0100100" when (s = "0010") else --2
				"0110000" when (s = "0011") else --3
				"0011001" when (s = "0100") else --4
				"0010010" when (s = "0101") else --5
				"0000010" when (s = "0110") else --6
				"1111000" when (s = "0111") else --7
				"0000000" when (s = "1000") else --8
				"0010000" when (s = "1001") else --9
				"1000000"; --0
				
	decOut_h <= "1111111" when ( s="0000" and enable='0') else --nothing
				"1111001" when (s = "0001") else --1
				"1000000"; --0

	
end Behavioral;