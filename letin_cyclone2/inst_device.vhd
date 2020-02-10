library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity inst_device is
    Port ( 
	 
	 key: in std_logic_vector(3 downto 0);
	 clock_50 : in std_logic;
	 
	 	
		SW: in std_logic_vector(9 downto 0);

	GPIO_0: out std_logic_vector(35 downto 0);
	 
	 ledg : out std_logic_vector(7 downto 0);
	 ledr : out std_logic_vector(9 downto 0);
	 
	 hex0 : out std_logic_vector(6 downto 0);
	 hex1 : out std_logic_vector(6 downto 0);
	 hex2 : out std_logic_vector(6 downto 0);
	 hex3 : out std_logic_vector(6 downto 0)
);
end inst_device;

architecture Behavioral of inst_device is

component clock_divider is
    Port ( 
	 clockin : in  STD_LOGIC;
    clockout    : out STD_LOGIC
);
end component;


component letni_processor is

	port (
		system_clk : in std_logic;
		system_reset : in std_logic;
		
		
		io_clock : in std_logic;
		io_reset: in std_logic;
		gpio_header: out std_logic_vector(35 downto 0);
		control_unit_state_out: out std_logic_vector(7 downto 0);
		inst_fetcher_state_out: out std_logic_vector(2 downto 0);
		instruction_reg_out : out std_logic_vector(31 downto 0)
	);

end component;

component binary_to_7Seg IS
		PORT ( 	
					binary_value 	: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
					sevenSeg 		: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
				);
end component;

signal sys_clk : std_logic;
signal inst_val : std_logic_vector(31 downto 0);

begin
	ledr(0) <= sys_clk;
   cd : clock_divider port map(clock_50, sys_clk);
   
	sys : letni_processor port map(
		system_reset => not key(0),
		system_clk => sys_clk,
		
		io_clock => sys_clk,
		io_reset => not key(0),
		gpio_header => GPIO_0,
		
		
		control_unit_state_out => ledg,
		instruction_reg_out => inst_val
	);
	
	bs1 :binary_to_7Seg port map(inst_val(3 downto 0), hex0);
	bs2 :binary_to_7Seg port map(inst_val(7 downto 4), hex1);
	bs3 :binary_to_7Seg port map(inst_val(11 downto 8), hex2);
	bs4 :binary_to_7Seg port map(inst_val(15 downto 12), hex3);
	
end Behavioral;