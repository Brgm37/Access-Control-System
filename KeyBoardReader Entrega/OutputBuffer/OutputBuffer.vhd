LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity OutputBuffer is
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
end OutputBuffer;

architecture OutputBuffer_arq of OutputBuffer is

component BufferControl is
	port (
		load : in std_logic;
		ACK : in std_logic;
		OBfree : out std_logic;
		Dval : out std_logic;
		clk: in std_logic;
		Wreg: out std_logic;
		rst: in std_logic
	);
end component;

component Registo4 is
	port (
		D : in std_logic_vector(3 downto 0);
		En : in std_logic;
		Rst : in std_logic;
		Clk : in std_logic;
		Q : out std_logic_vector(3 downto 0)
	);
end component;


	
signal sWreg : std_logic;
begin
	
	UBufferControl : BufferControl 
	port map (
		load => load,
		ACK => ACK,
		OBfree => OBfree,
		Dval => Dval,
		clk => clk,
		rst => rst,
		Wreg => sWreg
		);	

		UOutputRegister: Registo4
		port map(
			D => D,
			En => '1',
			Rst => rst,
			Clk => sWreg,
			Q => Q
			);
end architecture;