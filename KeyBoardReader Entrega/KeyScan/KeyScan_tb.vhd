LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity KeyScan_tb is
end KeyScan_tb;

architecture behavioral of KeyScan_tb is

	component KeyScan is 
		port(
			Clk: in std_logic;
			Kscan: in std_logic;
			Ln: in std_logic_vector(3 downto 0); -- line 
			rst: in std_logic;
			Cl: out std_logic_vector(2 downto 0); -- column
			K: out std_logic_vector(3 downto 0);
			Kpress: out std_logic
		);
	end component;
	
--	UUT signals
	constant MCLK_PERIOD: time  := 20 ns;
	constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
	
	signal Clk_tb:  std_logic;
	signal Kscan_tb:  std_logic;
	signal Ln_tb: std_logic_vector(3 downto 0); -- line 
	signal rst_tb: std_logic;
	signal Cl_tb: std_logic_vector(2 downto 0); -- column
	signal K_tb: std_logic_vector(3 downto 0);
	signal Kpress_tb: std_logic;
	
	begin 
	
		UUT: KeyScan 
			  port map(
					Clk => Clk_tb,
					Kscan => Kscan_tb,
					Ln => Ln_tb, 
					rst => rst_tb,
					Cl => Cl_tb,
					K => K_tb,
					Kpress => Kpress_tb
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
		-- 	reset
				rst_tb <= '1';
				Kscan_tb <= '1';
				Ln_tb <= "1111";
				wait for MCLK_PERIOD*2;
			  
				rst_tb <= '0';
				wait for MCLK_PERIOD*10;
			  
				Ln_tb <= "1010";
				Kscan_tb <= '0';
				wait for MCLK_PERIOD*2;
			  
				Kscan_tb <= '1';
				Ln_tb <= "1111";
				wait for MCLK_PERIOD*5;
			  
				Ln_tb <= "0101";
				Kscan_tb <= '0';
				wait for MCLK_PERIOD*2;
				
				Kscan_tb <= '1';
				Ln_tb <= "1111";
				wait for MCLK_PERIOD*10;
				
				wait;
		  
    end process;
 end architecture;