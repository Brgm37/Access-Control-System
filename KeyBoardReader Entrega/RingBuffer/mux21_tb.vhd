LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

--15ns

ENTITY mux21_tb IS
END mux21_tb;

ARCHITECTURE behavioral OF mux21_tb IS

  COMPONENT mux21 IS
    PORT (
      A : IN std_logic_vector(2 DOWNTO 0);
      B : IN std_logic_vector(2 DOWNTO 0);
      S : IN std_logic;
      M : OUT std_logic_vector(2 DOWNTO 0)
    );
  END COMPONENT;

  SIGNAL A_tb, B_tb : std_logic_vector(2 DOWNTO 0);
  SIGNAL S_tb : std_logic;
  SIGNAL M_tb : std_logic_vector(2 DOWNTO 0);

BEGIN

  UUT : mux21
    PORT MAP (
      A => A_tb,
      B => B_tb,
      S => S_tb,
      M => M_tb
    );

  stimulus : PROCESS
  BEGIN

-- Test case 1: S = '0', select A input, M should be "111"
    A_tb <= "111";
    B_tb <= "000";
    S_tb <= '0';
    WAIT FOR 10 ns;

-- Test case 2: S = '1', select B input, M should be "000"
    A_tb <= "111";
    B_tb <= "000";
    S_tb <= '1';
    WAIT FOR 10 ns;


    WAIT;
  END PROCESS stimulus;

END architecture;