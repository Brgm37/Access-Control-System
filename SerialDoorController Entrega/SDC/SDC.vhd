library IEEE;
use IEEE.std_logic_1164.all;

entity SDC is
    port (
        not_SS: in std_logic;
		  SCLK: in std_logic;
		  SDX: in std_logic;
		  MCLK: in std_logic;
		  busy: out std_logic;
		  Sclose: in std_logic;
		  Sopen: in std_logic;
		  Psensor: in std_logic;
		  OnOff: out std_logic;
		  rst: in std_logic;
		  Dout: out std_logic_vector(4 downto 0)
    );
end SDC;

architecture logic of SDC is

	component serialReceiverDC is
		port(
			SDX: in std_logic;
			SCLK: in std_logic;
			MCLK: in std_logic;
			SS: in std_logic;
			accept: in std_logic;
			D: out std_logic_vector(4 downto 0);
			rst: in std_logic;
			DXval: out std_logic;
			busy: out std_logic
		);
	end component;
	
	component DoorController is 
		port(
			Dval: in std_logic;
			Din: in std_logic_vector(4 downto 0);
			Sclose: in std_logic;
		   Sopen: in std_logic;
		   Psensor: in std_logic;
			Dout: out std_logic_vector(4 downto 0);
			OnOff: out std_logic;
			rst: in std_logic;
			clk: in std_logic;
			done: out std_logic
		);
	end component;
	
	signal sDXval, sDone: std_logic;
	signal sDin: std_logic_vector(4 downto 0);
	begin
		USerialReceiver: serialReceiverDC
			port map(
				SDX => SDX,
				SCLK => SCLK,
				SS => not_SS,
				MCLK => MCLK,
				accept => sDone,
				D => sDin,
				rst => rst,
				busy => busy,
				DXval => sDXval
			
			);
		
		UDispatcher: DoorController
			port map(
				Dval => sDXval,
				Din => sDin,
				OnOff => OnOff,
				Sclose => Sclose,
				Sopen => Sopen,
				Psensor => Psensor,
				rst => rst,
				clk => MCLK,
				done => sDone,
				Dout => Dout
			);
end logic;