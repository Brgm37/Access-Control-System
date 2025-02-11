LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity Registo4 is
	port (
		D : in std_logic_vector(3 downto 0);
		En : in std_logic;
		Rst : in std_logic;
		Clk : in std_logic;
		Q : out std_logic_vector(3 downto 0)
	);
end Registo4;

architecture logic of Registo4 is

	component FFD
		port(	CLK : in std_logic;
				RESET : in STD_LOGIC;
				SET : in std_logic;
				D : IN STD_LOGIC;
				EN : IN STD_LOGIC;
				Q : out std_logic
		);
	end component;
	
begin

	U0FFD : FFD port map (Clk => Clk, reset => Rst, set => '0', D => D(0), En => En, Q => Q(0));
	U1FFD : FFD port map (Clk => Clk, reset => Rst, set => '0', D => D(1), En => En, Q => Q(1));
	U2FFD : FFD port map (Clk => Clk, reset => Rst, set => '0', D => D(2), En => En, Q => Q(2));
	U3FFD : FFD port map (Clk => Clk, reset => rst, set => '0', D => D(3), EN => En, Q => Q(3));
			
end architecture;