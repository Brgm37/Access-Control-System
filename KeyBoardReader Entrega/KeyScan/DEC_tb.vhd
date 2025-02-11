LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity DEC_tb is
end DEC_tb ;

architecture behavioral of DEC_tb  is

	component DEC is 
		port(
			I0, I1, I2: out STD_LOGIC;
			S: in STD_LOGIC_VECTOR(1 downto 0)
		);
	end component;
	
--	UUT signals
	constant MCLK_PERIOD: time  := 20 ns;
	constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
	
	signal I0_tb: std_logic;
	signal I1_tb: std_logic;
	signal I2_tb: std_logic;
	signal S_tb: std_logic_vector(1 downto 0);
	
	begin 
	
		UUT: DEC 
			  port map(
					I0 => I0_tb,
					I1 => I1_tb,
					I2 => I2_tb,
					S => S_tb
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
				S_tb <= "00";
				wait for MCLK_PERIOD*2;
			  
				S_tb <= "01";
				wait for MCLK_PERIOD*2;
			  
				S_tb <= "10";				
				wait;
		  
    end process;
 end architecture;