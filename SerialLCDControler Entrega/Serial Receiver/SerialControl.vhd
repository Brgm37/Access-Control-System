LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity SerialControl is 
	port (
		clk: in std_logic;
		enRx: in std_logic;
		accept: in std_logic;
		clr: out std_logic;
		busy: out std_logic;
		wr: out std_logic;
		rst: in std_logic;
		DXval: out std_logic;
		eq5: in std_logic;
		counterRst: out std_logic
	);
end SerialControl;

architecture behavioral of SerialControl is
	type STATE_TYPE is (STATE_RECEIVING, STATE_WAITING, STATE_ACCEPTED);

	signal CurrentState, NextState: STATE_TYPE;

	begin
--		Flip-Flop's
		CurrentState <= STATE_RECEIVING when rst = '1' else Nextstate when rising_edge(clk);
		
--		Generate Next State 
		GenerateNextState:
			process (CurrentState, enRx, eq5, accept) 
				begin
					case CurrentState is
						when STATE_RECEIVING		=> if(enRx = '0') then
																NextState <= STATE_WAITING;
															else
																NextState <= STATE_RECEIVING;
															end if;
						when STATE_WAITING		=> if(eq5 = '1') then
																NextState <= STATE_ACCEPTED;
															elsif (enRx = '1' and eq5 = '0') then
																NextState <= STATE_RECEIVING;
															else
																NextState <= STATE_WAITING;
															end if;
						when STATE_ACCEPTED			=> if(accept = '1') then
																NextState <= STATE_RECEIVING;
															else
																NextState <= STATE_ACCEPTED;
															end if;
					end case;
			end process;
			
--		Generate Outputs
		clr <= '1' when (CurrentState = STATE_RECEIVING) else '0';
		DXval <= '1' when (CurrentState = STATE_ACCEPTED) else '0';
		wr <= '1' when (CurrentState = STATE_WAITING and eq5 = '0') else '0';
		busy <= '1' when (CurrentState = STATE_ACCEPTED) else '0';
		counterRst <= '1' when (CurrentState = STATE_WAITING) else '0';
		
end architecture;