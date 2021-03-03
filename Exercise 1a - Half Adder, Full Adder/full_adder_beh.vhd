library ieee;
use ieee.std_logic_1164.all;

entity full_adder_beh is
	port(
		X, Y, Z: in bit;
		CARRY, SUM: out bit
	);
end full_adder_beh;

architecture beh of full_adder_beh is
	begin
		SUM <= X xor Y xor Z;
		CARRY <= (X and Y) or ( X and Z) or (Y and Z);
end beh;
