LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
library STD;
use STD.textio.all;  

ENTITY onehot_4bit is
	Port ( 
		four_bit : IN std_logic_vector(3 DOWNTO 0);
		onehot	: OUT std_logic_vector(15 downto 0)
	);
END onehot_4bit;

ARCHITECTURE behavior OF onehot_4bit IS
BEGIN
	process(four_bit)
	begin
	case four_bit is
		when "0000"	=>	onehot <= x"0001";
		when "0001"	=>	onehot <= x"0002";
		when "0010" => onehot <= x"0004";
		when "0011" => onehot <= x"0008";
		when "0100"	=>	onehot <= x"0010";
		when "0101"	=>	onehot <= x"0020";
		when "0110" => onehot <= x"0040";
		when "0111" => onehot <= x"0080";
		when "1000" => onehot <= x"0100";
		when "1001"	=>	onehot <= x"0200";
		when "1010" => onehot <= x"0400";
		when "1011" => onehot <= x"0800";
		when "1100"	=>	onehot <= x"1000";
		when "1101"	=>	onehot <= x"2000";
		when "1110" => onehot <= x"3000";
		when "1111" => onehot <= x"8000";
		
		when others => onehot <= x"0000";
	end case;
	end process;
END;