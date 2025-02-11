LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity KeyDecoder is
	port(
		Kact: in std_logic;
		clk: in std_logic;
		rst: in std_logic;
		Kval: out std_logic;
		K: out std_logic_vector(3 downto 0);
		Ln: in std_logic_vector(3 downto 0);
		Cl: out std_logic_vector(2 downto 0)
	);
end KeyDecoder;

architecture logic of KeyDecoder is

	component KeyScan is
       port (
            Clk: in std_logic;
				Kscan: in std_logic;
				Ln: in std_logic_vector(3 downto 0); -- line 
				rst: in std_logic;
				Cl: out std_logic_vector(2 downto 0); -- column
				K: out std_logic_vector(3 downto 0);
				Kpress: out std_logic
		);
   end component;

   component KeyControl is
       port(
			kack: in std_logic;
			kpress: in std_logic;
			kval: out std_logic;
			clk: in std_logic;
			rst: in std_logic;
			kscan: out std_logic
		);
	end component;
	
	signal sKpress: std_logic;
	signal sKscan: std_logic;
	signal sclk: std_logic;
	
	begin 
--		KeyScan
		UKeyScan: KeyScan
			port map(
				Clk => clk,
				Kscan => sKscan,
				Ln => Ln ,
				rst => rst,
				Cl =>  Cl,
				K => K,
				Kpress => sKpress
			);
--		KeyControl
		UKeyControl: KeyControl
			port map(
				kack => Kact,
				kpress => sKpress,
				kval => Kval,
				clk => clk,
				rst => rst,
				kscan => sKscan
			);
			
end architecture;