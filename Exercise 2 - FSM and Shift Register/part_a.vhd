library ieee;
use ieee.std_logic_1164.all;

entity part_a is
	port(
		CLK: in std_logic
	);
end part_a;

architecture beh of part_a is
	signal q2, q1, q0, qn2, qn1, qn0: std_logic;
	component d_ff is
		port(
			D, CLK: in std_logic;
			Q, QN: buffer std_logic
		);
	end component;
	
begin
	FF2: d_ff port map(qn0, CLK, q2, qn2);
	FF1: d_ff port map(q2, CLK, q1, qn1);
	FF0: d_ff port map(q1, CLK, q0, qn0);
end;
	