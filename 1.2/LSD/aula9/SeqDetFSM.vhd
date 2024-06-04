library IEEE;
use IEEE.std_logic_1164.all;

entity SeqDetFSM is

	port(	Xin		:	in std_logic;
			clk : in std_logic;
			reset : in std_logic;
			
			Yout	:	out std_logic);

end SeqDetFSM;

architecture MealyArch of SeqDetFSM is

	type Tstate is (zero,um,umzero,umzerozero,umzerozeroum);
	signal currentState, nextState	:	Tstate;

begin

	clk_proc: process(clk, reset)
	begin
		if(reset = '1') then
			currentState <= zero;
		elsif(rising_edge(clk)) then
			currentState <= nextState;
		end if;
	end process;

	comb_process: process(currentState,zero,um,umzero,umzerozero,umzerozeroum)
	begin
		
		case currentState is
		
			when zero =>
				Yout <= '0';
				if (Xin = '0') then
					currentState <= zero;
				elsif (Xin = '1') then
					currentState <= um;
				end if;
			when um =>
				if (Xin = '0') then
					currentState <= umzero;
				elsif (Xin = '1') then
					currentState <= um;
				end if;
			when umzero =>
				if (Xin = '0') then
					currentState <= umzerozero;
				elsif (Xin = '1') then
					currentState <= um;
				end if;
			when umzerozero =>
				if (Xin = '0') then
					currentState <= zero;
				elsif (Xin = '1') then
					currentState <= umzerozeroum;
				end if;
			when umzerozeroum =>
				Yout <= '1';
				if (Xin = '0') then
					currentState <= zero;
				elsif (Xin = '1') then
					currentState <= um;
				end if;
			when others =>
				nextState <= zero;
			
			end case;
	end process;

end MealyArch;