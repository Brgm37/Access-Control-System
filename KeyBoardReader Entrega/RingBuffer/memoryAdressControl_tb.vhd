LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY memoryAdressControl_tb IS
END memoryAdressControl_tb;

ARCHITECTURE behavioral OF memoryAdressControl_tb IS

  COMPONENT memoryAdressControl IS
    PORT (
      putget   : IN std_logic;
      Clk      : IN std_logic;
      Rst      : IN std_logic;
      incPut   : IN std_logic;
      incGet   : IN std_logic;
      full     : OUT std_logic;
      empty    : OUT std_logic;
      Aoutput  : OUT std_logic_vector(2 DOWNTO 0)
    );
  END COMPONENT;
  
  --	UUT signals
	constant MCLK_PERIOD: time  := 20 ns;
	constant MCLK_HALF_PERIOD: time := MCLK_PERIOD / 2;

  SIGNAL putget_tb, Clk_tb, Rst_tb, incPut_tb, incGet_tb : std_logic;
  SIGNAL full_tb, empty_tb : std_logic;
  SIGNAL Aoutput_tb : std_logic_vector(2 DOWNTO 0);

BEGIN

  UUT : memoryAdressControl
    PORT MAP (
      putget  => putget_tb,
      Clk     => Clk_tb,
      Rst     => Rst_tb,
      incPut  => incPut_tb,
      incGet  => incGet_tb,
      full    => full_tb,
      empty   => empty_tb,
      Aoutput => Aoutput_tb
    );

	clk_gen : process
	begin
		clk_tb <= '0';
		wait for MCLK_HALF_PERIOD; 
		clk_tb <= '1';
		wait for MCLK_HALF_PERIOD;
	end process; 
	 
  stimulus : PROCESS
  BEGIN
  
-- 	reset
	 rst_tb <= '1';
	 wait for MCLK_PERIOD;
	  
  	 rst_tb <= '0';
	 wait for MCLK_PERIOD;
	
	    -- Test case 1: Empty condition: full should be '0', empty should be '1' and Aoutput should be "000"
    putget_tb <= '1';
    incPut_tb <= '1';
    incGet_tb <= '0';
    wait for MCLK_PERIOD*8;	 

    -- Test case 3: Full condition: full should be '1', empty should be '0' and Aoutput should be "000"
    putget_tb <= '0';
    incPut_tb <= '0';
    incGet_tb <= '1';
    wait for MCLK_PERIOD;
	  
	  
	 -- Test case 4: Full condition: full should be '0', empty should be '0' and Aoutput should be "001" 
	 incGet_tb <= '0';

    WAIT;
  END PROCESS;

END architecture;