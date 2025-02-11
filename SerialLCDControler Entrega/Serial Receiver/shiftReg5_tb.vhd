library ieee;
use ieee.std_logic_1164.all;

	entity shiftReg5_tb is
	end shiftReg5_tb;
	
architecture shiftReg5_tb_arch of shiftReg5_tb is
	
	component shiftReg5
		port (
        Clk: in std_logic;
		  I: in std_logic;
		  En: in std_logic;
		  rst: in std_logic;
		  O: out std_logic_Vector(4 downto 0)
		);
	end component;
	
	constant MCLK_PERIOD : time := 20 ns;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	signal rst_tb : std_logic;
	signal clk_tb : std_logic;
	signal En_tb : std_logic;
	signal I_tb: std_logic;
	signal O_tb: std_logic_vector(4 downto 0);
	
	begin 
	
-- unit under Test 
	
	unit: shiftReg5 
		port map(
			Clk => clk_tb,
		   I => I_tb,
		   En => En_tb,
		   rst => rst_tb,
		   O => O_tb
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
		rst_tb <= '1';
		En_tb <= '0';
		wait for MCLK_PERIOD*2;
		
		rst_tb <= '0';
		
		-- main loop
		
		-- state_receiving
		
		I_tb <= '1';
		wait for MCLK_PERIOD*2;
		
		I_tb <= '0';
		wait for MCLK_PERIOD*2;
		
		I_tb <= '0';
		wait for MCLK_PERIOD*2;
		
		I_tb <= '1';
		wait for MCLK_PERIOD*2;
		
		I_tb <= '1';
		wait;
	end process;


end shiftReg5_tb_arch;