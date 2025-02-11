library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity BufferControl is
	port(
		rst: in std_logic;
		clk: in std_logic;
		load: in std_logic;
		ACK: in std_logic;
		OBfree: out std_logic;
		Dval: out std_logic;
		Wreg: out std_logic
	);
end BufferControl;

architecture behavioral of BufferControl is
type STATE_TYPE is (STATE_WAITING, STATE_RECEIVING, STATE_PULSING, STATE_WR, STATE_CLK_ZERO);

	signal CurrentState, NextState: STATE_TYPE;

	begin
--		Flip-Flop's
		CurrentState <= STATE_WAITING when rst = '1' else Nextstate when rising_edge(clk);
		
--		Generate Next State 
		GenerateNextState:
			process (CurrentState, 	load, ACK) 
				begin
					case CurrentState is
						when STATE_WAITING		=> if (load = '1') then
																	NextState <= STATE_WR;
															else
																	NextState <= STATE_WAITING;
															end if;
						when STATE_WR				=> NextState <= STATE_CLK_ZERO;
						
						when STATE_CLK_ZERO		=> NextState <= STATE_RECEIVING; 
						
						when STATE_RECEIVING		=> if(ACK = '1') then
																NextState <= STATE_PULSING;
															else
																NextState <= STATE_RECEIVING;
															end if;
						
						when STATE_PULSING		=> if(ACK = '0') then
																NextState <= STATE_WAITING;
															else
																NextState <= STATE_PULSING;
															end if;
					end case;
			end process;
			
--		Generate Outputs
		OBfree <= '1' when (CurrentState = STATE_WAITING or CurrentState = STATE_WR or CurrentState = STATE_CLK_ZERO) else '0';
		Wreg <= '1' when (CurrentState = STATE_WR) else '0';
		DVAL <= '1' when (CurrentState = STATE_RECEIVING) else '0';
end architecture;