library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ALU is

	port (
		input_a : in std_logic_vector(15 downto 0);
		input_b : in std_logic_vector(15 downto 0);
		op_ctrl : in std_logic_vector(3 downto 0); -- control signal from control unit.
		
		result : out std_logic_vector(15 downto 0);
		flag_carry : out std_logic;
		flag_zero : out std_logic
	);

end ALU;

architecture behavioral of ALU is

	component ALU_add is

		port ( 
			arg1 : in std_logic_vector(15 downto 0);
			arg2 : in std_logic_vector(15 downto 0);
			out_acc : out std_logic_vector(15 downto 0);
			carry_flag: out std_logic;
			zero_flag : out std_logic
		);
		
	end component;


	component ALU_sub is

		port ( 
			arg1 : in std_logic_vector(15 downto 0);
			arg2 : in std_logic_vector(15 downto 0);
			out_acc : out std_logic_vector(15 downto 0);
			carry_flag: out std_logic;
			zero_flag : out std_logic
		);
		
	end component;


	component ALU_mul is

		port ( 
			arg1 : in std_logic_vector(15 downto 0);
			arg2 : in std_logic_vector(15 downto 0);
			out_acc : out std_logic_vector(15 downto 0);
			carry_flag: out std_logic;
			zero_flag : out std_logic
		);
		
	end component;


	component ALU_div is

		port ( 
			arg1 : in std_logic_vector(15 downto 0);
			arg2 : in std_logic_vector(15 downto 0);
			out_quotient : out std_logic_vector(15 downto 0);
			out_remainder : out std_logic_vector(15 downto 0);
			carry_flag: out std_logic;
			zero_flag : out std_logic
		);
		
	end component;

	signal adder_out : std_logic_vector(15 downto 0);
	signal subber_out : std_logic_vector(15 downto 0);
	signal mulper_out : std_logic_vector(15 downto 0);
	signal divder_q_out : std_logic_vector(15 downto 0);
	signal divder_r_out : std_logic_vector(15 downto 0);
	
	signal adder_zero : std_logic;
	signal subber_zero : std_logic;
	signal mulper_zero : std_logic;
	signal divder_zero : std_logic;
	
	signal adder_carry : std_logic;
	signal subber_carry : std_logic;
	signal mulper_carry : std_logic;
	signal divder_carry : std_logic;

begin

	adder : ALU_add port map(
		arg1 => input_a,
		arg2 => input_b,
		out_acc => adder_out,
		carry_flag => adder_carry,
		zero_flag => adder_zero
	);
	
	subber : ALU_sub port map(
		arg1 => input_b,
		arg2 => input_a,
		out_acc => subber_out,
		carry_flag => subber_carry,
		zero_flag => subber_zero
	);

	mulper : ALU_mul port map(
		arg1 => input_a,
		arg2 => input_b,
		out_acc => mulper_out,
		carry_flag => mulper_carry,
		zero_flag => mulper_zero
	);
	
	
	divder : ALU_div port map(
		arg1 => input_b,
		arg2 => input_a,
		
		out_quotient => divder_q_out,
		out_remainder => divder_r_out,
		
		carry_flag => divder_carry,
		zero_flag => divder_zero
	);

	--Control Signal process
	process(op_ctrl, input_a, input_b,
			adder_out, subber_out, mulper_out, divder_q_out, divder_r_out,
			adder_zero, subber_zero, mulper_zero, divder_zero,
			adder_carry, subber_carry, mulper_carry, divder_carry) begin
	
		case op_ctrl is
		
			when x"0" => -- Do nothing, wire A to output, useful for MOV
				result <= input_a;
				flag_carry <= '0';
				flag_zero <= '0';
				
			when x"1" => -- ADD
				result <= adder_out;
				flag_carry <= adder_carry;
				flag_zero <= adder_zero;
				
			when x"2" => -- SUB
				result <= subber_out;
				flag_carry <= subber_carry;
				flag_zero <= subber_zero;
				
			when x"3" => -- MUL
				result <= mulper_out;
				flag_carry <= mulper_carry;
				flag_zero <= mulper_zero;
				
			when x"4" => -- DIV
				result <= divder_q_out;
				flag_carry <= divder_carry;
				flag_zero <= divder_zero;
			
			when x"5" => -- MOD
				result <= divder_r_out;
				flag_carry <= '0';
				flag_zero <= '0';
			
			when x"6" => -- CMP
				--TODO: Confirm needed!! Do we want a or b?
				result <= input_b;
				flag_carry <= subber_carry;
				flag_zero <= subber_zero;
				
			when x"7" => -- OR
				result <= input_a or input_b;
				flag_carry <= '0';
				
				if (input_a or input_b) = x"0000" then
					flag_zero <= '1';
				else
					flag_zero <= '0';
				end if;
				
			when x"8" => -- AND
				result <= input_a and input_b;
				flag_carry <= '0';
				
				if (input_a and input_b) = x"0000" then
					flag_zero <= '1';
				else
					flag_zero <= '0';
				end if;
				
			when x"9" => --XOR
				result <= input_a xor input_b;
				flag_carry <= '0';
				
				if (input_a xor input_b) = x"0000" then
					flag_zero <= '1';
				else
					flag_zero <= '0';
				end if;
				
			when others =>
				result <= x"0000";
				flag_carry <= '0';
				flag_zero <= '0';
		
		end case;
	
	end process;
	
end behavioral;
