LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity KeyBoardReader is
    port(
		Clk: in std_logic;
		rst: in std_logic;
		ack: in std_logic;
		Ln: in std_logic_vector(3 downto 0); -- line
		Cl: out std_logic_vector(2 downto 0); -- column
		Q: out std_logic_vector(3 downto 0);
		Dval: out std_logic
		);
end KeyBoardReader;

architecture logic of KeyBoardReader is

component KeyDecoder is
    port(
		  Kact: in std_logic;
        clk: in std_logic;
        rst: in std_logic;
        Kval: out std_logic;
        K: out std_logic_vector(3 downto 0);
        Ln: in std_logic_vector(3 downto 0);
		  Cl: out std_logic_vector(2 downto 0)
    );
end component;

component OutputBuffer is
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
end component;

component ringBuffer is 
	port (
		D: in std_logic_vector(3 downto 0);
      Q: out std_logic_vector(3 downto 0);
		CTS: in std_logic;
      clk: in std_logic;
		rst: in std_logic;
		DAV: in std_logic;
		Wreg: out std_logic;
		DAC: out std_logic
		); 
end component;

	component CLKDIV is
		generic(
			div: natural := 50000000
		);
		port (
			clk_in: in std_logic;
			clk_out: out std_logic
		);
	end component;
	

signal sclk, sCTS, sDAV, sDAC, sOBfree, sWreg: std_logic;
signal sK_KeyDecode, sQ_RingBuffer : std_logic_vector(3 downto 0);

begin
 
UKeyDecoder: KeyDecoder 
    port map(
        Kact => sDAC,
        clk => sclk,
        rst => rst,
        Kval => sDAV,
        K => sK_KeyDecode,
        Ln => Ln,
		  Cl => Cl
		);

URingBuffer: ringBuffer
		port map( 
			D => sK_KeyDecode,
			Q => sQ_RingBuffer,
			CTS => sOBfree,
			clk => Clk,
			rst => rst,
			DAV => sDAV,
			Wreg => sWreg,
			DAC => sDAC 
			); 
			
UOutputBuffer: OutputBuffer 
		port map(
			load => sWreg,
			D => sQ_RingBuffer,
			ACK => ack,
			OBfree => sOBfree,
			Dval => Dval,
			clk => Clk,
			rst => rst,
			Q => Q
		);

--Clock Div
		UCLKDIV: CLKDIV
			generic map(500000)
			port map(
				clk_in => clk,
				clk_out => sclk
			);
end architecture;