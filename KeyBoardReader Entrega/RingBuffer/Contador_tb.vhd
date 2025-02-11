library ieee;
use ieee.std_logic_1164.all;

	entity Contador_tb is
	end Contador_tb;
	
architecture Contador_tb_arch of Contador_tb is

	component Contador is
		port (
			Clk : in std_logic;
			Rst : in std_logic;
			Q : out std_logic_vector(2 downto 0);
			Count_Enable: in std_logic
	);
	end component;
	
	constant MCLK_PERIOD : time := 20 ns;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	signal Count_Enable_tb, clk_tb, rst_tb: std_logic;
	signal Q_tb: std_logic_vector(2 downto 0);
	
	begin 
	
-- unit under Test 
	
	UUT: Contador
		port map(
			clk => clk_tb,
			rst => rst_tb,
			Count_Enable => Count_Enable_tb,
			Q => Q_tb
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
		Count_Enable_tb <= '1';
		
		wait for MCLK_PERIOD*2;
		
		rst_tb <= '0';
		
		wait for MCLK_PERIOD;
		
		--expecting Q == "001"
		
		wait for MCLK_PERIOD;
		
		--expecting Q == "010"
		
		wait for MCLK_PERIOD;
		
		--expecting Q == "011"
		
		wait for MCLK_PERIOD;
		
		--expecting Q == "100"
		
		wait for MCLK_PERIOD;
		
		--expecting Q == "101"
		
		wait for MCLK_PERIOD;
		
		--expecting Q == "110"
		
		wait for MCLK_PERIOD;
		
		--expecting Q == "111"
		
		wait;
	end process;


end Contador_tb_arch;