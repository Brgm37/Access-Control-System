LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity KeyControl is 
	port (
		kack: in std_logic;
		kpress: in std_logic;
		kval: out std_logic;
		clk: in std_logic;
		rst: in std_logic;
		kscan: out std_logic
	);
end KeyControl;

architecture behavioral of KeyControl is
	type STATE_TYPE is (STATE_SCANNING, STATE_WAITING, STATE_READY);

	signal CurrentState, NextState: STATE_TYPE;

	begin
--		Flip-Flop's
		CurrentState <= STATE_SCANNING when rst = '1' else Nextstate when rising_edge(clk);
		
--		Generate Next State 
		GenerateNextState:
			process (CurrentState, kack, kpress) 
				begin
					case CurrentState is
						when STATE_SCANNING		=> if(kpress = '1') then
																NextState <= STATE_WAITING;
															else
																NextState <= STATE_SCANNING;
															end if;
						when STATE_WAITING		=> if(kack = '1') then
																NextState <= STATE_READY;
															else
																NextState <= STATE_WAITING;
															end if;
						when STATE_READY			=> if(kpress = '0') then
																NextState <= STATE_SCANNING;
															else
																NextState <= STATE_READY;
															end if;
					end case;
			end process;
			
--		Generate Outputs
		kval <= '1' when (CurrentState = STATE_WAITING) else '0';
		kscan <= '1' when (CurrentState = STATE_SCANNING) and kpress = '0' else '0';
		
end architecture;