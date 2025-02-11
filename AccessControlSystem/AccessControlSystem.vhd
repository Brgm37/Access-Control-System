LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity AccessControlSystem is
	port(
		clk: in std_logic;
		rst: in std_logic;
		Ln: in std_logic_vector(3 downto 0);
		Maintenance: in std_logic;
		Cl: out std_logic_vector(2 downto 0);
		Door: out std_logic_vector(4 downto 0);
		OnOff: out std_logic;
		busy: out std_logic;
		sensor: in std_logic;
		lcd: out std_logic_vector(4 downto 0);
		isValid: out std_logic;
		Not_SS_door: out std_logic;
		Not_SS_LCD: out std_logic;
		en: out std_logic;
		HEX0: out std_logic_vector(7 downto 0);
		HEX1: out std_logic_vector(7 downto 0);
		HEX2: out std_logic_vector(7 downto 0);
		HEX3: out std_logic_vector(7 downto 0);
		HEX4: out std_logic_vector(7 downto 0);
		HEX5: out std_logic_vector(7 downto 0)
	);
end AccessControlSystem;

architecture logic of AccessControlSystem is

	component KeyBoardReader is
       port (
			Clk: in std_logic;
			rst: in std_logic;
			ack: in std_logic;
			Ln: in std_logic_vector(3 downto 0); -- line
			Cl: out std_logic_vector(2 downto 0); -- column
			Q: out std_logic_vector(3 downto 0);
			Dval: out std_logic
		);
   end component;
	
	component SDC is
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
	end component;
	
	component SLCDC is
		 port (
			  not_SS: in std_logic;
			  SCLK: in std_logic;
			  SDX: in std_logic;
			  MCLK: in std_logic;
			  E: out std_logic;
			  rst: in std_logic;
			  Dout: out std_logic_vector(4 downto 0)
		 );
	end component;
	
	component door_mecanism is
		port(	
			MCLK 			: in std_logic;
			RST			: in std_logic;
			onOff			: in std_logic;
			openClose	: in std_logic;
			v			: in std_logic_vector(3 downto 0);
			Pswitch		: in std_logic;
			Sopen			: out std_logic;
			Sclose		: out std_logic;
			Pdetector	: out std_logic;
			HEX0			: out std_logic_vector(7 downto 0);
			HEX1			: out std_logic_vector(7 downto 0);
			HEX2			: out std_logic_vector(7 downto 0);
			HEX3			: out std_logic_vector(7 downto 0);
			HEX4			: out std_logic_vector(7 downto 0);
			HEX5			: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component usbport is
		port(
			inputPort:  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
			outputPort :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	end component;
	
	signal sInput: STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal sOutput: STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal sV: std_logic_vector(4 downto 0);
	signal sOnOff, sSopen, sSclose, sPdetector: std_logic;
	
	begin 
--		KeyBoardReader
		UKeyBoardReader: KeyBoardReader
			port map(
				Clk => clk,
				ack => sOutput(7),
				Q => sInput(3 downto 0),
				Ln => Ln,
				Cl => Cl,
				rst => rst,
				Dval => sInput(4)
			);
--		LCD
		USLCDC: SLCDC
			port map(
			  not_SS => sOutput(0),
			  SCLK => sOutput(4),
			  SDX => sOutput(3),
			  MCLK => clk,
			  E => en,
			  rst => rst,
			  Dout => lcd	
			);
--		Serial Door Controller
		USDC: SDC
			port map(
				not_SS => sOutput(1),
				SCLK => sOutput(4),
				SDX => sOutput(3),
				MCLK => clk,
				busy => sInput(6),
				Sclose => sSclose,
				Sopen => sSopen,
				Psensor => sPdetector,
				OnOff => sOnOff,
				rst => rst,
				Dout => sV
			);
--		Door Mecanism
		UDoor_mecanism: door_mecanism
			port map(
				MCLK => clk,
				RST => rst,
				onOff => sOnOff,
				openClose => sV(4),
				v(0) => sV(3),
				v(1) => sV(2),
				v(2) => sV(1),
				v(3) => sV(0),
				Pswitch => sensor,
				Sopen	=> sSopen,
				Sclose => sSclose,
				Pdetector => sPdetector,
				HEX0 => HEX0,
				HEX1 => HEX1,
				HEX2 => HEX2,
				HEX3 => HEX3,
				HEX4 => HEX4,
				HEX5 => HEX5
			);	
--		UsbPort
		Uusbport: usbport
			port map(
				inputPort => sInput,
				outputPort => sOutput
			);
			
			sInput(7) <= maintenance;
			sInput(5) <= '0';
			Not_SS_door <= sOutput(1);
			Not_SS_LCD <= sOutput(0);
			Door <= sV;
			OnOff <= sOnOff;
			busy <= sInput(6);
			isValid <= sInput(4);
end architecture;