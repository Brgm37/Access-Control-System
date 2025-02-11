library ieee;
use ieee.std_logic_1164.all;

	entity serialControl_tb is
	end serialControl_tb;
	
architecture serialControl_tb_arch of serialControl_tb is
	
	component SerialControl
		port (
			clk: in std_logic;
			enRx: in std_logic;
			accept: in std_logic;
			clr: out std_logic;
			wr: out std_logic;
			rst: in std_logic;
			DXval: out std_logic;
			eq5: in std_logic
		);
	end component;
	
	constant MCLK_PERIOD : time := 20 ns;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	signal reset_tb : std_logic;
	signal clk_tb : std_logic;
	signal senRx, sclr, saccept, swr, sDXval, seq5: std_logic;
	
	begin 
	
-- unit under Test 
	
	unit: SerialControl 
		port map(
			clk => clk_tb,
			enRx => senRx,
			accept => saccept,
			clr => sclr,
			wr => swr,
			rst => reset_tb,
			DXval => sDXval,
			eq5 => seq5
		);
	

	clk_gen: process
			begin
				clk_tb <= '0';
				wait for MCLK_HALF_PERIOD; 
				clk_tb <= '1';
				wait for MCLK_HALF_PERIOD;
			end process;
	
	

	stimulus: process -- senRx, sclr, saccept, swr, sDXval, seq5
	begin
	
		-- reset
		reset_tb <= '1';
		senRx <= '1';
		wait for MCLK_PERIOD*2;
		
		reset_tb <= '0';
		
		-- main loop
		
		-- state_receiving
		
		senRx <= '0';
		wait for MCLK_PERIOD*2;
		
		-- state waiting
		
		seq5 <= '0';
		wait for MCLK_PERIOD*2;
		
		seq5 <= '1';
		wait for MCLK_PERIOD*2;
		
		-- state_accepted
		
		saccept <= '0';
		wait for MCLK_PERIOD*2;
		
		saccept <= '1';
		wait for MCLK_PERIOD*2;
		
		-- state_receiving
		
		
		wait;
	end process;

end serialControl_tb_arch;