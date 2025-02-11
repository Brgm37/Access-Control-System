library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity RingBufferControl is
	port(
		Dav: In std_logic;
		CTS: In std_logic;
		full: In std_logic;
		clk: in std_logic;
		empty: In std_logic;
		rst: in std_logic;
		incPut: out std_logic;
		incGet: out std_logic;
		Dac: out std_logic;
		Wr: out std_logic;
		selPG: out std_logic;
		Wreg: out std_logic
	);
end RingBufferControl;

architecture behavioral of RingBufferControl is
type STATE_TYPE is (STATE_WAITING, STATE_RE, STATE_WR, STATE_INCPUT, STATE_INCGET, STATE_PUTNOTGET, STATE_NOTPUTGET, STATE_DAC);

	signal CurrentState, NextState: STATE_TYPE;

	begin
--		Flip-Flop's
		CurrentState <= STATE_WAITING when rst = '1' else Nextstate when rising_edge(clk);
		
--		Generate Next State 
		GenerateNextState:
			process (CurrentState, Dav, CTS, full, empty) 
				begin
					case CurrentState is
						when STATE_WAITING		=> if (Dav = '1') then
																	if (full = '0') then
																		NextState <= STATE_PUTNOTGET;
																	else
																		if (CTS = '1' and empty = '0') then
																			NextState <= STATE_NOTPUTGET;
																		else
																			NextState <= STATE_WAITING;
																		end if;
																	end if;
															else
																	if(CTS = '1' and empty = '0') then
																		NextState <= STATE_NOTPUTGET;
																	else
																		NextState <= STATE_WAITING;
																	end if;
															end if;
															
						when STATE_PUTNOTGET	=> NextState <= STATE_WR;
						
						when STATE_WR			=> NextState <= STATE_DAC;
						
						when STATE_DAC			=> if(Dav = '0') then
																NextState <= STATE_INCPUT;
														else
																NextState <= STATE_DAC;
														end if;
						when STATE_NOTPUTGET => NextState <= STATE_RE;								
														
						when STATE_RE			=> if(CTS = '0') then
																NextState <= STATE_INCGET;
														else
																NextState <= STATE_RE;
														end if;
						when STATE_INCPUT    => NextState <= STATE_WAITING;
						
						when STATE_INCGET		=> NextState <= STATE_WAITING;
														
					end case;
			end process;
			
--		Generate Outputs
		Wr <= '1' when (CurrentState = STATE_WR) else '0';
		selPG <= '1' when (CurrentState = STATE_WR or CurrentState = STATE_PUTNOTGET) else '0';
		Wreg <= '1' when (CurrentState = STATE_RE) else '0';
		DAC <= '1' when (CurrentState = STATE_DAC) else '0';
		incPut <= '1' when (CurrentState = STATE_INCPUT) else '0';
		incGet <= '1' when (CurrentState = STATE_INCGET) else '0';
end architecture;