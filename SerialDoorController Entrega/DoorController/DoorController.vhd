library IEEE;
use IEEE.std_logic_1164.all;

entity DoorController is
    port (
		  Dval: in std_logic;
        Din: in std_logic_vector(4 downto 0);
        Sclose: in std_logic;
        Sopen: in std_logic;
        Psensor: in std_logic;
        OnOff: out std_logic;
		  clk: in std_logic;
		  rst: in std_logic;
        Dout: out std_logic_vector(4 downto 0);
        done: out std_logic
    );
end DoorController;

architecture behavioral of DoorController is
	type STATE_TYPE is (STATE_OPENING, STATE_WAITING, STATE_CLOSING, STATE_DONE);

	signal CurrentState, NextState: STATE_TYPE;

	begin
--		Flip-Flop's
		CurrentState <= STATE_WAITING when rst = '1' else Nextstate when rising_edge(clk);
		
--		Generate Next State 
		GenerateNextState:
			process (CurrentState, Din(4), Psensor, Sclose, Dval, Sopen) 
				begin
					case CurrentState is
						when STATE_WAITING		=> if(Dval = '1' and Din(4) = '1') then
																NextState <= STATE_OPENING;
															elsif (Dval = '1' and Din(4) = '0') then
																NextState <= STATE_CLOSING;
															else
																NextState <= STATE_WAITING;
															end if;
						when STATE_OPENING			=> if(Sopen = '1' and Din(4) = '1') then
																NextState <= STATE_DONE;
															elsif (Sopen = '1' and Din(4) = '0') then
																NextState <= STATE_CLOSING;
															else
																NextState <= STATE_OPENING;
															end if;
						when STATE_CLOSING			=> if(Psensor='1') then
																NextState <= STATE_OPENING;
															elsif (Sclose='1' and Psensor='0') then
																NextState <= STATE_DONE;
															else
																NextState <= STATE_CLOSING;
															end if;
						when STATE_DONE       => if (Dval = '0') then
																NextState <= STATE_WAITING;
															else
																NextState <= STATE_DONE;
															end if;
					end case;
			end process;
			
--		Generate Outputs
		OnOff<= '1' when ((CurrentState = STATE_OPENING and Sopen = '0') or (CurrentState = STATE_CLOSING and Psensor = '0' and Sclose = '0')) else '0';
		done <= '1' when (CurrentState = STATE_DONE) else '0';
		Dout(3 downto 0) <= Din(3 downto 0);
		Dout(4) <= '1' when ( CurrentState = STATE_OPENING) else '0';
end architecture;