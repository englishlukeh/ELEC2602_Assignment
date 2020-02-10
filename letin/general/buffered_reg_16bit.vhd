library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity buffered_reg_16bit is

	port ( 
		input : in std_logic_vector(15 downto 0);
		reset : in std_logic;
	
		clk : in std_logic;
		read_enabled   : in std_logic;
		write_enabled : in std_logic;
	
		output    : out std_logic_vector(15 downto 0)
	);

end buffered_reg_16bit;

architecture behavioral of buffered_reg_16bit is

	component reg_16bit is 

		port ( 	
			input		: in std_logic_vector(15 downto 0);
			clk 		: in std_logic;
			write_enabled : in std_logic;
			reset		: in std_logic;
					
			output	: out std_logic_vector(15 downto 0)
		);
	
	end component;


	component tri_state_buffer_16bit is

		port ( 
			input    : IN STD_LOGIC_VECTOR(15 DOWNTO 0);    
			enable   : in  STD_LOGIC;    
			output    : out STD_LOGIC_VECTOR(15 DOWNTO 0)
		);

	end component;

	signal reg_to_buffer : std_logic_vector(15 downto 0);
	
begin
	
	reg : reg_16bit port map(
		input,
		clk,
		write_enabled,
		reset,
		reg_to_buffer
	);
	
	buff : tri_state_buffer_16bit port map(
		reg_to_buffer,
		read_enabled,
		output
	);

end Behavioral;