library IEEE;
use IEEE.std_logic_1164.all;

entity SerialReceiver is
    port (
        SDX: in std_logic;
		  SCLK: in std_logic;
		  MCLK: in std_logic;
		  not_SS: in std_logic;
		  accept: in std_logic;
		  D: out std_logic_vector(4 downto 0);
		  reset: in std_logic;
		  DXval: out std_logic
    );
end SerialReceiver;

architecture logic of SerialReceiver is

	component SerialControl is 
		port (
			clk: in std_logic;
			enRx: in std_logic;
			accept: in std_logic;
			clr: out std_logic;
			wr: out std_logic;
			rst: in std_logic;
			DXval: out std_logic;
			eq5: in std_logic
		);
	end component;
	component ContadorUpDown3 is
		port (
        Clk : in std_logic; -- Clock
        Rst : in std_logic; -- Reset
        Q : out std_logic_vector(2 downto 0) -- output
		);
	end component;
	component shiftReg5 is
		port(
			Clk: in std_logic;
			I: in std_logic;
			En: in std_logic;
			rst: in std_logic;
			O: out std_logic_Vector(4 downto 0)
		);
	end component;

    signal seq5in, swr, sclr: std_logic;
	 signal seq5out: std_logic_vector(2 downto 0);
	 
begin

   UCounter: ContadorUpDown3
		port map(
			Clk => SCLK, -- Clock
			Rst => sclr, -- Reset
			Q => seq5out
		);
		
	UshiftReg5: shiftReg5
		port map(
			Clk => SCLK,
			I => SDX,
			En => swr,
			rst => reset,
			O => D
		);
	USerialControl: SerialControl
		port map(
			clk => MCLK,
			enRx => not_SS,
			accept => accept,
			clr => sclr,
			wr => swr,
			rst => reset,
			DXval => DXval,
			eq5 => seq5in
		);
	seq5in <= (seq5out(0) and not seq5out(1) and seq5out(2));


end logic;