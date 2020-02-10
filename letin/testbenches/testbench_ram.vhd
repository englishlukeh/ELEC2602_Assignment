LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
library STD;
use STD.textio.all;  


ENTITY testbench_ram IS 
END testbench_ram;

ARCHITECTURE behavior OF testbench_ram IS


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


	signal cnt: integer:= 0;
	signal clk_in, reset  : STD_LOGIC:= '0';
	
	signal data : std_logic_vector(15 downto 0);
	signal addr : std_logic_vector(15 downto 0);
		
		
	signal re   : std_logic;
	signal we : std_logic;
	
BEGIN
	
	-- ------------------ Instantiate modules ------------------
	ram: memory_controller port map(data, addr, reset, clk_in, re, we);
	
	
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
			when 0 to 0	=> reset <= '1'; addr <= x"0000"; re <= '0'; we <= '0'; data <= (others => 'Z'); 
			
			when 1 to 1 => reset <= '0'; addr <= x"0000"; re <= '1'; we <= '0'; data <= (others => 'Z');
			when 2 to 2 => reset <= '0'; addr <= x"0001"; re <= '1'; we <= '0'; data <= (others => 'Z');
			when 3 to 3 => reset <= '0'; addr <= x"0001"; re <= '1'; we <= '0'; data <= (others => 'Z');
			when 4 to 4 => reset <= '0'; addr <= x"0000"; re <= '0'; we <= '1'; data <= x"cafe";
			when 5 to 5 => reset <= '0'; addr <= x"0000"; re <= '0'; we <= '0'; data <= (others => 'Z');
			when 6 to 6 => reset <= '0'; addr <= x"0000"; re <= '1'; we <= '0'; data <= (others => 'Z');
			when 7 to 7 => reset <= '0'; addr <= x"0001"; re <= '1'; we <= '0'; data <= (others => 'Z');
			
			
			when others => reset <= '0';
			
		end case;
	end process;
	
	
END;
