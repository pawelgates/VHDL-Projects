library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity part_c is
	port(
		CLK: in std_logic;
		OUTPUT: out std_logic_vector (2 downto 0)
	);
end part_c;

architecture beh of part_c is
	signal INPUT: std_logic_vector (2 downto 0) := "000";
	signal INVIS: std_logic_vector (2 downto 0) := "111"; 
	signal o: std_logic := '0';
	signal i: std_logic := '1';
begin
	process(CLK)
	begin
		o <= INPUT(0);
		i <= INVIS(0);
		if(rising_edge(CLK)) then
			INPUT(0) <= INPUT(1); INPUT(1) <= INPUT(2); INPUT(2) <= i;
			INVIS(0) <= INVIS(1); INVIS(1) <= INVIS(2); INVIS(2) <= o;
		end if;
		OUTPUT <= INPUT;
	end process;
end;