library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity memory_controller is

	port ( 
		data : inout std_logic_vector(15 downto 0);
		addr : in std_logic_vector(15 downto 0);
		
		reset : in std_logic;
		clk : in std_logic;
		
		
		read_enabled   : in std_logic;
		write_enabled : in std_logic
		
	);

end memory_controller;

architecture behavioral of memory_controller is

	component ram_main
		PORT
		(
			aclr		: IN STD_LOGIC  := '0';
			address		: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	end component;
	
	
	component tri_state_buffer_16bit is

		port ( 
			input    : IN STD_LOGIC_VECTOR(15 DOWNTO 0);    
			enable   : in  STD_LOGIC;    
			output    : out STD_LOGIC_VECTOR(15 DOWNTO 0)
		);

	end component;
	

	
	signal memory_out : std_logic_vector(15 downto 0);
	
	
	signal vram_data : std_logic_vector(7 downto 0);
	signal vram_addr : std_logic_vector(9 downto 0);
	
begin
	
	ram : ram_main PORT MAP (
		aclr	 => '0',
		address	 => addr(12 downto 0),
		clock	 => clk,
		data	 => data,
		wren	 => write_enabled,
		q	 => memory_out
	);
	
	buff_ram_out : tri_state_buffer_16bit port map(
		memory_out,
		read_enabled,
		data
	);
	

end Behavioral;