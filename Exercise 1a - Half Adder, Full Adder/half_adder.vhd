library ieee;
use ieee.std_logic_1164.all;

entity half_adder is 
	port(
		A: in bit; 
		B: in bit;
		C: out bit;
		S: out bit
	);
end half_adder;

architecture half_adder of half_adder is 
	begin
		S <= A xor B;
		C <= A and B;
end half_adder;
