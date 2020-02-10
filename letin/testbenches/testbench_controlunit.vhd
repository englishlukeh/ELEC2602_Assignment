LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
library STD;
use STD.textio.all;  


ENTITY testbench_controlunit IS 
END testbench_controlunit;

ARCHITECTURE behavior OF testbench_controlunit IS


component control_unit is

	port (

		reset : in std_logic;
		clk : in std_logic

	);

end component;


	signal cnt: integer:= 0;
	signal clk_in, reset  : STD_LOGIC:= '0';
	
	
BEGIN
	
	-- ------------------ Instantiate modules ------------------
	
	
	cu : control_unit port map(reset, clk_in);
	
	
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
			when 0 to 0	=> reset <= '1';
			
			
			when others => reset <= '0';
			
		end case;
	end process;
	
	
END;
