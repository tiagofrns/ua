library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity dislayall is
	port( KEY: in std_logic_vector (0 downto 0);
		SW	: in std_logic_vector (3 downto 0);
		HEX0: out std_logic_vector (6 downto 0);
		LEDR : out std_logic_vector (6 downto 0);
		LEDG : out std_logic_vector (3 downto 0));
		
end dislayall;

architecture Shell of dislayall is
signal aux: std_logic_vector(3 downto 0);
begin
system_core: entity work.Bin7SegDecoder(Behavioral)
				port map(binInput => SW,
							enable => KEY,
							decOut_n => aux);
LEDG <= SW;
HEX0 <= aux;
LEDR <= aux;


end Shell;
