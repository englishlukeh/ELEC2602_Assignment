library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tri_state_buffer_16bit is

	port ( 
		input    : IN STD_LOGIC_VECTOR(15 DOWNTO 0);    
		enable   : in  STD_LOGIC;    
		output    : out STD_LOGIC_VECTOR(15 DOWNTO 0)
	);

end tri_state_buffer_16bit;

architecture behavioral of tri_state_buffer_16bit is

begin
	process(input, enable)
	begin
		if enable='1' then
			output <= input;
		else
			output <= (others => 'Z');
		end if;
	end process ;

end Behavioral;