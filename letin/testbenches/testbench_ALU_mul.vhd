LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
library STD;
use STD.textio.all;  


ENTITY testbench_ALU_mul IS 
END testbench_ALU_mul;

ARCHITECTURE behavior OF testbench_ALU_mul IS


	component ALU_mul is


	port ( 
		arg1 : in std_logic_vector(15 downto 0);
		arg2 : in std_logic_vector(15 downto 0);
		out_acc : out std_logic_vector(15 downto 0);
		carry_flag: out std_logic;
		zero_flag : out std_logic
	);

	end component;
	
	signal argument1, argument2, result : std_logic_vector(15 downto 0);
	signal carry_flag_out, zero_flag_out : std_logic;
	signal clk_in : std_logic := '0';
	signal cnt : integer := 0;
	
	BEGIN
	
	-- ------------------ Instantiate modules ------------------
	adder: ALU_mul port map ( 
		arg1 => argument1,
		arg2 => argument2,
		out_acc => result,
		carry_flag => carry_flag_out,
		zero_flag => zero_flag_out
	);
	
	
   stim_clock: process 
   begin
		wait for 50 ns;
		clk_in <= not(clk_in);
	end process;
	
   stim_count: process(clk_in) 
	begin
		if rising_edge(clk_in) then
			cnt <= cnt+1;
		end if;
	end process;

	
	process (cnt)
	begin  
		case cnt is 
			-- Reset
			when 0 to 0	=> argument1 <= "0000000000000000"; argument2 <= "0000000000000001";
			when 1 to 1 => argument1 <= "0000000000000001"; argument2 <= "0000000000000000";
			when 2 to 2 => argument1 <= "0000000011111111"; argument2 <= "1111111100000000";
			when 3 to 3 => argument1 <= "1000000000000000"; argument2 <= "1000000000000000";
			when 4 to 4 => argument1 <= "1111111111111111"; argument2 <= "1111111111111111";	
			when 5 to 5 => argument1 <= "1111111100000000"; argument2 <= "0000000011111111";	
			when others => argument1 <= "0000000000000000"; argument2 <= "0000000000000000";
			
		end case;
	end process;
	
	
END;
