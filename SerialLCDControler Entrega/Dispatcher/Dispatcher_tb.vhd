library ieee;
use ieee.std_logic_1164.all;

	entity Dispatcher_tb is
	end Dispatcher_tb;
	
architecture Dispatcher_tb_arch of Dispatcher_tb is
	
	component Dispatcher
		port (
			Dval: in std_logic;
			Din: in std_logic_vector(4 downto 0);
			Dout: out std_logic_vector(4 downto 0);
			Wrl: out std_logic;
			rst: in std_logic;
			clk: in std_logic;
			done: out std_logic
		);
	end component;
	
	constant MCLK_PERIOD : time := 20 ns;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	signal reset_tb : std_logic;
	signal clk_tb : std_logic;
	signal sDval, sWrl, sdone: std_logic;
	signal sDout, sDin: std_logic_vector(4 downto 0);
	
	begin 
	
-- unit under Test 
	
	unit: Dispatcher 
		port map(
			Dval => sDval,
			Din => sDin,
			Dout => sDout,
			Wrl => sWrl,
			rst => reset_tb,
			clk => clk_tb,
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
		reset_tb <= '1';
		sDval <= '0';
		wait for MCLK_PERIOD*2;
		
		reset_tb <= '0';
		wait for MCLK_PERIOD*2;
		
		-- main loop
		
		-- state_waiting
		
		sDval <= '1';
		wait for MCLK_PERIOD*2;
		
		-- state_data
		
		wait for MCLK_PERIOD*2;
		
		-- state_done
		
		sDval <= '1';
		wait for MCLK_PERIOD*2;
		
		sDval <= '0';
		wait for MCLK_PERIOD*2;
		
		-- state waiting
		
		
		wait;
	end process;


end dispatcher_tb_arch;