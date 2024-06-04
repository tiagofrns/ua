library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity Fase1 is
	port (CLOCK_50: in std_logic;
		SW: in std_logic_vector(1 downto 0);
			LEDR: out std_logic_vector(3 downto 0);
			LEDG: out std_logic_vector(3 downto 0);
			HEX0: out std_logic_vector(6 downto 0));

end Fase1;

architecture Shell of Fase1 is
	signal aux: std_logic_vector(7 downto 0);
	signal blink2hz: std_logic;
begin
	wrk: work.Bin7SegDecoder(Behavioral)
	port map(binInput => SW,
	enable => '1',
	decOut_n => HEX0);
	
	mux41: work.Mux4_1(Ok)
	port map(
		sel => SW,
		muxin1 => "11111111",
		muxin2 => "11110000",
		muxin3 => "00001111",
		muxin4 => "11111111",
		muxout => aux
	);
	
	
	
	k: work.BlinkGenerator(Behavioral)
	port map(generic map(NUMBER_STEPS => 25_000_000)
		reset => '0',
				clk => CLOCK_50,
				blink => blink2hz);
	if((aux(7 downto 4) = "1111") && (aux(3 downto 0) = "0000")) then 
		LEDR <= blink2hz and aux(7 downto 4);
		LEDG <= aux(3 downto 0);
	end if;



end Shell;