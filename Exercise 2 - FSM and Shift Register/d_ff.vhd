library ieee;
use ieee.std_logic_1164.all;

entity d_ff is
	port(
		D, CLK: in std_logic;
		Q, QN: buffer std_logic
	);
end d_ff;

architecture beh of d_ff is
begin
	process(CLK)
	begin
		if(rising_edge(CLK)) then
			Q <= D;
		end if;
		QN <= not Q;
	end process;
end;