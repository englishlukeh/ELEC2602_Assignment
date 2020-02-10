library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity reg_16bit is 

	port ( 	
		input		: in std_logic_vector(15 downto 0);
		clk 		: in std_logic;
		write_enabled : in std_logic;
		reset		: in std_logic;
					
		output	: out std_logic_vector(15 downto 0)
	);
	
end reg_16bit;


architecture behavior of reg_16bit is

	signal storage : std_logic_vector(15 downto 0);

begin

	process (clk, reset)
	begin
		if reset='1' then
		
			storage <= (others => '0');
			
		elsif (rising_edge(clk)) then
			if write_enabled = '1' then
				storage <= input;
			else
				storage <= storage;
			end if;
		end if;
	end process ;
	
	output <= storage;

END;