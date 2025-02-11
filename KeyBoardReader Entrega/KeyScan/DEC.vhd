LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity DEC is
   port(I0, I1, I2: out STD_LOGIC;
      S: in STD_LOGIC_VECTOR(1 downto 0)
		);
end DEC;

architecture arq_DEC of DEC is
	begin

		I0 <= (not S(0) and not S(1));
		I1 <= (S(0) and not S(1));
		I2 <= (not S(0) and S(1));

end architecture;