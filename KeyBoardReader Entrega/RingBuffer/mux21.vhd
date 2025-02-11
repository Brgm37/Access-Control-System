library ieee;
use ieee.std_logic_1164.all;

entity mux21 is
	port(A: in std_logic_vector(2 downto 0);
	B: in std_logic_vector(2 downto 0);
	S: in std_logic;
	M: out std_logic_vector(2 downto 0));
end mux21;

architecture arq_mux21 of mux21 is
begin 
	M(0) <= (A(0) and (not S))  or (B(0) and S);
	M(1) <= (A(1) and (not S))  or (B(1) and S);
	M(2) <= (A(2) and (not S))  or (B(2) and S);
	
end arq_mux21;