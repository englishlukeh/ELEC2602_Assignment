library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity instruction_fetcher is

	port (
		PC_in : in std_logic_vector(15 downto 0);

		ram_address	: out std_logic_vector(15 downto 0);
		ram_output : in std_logic_vector(15 downto 0);

		reset_state : in std_logic;
		reset : in std_logic;
		clk : in std_logic;

		instruction: out std_logic_vector(31 downto 0);
		new_struction: out std_logic;
		
		state_out : out std_logic_vector(2 downto 0)
	);

end instruction_fetcher;

architecture behavioral of instruction_fetcher is
	component reg_16bit is
		port (
			input		: in std_logic_vector(15 downto 0);
			clk 		: in std_logic;
			write_enabled : in std_logic;
			reset		: in std_logic;
			output	: out std_logic_vector(15 downto 0)
		);

	end component;

	signal state : std_logic_vector(2 downto 0);
	signal inst_reg_1_enable : std_logic;
	signal inst_reg_2_enable : std_logic;

begin
	
	state_out <= state;
	
	inst_reg_1 :  reg_16bit PORT MAP(
		input => ram_output,
		clk => clk,
		write_enabled  => inst_reg_1_enable,
		reset => reset,
		output => instruction(15 downto 0)
	);

	inst_reg_2 :  reg_16bit PORT MAP(
		input => ram_output,
		clk => clk,
		write_enabled  => inst_reg_2_enable,
		reset => reset,
		output => instruction(31 downto 16)
	);



	process (clk, reset, reset_state)
	begin
		if reset='1' then

			state<="000";
			new_struction<='0';
			inst_reg_1_enable<='0';
			inst_reg_2_enable<='0';
			ram_address<=(others => 'Z');



		elsif (rising_edge(clk)) then
			if reset_state='1' then

				state<="000";
				new_struction<='0';
				inst_reg_1_enable<='0';
				inst_reg_2_enable<='0';
				ram_address<=(others => 'Z');


			elsif state="000" then --pass PC to RAM

				state <= "001";

				new_struction<='0';
				inst_reg_1_enable<='0';
				inst_reg_2_enable<='0';
				ram_address<=PC_in;

			elsif state="001" then --pass PC+1 to RAM

				state <= "010";

				new_struction<='0';
				inst_reg_1_enable<='0';
				inst_reg_2_enable<='0';
				ram_address<=PC_in + 1;

			elsif state="010" then --read q to reg1

				state <= "011";

				new_struction<='0';
				inst_reg_1_enable<='1';
				inst_reg_2_enable<='0';
				ram_address<=(others => 'Z');

			elsif state="011" then  --read q to reg2

				state <= "100";

				new_struction<='0';
				inst_reg_1_enable<='0';
				inst_reg_2_enable<='1';
				ram_address<=(others => 'Z');

			elsif state="100" then --idle state, wait for to be reset
				
				state <= "100";

				new_struction<='1';
				inst_reg_1_enable<='0';
				inst_reg_2_enable<='0';
				ram_address<=(others => 'Z');
				
			end if;
		end if;
	end process ;


end behavioral;
