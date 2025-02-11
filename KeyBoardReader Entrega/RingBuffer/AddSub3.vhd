LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity AddSub3 is
	port (
		A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0);
		Op : in std_logic;
		S : out std_logic_vector(3 downto 0);
		COBO : out std_logic
	);
end AddSub3;

architecture logic of AddSub3 is

	component Adder3 is
		port (
			A : in std_logic_vector(3 downto 0);
			B : in std_logic_vector(3 downto 0);
			CI : in std_logic;
			S : out std_logic_vector(3 downto 0);
			CO : out std_logic
		);
	end component;
	
	signal sCO : std_logic;
	signal sNotB : std_logic_vector(3 downto 0);
begin

	sNotB(0) <= B(0) xor Op;
	sNotB(1) <= B(1) xor Op;
	sNotB(2) <= B(2) xor Op;
	sNotB(3) <= B(3) xor Op;
	
	UAdder3 : Adder3 port map (
			A => A,
			B => sNotB,
			CI => Op,
			S => S,
			CO => sCO
		);	
			
		COBO <= sCO xor Op;
end architecture;