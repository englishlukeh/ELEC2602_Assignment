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
		write_enabled : in std_logic;
		
		io_clock : in std_logic;
		io_reset: in std_logic;
		gpio_header: out std_logic_vector(35 downto 0)
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
	
	component vram
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		rdclock		: IN STD_LOGIC ;
		wraddress		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		wrclock		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	end component;
	
	component tri_state_buffer_16bit is

		port ( 
			input    : IN STD_LOGIC_VECTOR(15 DOWNTO 0);    
			enable   : in  STD_LOGIC;    
			output    : out STD_LOGIC_VECTOR(15 DOWNTO 0)
		);

	end component;
	
	component spi_oled_control is
	port (
		--+ Internal Interface
		clk_in             : in std_logic;
	    reset_in           : in  std_logic;
		data_address       : out std_logic_vector(9 downto 0); --9 bit 512 * 2bytes =1024 bytes = (128px/2)*(64px/8)
	    data_in            : in  std_logic_vector(7 downto 0);


	    --+ SPI Interface Signals
	    -- spi_mosi           : in  std_logic;  //not needed
		spi_data_or_command: out  std_logic; --i.e. A0, 0 for command, 1 for data
	    spi_mosi           : out std_logic;
	    spi_clk            : out std_logic;
		spi_reset            : out std_logic
	);
	end component;
	
	signal memory_out : std_logic_vector(15 downto 0);
	
	
	signal vram_data : std_logic_vector(7 downto 0);
	signal vram_addr : std_logic_vector(9 downto 0);
	
	signal we_ram : std_logic;
	signal we_vram : std_logic;
	
begin

	ram : ram_main PORT MAP (
		aclr	 => '0',
		address	 => addr(12 downto 0),
		clock	 => clk,
		data	 => data,
		wren	 => we_ram,
		q	 => memory_out
	);
	
	
	vram_d : vram port map(
		q => vram_data,
		rdaddress => vram_addr,
		rdclock => clk,
		data => data(7 downto 0),
		wraddress => addr(9 downto 0),
		wrclock => clk,
		wren => we_vram
	);
	
	
	process(clk, addr,write_enabled) begin
	
		if addr < x"1fff" then
			we_ram <= write_enabled;
			we_vram <= '0';
		else
			we_ram <= '0';
			we_vram <= write_enabled;
		
		end if;
		
	end process;
	
	buff_ram_out : tri_state_buffer_16bit port map(
		memory_out,
		read_enabled,
		data
	);
	
	oled : spi_oled_control port map(
		clk_in   => io_clock,
	   reset_in    => io_reset,

		data_address => vram_addr,
	   data_in      =>vram_data,

		spi_data_or_command => gpio_header(6),
	   spi_mosi          => gpio_header(2),
	   spi_clk           => gpio_header(0),
		spi_reset          => gpio_header(4)
	);

end Behavioral;