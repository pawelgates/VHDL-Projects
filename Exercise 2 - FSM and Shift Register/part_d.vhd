library ieee;
use ieee.std_logic_1164.all;

entity part_d is
	port(
		CLK: in std_logic;
		OUTPUT: out std_logic_vector (2 downto 0)
	);
end part_d;

architecture beh of part_d is

	procedure shifter(
		signal CLK: in std_logic;
		signal RESULT: out std_logic_vector (2 downto 0)) is 
	variable i: integer := 0;
	begin
		if(rising_edge(CLK)) then
			if(i = 0) then 
				RESULT <= "000";
			elsif (i = 1) then
				RESULT <= "100";
			elsif (i = 2) then
				RESULT <= "110";
			elsif (i = 3) then
				RESULT <= "111";
			elsif (i = 4) then
				RESULT <= "011";
			elsif (i = 5) then
				RESULT <= "001";
			end if;		
		end if;
		i := i +1;
		if(i = 6) then 
			i := 0;
		end if;
	end shifter;
begin
	shifter(CLK, OUTPUT);
end;
		
