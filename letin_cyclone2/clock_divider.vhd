library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clock_divider is
    Port ( clockin : in  STD_LOGIC;
           clockout    : out STD_LOGIC
           );
end clock_divider;

architecture Behavioral of clock_divider is

signal CLK_DIV : std_logic_vector (32 downto 0);

begin
    -- clock divider
    process (clockin)
    begin
        if (clockin'Event and clockin = '1') then
            CLK_DIV <= CLK_DIV + '1';
        end if;
    end process;
     
    clockout <= CLK_DIV(10); -- connect LED 2 to divided clock
end Behavioral;