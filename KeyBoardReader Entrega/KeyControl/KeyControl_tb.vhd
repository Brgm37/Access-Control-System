library ieee;
use ieee.std_logic_1164.all;

	entity KeyControl_tb is
	end KeyControl_tb;
	
architecture KeyControl_tb_arch of KeyControl_tb is

	component KeyControl is 
		port (
			kack: in std_logic;
			kpress: in std_logic;
			kval: out std_logic;
			clk: in std_logic;
			rst: in std_logic;
			kscan: out std_logic
		);
	end component;
	
	constant MCLK_PERIOD : time := 20 ns;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	signal rst_tb : std_logic;
	signal clk_tb : std_logic;
	signal Kval_tb : std_logic;
	signal Kpress_tb : std_logic;
	signal Kact_tb : std_logic;
	
	begin 
	
-- unit under Test 
	
	UUT: KeyControl 
		port map(
			rst => rst_tb,
			Clk => clk_tb,
			Kack => Kact_tb,
			Kpress => Kpress_tb,
			Kval => Kval_tb
		);
	

	clk_gen : process
	begin
		clk_tb <= '0';
		wait for MCLK_HALF_PERIOD; 
		clk_tb <= '1';
		wait for MCLK_HALF_PERIOD;
	end process;
	
	

	stimulus: process 
	begin
	
		-- reset
		rst_tb <= '1';
		Kact_tb <= '0';
		wait for MCLK_PERIOD*2;
		
		rst_tb <= '0';
		
		wait for MCLK_PERIOD*2;
		
		Kpress_tb <= '1';
		
		wait for MCLK_PERIOD*2;
	
		Kact_tb <= '1';
		
		wait for MCLK_PERIOD*2;
		Kpress_tb <= '0';
		
		wait for MCLK_PERIOD*2;
		Kpress_tb <= '1';
		
		wait;
	end process;


end KeyControl_tb_arch;