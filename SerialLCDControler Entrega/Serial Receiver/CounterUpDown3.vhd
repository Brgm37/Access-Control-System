library IEEE;
use IEEE.std_logic_1164.all;

entity ContadorUpDown3 is
    port (
        Clk : in std_logic; -- Clock
--        DI: in std_logic_vector(2 downto 0); -- Data In
        Rst : in std_logic; -- Reset
--        CE : in std_logic; -- Count Enable
--        PL : in std_logic; -- Enable data input
        Q : out std_logic_vector(2 downto 0) -- output
--        TC : out std_logic -- count end
    );
end ContadorUpDown3;

architecture logic of ContadorUpDown3 is

    component FFD
        port (
            CLK : in std_logic;
            RESET : in STD_LOGIC;
            SET : in std_logic;
            D : IN STD_LOGIC;
            EN : IN STD_LOGIC;
            Q : out std_logic
        );
    end component;

    signal sD, sQ, S : std_logic_vector(2 downto 0);
	 
begin

    -- Estado (FFs):
    FF0 : FFD port map (CLK => Clk, RESET => Rst, SET => '0', D => sD(0), EN => '1', Q => sQ(0));
    FF1 : FFD port map (CLK => Clk, RESET => Rst, SET => '0', D => sD(1), EN => '1', Q => sQ(1));
    FF2 : FFD port map (CLK => Clk, RESET => Rst, SET => '0', D => sD(2), EN => '1', Q => sQ(2));

    -- Logica de estado seguinte:
    sD(0) <= not sQ(0);
    sD(1) <= sQ(0) xor sQ(1);
    sD(2) <= (sQ(0) and sQ(1)) xor sQ(2);

    -- Logica de saida
    Q <= sQ;

end logic;