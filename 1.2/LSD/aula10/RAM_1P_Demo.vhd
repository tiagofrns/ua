library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity RAM_1_SWR_ARD is
	port(writeClk : in std_logic;
		writeEnable : in std_logic;
		writeData : in std_logic_vector(7 downto 0);
		address : in std_logic_vector(4 downto 0);
		readData : out std_logic_vector(7 downto 0));
end RAM_1_SWR_ARD;