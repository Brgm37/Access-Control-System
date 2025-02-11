library IEEE;
use IEEE.std_logic_1164.all;

entity SLCDC is
    port (
        not_SS: in std_logic;
		  SCLK: in std_logic;
		  SDX: in std_logic;
		  MCLK: in std_logic;
		  E: out std_logic;
		  rst: in std_logic;
		  Dout: out std_logic_vector(4 downto 0)
    );
end SLCDC;

architecture logic of SLCDC is

	component SerialReceiver is
		port(
			SDX: in std_logic;
			SCLK: in std_logic;
			MCLK: in std_logic;
			not_SS: in std_logic;
			accept: in std_logic;
			D: out std_logic_vector(4 downto 0);
			reset: in std_logic;
			DXval: out std_logic
		);
	end component;
	
	component Dispatcher is 
		port(
			Dval: in std_logic;
			Din: in std_logic_vector(4 downto 0);
			Dout: out std_logic_vector(4 downto 0);
			Wrl: out std_logic;
			rst: in std_logic;
			clk: in std_logic;
			done: out std_logic
		);
	end component;
	
	component CLKDIV is 
		generic(div: natural := 50000000);
		port (
			clk_in: in std_logic;
			clk_out: out std_logic
		 );
	end component;
	
	signal sDXval, divclk, sDone: std_logic;
	signal sDin: std_logic_vector(4 downto 0);
	begin
		USerialReceiver: SerialReceiver
			port map(
				SDX => SDX,
				SCLK => SCLK,
				not_SS => not_SS,
				MCLK => MCLK,
				accept => sDone,
				D => sDin,
				reset => rst,
				DXval => sDXval
			);
			
		UCLKDIV: CLKDIV
			generic map(
				20
			)
			port map(
				clk_in => MCLK,
				clk_out => divclk
			);	
			
		UDispatcher: Dispatcher
		
			port map(
				Dval => sDXval,
				Din => sDin,
				Wrl => E,
				rst => rst,
				clk => divclk,
				done => sDone,
				Dout => Dout
			);
end logic;
