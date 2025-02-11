library ieee;
use ieee.std_logic_1164.all;

	entity DoorController_tb is
	end DoorController_tb;
	
architecture DoorController_tb_arch of DoorController_tb is
	
	component DoorController
		port (
			Dval: in std_logic;
			Din: in std_logic_vector(4 downto 0);
			Sclose: in std_logic;
			Sopen: in std_logic;
			Psensor: in std_logic;
			clk: in std_logic;
			rst: in std_logic;
			OnOff: out std_logic;
			Dout: out std_logic_vector(4 downto 0);
			done: out std_logic
		);
	end component;
	
	constant MCLK_PERIOD : time := 20 ns;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	signal reset_tb : std_logic;
	signal clk_tb : std_logic;
	signal sDval, sSclose, sSopen, sPsensor, sOnOff, sdone: std_logic;
	signal sDin, sDout: std_logic_vector(4 downto 0);
	
	begin 
	
-- unit under Test 
	
	unit: DoorController 
		port map(
			Dval => sDval,
			Din => sDin,
			Sclose => sSclose,
			Sopen => sSopen,
			Psensor => sPsensor,
			clk => clk_tb,
			rst => reset_tb,
			OnOff => sOnOff,
			Dout => sDout,
			done => sdone
		);
	

	clk_gen: process
			begin
				clk_tb <= '0';
				wait for MCLK_HALF_PERIOD; 
				clk_tb <= '1';
				wait for MCLK_HALF_PERIOD;
			end process;
	
	

	stimulus: process 
	begin
	
		-- reset
		reset_tb <= '1'; 				-- initial reset
		wait for MCLK_PERIOD*2;		
		
		reset_tb <= '0';				-- initial reset
		
		-- main loop
		-- state waiting
		
		sDval <= '0';					-- wait with Dval at '0'
		wait for MCLK_PERIOD*2;
		
		sDval <= '1';					-- data is valid from now
		SDin(0) <= '0';				-- OpenClose from command set to '0' (close)
		
		-- state close
		
		sSclose <= '0';				-- set Sclose to '0' not closed yet
		sPsensor <= '0';				-- sensor turned off no person passing
		wait for MCLK_PERIOD*2;
		
		wait for MCLK_PERIOD*2*3;	-- wait 3 times
		
		-- state sensor
		
		sPsensor <= '1';				-- person passing, sensor active
		sSopen <= '0';					-- door not opened
		wait for MCLK_PERIOD*2*3;	-- wait 3 times for the door to open
		
		-- state Top
		
		sSopen <= '1';					-- door opened
		wait for MCLK_PERIOD*2*3;	-- wait 3 times 
		
		-- state close
		
		SPsensor <= '0';				-- sensor finally turned off
		sSclose <= '1';				-- door closed
		wait for MCLK_PERIOD*2;
		
		-- state waiting
		
		SDin(0) <= '1';				-- set command to open the door
		sSopen <= '0';					-- door not opened yet
		wait for MCLK_PERIOD*2;
		
		-- state open
		
		wait for MCLK_PERIOD*2*3; 	-- wait 3 times for door to open
		
		sSopen <= '1';					-- door opened
		
		wait for MCLK_PERIOD*2;		-- go to state waiting
		
		
		wait;
	end process;


end DoorController_tb_arch;