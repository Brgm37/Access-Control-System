LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity memoryAdressControl is 
	port (
		putget: in std_logic;
		Clk: in std_logic;
		Rst: in std_logic;
		incPut: in std_logic;
		incGet: in std_logic;
		full: out std_logic;
		empty: out std_logic;
		Aoutput: out std_logic_vector(2 downto 0)
		); 
end memoryAdressControl;
architecture arq_memoryAdressControl of memoryAdressControl is

component mux21 is
	port(A: in std_logic_vector(2 downto 0);
	B: in std_logic_vector(2 downto 0);
	S: in std_logic;
	M: out std_logic_vector(2 downto 0));
end component;

component AddSub3 is
	port (
		A : in std_logic_vector(3 downto 0);
		B : in std_logic_vector(3 downto 0);
		Op : in std_logic;
		S : out std_logic_vector(3 downto 0)
	);
end component;

component Registo3 is
	port (
		D : in std_logic_vector(3 downto 0);
		En : in std_logic;
		Rst : in std_logic;
		Clk : in std_logic;
		Q : out std_logic_vector(3 downto 0)
	);
end component;

component Contador is
	port (
		Clk : in std_logic;
		Rst : in std_logic;
		Q : out std_logic_vector(2 downto 0);
		Count_Enable: in std_logic
	);
end component;


signal  sGet, sPut: std_logic_vector(2 downto 0); 
signal  sOr: std_logic;
signal  sV,sR : std_logic_vector(3 downto 0);
begin

URegisto3: Registo3
port map(
		D => sV,
		En => sOr,
		Rst => Rst,
		Clk => Clk, 
		Q => sR
);


UAddSub3: AddSub3
port map(
		A => sR,
		B => "0001",
		Op => incGet,
		S => sV
);

UIDXGET: Contador
port map(
		Rst =>  Rst, 
		Clk => Clk,
		Count_Enable => incGet,
		Q => sGet
);

UIDXPUT: Contador
port map(
		Rst =>  Rst, 
		Clk => Clk,
		Count_Enable => incPut,
		Q => sPut
);

Umux21: mux21
port map(
		A => sGet,
		B => sPut,
		S => putget,
		M => Aoutput
);
		

sOr <= incPut or incGet;
		
full <= (not sR(0)) and (not sR(1)) and (not sR(2)) and sR(3);
empty <= (not sR(0)) and (not sR(1)) and (not sR(2)) and (not sR(3));


end architecture;
