LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
--225ns 
 
ENTITY BufferControl_tb IS
END BufferControl_tb;

ARCHITECTURE behavioral OF BufferControl_tb IS

  COMPONENT BufferControl IS
    PORT (
      rst: IN std_logic;
      clk: IN std_logic;
      load: IN std_logic;
      ACK: IN std_logic;
      OBfree: OUT std_logic;
      Dval: OUT std_logic;
      Wreg: OUT std_logic
    );
  END COMPONENT;

--UUT signals
	constant MCLK_PERIOD: time  := 20 ns;
	constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;
	
  SIGNAL rst_tb, clk_tb, load_tb, ACK_tb, OBfree_tb, Dval_tb, Wreg_tb : std_logic;

BEGIN

  UUT : BufferControl
    PORT MAP (
      rst => rst_tb,
      clk => clk_tb,
      load => load_tb,
      ACK => ACK_tb,
      OBfree => OBfree_tb,
      Dval => Dval_tb,
      Wreg => Wreg_tb
    );

clk_gen: process
			begin
				clk_tb <= '0';
				wait for MCLK_HALF_PERIOD; 
				clk_tb <= '1';
				wait for MCLK_HALF_PERIOD;
			end process;

  stimulus : PROCESS
  BEGIN
	 wait for MCLK_HALF_PERIOD;
		-- 	reset
				rst_tb <= '1';
				wait for MCLK_PERIOD;
				rst_tb <= '0';
				wait for MCLK_PERIOD;
				
 -- Test case 1: Load signal is inactive, expect OBfree to be active
	load_tb <= '0';
	WAIT FOR MCLK_PERIOD;

-- Test case 2: Load signal is active, expect Wreg and OBfree to be active
    load_tb <= '1';
    WAIT FOR MCLK_PERIOD*2;
-- expect Dval to be active 
	ACK_tb <= '0';
	WAIT FOR MCLK_PERIOD*2;
	ACK_tb <= '1';
	WAIT FOR MCLK_PERIOD*2;
	
--Test case 3: ACK signal is inactive, expect OBfree to be active and Dval to be inactive
	ACK_tb <= '0';
	WAIT FOR MCLK_PERIOD;
	
    WAIT;

  END PROCESS stimulus;

END architecture;