library ieee;
use ieee.std_logic_1164.all;

	entity RingBufferControl_tb is
	end RingBufferControl_tb;
	
architecture RingBufferControl_tb_arch of RingBufferControl_tb is

	component RingBufferControl is
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
	end component;
	
	constant MCLK_PERIOD : time := 20 ns;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	signal Dav_tb, CTS_tb, full_tb, clk_tb, empty_tb, rst_tb, incPut_tb, incGet_tb, Dac_tb, wr_tb, selPG_tb, Wreg_tb: std_logic;
	
	begin 
	
-- unit under Test 
	
	UUT: RingBufferControl
		port map(
			Dav => Dav_tb,
			CTS => CTS_tb,
			full => full_tb,
			clk => clk_tb,
			empty => empty_tb,
			rst => rst_tb,
			incPut => incPut_tb,
			incGet => incGet_tb,
			Dac => Dac_tb,
			Wr => Wr_tb,
			selPG => selPG_tb,
			Wreg => Wreg_tb
		);
	

	clk_gen : process
	begin
		clk_tb <= '0';
		wait for MCLK_HALF_PERIOD; 
		clk_tb <= '1';
		wait for MCLK_HALF_PERIOD;
	end process;
	
	
	-- 400 ns necessary to complete the test bench
	stimulus: process 
	begin
	
		-- reset
		rst_tb <= '1';
		dav_tb <= '0';
		cts_tb <= '0';
		empty_tb <= '1';
		full_tb <= '0';
		wait for MCLK_PERIOD*2;
		
		rst_tb <= '0';
		
		wait for MCLK_PERIOD*2;
		
		cts_tb <= '1';
		
		wait for MCLK_PERIOD*2;
		
		dav_tb <= '1';
		
		wait for MCLK_PERIOD*2;
		
		--expecting selPG == 1
		
		wait for MCLK_PERIOD*2;
		
		--expecting selPG and Wr == 1
		
		wait for MCLK_PERIOD*2;
		
		-- expecitng DAC == 1
		
		dav_tb <= '0';
		
		wait for MCLK_PERIOD*2;
		
		--expecting incPut == 1
		
		cts_tb <= '1';
		empty_tb <= '0';
		
		wait for MCLK_PERIOD*6;
		
		--expecting Wreg == '1'
		
		CTS_tb <= '0';
		
		wait for MCLK_PERIOD*2;
		
		-- expcting incGet == '0'
		
		wait;
	end process;


end RingBufferControl_tb_arch;