library ieee;
use ieee.std_logic_1164.all;

entity shiftReg5 is
    port(
    Clk: in std_logic;
		 I: in std_logic;
		 En: in std_logic;
		 rst: in std_logic;
		 O: out std_logic_Vector(4 downto 0)
	 );
end shiftReg5;

architecture logic of shiftReg5 is

     component FFD 
        port (
            CLK : in std_logic;
            RESET : in STD_LOGIC;
            SET : in std_logic;
            D : IN STD_LOGIC;
            EN : IN STD_LOGIC;
            Q : out std_logic
        );
    end component;

    
-- signal

    signal ffs: std_logic_vector(4 downto 0);

-- comp

begin

    FF0 : FFD port map (CLK => Clk, RESET => rst, SET => '0', D => I, EN => En, Q => ffs(0));
    FF1 : FFD port map (CLK => Clk, RESET => rst, SET => '0', D => ffs(0), EN => En, Q => ffs(1));
    FF2 : FFD port map (CLK => Clk, RESET => rst, SET => '0', D => ffs(1), EN => En, Q => ffs(2));
    FF3 : FFD port map (CLK => Clk, RESET => rst, SET => '0', D => ffs(2), EN => En, Q => ffs(3));
    FF4 : FFD port map (CLK => Clk, RESET => rst, SET => '0', D => ffs(3), EN => En, Q => ffs(4));
    
    O <= ffs;

     
end architecture;