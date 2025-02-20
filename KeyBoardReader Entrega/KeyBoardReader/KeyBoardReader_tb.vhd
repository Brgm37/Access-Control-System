library ieee;
use ieee.std_logic_1164.all;

	entity KeyBoardReader_tb is
	end KeyBoardReader_tb;
	
architecture KeyBoardReader_tb_arch of KeyBoardReader_tb is

	component KeyBoardReader is
		port (
			Kact: in std_logic;
			Q: out std_logic_vector(3 downto 0);
			Ln: in std_logic_vector(3 downto 0); -- line
			Cl: out std_logic_vector(2 downto 0); -- column
			rst: in std_logic;
			Kval: out std_logic;
			clk: in std_logic
		);
	end component;
	
	constant MCLK_PERIOD : time := 20 ns;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	signal rst_tb : std_logic;
	signal clk_tb : std_logic;
	signal Kval_tb : std_logic;
	signal Ln_tb : std_logic_vector(3 downto 0);
	signal Co_tb : std_logic_vector(2 downto 0);
	signal Q_tb : std_logic_vector(3 downto 0);
	signal Kact_tb : std_logic;
	
	begin 
	
-- unit under Test 
	
	UUT: KeyBoardReader 
		port map(
			rst => rst_tb,
			Clk => clk_tb,
			Kact => Kact_tb,
			Ln => Ln_tb,
			Cl => Co_tb,
			Q => Q_tb,
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
		Ln_tb <= "1111";
		Kact_tb <= '0';
		wait for MCLK_PERIOD*2;
		
		rst_tb <= '0';
		
		wait for MCLK_PERIOD*5;
		
		Ln_tb <= "1101";
		wait for MCLK_PERIOD*2;
	
		Kact_tb <= '1';
		
		wait for MCLK_PERIOD*2;
		Kact_tb <= '0';
		Ln_tb <= "1111";
		
		wait for MCLK_PERIOD*11;
		Ln_tb <= "1110";
		
		wait for MCLK_PERIOD*2;
		Kact_tb <= '1';
		
		wait;
	end process;


end KeyBoardReader_tb_arch;