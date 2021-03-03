library ieee;
use ieee.std_logic_1164.all;

entity full_adder_struct is
	port(
		X, Y, Z: in bit;
		CARRY, SUM: out bit
	);
end full_adder_struct;

architecture struct of full_adder_struct is
	signal carry1, carry2, sum1, sum2: bit;

	component half_adder is
		port(
			A, B: in bit; 
			S, C: out bit
		);
	end component;
	
	begin
		ha1: half_adder port map(X, Y, sum1, carry1);
		ha2: half_adder port map(sum1, Z, sum2, carry2);
		CARRY <= carry1 or carry2;
		SUM <= sum2;		
end struct;
		