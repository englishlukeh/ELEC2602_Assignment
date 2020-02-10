library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity spi_oled_control is

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
end spi_oled_control;

architecture behavioral of spi_oled_control is
	component reg_16bit is
		port (
			input		: in std_logic_vector(15 downto 0);
			clk 		: in std_logic;
			write_enabled : in std_logic;
			reset		: in std_logic;
			output	: out std_logic_vector(15 downto 0)
		);
	end component;

	type   state_type is (init, set_page_column, set_page_column2,set_page_column3, transfer_data, load_data, wait1,wait2,wait3,wait4,wait5,wait6,wait7);
	-- signals
	signal state : state_type;
	-- signal shift_bit_count : std_logic_vector(3 downto 0); --4 bits, 0 to 16
	-- signal column_count	: std_logic_vector(6 downto 0); -- 7 bits 0 to 128, increment 2 at a time
	-- signal page_count : std_logic_vector(2 downto 0); -- 3bits, 0 to 7
	-- signal address_count : std_logic_vector(8 downto 0); --9 bits 0 to 512
	-- |  combined in to 1 signal
	--\_/
	signal count: std_logic_vector(12 downto 0); --shift_bit_count(3 downto 0), 


	
	signal vram_addr : std_logic_vector(9 downto 0);
	--address_count: (9 downto 1)
	
	signal shift_reg : std_logic_vector(15 downto 0);
	
	signal shifter_data : std_logic_vector(7 downto 0);
	signal shifter_data_s : std_logic_vector(7 downto 0);
	
	signal shifter_reset : std_logic;
	signal shifter_state : std_logic_vector(3 downto 0);
	signal shifter_ready : std_logic;
	signal shifter_counter : std_logic_vector(3 downto 0);
	
	-- signal turn_on_led_command : std_logic_vector(7 downto 0);

begin

	
	data_address <= vram_addr;
	
	process(clk_in, shifter_reset, shifter_state) begin
		if shifter_reset = '1' then
			shifter_state <= x"0";
			shifter_ready <= '0';
			shifter_counter <= x"0";
			
			shifter_data_s <=shifter_data;
			spi_clk  <= '0';
		elsif(rising_edge(clk_in)) then
			
			case shifter_state is
				when x"0" =>
					spi_clk  <= '0';
					
					spi_mosi <= shifter_data_s(7);
					shifter_state <= x"1";
				
				when x"1" =>
					spi_clk  <= '1';
					spi_mosi <= shifter_data_s(7);
					
					shifter_state <= x"2";
					
				
				when x"2" =>
					shifter_data_s<=shifter_data_s(6 downto 0) & shifter_data_s(7);
					shifter_counter <= shifter_counter + '1';
					if shifter_counter = "0111" then
						shifter_state <= x"F";
					else
						shifter_state <= x"0";
					end if;
					
					
				when x"F" =>
					shifter_state <= x"F";
					shifter_ready <= '1';
					shifter_counter <= x"0";
					spi_clk  <= '0';
				when others =>
			end case;
			
		end if;
	end process;
	
	
	process	(reset_in, clk_in)
	begin
		if reset_in='1' then

			count <=(others => '0');
			vram_addr <= (others => '0');
			state <= init;

			spi_reset <= '0'; -- low is reset

			spi_data_or_command <= '0';
			shift_reg<=(others=>'0');
			
			shifter_reset <= '1';


		elsif(rising_edge(clk_in)) then
			spi_reset<='1';
			case state is

				when init=> --init state

					spi_data_or_command<='0';
					
					
					shifter_reset <= '1';
					shifter_data <= "10101111";
					
					state <= wait1;
				
				when wait1 =>
					shifter_reset <= '0';
					if shifter_ready = '1' then
						state <= set_page_column;
					end if;
						

				when set_page_column=>

					spi_data_or_command<='0'; --command

					
					shifter_reset <= '1';
					shifter_data <= "10110" & vram_addr(9) & vram_addr(8) & vram_addr(7);
					state <= wait2;
					-- 10110xxx 00010000 00000110
					
				when wait2 =>
					shifter_reset <= '0';
					if shifter_ready = '1' then
						state <= set_page_column2;
					end if;
				
				
				when set_page_column2 =>
					shifter_reset <= '1';
					shifter_data <= "00010000";
					state <= wait3;
					
					
				when wait3 =>
					shifter_reset <= '0';
					if shifter_ready = '1' then
						state <= set_page_column3;
					end if;

				when set_page_column3 =>
					shifter_reset <= '1';
					shifter_data <= "00000010";
					state <= wait4;
				
				when wait4 =>
					shifter_reset <= '0';
					if shifter_ready = '1' then
						state <= load_data;
					end if;
				
				when load_data =>
					state <= transfer_data;
					
				
				when transfer_data=>


					spi_data_or_command<='1';
					shifter_reset <= '1';
					
					shifter_data <= data_in;
					state <= wait5;
					vram_addr <= vram_addr + '1';


				when wait5 =>
					shifter_reset <= '0';
					if shifter_ready = '1' then
					
						if count(6 downto 0)="1111111" then
							count <= (others => '0');
							state <= set_page_column;
						else
							state <= transfer_data;
						end if;
						
					end if;
					count <= count + '1';
					


				when others =>
			end case;

		end if;
	end	process;


	-- spi_cs   <= '0';

end behavioral;
