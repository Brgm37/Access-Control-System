LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity ringBuffer is 
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
end ringBuffer;
architecture logic of ringBuffer is
    component RingBufferControl
        port(
            Dav: In std_logic;
            CTS: In std_logic;
            full: In std_logic;
            clk: in std_logic;
            empty: In std_logic;
            rst: in std_logic;
            incPut: out std_logic;
            incGet: out std_logic;
            Dac: out std_logic;
            Wr: out std_logic;
            selPG: out std_logic;
            Wreg: out std_logic
        );
    end component;
    component memoryAdressControl is 
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
    end component;
    component RAM is
        generic(
            ADDRESS_WIDTH : natural := 3;
            DATA_WIDTH : natural := 4
        );
        port(
            address : in std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
            wr: in std_logic;
            din: in std_logic_vector(DATA_WIDTH - 1 downto 0);
            dout: out std_logic_vector(DATA_WIDTH - 1 downto 0)
        );
    end component;
    signal sincPut, sincGet, sselPG, sWr, sfull, sempty: std_logic;
    signal sAddr: std_logic_vector(2 downto 0);
    begin
        URingBufferControl: RingBufferControl
            port map(
                Dav => DAV,
                CTS => CTS,
                full => sfull,
                clk => clk,
                empty => sempty,
                rst => rst,
                incPut => sincPut,
                incGet => sincGet,
                Dac => DAC,
                Wr => sWr,
                selPG => sselPG,
                Wreg => Wreg
            );
        UmemoryAdressControl: memoryAdressControl
            port map(
                putget => sselPG,
                Clk => clk,
                Rst => rst,
                incPut => sincPut,
                incGet => sincGet,
                full => sfull,
                empty => sempty,
                Aoutput => sAddr
            );
        Uram: Ram
            port map(
                address => sAddr,
                wr => sWr,
                din => D,
                dout => Q
            );
end architecture;
