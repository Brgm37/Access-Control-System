LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Registo3_tb IS
END Registo3_tb;

ARCHITECTURE behavioral OF Registo3_tb IS

  COMPONENT Registo3 IS
    PORT (
      D   : IN std_logic_vector(2 DOWNTO 0);
      En  : IN std_logic;
      Rst : IN std_logic;
      Clk : IN std_logic;
      Q   : OUT std_logic_vector(2 DOWNTO 0)
    );
  END COMPONENT;

  SIGNAL D_tb : std_logic_vector(2 DOWNTO 0);
  SIGNAL En_tb, Rst_tb, Clk_tb : std_logic;
  SIGNAL Q_tb : std_logic_vector(2 DOWNTO 0);

BEGIN

  UUT : Registo3
    PORT MAP (
      D   => D_tb,
      En  => En_tb,
      Rst => Rst_tb,
      Clk => Clk_tb,
      Q   => Q_tb
    );

  stimulus : PROCESS
  BEGIN

    -- Test case 1: Enable = '1', Reset = '0', Q should be "101"
    D_tb <= "101";
    En_tb <= '1';
    Rst_tb <= '0';
    Clk_tb <= '0';
    WAIT FOR 10 ns;
    Clk_tb <= '1';
    WAIT FOR 10 ns;

    -- Test case 2: Enable = '0', Reset = '0', Q should be "101"
    D_tb <= "010";
    En_tb <= '0';
    Rst_tb <= '0';
    Clk_tb <= '0';
    WAIT FOR 10 ns;
    Clk_tb <= '1';
    WAIT FOR 10 ns;

    -- Test case 3: Enable = '1', Reset = '1', Q shoud be "000"
    D_tb <= "111";
    En_tb <= '1';
    Rst_tb <= '1';
    Clk_tb <= '0';
    WAIT FOR 10 ns;
    Clk_tb <= '1';
    WAIT FOR 10 ns;

    -- Test case 4: Enable = '0', Reset = '1', Q should be "000"
    D_tb <= "001";
    En_tb <= '0';
    Rst_tb <= '1';
    Clk_tb <= '0';
    WAIT FOR 10 ns;
    Clk_tb <= '1';
    WAIT FOR 10 ns;


    WAIT;
  END PROCESS stimulus;

END architecture;