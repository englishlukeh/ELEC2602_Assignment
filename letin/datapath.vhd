library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity datapath is

	port (
		
		clk : in std_logic;
		reset : in std_logic;
		
		system_bus_in : inout std_logic_vector(15 downto 0);
		system_bus_in_enabled : in std_logic;
		
		reg_addr : in std_logic_vector(3 downto 0);
		reg_re : in std_logic;
		reg_we : in std_logic;
		
		accm_re : in std_logic;
		accm_we : in std_logic;
		
		ALU_ctrl_sig : in std_logic_vector(3 downto 0);
		ALU_buf_we : in std_logic;
		ALU_carry : out std_logic;
		ALU_zero : out std_logic
		
	);

end datapath;

architecture behavioral of datapath is
	
	component register_file is
		port (
			data : inout std_logic_vector(15 downto 0);
			addr : in std_logic_vector(3 downto 0);

			reset : in std_logic;
			clk : in std_logic;

			read_enabled   : in std_logic;
			write_enabled : in std_logic
		);
	end component;
	
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
	
	component buffered_reg_16bit is

		port (
			input : in std_logic_vector(15 downto 0);
			reset : in std_logic;

			clk : in std_logic;
			read_enabled   : in std_logic;
			write_enabled : in std_logic;

			output : out std_logic_vector(15 downto 0)
		);

	end component;
	
	component ALU is

		port (
			input_a : in std_logic_vector(15 downto 0);
			input_b : in std_logic_vector(15 downto 0);
			op_ctrl : in std_logic_vector(3 downto 0);
			
			result : out std_logic_vector(15 downto 0);
			flag_carry : out std_logic;
			flag_zero : out std_logic
		);

	end component;
	
	
	signal system_bus : std_logic_vector(15 downto 0);
	signal ALU_input_a : std_logic_vector(15 downto 0);
	
	signal ALU_to_accm : std_logic_vector(15 downto 0);
	signal system_bus_enabled_not : std_logic;
	
begin

	system_bus_enabled_not <= not system_bus_in_enabled;
	sys_bus_in_buf : tri_state_buffer_16bit port map(
		input => system_bus_in,
		enable => system_bus_in_enabled,
		output => system_bus
	);
	
	
	sys_bus_out_buf : tri_state_buffer_16bit port map(
		input => system_bus,
		enable => system_bus_enabled_not,
		output=> system_bus_in
	);
	
--	system_bus_in <= system_bus;
	
	system_regs : register_file port map(
		data => system_bus, 
		addr => reg_addr,

		reset => reset,
		clk => clk,

		read_enabled => reg_re,
		write_enabled => reg_we
	);
	
	ALU_buffer : reg_16bit port map(
		input => system_bus,
		clk => clk,
		write_enabled => ALU_buf_we,
		reset => reset,
		output => ALU_input_a
	);
	
	core_ALU : ALU port map(
		input_a => ALU_input_a,
		input_b => system_bus,
		op_ctrl => ALU_ctrl_sig,
		
		result => ALU_to_accm,
		flag_carry => ALU_carry,
		flag_zero => ALU_zero
	);
	
	accumulate : buffered_reg_16bit port map(
		input => ALU_to_accm,
		reset => reset,
		clk => clk,
		read_enabled => accm_re,
		write_enabled => accm_we,
		
		output => system_bus
	);
	
end behavioral;
