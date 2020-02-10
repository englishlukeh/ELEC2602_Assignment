library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity ALU_mul is

	port ( 
		arg1 : in std_logic_vector(15 downto 0);
		arg2 : in std_logic_vector(15 downto 0);
		out_acc : out std_logic_vector(15 downto 0);
		carry_flag: out std_logic;
		zero_flag : out std_logic
	);
	
end ALU_mul;

architecture rtl of ALU_mul is
	signal unsigned_arg1 : unsigned(15 downto 0);
	signal unsigned_arg2 : unsigned(15 downto 0);
	signal unsigned_result : unsigned(31 downto 0);
	signal unsigned_remainder : unsigned(15 downto 0);
   signal result : std_logic_vector(15 downto 0);

begin
	unsigned_arg1 <= unsigned(arg1);
	unsigned_arg2 <= unsigned(arg2);
	unsigned_result <= unsigned_arg1 * unsigned_arg2;
	out_acc <= std_logic_vector(unsigned_result(15 downto 0));
   carry_flag   <= '1' when unsigned_result > 65535 else '0';
	zero_flag <= '1' when unsigned_result = 0	else '0';
end architecture rtl;
