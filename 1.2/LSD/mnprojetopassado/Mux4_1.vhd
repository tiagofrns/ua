library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity Mux4_1 is


	port(muxin1: in std_logic_vector(7 downto 0);
	muxin2: in std_logic_vector(7 downto 0);
	muxin3: in std_logic_vector(7 downto 0);
	muxin4: in std_logic_vector(7 downto 0);
	sel: in std_logic_vector(1 downto 0);
	muxout: out std_logic_vector(7 downto 0)
	);

end Mux4_1;

architecture Ok of Mux4_1 is

begin 

	 muxout <= muxin1 when (sel = "00") else
	 muxin2 when (sel = "01") else
	 muxin3 when (sel = "10") else
	 muxin4 when (sel = "11") else 
	 (others => '0');
	


end Ok;