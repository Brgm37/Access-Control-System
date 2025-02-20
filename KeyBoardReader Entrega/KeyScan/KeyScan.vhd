LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity KeyScan is
    port(
		Clk: in std_logic;
		Kscan: in std_logic;
		Ln: in std_logic_vector(3 downto 0); -- line 
		rst: in std_logic;
		Cl: out std_logic_vector(2 downto 0); -- column
		K: out std_logic_vector(3 downto 0);
		Kpress: out std_logic
		);
end KeyScan;

architecture logic of KeyScan is

	component FFD is
       port (
            CLK : in std_logic;
            RESET : in STD_LOGIC;
            SET : in std_logic;
            D : IN STD_LOGIC;
            EN : IN STD_LOGIC;
            Q : out std_logic
       );
   end component;

   component mux41 is
       port(
			A: in std_logic;
			B: in std_logic;
			C: in std_logic;
			D: in std_logic;
			S: in std_logic_vector(1 downto 0);
			M: out std_logic
       );
   end component;
	 
	component Counter is
		port(
			Clk : in std_logic;
			Rst : in std_logic;
			Q : out std_logic_vector(3 downto 0);
			Count_Enable: in std_logic
		);
	end component;
		
	component DEC is 
		port(
			I0, I1, I2: out STD_LOGIC;
			S: in STD_LOGIC_VECTOR(1 downto 0)
		);
	end component;

-- signal

   signal sQ: std_logic_vector(3 downto 0);
	signal skey: std_logic;
	signal sCl: std_logic_vector(2 downto 0);

	begin
--		Counter
		UCounter: Counter
			port map(
				Clk => Clk,
				Rst => rst,
				Q => sQ,
				Count_Enable => Kscan
			);
--		Decoder
		UDEC: DEC
			port map(
				I0 => sCl(0),
				I1 => sCl(1),
				I2 => sCl(2),
				S => sQ(3 downto 2)
			);
--		Mux 4:1
		UMux: Mux41
			port map(
				A => Ln(0),
				B => Ln(1),
				C => Ln(2),
				D => Ln(3),
				S => sQ(1 downto 0),
				M => sKey
			);
			
		Kpress <= not sKey;
		k <= sQ;
		Cl <= not sCl;

end architecture;
		