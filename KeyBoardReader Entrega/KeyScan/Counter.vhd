LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity Counter is
	port (
		Clk : in std_logic;
		Rst : in std_logic;
		Q : out std_logic_vector(3 downto 0);
		Count_Enable: in std_logic
	);
end Counter;

architecture logic of Counter is

	component FFD
		port (
			CLK : in std_logic;
			RESET : in STD_LOGIC;
			SET : in std_logic;
			D : IN STD_LOGIC;
			EN : IN STD_LOGIC;
			Q : out std_logic
		);
	END component;

	signal sD, sQ : std_logic_vector(3 downto 0);
	signal senable: std_logic;
	
	begin

		-- Estado (FFs):
		FF0 : FFD port map (CLK => Clk, RESET => Rst, SET => '0', D => sD(0), EN => Count_Enable, Q => sQ(0));
		FF1 : FFD port map (CLK => Clk, RESET => Rst, SET => '0', D => sD(1), EN => Count_Enable, Q => sQ(1));
		FF2 : FFD port map (CLK => Clk, RESET => Rst, SET => '0', D => sD(2), EN => Count_Enable, Q => sQ(2));
		FF3 : FFD port map (CLK => Clk, RESET => Rst, SET => '0', D => sD(3), EN => Count_Enable, Q => sQ(3));
		
		-- Logica de estado seguinte:
		sD(0) <= not sQ(0);
		sD(1) <= sQ(0) xor sQ(1);
		sD(2) <= (sQ(0) and sQ(1)) xor sQ(2);
		sD(3) <= (sQ(0) and sQ(1) and sQ(2)) xor sQ(3);
		
		-- Logica de saida
		Q <= sQ;
	
end architecture;