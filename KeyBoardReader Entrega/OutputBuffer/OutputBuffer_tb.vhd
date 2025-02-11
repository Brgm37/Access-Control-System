LIBRARY IEEE;
use IEEE.std_logic_1164.all;

--200ns

entity OutputBuffer_tb is
end OutputBuffer_tb;

architecture behavioral of OutputBuffer_tb is

component OutputBuffer is
	port (
		load : in std_logic;
		D : in std_logic_vector(3 downto 0);
		ACK : in std_logic;
		OBfree : out std_logic;
		Dval : out std_logic;
		clk: in std_logic;
		rst: in std_logic;
		Q : out std_logic_vector(3 downto 0)
	);
end component;

--UUT signals
	constant MCLK_PERIOD: time  := 20 ns;
	constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
	

		signal load_tb :  std_logic;
		signal D_tb :  std_logic_vector(3 downto 0);
		signal ACK_tb : std_logic;
		signal OBfree_tb : std_logic;
		signal Dval_tb :  std_logic;
		signal clk_tb:  std_logic;
		signal rst_tb:  std_logic;
		signal Q_tb : std_logic_vector(3 downto 0); 
		
begin 

 UUT: OutputBuffer
		port map(
			load => load_tb,
			D => D_tb, 
			ACK => ACK_tb,
			OBfree => OBfree_tb,
			Dval => Dval_tb,
			clk => clk_tb,
			rst => rst_tb,
			Q => Q_tb
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
			
			wait for MCLK_HALF_PERIOD;
		-- 	reset
				rst_tb <= '1';
				wait for MCLK_PERIOD;
				
				rst_tb <= '0';
				wait for MCLK_PERIOD;
				
    -- Test case 1: Initial state: OBfree should be active,Dval should be inactive and  Q should be "0000"

	
    -- Test case 2: Activate load signal and provide data, OBfree should be inactive
    load_tb <= '1';
    D_tb <= "1010";
    WAIT FOR MCLK_PERIOD*2;
    

    -- Test case 3: Deactivate load signal and wait for Dval activation
    load_tb <= '0';
    WAIT FOR MCLK_PERIOD*2;

    -- Test case 4: Activate ACK signal, Q should be "1010" 
    ACK_tb <= '1';
    WAIT FOR MCLK_PERIOD*2;


    -- Test case 5: Deactivate ACK signal and wait for Dval deactivation 
    ACK_tb <= '0';
    WAIT FOR MCLK_PERIOD*2;

    -- Test case 6: Check for OBfree activation

WAIT;

  END PROCESS stimulus;

END architecture;	

			
	
	