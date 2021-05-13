library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity part_b_tb is
end;

architecture tb of part_b_tb is
	
	signal clk: std_logic;
	signal output : std_logic_vector(2 downto 0);
	
begin
	
	DUT: entity work.part_b port map(clk, output);	
	
	CLOCK: process begin
		clk <= '0';
		wait for 1 NS;
		clk <= '1';
		wait for 1 NS;
	end process;

end tb;
