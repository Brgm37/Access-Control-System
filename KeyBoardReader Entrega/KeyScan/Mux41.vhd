library ieee;
use ieee.std_logic_1164.all;

entity Mux41 is
	port(A: in std_logic;
	B: in std_logic;
	C: in std_logic;
	D: in std_logic;
	S: in std_logic_vector(1 downto 0);
	M: out std_logic
	);
end Mux41;

architecture logic of Mux41 is
	begin 

		M <= (A and not S(0) and not S(1)) or (B and S(0) and not S(1)) or (C and not S(0) and S(1)) or (D and S(0) and S(1));
	
end architecture;