LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity SLCDC_tb is
end SLCDC_tb;

architecture behavioral of SLCDC_tb is

	component SLCDC is 
		port(
			not_SS: in std_logic;
			SCLK: in std_logic;
			SDX: in std_logic;
			E: out std_logic;
			rst: in std_logic;
			Dout: out std_logic_vector(4 downto 0)
		);
	end component;
	
--	UUT signals
	constant MCLK_PERIOD: time  := 20 ns;
	constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
	
	signal Clk_tb:  std_logic;
	signal not_SS_tb:  std_logic;
	signal SDX_tb: std_logic; 
	signal rst_tb: std_logic;
	signal E_tb: std_logic; 
	signal Dout_tb: std_logic_vector(4 downto 0);
	
	begin 
	
		UUT: SLCDC 
			  port map(
					not_SS => not_SS_tb,
					SCLK => Clk_tb,
					SDX => SDX_tb,
					E => E_tb,
					rst => rst_tb,
					Dout => Dout_tb
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
				SDX_tb <= '1';
				not_SS_tb <= '0';
				wait for MCLK_PERIOD;
			  
				rst_tb <= '0';
				wait for MCLK_PERIOD*2;
			  
				SDX_tb <= '0';
				wait for MCLK_PERIOD;
			  
				SDX_tb <= '0';
				wait for MCLK_PERIOD;
			  
				SDX_tb <= '1';
				wait for MCLK_PERIOD;
				
				SDX_tb <= '1';
				not_SS_tb <= '1';
				wait for MCLK_PERIOD;
				
				wait;
		  
    end process;
 end architecture;