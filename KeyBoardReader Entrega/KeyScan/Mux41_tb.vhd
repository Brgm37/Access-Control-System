LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity Mux41_tb is
end Mux41_tb;

architecture behavioral of Mux41_tb is

	component Mux41 is 
		port(
			A: in std_logic;
			B: in std_logic;
			C: in std_logic;
			D: in std_logic;
			S: in std_logic_vector(1 downto 0);
			M: out std_logic
		);
	end component;
	
--	UUT signals
	constant MCLK_PERIOD: time  := 20 ns;
	constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
	
	signal A_tb: std_logic;
	signal B_tb: std_logic;
	signal C_tb: std_logic;
	signal D_tb: std_logic;
	signal S_tb: std_logic_vector(1 downto 0);
	signal M_tb: std_logic;
	
	begin 
	
		UUT: Mux41 
			  port map(
					A => A_tb,
					B => B_tb,
					C => C_tb,
					D => D_tb,
					S => S_tb,
					M => M_tb
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
				A_tb <= '1';
				B_tb <= '0';
				C_tb <= '0';
				D_tb <= '0';
				S_tb <= "00";
				wait for MCLK_PERIOD*2;
			  
				A_tb <= '0';
				B_tb <= '1';
				C_tb <= '0';
				D_tb <= '0';
				S_tb <= "01";
				wait for MCLK_PERIOD*2;
			  
				A_tb <= '0';
				B_tb <= '0';
				C_tb <= '1';
				D_tb <= '0';
				S_tb <= "10";
				wait for MCLK_PERIOD*2;
			  
				A_tb <= '0';
				B_tb <= '0';
				C_tb <= '0';
				D_tb <= '1';
				S_tb <= "11";
				
				wait;
		  
    end process;
 end architecture;