entity spi_oled_control is

	port (
		--+ Internal Interface
		clk_in             : in  std_logic;
	    reset_in           : in  std_logic;

	    new_data           : in  std_logic;
		data_address       : out std_logic_vector(8 downto 0); --9 bit 512 * 2bytes =1024 bytes = (128px/2)*(64px/8)
	    data_in            : in  std_logic_vector(15 downto 0);
	    -- data_out           : out std_logic_vector(7 downto 0);
	    -- irq                : out std_logic;
		transfer_finish	   : out std_logic;
	    --+ SPI Interface Signals
	    -- spi_miso           : in  std_logic;  //not needed
		spi_data_or_command: out  std_logic; --i.e. A0, 0 for command, 1 for data
	    spi_mosi           : out std_logic;
	    spi_clk            : out std_logic;
		spi_reset            : out std_logic;
	    spi_cs           	: out std_logic
	);
end spi_oled_control;

architecture behavioral of control_unit is
	type   state_type is (init, wait_for_data, set_page_column, transfer_data);
	-- signals
	signal state : state_type;
	-- signal shift_bit_count : std_logic_vector(3 downto 0); --4 bits, 0 to 16
	-- signal column_count	: std_logic_vector(6 downto 0); -- 7 bits 0 to 128, increment 2 at a time
	-- signal page_count : std_logic_vector(2 downto 0); -- 3bits, 0 to 7
	-- signal address_count : std_logic_vector(8 downto 0); --9 bits 0 to 512
	-- |  combined in to 1 signal
	--\_/
	signal count: std_logic_vector(9 downto 0); --shift_bit_count(3 downto 0), column_count: (6 downto 0), page_count: (9 downto 7), address_count: (9 downto 1)



	signal shift_reg : std_logic_vector(15 downto 0);

	-- signal turn_on_led_command : std_logic_vector(7 downto 0);

begin
	data_reg :  reg_16bit PORT MAP(
		input => data_in,
		clk => clk_in,
		write_enabled  => new_data,
		reset => reset,
		output => shift_reg
	);

	spi_clk  <= clk_in;
	data_address <= count(9 downto 1);

	process	(reset_in, clk_in)
	begin
		if reset_in='1' then

			count <=(others => '0');

			state <= init;

			spi_cs <='0';
			spi_reset <= '0'; -- low is reset
			spi_miso <='0';
			spi_data_or_command <= '0';
			transfer_finish <='0';



		elsif(rising_edge(clk)) then
			spi_reset<='1';
			case state is

				when init=> --init state

					spi_cs<='0';
					transfer_finish<='0';
					spi_data_or_command<='0';
					case count(2 downto 0) is
						when "000"=>
							count<= count+1;
							spi_miso <='1';
						when "001"=>
							count<= count+1;
							spi_miso <='0';
						when "010"=>
							count<= count+1;
							spi_miso <='1';
						when "011"=>
							count<= count+1;
							spi_miso <='0';
						when "100"=>
							count<= count+1;
							spi_miso <='1';
						when "101"=>
							count<= count+1;
							spi_miso <='1';
						when "110"=>
							count<= count+1;
							spi_miso <='1';
						when "111"=>
							count<=(others => '0');
							spi_miso <='1';
					end case;


				when wait_for_data => --wait for instruction

					spi_cs<='1'; --high for not select
					transfer_finish<='1';
					spi_data_or_command<='0'; --don't care
					spi_miso <='1'; --don't care

					if new_data='1' then
						if count(6 downto 0)="0000000" then
							state<=set_page_column;
						else
							state<=transfer_data;
						end if;
					end if;

				when set_page_column=>
					spi_cs<='0';
					transfer_finish<='0'; --transfering
					spi_data_or_command<='0'; --command

					case count(4 downto 3) is
						when "00"=> --set page address
							case count(2 downto 0) is
								when "000"=>
									count<= count+1;
									spi_miso <='1';
								when "001"=>
									count<= count+1;
									spi_miso <='0';
								when "010"=>
									count<= count+1;
									spi_miso <='1';
								when "011"=>
									count<= count+1;
									spi_miso <='1';
								when "100"=>
									count<= count+1;
									spi_miso <='0';
								when "101"=>
									count<= count+1;
									spi_miso <=count(9);
								when "110"=>
									count<= count+1;
									spi_miso <=count(8);
								when "111"=>
									count<= count+1;
									spi_miso <=count(7);
							end case;

						when "01"=> --set column address high
							case count(2 downto 0) is
								when "000"=>
									count<= count+1;
									spi_miso <='0';
								when "001"=>
									count<= count+1;
									spi_miso <='0';
								when "010"=>
									count<= count+1;
									spi_miso <='0';
								when "011"=>
									count<= count+1;
									spi_miso <='1';
								when "100"=>
									count<= count+1;
									spi_miso <='0';
								when "101"=>
									count<= count+1;
									spi_miso <='0';
								when "110"=>
									count<= count+1;
									spi_miso <='0';
								when "111"=>
									count<= count+1;
									spi_miso <='0';

							end case;

						when "10"=> --set column address low
							case count(2 downto 0) is
								when "000"=>
									count<= count+1;
									spi_miso <='0';
								when "001"=>
									count<= count+1;
									spi_miso <='0';
								when "010"=>
									count<= count+1;
									spi_miso <='0';
								when "011"=>
									count<= count+1;
									spi_miso <='0';
								when "100"=>
									count<= count+1;
									spi_miso <='0';
								when "101"=>
									count<= count+1;
									spi_miso <='0';
								when "110"=>
									count<= count+1;
									spi_miso <='1';
								when "111"=>
									count(4 downto 0)<=(others => '0');
									spi_miso <='0';

									state<=transfer_data
							end case;
					end case;

				when transfer_data=>

					if count(3 downto 0)="1111" then
						state<=wait_for_data;
					end if;

					transfer_finish<='0';

					spi_cs<='0';

					spi_data_or_command<='1';

					spi_miso <= shift_reg(15);

					shift_reg<=shift_reg(14 downto 0) & shift_reg(15);

					count<=count+1;




			end case;

		end if;
	end	process


	-- spi_cs   <= '0';

end behavioral;
