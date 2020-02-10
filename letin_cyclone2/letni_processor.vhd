library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity letni_processor is

	port (
		system_clk : in std_logic;
		system_reset : in std_logic;
		
		control_unit_state_out: out std_logic_vector(7 downto 0);
		inst_fetcher_state_out: out std_logic_vector(2 downto 0);
		instruction_reg_out : out std_logic_vector(31 downto 0);
		
		io_clock : in std_logic;
		io_reset: in std_logic;
		gpio_header: out std_logic_vector(35 downto 0)
	);

end letni_processor;

architecture behavioral of letni_processor is
	
	component datapath is

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

	end component;
	
	
	component control_unit is

		port (

			reset : in std_logic;
			clk : in std_logic;
			
			flagreg_in_carry : in std_logic;
			flagreg_in_zero : in std_logic;
			
			system_bus : inout std_logic_vector(15 downto 0);
			system_bus_out_enabled : out std_logic;
			
			ALU_buf_we : out std_logic; -- write enable for ALU buffer.
			ALU_ctrl_sig : out std_logic_vector(3 downto 0);
			
			accm_we : out std_logic;
			accm_re : out std_logic;
			
			regfile_addr : out std_logic_vector(3 downto 0);
			regfile_we : out std_logic;
			regfile_re : out std_logic;
			
			io_clock : in std_logic;
			io_reset: in std_logic;
			gpio_header: out std_logic_vector(35 downto 0);
			
			state_out : out std_logic_vector(7 downto 0);
			inst_fetcher_state_out : out std_logic_vector(2 downto 0);
			instruction_reg_out : out std_logic_vector(31 downto 0)
		);

	end component;
	
	signal system_input_bus : std_logic_vector(15 downto 0);
	signal system_input_bus_cu_write_enabled : std_logic;
	
	signal reg_addr : std_logic_vector(3 downto 0);
	signal reg_re : std_logic;
	signal reg_we : std_logic;
	
	signal accm_re : std_logic;
	signal accm_we :std_logic;
	
	signal ALU_ctrl_sig : std_logic_vector(3 downto 0);
	signal ALU_buf_we : std_logic;
	signal ALU_carry : std_logic;
	signal ALU_zero : std_logic;
	
begin
	
	sys_datapath : datapath port map(
		clk => system_clk,
		reset => system_reset,
			
		system_bus_in => system_input_bus,
		system_bus_in_enabled => system_input_bus_cu_write_enabled,
		
		reg_addr => reg_addr,
		reg_re => reg_re,
		reg_we => reg_we,
			
		accm_re => accm_re,
		accm_we => accm_we,
			
		ALU_ctrl_sig => ALU_ctrl_sig,
		ALU_buf_we => ALU_buf_we,
		ALU_carry => ALU_carry,
		ALU_zero => ALU_zero
	);
	
	
	sys_control_unit : control_unit port map(
		reset => system_reset,
		clk => system_clk,
			
		flagreg_in_carry => ALU_carry,
		flagreg_in_zero => ALU_zero,
			
		system_bus => system_input_bus,
		system_bus_out_enabled => system_input_bus_cu_write_enabled,
			
		ALU_buf_we => ALU_buf_we,
		ALU_ctrl_sig => ALU_ctrl_sig,
			
		accm_we => accm_we,
		accm_re => accm_re,
			
		regfile_addr => reg_addr,
		regfile_we => reg_we,
		regfile_re => reg_re,
		
		io_clock => io_clock,
		io_reset => io_reset,
		gpio_header => gpio_header,
		
		state_out => control_unit_state_out,
		inst_fetcher_state_out => inst_fetcher_state_out,
		instruction_reg_out => instruction_reg_out
	);

end behavioral;
