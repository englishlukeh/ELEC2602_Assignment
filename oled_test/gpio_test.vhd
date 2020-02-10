library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all;

entity gpio_test is

	port (
	CLK_50 : in std_logic;
		SW: in std_logic_vector(9 downto 0);
		LEDR : out std_logic_vector(4 downto 0);
		GPIO_0: out std_logic_vector(35 downto 0)
	);
end gpio_test;

architecture behavioral of gpio_test is
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


component ram
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


	signal counter : std_logic_vector(32 downto 0);
	signal vram_data : std_logic_vector(7 downto 0);
	signal vram_addr : std_logic_vector(9 downto 0);

begin

	LEDR <=(others=>'1');
	
	process	(clk_50)
	begin
		if rising_edge(clk_50) then
			counter<=counter+'1';
		end if;
	end process;

	
	
	vram : ram port map(
		q => vram_data,
		rdaddress => vram_addr,
		rdclock => counter(1),
		data => x"00",
		wraddress => (others => '0'),
		wrclock => clk_50,
		wren => '0'
	);
	
	oled : spi_oled_control port map(
		clk_in   => counter(1),
	    reset_in    => SW(1),

			data_address => vram_addr,
	    data_in      =>vram_data,

		spi_data_or_command => GPIO_0(6),
	    spi_mosi          => GPIO_0(2),
	    spi_clk           => GPIO_0(0),
		spi_reset          => GPIO_0(4)
	);
	
	
	
	

	
	
	
end behavioral;
