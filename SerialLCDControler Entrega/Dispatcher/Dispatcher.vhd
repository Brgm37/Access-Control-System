library IEEE;
use IEEE.std_logic_1164.all;

entity Dispatcher is
    port (
        Dval: in std_logic;
		  Din: in std_logic_vector(4 downto 0);
		  Dout: out std_logic_vector(4 downto 0);
		  Wrl: out std_logic;
		  rst: in std_logic;
		  clk: in std_logic;
		  done: out std_logic
    );
end Dispatcher;

architecture behavioral of Dispatcher is
	type STATE_TYPE is (STATE_DATA, STATE_WAITING, STATE_DONE);

	signal CurrentState, NextState: STATE_TYPE;
	signal sWrl : std_logic;

	begin
--		Flip-Flop's
		CurrentState <= STATE_WAITING when rst = '1' else Nextstate when rising_edge(clk);
		
--		Generate Next State 
		GenerateNextState:
			process (CurrentState, Dval, sWrl) 
				begin
					case CurrentState is
						when STATE_WAITING		=> if(Dval = '1') then
																NextState <= STATE_DATA;
															else
																NextState <= STATE_WAITING;
															end if;
						when STATE_DATA			=> if(sWrl = '1') then
																NextState <= STATE_DONE;
															else
																NextState <= STATE_DATA;
															end if;
						when STATE_DONE			=> if(Dval = '0') then
																NextState <= STATE_WAITING;
															else
																NextState <= STATE_DONE;
															end if;
					end case;
			end process;
			
--		Generate Outputs
		sWrl <= '1' when (CurrentState = STATE_DATA) else '0';
		done <= '1' when (CurrentState = STATE_DONE) else '0';
		Wrl <= sWrl;
		Dout <= Din;
		
end architecture;