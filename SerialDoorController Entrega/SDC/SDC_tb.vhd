library ieee;
use ieee.std_logic_1164.all;

	entity SDC_tb is
	end SDC_tb;
	
architecture SDC_tb_arch of SDC_tb is

	component SDC is
		port (
		  not_SS: in std_logic;
		  SCLK: in std_logic;
		  SDX: in std_logic;
		  MCLK: in std_logic;
		  busy: out std_logic;
		  Sclose: in std_logic;
		  Sopen: in std_logic;
		  Psensor: in std_logic;
		  OnOff: out std_logic;
		  rst: in std_logic;
		  Dout: out std_logic_vector(4 downto 0)
		);
	end component;
	
	constant MCLK_PERIOD : time := 20 ns;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	signal not_SS_tb, SCLK_tb, SDX_tb, MCLK_tb, busy_tb, Sclose_tb, Sopen_tb, Psensor_tb, OnOff_tb, rst_tb: std_logic;
   signal Dout_tb: std_logic_vector(4 downto 0);
	
	begin 
	
-- unit under Test 
	
	UUT: SDC
		port map(
		  not_SS => not_SS_tb,
		  SCLK => SCLK_tb,
		  SDX => SDX_tb,
		  MCLK => MCLK_tb,
		  busy => busy_tb,
		  Sclose => Sclose_tb,
		  Sopen => Sopen_tb,
		  Psensor => Psensor_tb,
		  OnOff => OnOff_tb,
		  rst => rst_tb,
		  Dout => Dout_tb
		);
	

	clk_gen : process
	begin
		SCLK_tb <= '0';
		MCLK_tb <= '0';
		wait for MCLK_HALF_PERIOD; 
		SCLK_tb <= '1';
		MCLK_tb <= '1';
		wait for MCLK_HALF_PERIOD;
	end process;
	
	
	-- 400 ns necessary to complete the test bench
	stimulus: process 
	begin
	
		-- reset
		rst_tb <= '1';
		not_SS_tb <= '0';
		Sopen_tb <= '0';
		Sclose_tb <= '0';
		Psensor_tb <= '0';
		SDX_tb <= '1';
		wait for MCLK_PERIOD*2;
		
		rst_tb <= '0';
		
		
		wait for MCLK_PERIOD*2;
		
		SDX_tb <= '0';
		
		wait for MCLK_PERIOD;
		
		SDX_tb <= '1';
		
		wait for MCLK_PERIOD;
		
		SDX_tb <= '0';
		
		wait for MCLK_PERIOD*2;
		
		not_SS_tb <= '1';
		
		wait for MCLK_PERIOD*2;
		
		-- expecitng OnOff == '1'
		
		PSensor_tb <= '1';
		
		wait for MCLK_PERIOD*2;
		
		Sopen_tb <= '1';
		
		wait for MCLK_PERIOD;
		
		-- expeciting OnOff == '0'
		
		Sopen_tb <= '0';
		Psensor_tb <= '0';
		wait for MCLK_PERIOD*3;
		
		--expecting OnOff == '1'
		
		Sclose_tb <= '1';
		
		wait for MCLK_PERIOD;
		
		-- expcting busy == '0'
		
		wait;
	end process;


end SDC_tb_arch;