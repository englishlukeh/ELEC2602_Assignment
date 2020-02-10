library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity control_unit is

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
		
		
		state_out : out std_logic_vector(7 downto 0);
		inst_fetcher_state_out : out std_logic_vector(2 downto 0);
		instruction_reg_out : out std_logic_vector(31 downto 0)
	);

end control_unit;

architecture behavioral of control_unit is
	
	component memory_controller is
		port ( 
			data : inout std_logic_vector(15 downto 0);
			addr : in std_logic_vector(15 downto 0);
		
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
	
	component tri_state_buffer_16bit is

		port ( 
			input    : IN STD_LOGIC_VECTOR(15 DOWNTO 0);    
			enable   : in  STD_LOGIC;    
			output    : out STD_LOGIC_VECTOR(15 DOWNTO 0)
		);

	end component;
	
	component instruction_fetcher is
		port (
			PC_in : in std_logic_vector(15 downto 0);

			ram_address	: out std_logic_vector(15 downto 0);
			ram_output : in std_logic_vector(15 downto 0);

			reset_state : in std_logic;
			reset : in std_logic;
			clk : in std_logic;

			instruction: out std_logic_vector(31 downto 0);
			new_struction: out std_logic;
			
			state_out : out std_logic_vector(2 downto 0)
		);
	end component;
	
	
	component instruction_decoder is
		port (
			inst : in std_logic_vector(31 downto 0);
			
			state_using_ALU : in std_logic;
			
			op_p : out std_logic;
			op_m : out std_logic;
			op_i : out std_logic;
			op_d : out std_logic;
			op_mode : out std_logic_vector(3 downto 0);
			op_mode_code : out std_logic_vector(3 downto 0);
			
			reg_addr_src : out std_logic_vector(3 downto 0);
			reg_addr_dst : out std_logic_vector(3 downto 0);
			
			immd_num : out std_logic_vector(15 downto 0);
			mem_addr : out std_logic_vector(15 downto 0);
			
			ALU_ctrl_sig : out std_logic_vector(3 downto 0);
			flag_reg_we : out std_logic -- flag register write enable.
		);
	end component;
	
	
	-- call them bus because multiple component are going to use it. 
	-- thus must by tri-state buffered and controled by state.
	signal mem_data_bus : std_logic_vector(15 downto 0);
	signal mem_addr_bus : std_logic_vector(15 downto 0);
	signal mem_re : std_logic;
	signal mem_we : std_logic;
	

	signal mem_addr_reg_buf_we : std_logic;
	signal mem_addr_reg_buf_re : std_logic;
	signal mem_data_reg_buf_enabled : std_logic;
	signal mem_immdaddr_enabled : std_logic;
	
	
	signal pc_we : std_logic;
	signal pc_data_in : std_logic_vector(15 downto 0);
	signal pc_out : std_logic_vector(15 downto 0);
	
	signal insf_state_reset : std_logic;
	signal insf_ready : std_logic;
	signal insf_instruction : std_logic_vector(31 downto 0);
	
	signal insf_buffered_instruction : std_logic_vector(31 downto 0);
	
	signal flagreg_we : std_logic;
	signal flagreg_output : std_logic_vector(15 downto 0);
	signal flagreg_carry: std_logic;
	signal flagreg_zero: std_logic;
	signal flagreg_unused : std_logic_vector(13 downto 0);
	
	
	signal ctrl_state : std_logic_vector(7 downto 0);
	signal ctrl_state_use_ALU : std_logic;
	
	signal op_mode_p : std_logic;
	signal op_mode_m : std_logic;
	signal op_mode_i : std_logic;
	signal op_mode_d : std_logic;
	signal op_mode : std_logic_vector(3 downto 0);
	signal op_mode_code : std_logic_vector(3 downto 0);
	signal op_reg_src : std_logic_vector(3 downto 0);
	signal op_reg_dst : std_logic_vector(3 downto 0);
	signal op_immd : std_logic_vector(15 downto 0);
	signal op_addr : std_logic_vector(15 downto 0);
	
begin
	
	state_out <= ctrl_state;
	instruction_reg_out <= insf_buffered_instruction;
--	mem_re <= '1';

	
	mem_addr_reg_buf : buffered_reg_16bit port map(system_bus, reset, clk, mem_addr_reg_buf_re, mem_addr_reg_buf_we, mem_addr_bus);
	deco_mem_addrimmd_buf : tri_state_buffer_16bit port map(op_immd, mem_immdaddr_enabled, mem_addr_bus);
	
	deco_mem_data_buf : tri_state_buffer_16bit port map(system_bus, mem_data_reg_buf_enabled, mem_data_bus);
	
	

	pc : reg_16bit port map(
		input => pc_data_in,
		clk => clk,
		write_enabled => pc_we,
		reset => reset,
		output => pc_out
	);
	
	
	
	flag_reg : reg_16bit port map(
		input(0) => flagreg_in_zero,
		input(1) => flagreg_in_carry,
		input(15 downto 2) => (others => '0'),
		
		clk => clk,
		write_enabled => flagreg_we,
		reset => reset,
		
		output(0) => flagreg_zero,
		output(1) => flagreg_carry,
		output(15 downto 2) => flagreg_unused
	);
	
	
	
	mem_ctrl : memory_controller port map(
		data => mem_data_bus,
		addr => mem_addr_bus,
		
		reset => reset, -- won't actually clear all memory(just control regs).
		clk => clk,
		
		read_enabled => mem_re,
		write_enabled => mem_we
	);
	
	
	ins_fetcher : instruction_fetcher port map(
		PC_in => pc_out,

		ram_address	=> mem_addr_bus,
		ram_output => mem_data_bus,

		reset_state => insf_state_reset,
		reset => reset,
		clk => clk,

		instruction => insf_instruction,
		new_struction => insf_ready,
		
		state_out => inst_fetcher_state_out
	);
	
	-- this should create a 32 bit buffer for fetched instruction.
	-- so we can fetch next instruction while doing operations.
	buf_ins : process(clk, insf_ready, insf_instruction , reset, insf_buffered_instruction) begin
		if reset = '1' then
			insf_buffered_instruction <= x"00000000";
		elsif rising_edge(clk) and insf_ready='1' then
			insf_buffered_instruction <= insf_instruction;
		else
			insf_buffered_instruction <= insf_buffered_instruction;
		end if;
	end process;
	
	
	decoder : instruction_decoder port map(
		inst => insf_buffered_instruction,
			
		state_using_ALU => ctrl_state_use_ALU,
			
		op_p => op_mode_p,
		op_m => op_mode_m,
		op_i => op_mode_i,
		op_d => op_mode_d,
		op_mode => op_mode,
		op_mode_code => op_mode_code,
			
		reg_addr_src => op_reg_src,
		reg_addr_dst => op_reg_dst,
			
		immd_num => op_immd,
		mem_addr => op_addr,
			
		ALU_ctrl_sig => ALU_ctrl_sig,
		flag_reg_we => flagreg_we
	);
	
	
	-- Control Unit State Machine
	process(clk, reset, op_mode, op_mode_code) begin
		if reset = '1' then
			ctrl_state <= x"00";
			
		elsif(rising_edge(clk)) then
			
			case ctrl_state is
			
				when x"00" => --init state
				
					ctrl_state <= x"01";
			
				when x"01" => --wait for instruction
				
					if insf_ready = '1' then
						ctrl_state <= x"02";
					else
						ctrl_state <= x"01";
					end if;
				
				when x"02" => -- inc program counter, and decided when next state is.
					
					case op_mode is
						when "0000" | "1000" => ctrl_state <= x"03"; -- switch to ALU state.
						when "0001" | "1001" => ctrl_state <= x"05"; -- jmp state
						when "0010" | "1010" => ctrl_state <= x"06"; -- memory operations
						
						when others => ctrl_state <= x"00";
					end case;
					
					
					
				when x"03" => -- ALU operation write buffer 
					ctrl_state <= x"13";
				
				when x"13" => -- ALU operation write accu
					ctrl_state <= x"04";
				
				when x"73" => -- ALU operation with immediate.
					ctrl_state <= x"04";
				
			
			
				when x"04" => -- Register write back from accu.
					ctrl_state <= x"01";
				
				
				
				when x"05" => -- Update PC, check
					-- need to fix this condition.
--					if (op_mode_code(1) xor flagreg_carry) and (op_mode_code(2) xor flagreg_zero) then
--						ctrl_state <= x"15";
--					else
--						ctrl_state <= x"01";
--					end if;
					ctrl_state <= x"15";
					
				when x"15" => -- Update PC jump
					ctrl_state <= x"01";
					
					
				
				when x"06" => -- Memory Operation, load addr to buf.
					
					-- Only go to load data state if writing.
					if op_mode_code(0) = '0' then
						ctrl_state <= x"36";
					else
						ctrl_state <= x"26";
					end if;
					
					
				when x"26" => -- Memory Write, prepare data bus for data reg
					ctrl_state <= x"56";
				
				when x"56" => -- Memory wait for writing. 
					ctrl_state <= x"01";
					
				when x"36" => -- Memory Wait for reading, latch addr and data to mem controller, and wait.
					ctrl_state <= x"46";
				
				when x"46" => -- Memory Read Back wait. read memory back to reg here.
					ctrl_state <= x"76";
					
				when x"76" =>
					ctrl_state <= x"01";
				
				when others => 
					ctrl_state <= x"00"; 
			
			end case;
		end if;
	end process;
	
	
	-- Instruction Fetcher control logic.
	inst_fetch_ctrl : process(ctrl_state, clk) begin
	
		case ctrl_state is
			when x"02" | x"15" => -- fetch a new instruction..
				insf_state_reset <= '1';
			
			when x"56" | x"26" | x"36" | x"46" | x"06" | x"76" => -- if CU want to use memory, and we're not ready, don't do anything.
				-- just give memory control to CU.
--				if insf_ready = '1' then
--					insf_state_reset <= '0';
--				else
--					insf_state_reset <= '1';
--				end if;
				
				insf_state_reset <= not insf_ready;
			
			when others => 
				insf_state_reset <= '0';
		end case;
	
	end process;
	
	
	-- Memory Read Write Control Logic.
	process(ctrl_state, clk, op_mode_d) begin 
		
		case ctrl_state is
			
			when x"06" => -- read mem addr to buf from system bus
				
				mem_addr_reg_buf_we <= '1';
				mem_data_reg_buf_enabled <= '0';
				
				mem_addr_reg_buf_re <= not op_mode_d;
				mem_immdaddr_enabled <= op_mode_d;
				
				mem_re <= '1';
				mem_we <= '0';
				
			when x"26" | x"56" => 
				
				mem_addr_reg_buf_we <= '0';
				mem_data_reg_buf_enabled <= '1';

				
				mem_addr_reg_buf_re <= not op_mode_d;
				mem_immdaddr_enabled <= op_mode_d;
				
				mem_re <= '0';
				mem_we <= '1';
				
			when x"36" | x"46" => -- Memory read, and read back
				mem_addr_reg_buf_we <= '0';
				mem_data_reg_buf_enabled <= '0';
				
				mem_addr_reg_buf_re <= not op_mode_d;
				mem_immdaddr_enabled <= op_mode_d;
				
				mem_re <= '1';
				mem_we <= '0';
			
			when others =>
				mem_addr_reg_buf_re <= '0';
				mem_addr_reg_buf_we <= '0';
				mem_data_reg_buf_enabled <= '0';
				mem_immdaddr_enabled <= '0';
				mem_we <= '0';
				mem_re <= '1';
		
		end case;
		
	end process;
	
	-- ALU state control logic...
	process(ctrl_state, clk) begin
		case ctrl_state is
			when x"13" => ctrl_state_use_ALU <= '1';
			when others => ctrl_state_use_ALU <= '0';
		end case;
	end process;
	
	-- Program Counter control logic.
	pc_reg_ctrl : process(ctrl_state, clk, op_mode_d, op_immd, pc_out, system_bus) begin
		
		case ctrl_state is
			when x"02" => -- next instruction.
				pc_data_in <= pc_out + 2;
				pc_we <= '1';
			
			when x"15" => -- jump.
				pc_we <= '1';
				-- are we using immd ?
				if op_mode_d = '0' then
					pc_data_in <= system_bus;
				else
					pc_data_in <= op_immd;
				end if;
			
			when others =>
				pc_data_in <= pc_out + 2; -- create buffer for next pc.
				pc_we <= '0';
		
		end case;
	
	end process;
	
	
	-- Register file control logic.
	regfile_ctrl : process(ctrl_state, clk, op_reg_src, op_reg_dst, op_mode_d) begin
		case ctrl_state is
		
		when x"03" => -- read src to system bus. dont if use immd
			regfile_addr <= op_reg_src;
			regfile_we <= '0';
			
			-- are we using immd ?
			if op_mode_d = '0' then
				regfile_re <= '1';
			else
				regfile_re <= '0';
			end if;
			
		when x"13" | x"26" | x"56" => -- read dst to system bus.
			regfile_addr <= op_reg_dst;
			regfile_we <= '0';
			regfile_re <= '1';
			
			
		when x"04" | x"76" => -- write system bus to dst
			regfile_addr <= op_reg_dst;
			regfile_we <= '1';
			regfile_re <= '0';
			
		when x"15" | x"06" | x"36" => -- read src to system bus, even if use immd
			regfile_addr <= op_reg_src;
			regfile_we <= '0';
			regfile_re <= '1';
		

		
		when others => 
			regfile_addr <= x"0";
			regfile_we <= '0';
			regfile_re <= '0';
		
		end case;
	end process;
	
	system_bus_out_ctrl : process(ctrl_state, clk, op_immd, op_mode_d) begin
		case ctrl_state is
		when x"03" =>
			if op_mode_d = '1' then
				system_bus <= op_immd;
				system_bus_out_enabled <= '1';
			else
				system_bus <= (others => 'Z');
				system_bus_out_enabled <= '0';
			end if;
		
		when x"76" => -- Memory read back.
			system_bus <= mem_data_bus; 
			system_bus_out_enabled <= '1';			
		
		when others => 
			system_bus <= (others => 'Z');
			system_bus_out_enabled <= '0';
		end case;
	end process;
	
	-- ALU buffer control logic.
	ALU_buf_ctrl : process(ctrl_state, clk) begin
		case ctrl_state is
		when x"03" =>
			ALU_buf_we <= '1';
		when others =>
			ALU_buf_we <= '0';
		end case;
	end process;
	
	
	-- Accumulater control logic.
	accm_ctrl : process(ctrl_state, clk) begin
		case ctrl_state is
		when x"04" => -- write back to dst reg.
			accm_we <= '0';
			accm_re <= '1';
			
		when x"13" =>
			accm_we <= '1';
			accm_re <= '0';			
			
		when others =>
			accm_we <= '0';
			accm_re <= '0';
		end case;
	end process;
	
end behavioral;
