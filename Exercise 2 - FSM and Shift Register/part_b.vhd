library ieee;
use ieee.std_logic_1164.all;

entity part_b is
	port(
		CLK: in std_logic;
		OUTPUT: out std_logic_vector (2 downto 0)
	);
end part_b;

architecture beh of part_b is
	constant S0: std_logic_vector (2 downto 0) := "000";
	constant S1: std_logic_vector (2 downto 0) := "100";
	constant S2: std_logic_vector (2 downto 0) := "110";
	constant S3: std_logic_vector (2 downto 0) := "111";
	constant S4: std_logic_vector (2 downto 0) := "011";
	constant S5: std_logic_vector (2 downto 0) := "001";
	signal current_state, next_state: std_logic_vector (2 downto 0);
begin
	STATE_REGISTER: process(CLK)
	begin	
		if(rising_edge(CLK)) then
			current_state <= next_state;
		end if;	
	end process;
	
	NEXT_STATE_LOGIC: process(current_state)
	begin
		case current_state is
			when S0 => next_state <= S1;
			when S1 => next_state <= S2;
			when S2 => next_state <= S3;
			when S3 => next_state <= S4;
			when S4 => next_state <= S5;
			when S5 => next_state <= S0;
			when others => next_state <= S0;
		end case;
	end process;
	
	--OUTPUT LOGIC FOR TESTBENCH
	OUTPUT <= current_state;
end;
			
	
	