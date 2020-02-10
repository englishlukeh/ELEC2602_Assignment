library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity instruction_decoder is -- the combinational part of control unit :)

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

end instruction_decoder;

architecture behavioral of instruction_decoder is
	

	signal mode_code : std_logic_vector(3 downto 0);
	
begin
	op_p <= inst(0);
	op_m <= inst(1);
	op_i <= inst(2);
	op_d <= inst(3);
	mode_code <= inst(7 downto 4);
	
	reg_addr_src <= inst(11 downto 8);
	reg_addr_dst <= inst(15 downto 12);
	
	op_mode <= inst(3 downto 0);
	op_mode_code <= mode_code;
	
	-- Flag Register Control Process
	flag_ctrl : process(inst, state_using_ALU, mode_code) begin
		-- write to flag reg if performing ALU and not a MOV operation.
		if state_using_ALU = '1' and mode_code /= x"0" then
			flag_reg_we <= '1';
		else
			flag_reg_we <= '0';
		end if;
	end process;
	
	
	-- ALU Signal Control Process
	ALU_ctrl : process(inst, state_using_ALU, mode_code) begin
		if state_using_ALU = '1' then
			ALU_ctrl_sig <= mode_code;
		else
			ALU_ctrl_sig <= x"0";
		end if;
	end process;
	
	-- Address Control Process
	immd_addr_ctrl : process(inst) begin
		if inst(3) = '1' then
			immd_num <= inst(31 downto 16);
			mem_addr <= (others => 'Z');
		else
			immd_num <= x"dead";
			mem_addr <= inst(31 downto 16);
		end if; 
	end process;

end behavioral;
