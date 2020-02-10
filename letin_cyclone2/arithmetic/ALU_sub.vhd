library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity ALU_sub is

	port ( 
		arg1 : in std_logic_vector(15 downto 0);
		arg2 : in std_logic_vector(15 downto 0);
		out_acc : out std_logic_vector(15 downto 0);
		carry_flag: out std_logic;
		zero_flag : out std_logic
	);
	
end ALU_sub;

architecture rtl of ALU_sub is
    signal result : std_logic_vector(16 downto 0);
begin
    result <= ('0' & arg1) - ('0' & arg2);
    out_acc      <= result(15 downto 0);
    carry_flag   <= result(16);
	 zero_flag <= '1' when result(15 downto 0) = "0000000000000000" else '0'; 
end architecture rtl;
