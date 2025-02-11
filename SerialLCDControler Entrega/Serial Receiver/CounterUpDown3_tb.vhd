library ieee;
use ieee.std_logic_1164.all;

	entity ContadorUpDown3_tb is
	end ContadorUpDown3_tb;
	
architecture ContadorUpDown3_tb_arch of ContadorUpDown3_tb is
	
	component ContadorUpDown3
		port (
        Clk : in std_logic; -- Clock
        Rst : in std_logic; -- Reset
        CE : in std_logic; -- Count Enable
        Q : out std_logic_vector(2 downto 0) -- output
		);
	end component;
	
	constant MCLK_PERIOD : time := 20 ns;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	signal reset_tb : std_logic;
	signal clk_tb : std_logic;
	signal sCE: std_logic;
	signal sQ: std_logic_vector(2 downto 0);
	
	begin 
	
-- unit under Test 
	
	unit: ContadorUpDown3 
		port map(
			Clk => clk_tb,
			Rst => reset_tb,
			CE => sCE,
			Q => sQ
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
		sCE <= '0';
		wait for MCLK_PERIOD*2;
		
		reset_tb <= '0';
		
		-- main loop
		
		-- state_receiving
		
		sCE <= '1';
		wait for MCLK_PERIOD*2*(3); -- count 3 times
		
		sCE <= '0';
		wait for MCLK_PERIOD*2; -- halt 1 time
		
		sCE <= '1';
		wait for MCLK_PERIOD*2*(4); -- count 4 more times
		
		
		wait;
	end process;


end ContadorUpDown3_tb_arch;
