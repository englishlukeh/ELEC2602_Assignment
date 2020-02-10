-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/24/2019 23:02:07"

-- 
-- Device: Altera 5CSEBA6U23A7 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	register_file IS
    PORT (
	data : INOUT std_logic_vector(15 DOWNTO 0);
	addr : IN std_logic_vector(3 DOWNTO 0);
	reset : IN std_logic;
	clk : IN std_logic;
	read_enabled : IN std_logic;
	write_enabled : IN std_logic
	);
END register_file;

-- Design Ports Information
-- data[0]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[8]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[9]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[10]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[11]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[12]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[13]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[14]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[15]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_enabled	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_enabled	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF register_file IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_read_enabled : std_logic;
SIGNAL ww_write_enabled : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \regs:9:general_regs|reg|storage[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \write_enabled~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \we_all[9]~8_combout\ : std_logic;
SIGNAL \we_all[11]~9_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[0]~81_combout\ : std_logic;
SIGNAL \read_enabled~input_o\ : std_logic;
SIGNAL \we_all[15]~11_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[0]~80_combout\ : std_logic;
SIGNAL \we_all[12]~10_combout\ : std_logic;
SIGNAL \we_all[6]~7_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[0]~82_combout\ : std_logic;
SIGNAL \we_all[2]~6_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[0]~17_combout\ : std_logic;
SIGNAL \we_all[8]~12_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[0]~0_combout\ : std_logic;
SIGNAL \re_all[10]~3_combout\ : std_logic;
SIGNAL \regs:10:general_regs|reg|storage[0]~feeder_combout\ : std_logic;
SIGNAL \we_all[10]~13_combout\ : std_logic;
SIGNAL \addr_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[0]~18_combout\ : std_logic;
SIGNAL \we_all[5]~1_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[0]~0_combout\ : std_logic;
SIGNAL \we_all[4]~0_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[0]~0_combout\ : std_logic;
SIGNAL \re_all[3]~2_combout\ : std_logic;
SIGNAL \re_all[0]~0_combout\ : std_logic;
SIGNAL \re_all[1]~1_combout\ : std_logic;
SIGNAL \regs:1:general_regs|reg|storage[0]~feeder_combout\ : std_logic;
SIGNAL \we_all[1]~4_combout\ : std_logic;
SIGNAL \we_all[3]~5_combout\ : std_logic;
SIGNAL \regs:0:general_regs|reg|storage[0]~feeder_combout\ : std_logic;
SIGNAL \we_all[0]~3_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[0]~16_combout\ : std_logic;
SIGNAL \we_all[7]~2_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[0]~0_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[0]~19_combout\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[1]~1_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[1]~1_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[1]~1_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[1]~22_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[1]~85_combout\ : std_logic;
SIGNAL \regs:9:general_regs|reg|storage[1]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[1]~84_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[1]~83_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[1]~21_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[1]~1_combout\ : std_logic;
SIGNAL \regs:0:general_regs|reg|storage[1]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[1]~20_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[1]~23_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[2]~87_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[2]~88_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[2]~86_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[2]~25_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[2]~2_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[2]~2_combout\ : std_logic;
SIGNAL \regs:1:general_regs|reg|storage[2]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[2]~24_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[2]~2_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[2]~26_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[2]~2_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[2]~27_combout\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \regs:10:general_regs|reg|storage[3]~feeder_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[3]~3_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[3]~30_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[3]~3_combout\ : std_logic;
SIGNAL \regs:1:general_regs|reg|storage[3]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|reg|storage[3]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[3]~28_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[3]~89_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[3]~90_combout\ : std_logic;
SIGNAL \regs:6:general_regs|reg|storage[3]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[3]~91_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[3]~29_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[3]~3_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[3]~3_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[3]~31_combout\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[4]~4_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[4]~4_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[4]~32_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[4]~4_combout\ : std_logic;
SIGNAL \regs:10:general_regs|reg|storage[4]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[4]~34_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[4]~4_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[4]~93_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[4]~92_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[4]~94_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[4]~33_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[4]~35_combout\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \regs:9:general_regs|reg|storage[5]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[5]~96_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[5]~95_combout\ : std_logic;
SIGNAL \regs:6:general_regs|reg|storage[5]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[5]~97_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[5]~37_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[5]~5_combout\ : std_logic;
SIGNAL \regs:10:general_regs|reg|storage[5]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[5]~38_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[5]~5_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[5]~5_combout\ : std_logic;
SIGNAL \regs:1:general_regs|reg|storage[5]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|reg|storage[5]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[5]~36_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[5]~5_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[5]~39_combout\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[6]~6_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[6]~42_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[6]~6_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[6]~6_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[6]~6_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[6]~98_combout\ : std_logic;
SIGNAL \regs:9:general_regs|reg|storage[6]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[6]~99_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[6]~100_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[6]~41_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[6]~40_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[6]~43_combout\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[7]~7_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[7]~46_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[7]~7_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[7]~44_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[7]~7_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[7]~102_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[7]~103_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[7]~101_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[7]~45_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[7]~7_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[7]~47_combout\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \regs:1:general_regs|reg|storage[8]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[8]~48_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[8]~108_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[8]~109_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[8]~110_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[8]~49_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[8]~8_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[8]~8_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[8]~50_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[8]~8_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[8]~8_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[8]~51_combout\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[9]~104_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[9]~107_combout\ : std_logic;
SIGNAL \regs:9:general_regs|reg|storage[9]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[9]~105_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[9]~106_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[9]~53_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[9]~9_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[9]~9_combout\ : std_logic;
SIGNAL \regs:10:general_regs|reg|storage[9]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[9]~54_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[9]~9_combout\ : std_logic;
SIGNAL \regs:1:general_regs|reg|storage[9]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[9]~52_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[9]~9_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[9]~55_combout\ : std_logic;
SIGNAL \data[10]~input_o\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[10]~10_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[10]~10_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[10]~10_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[10]~58_combout\ : std_logic;
SIGNAL \regs:15:general_regs|buff|output[10]~0_combout\ : std_logic;
SIGNAL \regs:6:general_regs|buff|output[10]~0_combout\ : std_logic;
SIGNAL \regs:2:general_regs|buff|output[10]~0_combout\ : std_logic;
SIGNAL \regs:11:general_regs|buff|output[10]~0_combout\ : std_logic;
SIGNAL \regs:12:general_regs|buff|output[10]~0_combout\ : std_logic;
SIGNAL \regs:9:general_regs|buff|output[10]~0_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[10]~57_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[10]~56_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[10]~10_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[10]~59_combout\ : std_logic;
SIGNAL \data[11]~input_o\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[11]~11_combout\ : std_logic;
SIGNAL \regs:10:general_regs|reg|storage[11]~feeder_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[11]~11_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[11]~62_combout\ : std_logic;
SIGNAL \regs:9:general_regs|buff|output[11]~1_combout\ : std_logic;
SIGNAL \regs:12:general_regs|buff|output[11]~1_combout\ : std_logic;
SIGNAL \regs:11:general_regs|buff|output[11]~1_combout\ : std_logic;
SIGNAL \regs:6:general_regs|buff|output[11]~1_combout\ : std_logic;
SIGNAL \regs:2:general_regs|buff|output[11]~1_combout\ : std_logic;
SIGNAL \regs:15:general_regs|buff|output[11]~1_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[11]~61_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[11]~11_combout\ : std_logic;
SIGNAL \regs:0:general_regs|reg|storage[11]~feeder_combout\ : std_logic;
SIGNAL \regs:1:general_regs|reg|storage[11]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[11]~60_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[11]~11_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[11]~63_combout\ : std_logic;
SIGNAL \data[12]~input_o\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[12]~12_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[12]~64_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[12]~12_combout\ : std_logic;
SIGNAL \regs:10:general_regs|reg|storage[12]~feeder_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[12]~12_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[12]~66_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[12]~12_combout\ : std_logic;
SIGNAL \regs:15:general_regs|buff|output[12]~2_combout\ : std_logic;
SIGNAL \regs:2:general_regs|buff|output[12]~2_combout\ : std_logic;
SIGNAL \regs:12:general_regs|buff|output[12]~2_combout\ : std_logic;
SIGNAL \regs:11:general_regs|buff|output[12]~2_combout\ : std_logic;
SIGNAL \regs:9:general_regs|buff|output[12]~2_combout\ : std_logic;
SIGNAL \regs:6:general_regs|buff|output[12]~2_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[12]~65_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[12]~67_combout\ : std_logic;
SIGNAL \data[13]~input_o\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[13]~13_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[13]~13_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[13]~68_combout\ : std_logic;
SIGNAL \regs:11:general_regs|buff|output[13]~3_combout\ : std_logic;
SIGNAL \regs:2:general_regs|buff|output[13]~3_combout\ : std_logic;
SIGNAL \regs:12:general_regs|buff|output[13]~3_combout\ : std_logic;
SIGNAL \regs:15:general_regs|buff|output[13]~3_combout\ : std_logic;
SIGNAL \regs:6:general_regs|buff|output[13]~3_combout\ : std_logic;
SIGNAL \regs:9:general_regs|buff|output[13]~3_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[13]~69_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[13]~13_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[13]~13_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[13]~70_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[13]~71_combout\ : std_logic;
SIGNAL \data[14]~input_o\ : std_logic;
SIGNAL \regs:1:general_regs|reg|storage[14]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[14]~72_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[14]~14_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[14]~14_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[14]~14_combout\ : std_logic;
SIGNAL \regs:10:general_regs|reg|storage[14]~feeder_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[14]~14_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[14]~74_combout\ : std_logic;
SIGNAL \regs:15:general_regs|buff|output[14]~4_combout\ : std_logic;
SIGNAL \regs:2:general_regs|buff|output[14]~4_combout\ : std_logic;
SIGNAL \regs:12:general_regs|buff|output[14]~4_combout\ : std_logic;
SIGNAL \regs:6:general_regs|buff|output[14]~4_combout\ : std_logic;
SIGNAL \regs:11:general_regs|buff|output[14]~4_combout\ : std_logic;
SIGNAL \regs:9:general_regs|buff|output[14]~4_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[14]~73_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[14]~75_combout\ : std_logic;
SIGNAL \data[15]~input_o\ : std_logic;
SIGNAL \regs:1:general_regs|reg|storage[15]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|reg|storage[15]~feeder_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[15]~76_combout\ : std_logic;
SIGNAL \regs:2:general_regs|buff|output[15]~5_combout\ : std_logic;
SIGNAL \regs:11:general_regs|buff|output[15]~5_combout\ : std_logic;
SIGNAL \regs:6:general_regs|buff|output[15]~5_combout\ : std_logic;
SIGNAL \regs:12:general_regs|buff|output[15]~5_combout\ : std_logic;
SIGNAL \regs:9:general_regs|buff|output[15]~5_combout\ : std_logic;
SIGNAL \regs:15:general_regs|buff|output[15]~5_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[15]~77_combout\ : std_logic;
SIGNAL \regs:10:general_regs|reg|storage[15]~feeder_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|output[15]~15_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[15]~78_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|output[15]~15_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|output[15]~15_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|output[15]~15_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|output[15]~79_combout\ : std_logic;
SIGNAL \regs:4:general_regs|reg|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:6:general_regs|reg|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:5:general_regs|reg|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:0:general_regs|reg|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:7:general_regs|reg|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:2:general_regs|reg|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:1:general_regs|reg|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:9:general_regs|reg|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:3:general_regs|reg|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL we_all : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:11:general_regs|reg|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:12:general_regs|reg|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:15:general_regs|reg|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:8:general_regs|reg|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:10:general_regs|reg|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:13:general_regs|reg|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_write_enabled~input_o\ : std_logic;
SIGNAL \ALT_INV_read_enabled~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[0]~input_o\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[8]~110_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[8]~109_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[8]~108_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[9]~107_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[9]~106_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[9]~105_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[9]~104_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[7]~103_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[7]~102_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[7]~101_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[6]~100_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[6]~99_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[6]~98_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[5]~97_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[5]~96_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[5]~95_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[4]~94_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[4]~93_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[4]~92_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[3]~91_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[3]~90_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[3]~89_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[2]~88_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[2]~87_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[2]~86_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[1]~85_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[1]~84_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[1]~83_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[0]~82_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[0]~81_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[0]~80_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[15]~78_combout\ : std_logic;
SIGNAL \regs:13:general_regs|reg|ALT_INV_storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:10:general_regs|reg|ALT_INV_storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[15]~15_combout\ : std_logic;
SIGNAL \regs:8:general_regs|reg|ALT_INV_storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[15]~77_combout\ : std_logic;
SIGNAL \regs:15:general_regs|buff|ALT_INV_output[15]~5_combout\ : std_logic;
SIGNAL \regs:15:general_regs|reg|ALT_INV_storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:12:general_regs|buff|ALT_INV_output[15]~5_combout\ : std_logic;
SIGNAL \regs:12:general_regs|reg|ALT_INV_storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:11:general_regs|buff|ALT_INV_output[15]~5_combout\ : std_logic;
SIGNAL \regs:11:general_regs|reg|ALT_INV_storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:9:general_regs|buff|ALT_INV_output[15]~5_combout\ : std_logic;
SIGNAL \regs:9:general_regs|reg|ALT_INV_storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:6:general_regs|buff|ALT_INV_output[15]~5_combout\ : std_logic;
SIGNAL \regs:6:general_regs|reg|ALT_INV_storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:2:general_regs|buff|ALT_INV_output[15]~5_combout\ : std_logic;
SIGNAL \regs:2:general_regs|reg|ALT_INV_storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[15]~76_combout\ : std_logic;
SIGNAL \regs:3:general_regs|reg|ALT_INV_storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:1:general_regs|reg|ALT_INV_storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:0:general_regs|reg|ALT_INV_storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[15]~15_combout\ : std_logic;
SIGNAL \regs:7:general_regs|reg|ALT_INV_storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[15]~15_combout\ : std_logic;
SIGNAL \regs:5:general_regs|reg|ALT_INV_storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[15]~15_combout\ : std_logic;
SIGNAL \regs:4:general_regs|reg|ALT_INV_storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[14]~74_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[14]~14_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[14]~73_combout\ : std_logic;
SIGNAL \regs:15:general_regs|buff|ALT_INV_output[14]~4_combout\ : std_logic;
SIGNAL \regs:12:general_regs|buff|ALT_INV_output[14]~4_combout\ : std_logic;
SIGNAL \regs:11:general_regs|buff|ALT_INV_output[14]~4_combout\ : std_logic;
SIGNAL \regs:9:general_regs|buff|ALT_INV_output[14]~4_combout\ : std_logic;
SIGNAL \regs:6:general_regs|buff|ALT_INV_output[14]~4_combout\ : std_logic;
SIGNAL \regs:2:general_regs|buff|ALT_INV_output[14]~4_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[14]~72_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[14]~14_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[14]~14_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[14]~14_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[13]~70_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[13]~13_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[13]~69_combout\ : std_logic;
SIGNAL \regs:15:general_regs|buff|ALT_INV_output[13]~3_combout\ : std_logic;
SIGNAL \regs:12:general_regs|buff|ALT_INV_output[13]~3_combout\ : std_logic;
SIGNAL \regs:11:general_regs|buff|ALT_INV_output[13]~3_combout\ : std_logic;
SIGNAL \regs:9:general_regs|buff|ALT_INV_output[13]~3_combout\ : std_logic;
SIGNAL \regs:6:general_regs|buff|ALT_INV_output[13]~3_combout\ : std_logic;
SIGNAL \regs:2:general_regs|buff|ALT_INV_output[13]~3_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[13]~68_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[13]~13_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[13]~13_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[13]~13_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[12]~66_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[12]~12_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[12]~65_combout\ : std_logic;
SIGNAL \regs:15:general_regs|buff|ALT_INV_output[12]~2_combout\ : std_logic;
SIGNAL \regs:12:general_regs|buff|ALT_INV_output[12]~2_combout\ : std_logic;
SIGNAL \regs:11:general_regs|buff|ALT_INV_output[12]~2_combout\ : std_logic;
SIGNAL \regs:9:general_regs|buff|ALT_INV_output[12]~2_combout\ : std_logic;
SIGNAL \regs:6:general_regs|buff|ALT_INV_output[12]~2_combout\ : std_logic;
SIGNAL \regs:2:general_regs|buff|ALT_INV_output[12]~2_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[12]~64_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[12]~12_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[12]~12_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[12]~12_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[11]~62_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[11]~11_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[11]~61_combout\ : std_logic;
SIGNAL \regs:15:general_regs|buff|ALT_INV_output[11]~1_combout\ : std_logic;
SIGNAL \regs:12:general_regs|buff|ALT_INV_output[11]~1_combout\ : std_logic;
SIGNAL \regs:11:general_regs|buff|ALT_INV_output[11]~1_combout\ : std_logic;
SIGNAL \regs:9:general_regs|buff|ALT_INV_output[11]~1_combout\ : std_logic;
SIGNAL \regs:6:general_regs|buff|ALT_INV_output[11]~1_combout\ : std_logic;
SIGNAL \regs:2:general_regs|buff|ALT_INV_output[11]~1_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[11]~60_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[11]~11_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[11]~11_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[11]~11_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[10]~58_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[10]~10_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[10]~57_combout\ : std_logic;
SIGNAL \regs:15:general_regs|buff|ALT_INV_output[10]~0_combout\ : std_logic;
SIGNAL \regs:12:general_regs|buff|ALT_INV_output[10]~0_combout\ : std_logic;
SIGNAL \regs:11:general_regs|buff|ALT_INV_output[10]~0_combout\ : std_logic;
SIGNAL \regs:9:general_regs|buff|ALT_INV_output[10]~0_combout\ : std_logic;
SIGNAL \regs:6:general_regs|buff|ALT_INV_output[10]~0_combout\ : std_logic;
SIGNAL \regs:2:general_regs|buff|ALT_INV_output[10]~0_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[10]~56_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[10]~10_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[10]~10_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[10]~10_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[9]~54_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[9]~9_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[9]~53_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[9]~52_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[9]~9_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[9]~9_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[9]~9_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[8]~50_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[8]~8_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[8]~49_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[8]~48_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[8]~8_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[8]~8_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[8]~8_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[7]~46_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[7]~7_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[7]~45_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[7]~44_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[7]~7_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[7]~7_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[7]~7_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[6]~42_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[6]~6_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[6]~41_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[6]~40_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[6]~6_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[6]~6_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[6]~6_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[5]~38_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[5]~5_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[5]~37_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[5]~36_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[5]~5_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[5]~5_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[5]~5_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[4]~34_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[4]~4_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[4]~33_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[4]~32_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[4]~4_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[4]~4_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[4]~4_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[3]~30_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[3]~3_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[3]~29_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[3]~28_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[3]~3_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[3]~3_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[3]~3_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[2]~26_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[2]~2_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[2]~25_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[2]~24_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[2]~2_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[2]~2_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[2]~2_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[1]~22_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[1]~1_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[1]~21_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[1]~20_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[1]~1_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[1]~1_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[1]~1_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[0]~18_combout\ : std_logic;
SIGNAL \addr_decoder|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_re_all[10]~3_combout\ : std_logic;
SIGNAL \regs:8:general_regs|buff|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[0]~17_combout\ : std_logic;
SIGNAL \regs:0:general_regs|buff|ALT_INV_output[0]~16_combout\ : std_logic;
SIGNAL \ALT_INV_re_all[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_re_all[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_re_all[0]~0_combout\ : std_logic;
SIGNAL \regs:7:general_regs|buff|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \regs:5:general_regs|buff|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \regs:4:general_regs|buff|ALT_INV_output[0]~0_combout\ : std_logic;

BEGIN

ww_addr <= addr;
ww_reset <= reset;
ww_clk <= clk;
ww_read_enabled <= read_enabled;
ww_write_enabled <= write_enabled;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~inputCLKENA0_outclk\ <= NOT \reset~inputCLKENA0_outclk\;
\ALT_INV_write_enabled~input_o\ <= NOT \write_enabled~input_o\;
\ALT_INV_read_enabled~input_o\ <= NOT \read_enabled~input_o\;
\ALT_INV_addr[2]~input_o\ <= NOT \addr[2]~input_o\;
\ALT_INV_addr[0]~input_o\ <= NOT \addr[0]~input_o\;
\ALT_INV_addr[1]~input_o\ <= NOT \addr[1]~input_o\;
\ALT_INV_addr[3]~input_o\ <= NOT \addr[3]~input_o\;
\ALT_INV_data[15]~input_o\ <= NOT \data[15]~input_o\;
\ALT_INV_data[14]~input_o\ <= NOT \data[14]~input_o\;
\ALT_INV_data[12]~input_o\ <= NOT \data[12]~input_o\;
\ALT_INV_data[11]~input_o\ <= NOT \data[11]~input_o\;
\ALT_INV_data[9]~input_o\ <= NOT \data[9]~input_o\;
\ALT_INV_data[8]~input_o\ <= NOT \data[8]~input_o\;
\ALT_INV_data[6]~input_o\ <= NOT \data[6]~input_o\;
\ALT_INV_data[5]~input_o\ <= NOT \data[5]~input_o\;
\ALT_INV_data[4]~input_o\ <= NOT \data[4]~input_o\;
\ALT_INV_data[3]~input_o\ <= NOT \data[3]~input_o\;
\ALT_INV_data[2]~input_o\ <= NOT \data[2]~input_o\;
\ALT_INV_data[1]~input_o\ <= NOT \data[1]~input_o\;
\ALT_INV_data[0]~input_o\ <= NOT \data[0]~input_o\;
\regs:0:general_regs|buff|ALT_INV_output[8]~110_combout\ <= NOT \regs:0:general_regs|buff|output[8]~110_combout\;
\regs:0:general_regs|buff|ALT_INV_output[8]~109_combout\ <= NOT \regs:0:general_regs|buff|output[8]~109_combout\;
\regs:0:general_regs|buff|ALT_INV_output[8]~108_combout\ <= NOT \regs:0:general_regs|buff|output[8]~108_combout\;
\regs:0:general_regs|buff|ALT_INV_output[9]~107_combout\ <= NOT \regs:0:general_regs|buff|output[9]~107_combout\;
\regs:0:general_regs|buff|ALT_INV_output[9]~106_combout\ <= NOT \regs:0:general_regs|buff|output[9]~106_combout\;
\regs:0:general_regs|buff|ALT_INV_output[9]~105_combout\ <= NOT \regs:0:general_regs|buff|output[9]~105_combout\;
\regs:0:general_regs|buff|ALT_INV_output[9]~104_combout\ <= NOT \regs:0:general_regs|buff|output[9]~104_combout\;
\regs:0:general_regs|buff|ALT_INV_output[7]~103_combout\ <= NOT \regs:0:general_regs|buff|output[7]~103_combout\;
\regs:0:general_regs|buff|ALT_INV_output[7]~102_combout\ <= NOT \regs:0:general_regs|buff|output[7]~102_combout\;
\regs:0:general_regs|buff|ALT_INV_output[7]~101_combout\ <= NOT \regs:0:general_regs|buff|output[7]~101_combout\;
\regs:0:general_regs|buff|ALT_INV_output[6]~100_combout\ <= NOT \regs:0:general_regs|buff|output[6]~100_combout\;
\regs:0:general_regs|buff|ALT_INV_output[6]~99_combout\ <= NOT \regs:0:general_regs|buff|output[6]~99_combout\;
\regs:0:general_regs|buff|ALT_INV_output[6]~98_combout\ <= NOT \regs:0:general_regs|buff|output[6]~98_combout\;
\regs:0:general_regs|buff|ALT_INV_output[5]~97_combout\ <= NOT \regs:0:general_regs|buff|output[5]~97_combout\;
\regs:0:general_regs|buff|ALT_INV_output[5]~96_combout\ <= NOT \regs:0:general_regs|buff|output[5]~96_combout\;
\regs:0:general_regs|buff|ALT_INV_output[5]~95_combout\ <= NOT \regs:0:general_regs|buff|output[5]~95_combout\;
\regs:0:general_regs|buff|ALT_INV_output[4]~94_combout\ <= NOT \regs:0:general_regs|buff|output[4]~94_combout\;
\regs:0:general_regs|buff|ALT_INV_output[4]~93_combout\ <= NOT \regs:0:general_regs|buff|output[4]~93_combout\;
\regs:0:general_regs|buff|ALT_INV_output[4]~92_combout\ <= NOT \regs:0:general_regs|buff|output[4]~92_combout\;
\regs:0:general_regs|buff|ALT_INV_output[3]~91_combout\ <= NOT \regs:0:general_regs|buff|output[3]~91_combout\;
\regs:0:general_regs|buff|ALT_INV_output[3]~90_combout\ <= NOT \regs:0:general_regs|buff|output[3]~90_combout\;
\regs:0:general_regs|buff|ALT_INV_output[3]~89_combout\ <= NOT \regs:0:general_regs|buff|output[3]~89_combout\;
\regs:0:general_regs|buff|ALT_INV_output[2]~88_combout\ <= NOT \regs:0:general_regs|buff|output[2]~88_combout\;
\regs:0:general_regs|buff|ALT_INV_output[2]~87_combout\ <= NOT \regs:0:general_regs|buff|output[2]~87_combout\;
\regs:0:general_regs|buff|ALT_INV_output[2]~86_combout\ <= NOT \regs:0:general_regs|buff|output[2]~86_combout\;
\regs:0:general_regs|buff|ALT_INV_output[1]~85_combout\ <= NOT \regs:0:general_regs|buff|output[1]~85_combout\;
\regs:0:general_regs|buff|ALT_INV_output[1]~84_combout\ <= NOT \regs:0:general_regs|buff|output[1]~84_combout\;
\regs:0:general_regs|buff|ALT_INV_output[1]~83_combout\ <= NOT \regs:0:general_regs|buff|output[1]~83_combout\;
\regs:0:general_regs|buff|ALT_INV_output[0]~82_combout\ <= NOT \regs:0:general_regs|buff|output[0]~82_combout\;
\regs:0:general_regs|buff|ALT_INV_output[0]~81_combout\ <= NOT \regs:0:general_regs|buff|output[0]~81_combout\;
\regs:0:general_regs|buff|ALT_INV_output[0]~80_combout\ <= NOT \regs:0:general_regs|buff|output[0]~80_combout\;
\regs:0:general_regs|buff|ALT_INV_output[15]~78_combout\ <= NOT \regs:0:general_regs|buff|output[15]~78_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(15) <= NOT \regs:13:general_regs|reg|storage\(15);
\regs:10:general_regs|reg|ALT_INV_storage\(15) <= NOT \regs:10:general_regs|reg|storage\(15);
\regs:8:general_regs|buff|ALT_INV_output[15]~15_combout\ <= NOT \regs:8:general_regs|buff|output[15]~15_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(15) <= NOT \regs:8:general_regs|reg|storage\(15);
\regs:0:general_regs|buff|ALT_INV_output[15]~77_combout\ <= NOT \regs:0:general_regs|buff|output[15]~77_combout\;
\regs:15:general_regs|buff|ALT_INV_output[15]~5_combout\ <= NOT \regs:15:general_regs|buff|output[15]~5_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(15) <= NOT \regs:15:general_regs|reg|storage\(15);
\regs:12:general_regs|buff|ALT_INV_output[15]~5_combout\ <= NOT \regs:12:general_regs|buff|output[15]~5_combout\;
\regs:12:general_regs|reg|ALT_INV_storage\(15) <= NOT \regs:12:general_regs|reg|storage\(15);
\regs:11:general_regs|buff|ALT_INV_output[15]~5_combout\ <= NOT \regs:11:general_regs|buff|output[15]~5_combout\;
\regs:11:general_regs|reg|ALT_INV_storage\(15) <= NOT \regs:11:general_regs|reg|storage\(15);
\regs:9:general_regs|buff|ALT_INV_output[15]~5_combout\ <= NOT \regs:9:general_regs|buff|output[15]~5_combout\;
\regs:9:general_regs|reg|ALT_INV_storage\(15) <= NOT \regs:9:general_regs|reg|storage\(15);
\regs:6:general_regs|buff|ALT_INV_output[15]~5_combout\ <= NOT \regs:6:general_regs|buff|output[15]~5_combout\;
\regs:6:general_regs|reg|ALT_INV_storage\(15) <= NOT \regs:6:general_regs|reg|storage\(15);
\regs:2:general_regs|buff|ALT_INV_output[15]~5_combout\ <= NOT \regs:2:general_regs|buff|output[15]~5_combout\;
\regs:2:general_regs|reg|ALT_INV_storage\(15) <= NOT \regs:2:general_regs|reg|storage\(15);
\regs:0:general_regs|buff|ALT_INV_output[15]~76_combout\ <= NOT \regs:0:general_regs|buff|output[15]~76_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(15) <= NOT \regs:3:general_regs|reg|storage\(15);
\regs:1:general_regs|reg|ALT_INV_storage\(15) <= NOT \regs:1:general_regs|reg|storage\(15);
\regs:0:general_regs|reg|ALT_INV_storage\(15) <= NOT \regs:0:general_regs|reg|storage\(15);
\regs:7:general_regs|buff|ALT_INV_output[15]~15_combout\ <= NOT \regs:7:general_regs|buff|output[15]~15_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(15) <= NOT \regs:7:general_regs|reg|storage\(15);
\regs:5:general_regs|buff|ALT_INV_output[15]~15_combout\ <= NOT \regs:5:general_regs|buff|output[15]~15_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(15) <= NOT \regs:5:general_regs|reg|storage\(15);
\regs:4:general_regs|buff|ALT_INV_output[15]~15_combout\ <= NOT \regs:4:general_regs|buff|output[15]~15_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(15) <= NOT \regs:4:general_regs|reg|storage\(15);
\regs:0:general_regs|buff|ALT_INV_output[14]~74_combout\ <= NOT \regs:0:general_regs|buff|output[14]~74_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(14) <= NOT \regs:13:general_regs|reg|storage\(14);
\regs:10:general_regs|reg|ALT_INV_storage\(14) <= NOT \regs:10:general_regs|reg|storage\(14);
\regs:8:general_regs|buff|ALT_INV_output[14]~14_combout\ <= NOT \regs:8:general_regs|buff|output[14]~14_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(14) <= NOT \regs:8:general_regs|reg|storage\(14);
\regs:0:general_regs|buff|ALT_INV_output[14]~73_combout\ <= NOT \regs:0:general_regs|buff|output[14]~73_combout\;
\regs:15:general_regs|buff|ALT_INV_output[14]~4_combout\ <= NOT \regs:15:general_regs|buff|output[14]~4_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(14) <= NOT \regs:15:general_regs|reg|storage\(14);
\regs:12:general_regs|buff|ALT_INV_output[14]~4_combout\ <= NOT \regs:12:general_regs|buff|output[14]~4_combout\;
\regs:12:general_regs|reg|ALT_INV_storage\(14) <= NOT \regs:12:general_regs|reg|storage\(14);
\regs:11:general_regs|buff|ALT_INV_output[14]~4_combout\ <= NOT \regs:11:general_regs|buff|output[14]~4_combout\;
\regs:11:general_regs|reg|ALT_INV_storage\(14) <= NOT \regs:11:general_regs|reg|storage\(14);
\regs:9:general_regs|buff|ALT_INV_output[14]~4_combout\ <= NOT \regs:9:general_regs|buff|output[14]~4_combout\;
\regs:9:general_regs|reg|ALT_INV_storage\(14) <= NOT \regs:9:general_regs|reg|storage\(14);
\regs:6:general_regs|buff|ALT_INV_output[14]~4_combout\ <= NOT \regs:6:general_regs|buff|output[14]~4_combout\;
\regs:6:general_regs|reg|ALT_INV_storage\(14) <= NOT \regs:6:general_regs|reg|storage\(14);
\regs:2:general_regs|buff|ALT_INV_output[14]~4_combout\ <= NOT \regs:2:general_regs|buff|output[14]~4_combout\;
\regs:2:general_regs|reg|ALT_INV_storage\(14) <= NOT \regs:2:general_regs|reg|storage\(14);
\regs:0:general_regs|buff|ALT_INV_output[14]~72_combout\ <= NOT \regs:0:general_regs|buff|output[14]~72_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(14) <= NOT \regs:3:general_regs|reg|storage\(14);
\regs:1:general_regs|reg|ALT_INV_storage\(14) <= NOT \regs:1:general_regs|reg|storage\(14);
\regs:0:general_regs|reg|ALT_INV_storage\(14) <= NOT \regs:0:general_regs|reg|storage\(14);
\regs:7:general_regs|buff|ALT_INV_output[14]~14_combout\ <= NOT \regs:7:general_regs|buff|output[14]~14_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(14) <= NOT \regs:7:general_regs|reg|storage\(14);
\regs:5:general_regs|buff|ALT_INV_output[14]~14_combout\ <= NOT \regs:5:general_regs|buff|output[14]~14_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(14) <= NOT \regs:5:general_regs|reg|storage\(14);
\regs:4:general_regs|buff|ALT_INV_output[14]~14_combout\ <= NOT \regs:4:general_regs|buff|output[14]~14_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(14) <= NOT \regs:4:general_regs|reg|storage\(14);
\regs:0:general_regs|buff|ALT_INV_output[13]~70_combout\ <= NOT \regs:0:general_regs|buff|output[13]~70_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(13) <= NOT \regs:13:general_regs|reg|storage\(13);
\regs:10:general_regs|reg|ALT_INV_storage\(13) <= NOT \regs:10:general_regs|reg|storage\(13);
\regs:8:general_regs|buff|ALT_INV_output[13]~13_combout\ <= NOT \regs:8:general_regs|buff|output[13]~13_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(13) <= NOT \regs:8:general_regs|reg|storage\(13);
\regs:0:general_regs|buff|ALT_INV_output[13]~69_combout\ <= NOT \regs:0:general_regs|buff|output[13]~69_combout\;
\regs:15:general_regs|buff|ALT_INV_output[13]~3_combout\ <= NOT \regs:15:general_regs|buff|output[13]~3_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(13) <= NOT \regs:15:general_regs|reg|storage\(13);
\regs:12:general_regs|buff|ALT_INV_output[13]~3_combout\ <= NOT \regs:12:general_regs|buff|output[13]~3_combout\;
\regs:12:general_regs|reg|ALT_INV_storage\(13) <= NOT \regs:12:general_regs|reg|storage\(13);
\regs:11:general_regs|buff|ALT_INV_output[13]~3_combout\ <= NOT \regs:11:general_regs|buff|output[13]~3_combout\;
\regs:11:general_regs|reg|ALT_INV_storage\(13) <= NOT \regs:11:general_regs|reg|storage\(13);
\regs:9:general_regs|buff|ALT_INV_output[13]~3_combout\ <= NOT \regs:9:general_regs|buff|output[13]~3_combout\;
\regs:9:general_regs|reg|ALT_INV_storage\(13) <= NOT \regs:9:general_regs|reg|storage\(13);
\regs:6:general_regs|buff|ALT_INV_output[13]~3_combout\ <= NOT \regs:6:general_regs|buff|output[13]~3_combout\;
\regs:6:general_regs|reg|ALT_INV_storage\(13) <= NOT \regs:6:general_regs|reg|storage\(13);
\regs:2:general_regs|buff|ALT_INV_output[13]~3_combout\ <= NOT \regs:2:general_regs|buff|output[13]~3_combout\;
\regs:2:general_regs|reg|ALT_INV_storage\(13) <= NOT \regs:2:general_regs|reg|storage\(13);
\regs:0:general_regs|buff|ALT_INV_output[13]~68_combout\ <= NOT \regs:0:general_regs|buff|output[13]~68_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(13) <= NOT \regs:3:general_regs|reg|storage\(13);
\regs:1:general_regs|reg|ALT_INV_storage\(13) <= NOT \regs:1:general_regs|reg|storage\(13);
\regs:0:general_regs|reg|ALT_INV_storage\(13) <= NOT \regs:0:general_regs|reg|storage\(13);
\regs:7:general_regs|buff|ALT_INV_output[13]~13_combout\ <= NOT \regs:7:general_regs|buff|output[13]~13_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(13) <= NOT \regs:7:general_regs|reg|storage\(13);
\regs:5:general_regs|buff|ALT_INV_output[13]~13_combout\ <= NOT \regs:5:general_regs|buff|output[13]~13_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(13) <= NOT \regs:5:general_regs|reg|storage\(13);
\regs:4:general_regs|buff|ALT_INV_output[13]~13_combout\ <= NOT \regs:4:general_regs|buff|output[13]~13_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(13) <= NOT \regs:4:general_regs|reg|storage\(13);
\regs:0:general_regs|buff|ALT_INV_output[12]~66_combout\ <= NOT \regs:0:general_regs|buff|output[12]~66_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(12) <= NOT \regs:13:general_regs|reg|storage\(12);
\regs:10:general_regs|reg|ALT_INV_storage\(12) <= NOT \regs:10:general_regs|reg|storage\(12);
\regs:8:general_regs|buff|ALT_INV_output[12]~12_combout\ <= NOT \regs:8:general_regs|buff|output[12]~12_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(12) <= NOT \regs:8:general_regs|reg|storage\(12);
\regs:0:general_regs|buff|ALT_INV_output[12]~65_combout\ <= NOT \regs:0:general_regs|buff|output[12]~65_combout\;
\regs:15:general_regs|buff|ALT_INV_output[12]~2_combout\ <= NOT \regs:15:general_regs|buff|output[12]~2_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(12) <= NOT \regs:15:general_regs|reg|storage\(12);
\regs:12:general_regs|buff|ALT_INV_output[12]~2_combout\ <= NOT \regs:12:general_regs|buff|output[12]~2_combout\;
\regs:12:general_regs|reg|ALT_INV_storage\(12) <= NOT \regs:12:general_regs|reg|storage\(12);
\regs:11:general_regs|buff|ALT_INV_output[12]~2_combout\ <= NOT \regs:11:general_regs|buff|output[12]~2_combout\;
\regs:11:general_regs|reg|ALT_INV_storage\(12) <= NOT \regs:11:general_regs|reg|storage\(12);
\regs:9:general_regs|buff|ALT_INV_output[12]~2_combout\ <= NOT \regs:9:general_regs|buff|output[12]~2_combout\;
\regs:9:general_regs|reg|ALT_INV_storage\(12) <= NOT \regs:9:general_regs|reg|storage\(12);
\regs:6:general_regs|buff|ALT_INV_output[12]~2_combout\ <= NOT \regs:6:general_regs|buff|output[12]~2_combout\;
\regs:6:general_regs|reg|ALT_INV_storage\(12) <= NOT \regs:6:general_regs|reg|storage\(12);
\regs:2:general_regs|buff|ALT_INV_output[12]~2_combout\ <= NOT \regs:2:general_regs|buff|output[12]~2_combout\;
\regs:2:general_regs|reg|ALT_INV_storage\(12) <= NOT \regs:2:general_regs|reg|storage\(12);
\regs:0:general_regs|buff|ALT_INV_output[12]~64_combout\ <= NOT \regs:0:general_regs|buff|output[12]~64_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(12) <= NOT \regs:3:general_regs|reg|storage\(12);
\regs:1:general_regs|reg|ALT_INV_storage\(12) <= NOT \regs:1:general_regs|reg|storage\(12);
\regs:0:general_regs|reg|ALT_INV_storage\(12) <= NOT \regs:0:general_regs|reg|storage\(12);
\regs:7:general_regs|buff|ALT_INV_output[12]~12_combout\ <= NOT \regs:7:general_regs|buff|output[12]~12_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(12) <= NOT \regs:7:general_regs|reg|storage\(12);
\regs:5:general_regs|buff|ALT_INV_output[12]~12_combout\ <= NOT \regs:5:general_regs|buff|output[12]~12_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(12) <= NOT \regs:5:general_regs|reg|storage\(12);
\regs:4:general_regs|buff|ALT_INV_output[12]~12_combout\ <= NOT \regs:4:general_regs|buff|output[12]~12_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(12) <= NOT \regs:4:general_regs|reg|storage\(12);
\regs:0:general_regs|buff|ALT_INV_output[11]~62_combout\ <= NOT \regs:0:general_regs|buff|output[11]~62_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(11) <= NOT \regs:13:general_regs|reg|storage\(11);
\regs:10:general_regs|reg|ALT_INV_storage\(11) <= NOT \regs:10:general_regs|reg|storage\(11);
\regs:8:general_regs|buff|ALT_INV_output[11]~11_combout\ <= NOT \regs:8:general_regs|buff|output[11]~11_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(11) <= NOT \regs:8:general_regs|reg|storage\(11);
\regs:0:general_regs|buff|ALT_INV_output[11]~61_combout\ <= NOT \regs:0:general_regs|buff|output[11]~61_combout\;
\regs:15:general_regs|buff|ALT_INV_output[11]~1_combout\ <= NOT \regs:15:general_regs|buff|output[11]~1_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(11) <= NOT \regs:15:general_regs|reg|storage\(11);
\regs:12:general_regs|buff|ALT_INV_output[11]~1_combout\ <= NOT \regs:12:general_regs|buff|output[11]~1_combout\;
\regs:12:general_regs|reg|ALT_INV_storage\(11) <= NOT \regs:12:general_regs|reg|storage\(11);
\regs:11:general_regs|buff|ALT_INV_output[11]~1_combout\ <= NOT \regs:11:general_regs|buff|output[11]~1_combout\;
\regs:11:general_regs|reg|ALT_INV_storage\(11) <= NOT \regs:11:general_regs|reg|storage\(11);
\regs:9:general_regs|buff|ALT_INV_output[11]~1_combout\ <= NOT \regs:9:general_regs|buff|output[11]~1_combout\;
\regs:9:general_regs|reg|ALT_INV_storage\(11) <= NOT \regs:9:general_regs|reg|storage\(11);
\regs:6:general_regs|buff|ALT_INV_output[11]~1_combout\ <= NOT \regs:6:general_regs|buff|output[11]~1_combout\;
\regs:6:general_regs|reg|ALT_INV_storage\(11) <= NOT \regs:6:general_regs|reg|storage\(11);
\regs:2:general_regs|buff|ALT_INV_output[11]~1_combout\ <= NOT \regs:2:general_regs|buff|output[11]~1_combout\;
\regs:2:general_regs|reg|ALT_INV_storage\(11) <= NOT \regs:2:general_regs|reg|storage\(11);
\regs:0:general_regs|buff|ALT_INV_output[11]~60_combout\ <= NOT \regs:0:general_regs|buff|output[11]~60_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(11) <= NOT \regs:3:general_regs|reg|storage\(11);
\regs:1:general_regs|reg|ALT_INV_storage\(11) <= NOT \regs:1:general_regs|reg|storage\(11);
\regs:0:general_regs|reg|ALT_INV_storage\(11) <= NOT \regs:0:general_regs|reg|storage\(11);
\regs:7:general_regs|buff|ALT_INV_output[11]~11_combout\ <= NOT \regs:7:general_regs|buff|output[11]~11_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(11) <= NOT \regs:7:general_regs|reg|storage\(11);
\regs:5:general_regs|buff|ALT_INV_output[11]~11_combout\ <= NOT \regs:5:general_regs|buff|output[11]~11_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(11) <= NOT \regs:5:general_regs|reg|storage\(11);
\regs:4:general_regs|buff|ALT_INV_output[11]~11_combout\ <= NOT \regs:4:general_regs|buff|output[11]~11_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(11) <= NOT \regs:4:general_regs|reg|storage\(11);
\regs:0:general_regs|buff|ALT_INV_output[10]~58_combout\ <= NOT \regs:0:general_regs|buff|output[10]~58_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(10) <= NOT \regs:13:general_regs|reg|storage\(10);
\regs:10:general_regs|reg|ALT_INV_storage\(10) <= NOT \regs:10:general_regs|reg|storage\(10);
\regs:8:general_regs|buff|ALT_INV_output[10]~10_combout\ <= NOT \regs:8:general_regs|buff|output[10]~10_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(10) <= NOT \regs:8:general_regs|reg|storage\(10);
\regs:0:general_regs|buff|ALT_INV_output[10]~57_combout\ <= NOT \regs:0:general_regs|buff|output[10]~57_combout\;
\regs:15:general_regs|buff|ALT_INV_output[10]~0_combout\ <= NOT \regs:15:general_regs|buff|output[10]~0_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(10) <= NOT \regs:15:general_regs|reg|storage\(10);
\regs:12:general_regs|buff|ALT_INV_output[10]~0_combout\ <= NOT \regs:12:general_regs|buff|output[10]~0_combout\;
\regs:12:general_regs|reg|ALT_INV_storage\(10) <= NOT \regs:12:general_regs|reg|storage\(10);
\regs:11:general_regs|buff|ALT_INV_output[10]~0_combout\ <= NOT \regs:11:general_regs|buff|output[10]~0_combout\;
\regs:11:general_regs|reg|ALT_INV_storage\(10) <= NOT \regs:11:general_regs|reg|storage\(10);
\regs:9:general_regs|buff|ALT_INV_output[10]~0_combout\ <= NOT \regs:9:general_regs|buff|output[10]~0_combout\;
\regs:9:general_regs|reg|ALT_INV_storage\(10) <= NOT \regs:9:general_regs|reg|storage\(10);
\regs:6:general_regs|buff|ALT_INV_output[10]~0_combout\ <= NOT \regs:6:general_regs|buff|output[10]~0_combout\;
\regs:6:general_regs|reg|ALT_INV_storage\(10) <= NOT \regs:6:general_regs|reg|storage\(10);
\regs:2:general_regs|buff|ALT_INV_output[10]~0_combout\ <= NOT \regs:2:general_regs|buff|output[10]~0_combout\;
\regs:2:general_regs|reg|ALT_INV_storage\(10) <= NOT \regs:2:general_regs|reg|storage\(10);
\regs:0:general_regs|buff|ALT_INV_output[10]~56_combout\ <= NOT \regs:0:general_regs|buff|output[10]~56_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(10) <= NOT \regs:3:general_regs|reg|storage\(10);
\regs:1:general_regs|reg|ALT_INV_storage\(10) <= NOT \regs:1:general_regs|reg|storage\(10);
\regs:0:general_regs|reg|ALT_INV_storage\(10) <= NOT \regs:0:general_regs|reg|storage\(10);
\regs:7:general_regs|buff|ALT_INV_output[10]~10_combout\ <= NOT \regs:7:general_regs|buff|output[10]~10_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(10) <= NOT \regs:7:general_regs|reg|storage\(10);
\regs:5:general_regs|buff|ALT_INV_output[10]~10_combout\ <= NOT \regs:5:general_regs|buff|output[10]~10_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(10) <= NOT \regs:5:general_regs|reg|storage\(10);
\regs:4:general_regs|buff|ALT_INV_output[10]~10_combout\ <= NOT \regs:4:general_regs|buff|output[10]~10_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(10) <= NOT \regs:4:general_regs|reg|storage\(10);
\regs:0:general_regs|buff|ALT_INV_output[9]~54_combout\ <= NOT \regs:0:general_regs|buff|output[9]~54_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(9) <= NOT \regs:13:general_regs|reg|storage\(9);
\regs:10:general_regs|reg|ALT_INV_storage\(9) <= NOT \regs:10:general_regs|reg|storage\(9);
\regs:8:general_regs|buff|ALT_INV_output[9]~9_combout\ <= NOT \regs:8:general_regs|buff|output[9]~9_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(9) <= NOT \regs:8:general_regs|reg|storage\(9);
\regs:0:general_regs|buff|ALT_INV_output[9]~53_combout\ <= NOT \regs:0:general_regs|buff|output[9]~53_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(9) <= NOT \regs:15:general_regs|reg|storage\(9);
\regs:12:general_regs|reg|ALT_INV_storage\(9) <= NOT \regs:12:general_regs|reg|storage\(9);
\regs:11:general_regs|reg|ALT_INV_storage\(9) <= NOT \regs:11:general_regs|reg|storage\(9);
\regs:9:general_regs|reg|ALT_INV_storage\(9) <= NOT \regs:9:general_regs|reg|storage\(9);
\regs:6:general_regs|reg|ALT_INV_storage\(9) <= NOT \regs:6:general_regs|reg|storage\(9);
\regs:2:general_regs|reg|ALT_INV_storage\(9) <= NOT \regs:2:general_regs|reg|storage\(9);
\regs:0:general_regs|buff|ALT_INV_output[9]~52_combout\ <= NOT \regs:0:general_regs|buff|output[9]~52_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(9) <= NOT \regs:3:general_regs|reg|storage\(9);
\regs:1:general_regs|reg|ALT_INV_storage\(9) <= NOT \regs:1:general_regs|reg|storage\(9);
\regs:0:general_regs|reg|ALT_INV_storage\(9) <= NOT \regs:0:general_regs|reg|storage\(9);
\regs:7:general_regs|buff|ALT_INV_output[9]~9_combout\ <= NOT \regs:7:general_regs|buff|output[9]~9_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(9) <= NOT \regs:7:general_regs|reg|storage\(9);
\regs:5:general_regs|buff|ALT_INV_output[9]~9_combout\ <= NOT \regs:5:general_regs|buff|output[9]~9_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(9) <= NOT \regs:5:general_regs|reg|storage\(9);
\regs:4:general_regs|buff|ALT_INV_output[9]~9_combout\ <= NOT \regs:4:general_regs|buff|output[9]~9_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(9) <= NOT \regs:4:general_regs|reg|storage\(9);
\regs:0:general_regs|buff|ALT_INV_output[8]~50_combout\ <= NOT \regs:0:general_regs|buff|output[8]~50_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(8) <= NOT \regs:13:general_regs|reg|storage\(8);
\regs:10:general_regs|reg|ALT_INV_storage\(8) <= NOT \regs:10:general_regs|reg|storage\(8);
\regs:8:general_regs|buff|ALT_INV_output[8]~8_combout\ <= NOT \regs:8:general_regs|buff|output[8]~8_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(8) <= NOT \regs:8:general_regs|reg|storage\(8);
\regs:0:general_regs|buff|ALT_INV_output[8]~49_combout\ <= NOT \regs:0:general_regs|buff|output[8]~49_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(8) <= NOT \regs:15:general_regs|reg|storage\(8);
\regs:12:general_regs|reg|ALT_INV_storage\(8) <= NOT \regs:12:general_regs|reg|storage\(8);
\regs:11:general_regs|reg|ALT_INV_storage\(8) <= NOT \regs:11:general_regs|reg|storage\(8);
\regs:9:general_regs|reg|ALT_INV_storage\(8) <= NOT \regs:9:general_regs|reg|storage\(8);
\regs:6:general_regs|reg|ALT_INV_storage\(8) <= NOT \regs:6:general_regs|reg|storage\(8);
\regs:2:general_regs|reg|ALT_INV_storage\(8) <= NOT \regs:2:general_regs|reg|storage\(8);
\regs:0:general_regs|buff|ALT_INV_output[8]~48_combout\ <= NOT \regs:0:general_regs|buff|output[8]~48_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(8) <= NOT \regs:3:general_regs|reg|storage\(8);
\regs:1:general_regs|reg|ALT_INV_storage\(8) <= NOT \regs:1:general_regs|reg|storage\(8);
\regs:0:general_regs|reg|ALT_INV_storage\(8) <= NOT \regs:0:general_regs|reg|storage\(8);
\regs:7:general_regs|buff|ALT_INV_output[8]~8_combout\ <= NOT \regs:7:general_regs|buff|output[8]~8_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(8) <= NOT \regs:7:general_regs|reg|storage\(8);
\regs:5:general_regs|buff|ALT_INV_output[8]~8_combout\ <= NOT \regs:5:general_regs|buff|output[8]~8_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(8) <= NOT \regs:5:general_regs|reg|storage\(8);
\regs:4:general_regs|buff|ALT_INV_output[8]~8_combout\ <= NOT \regs:4:general_regs|buff|output[8]~8_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(8) <= NOT \regs:4:general_regs|reg|storage\(8);
\regs:0:general_regs|buff|ALT_INV_output[7]~46_combout\ <= NOT \regs:0:general_regs|buff|output[7]~46_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(7) <= NOT \regs:13:general_regs|reg|storage\(7);
\regs:10:general_regs|reg|ALT_INV_storage\(7) <= NOT \regs:10:general_regs|reg|storage\(7);
\regs:8:general_regs|buff|ALT_INV_output[7]~7_combout\ <= NOT \regs:8:general_regs|buff|output[7]~7_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(7) <= NOT \regs:8:general_regs|reg|storage\(7);
\regs:0:general_regs|buff|ALT_INV_output[7]~45_combout\ <= NOT \regs:0:general_regs|buff|output[7]~45_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(7) <= NOT \regs:15:general_regs|reg|storage\(7);
\regs:12:general_regs|reg|ALT_INV_storage\(7) <= NOT \regs:12:general_regs|reg|storage\(7);
\regs:11:general_regs|reg|ALT_INV_storage\(7) <= NOT \regs:11:general_regs|reg|storage\(7);
\regs:9:general_regs|reg|ALT_INV_storage\(7) <= NOT \regs:9:general_regs|reg|storage\(7);
\regs:6:general_regs|reg|ALT_INV_storage\(7) <= NOT \regs:6:general_regs|reg|storage\(7);
\regs:2:general_regs|reg|ALT_INV_storage\(7) <= NOT \regs:2:general_regs|reg|storage\(7);
\regs:0:general_regs|buff|ALT_INV_output[7]~44_combout\ <= NOT \regs:0:general_regs|buff|output[7]~44_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(7) <= NOT \regs:3:general_regs|reg|storage\(7);
\regs:1:general_regs|reg|ALT_INV_storage\(7) <= NOT \regs:1:general_regs|reg|storage\(7);
\regs:0:general_regs|reg|ALT_INV_storage\(7) <= NOT \regs:0:general_regs|reg|storage\(7);
\regs:7:general_regs|buff|ALT_INV_output[7]~7_combout\ <= NOT \regs:7:general_regs|buff|output[7]~7_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(7) <= NOT \regs:7:general_regs|reg|storage\(7);
\regs:5:general_regs|buff|ALT_INV_output[7]~7_combout\ <= NOT \regs:5:general_regs|buff|output[7]~7_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(7) <= NOT \regs:5:general_regs|reg|storage\(7);
\regs:4:general_regs|buff|ALT_INV_output[7]~7_combout\ <= NOT \regs:4:general_regs|buff|output[7]~7_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(7) <= NOT \regs:4:general_regs|reg|storage\(7);
\regs:0:general_regs|buff|ALT_INV_output[6]~42_combout\ <= NOT \regs:0:general_regs|buff|output[6]~42_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(6) <= NOT \regs:13:general_regs|reg|storage\(6);
\regs:10:general_regs|reg|ALT_INV_storage\(6) <= NOT \regs:10:general_regs|reg|storage\(6);
\regs:8:general_regs|buff|ALT_INV_output[6]~6_combout\ <= NOT \regs:8:general_regs|buff|output[6]~6_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(6) <= NOT \regs:8:general_regs|reg|storage\(6);
\regs:0:general_regs|buff|ALT_INV_output[6]~41_combout\ <= NOT \regs:0:general_regs|buff|output[6]~41_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(6) <= NOT \regs:15:general_regs|reg|storage\(6);
\regs:12:general_regs|reg|ALT_INV_storage\(6) <= NOT \regs:12:general_regs|reg|storage\(6);
\regs:11:general_regs|reg|ALT_INV_storage\(6) <= NOT \regs:11:general_regs|reg|storage\(6);
\regs:9:general_regs|reg|ALT_INV_storage\(6) <= NOT \regs:9:general_regs|reg|storage\(6);
\regs:6:general_regs|reg|ALT_INV_storage\(6) <= NOT \regs:6:general_regs|reg|storage\(6);
\regs:2:general_regs|reg|ALT_INV_storage\(6) <= NOT \regs:2:general_regs|reg|storage\(6);
\regs:0:general_regs|buff|ALT_INV_output[6]~40_combout\ <= NOT \regs:0:general_regs|buff|output[6]~40_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(6) <= NOT \regs:3:general_regs|reg|storage\(6);
\regs:1:general_regs|reg|ALT_INV_storage\(6) <= NOT \regs:1:general_regs|reg|storage\(6);
\regs:0:general_regs|reg|ALT_INV_storage\(6) <= NOT \regs:0:general_regs|reg|storage\(6);
\regs:7:general_regs|buff|ALT_INV_output[6]~6_combout\ <= NOT \regs:7:general_regs|buff|output[6]~6_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(6) <= NOT \regs:7:general_regs|reg|storage\(6);
\regs:5:general_regs|buff|ALT_INV_output[6]~6_combout\ <= NOT \regs:5:general_regs|buff|output[6]~6_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(6) <= NOT \regs:5:general_regs|reg|storage\(6);
\regs:4:general_regs|buff|ALT_INV_output[6]~6_combout\ <= NOT \regs:4:general_regs|buff|output[6]~6_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(6) <= NOT \regs:4:general_regs|reg|storage\(6);
\regs:0:general_regs|buff|ALT_INV_output[5]~38_combout\ <= NOT \regs:0:general_regs|buff|output[5]~38_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(5) <= NOT \regs:13:general_regs|reg|storage\(5);
\regs:10:general_regs|reg|ALT_INV_storage\(5) <= NOT \regs:10:general_regs|reg|storage\(5);
\regs:8:general_regs|buff|ALT_INV_output[5]~5_combout\ <= NOT \regs:8:general_regs|buff|output[5]~5_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(5) <= NOT \regs:8:general_regs|reg|storage\(5);
\regs:0:general_regs|buff|ALT_INV_output[5]~37_combout\ <= NOT \regs:0:general_regs|buff|output[5]~37_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(5) <= NOT \regs:15:general_regs|reg|storage\(5);
\regs:12:general_regs|reg|ALT_INV_storage\(5) <= NOT \regs:12:general_regs|reg|storage\(5);
\regs:11:general_regs|reg|ALT_INV_storage\(5) <= NOT \regs:11:general_regs|reg|storage\(5);
\regs:9:general_regs|reg|ALT_INV_storage\(5) <= NOT \regs:9:general_regs|reg|storage\(5);
\regs:6:general_regs|reg|ALT_INV_storage\(5) <= NOT \regs:6:general_regs|reg|storage\(5);
\regs:2:general_regs|reg|ALT_INV_storage\(5) <= NOT \regs:2:general_regs|reg|storage\(5);
\regs:0:general_regs|buff|ALT_INV_output[5]~36_combout\ <= NOT \regs:0:general_regs|buff|output[5]~36_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(5) <= NOT \regs:3:general_regs|reg|storage\(5);
\regs:1:general_regs|reg|ALT_INV_storage\(5) <= NOT \regs:1:general_regs|reg|storage\(5);
\regs:0:general_regs|reg|ALT_INV_storage\(5) <= NOT \regs:0:general_regs|reg|storage\(5);
\regs:7:general_regs|buff|ALT_INV_output[5]~5_combout\ <= NOT \regs:7:general_regs|buff|output[5]~5_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(5) <= NOT \regs:7:general_regs|reg|storage\(5);
\regs:5:general_regs|buff|ALT_INV_output[5]~5_combout\ <= NOT \regs:5:general_regs|buff|output[5]~5_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(5) <= NOT \regs:5:general_regs|reg|storage\(5);
\regs:4:general_regs|buff|ALT_INV_output[5]~5_combout\ <= NOT \regs:4:general_regs|buff|output[5]~5_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(5) <= NOT \regs:4:general_regs|reg|storage\(5);
\regs:0:general_regs|buff|ALT_INV_output[4]~34_combout\ <= NOT \regs:0:general_regs|buff|output[4]~34_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(4) <= NOT \regs:13:general_regs|reg|storage\(4);
\regs:10:general_regs|reg|ALT_INV_storage\(4) <= NOT \regs:10:general_regs|reg|storage\(4);
\regs:8:general_regs|buff|ALT_INV_output[4]~4_combout\ <= NOT \regs:8:general_regs|buff|output[4]~4_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(4) <= NOT \regs:8:general_regs|reg|storage\(4);
\regs:0:general_regs|buff|ALT_INV_output[4]~33_combout\ <= NOT \regs:0:general_regs|buff|output[4]~33_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(4) <= NOT \regs:15:general_regs|reg|storage\(4);
\regs:12:general_regs|reg|ALT_INV_storage\(4) <= NOT \regs:12:general_regs|reg|storage\(4);
\regs:11:general_regs|reg|ALT_INV_storage\(4) <= NOT \regs:11:general_regs|reg|storage\(4);
\regs:9:general_regs|reg|ALT_INV_storage\(4) <= NOT \regs:9:general_regs|reg|storage\(4);
\regs:6:general_regs|reg|ALT_INV_storage\(4) <= NOT \regs:6:general_regs|reg|storage\(4);
\regs:2:general_regs|reg|ALT_INV_storage\(4) <= NOT \regs:2:general_regs|reg|storage\(4);
\regs:0:general_regs|buff|ALT_INV_output[4]~32_combout\ <= NOT \regs:0:general_regs|buff|output[4]~32_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(4) <= NOT \regs:3:general_regs|reg|storage\(4);
\regs:1:general_regs|reg|ALT_INV_storage\(4) <= NOT \regs:1:general_regs|reg|storage\(4);
\regs:0:general_regs|reg|ALT_INV_storage\(4) <= NOT \regs:0:general_regs|reg|storage\(4);
\regs:7:general_regs|buff|ALT_INV_output[4]~4_combout\ <= NOT \regs:7:general_regs|buff|output[4]~4_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(4) <= NOT \regs:7:general_regs|reg|storage\(4);
\regs:5:general_regs|buff|ALT_INV_output[4]~4_combout\ <= NOT \regs:5:general_regs|buff|output[4]~4_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(4) <= NOT \regs:5:general_regs|reg|storage\(4);
\regs:4:general_regs|buff|ALT_INV_output[4]~4_combout\ <= NOT \regs:4:general_regs|buff|output[4]~4_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(4) <= NOT \regs:4:general_regs|reg|storage\(4);
\regs:0:general_regs|buff|ALT_INV_output[3]~30_combout\ <= NOT \regs:0:general_regs|buff|output[3]~30_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(3) <= NOT \regs:13:general_regs|reg|storage\(3);
\regs:10:general_regs|reg|ALT_INV_storage\(3) <= NOT \regs:10:general_regs|reg|storage\(3);
\regs:8:general_regs|buff|ALT_INV_output[3]~3_combout\ <= NOT \regs:8:general_regs|buff|output[3]~3_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(3) <= NOT \regs:8:general_regs|reg|storage\(3);
\regs:0:general_regs|buff|ALT_INV_output[3]~29_combout\ <= NOT \regs:0:general_regs|buff|output[3]~29_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(3) <= NOT \regs:15:general_regs|reg|storage\(3);
\regs:12:general_regs|reg|ALT_INV_storage\(3) <= NOT \regs:12:general_regs|reg|storage\(3);
\regs:11:general_regs|reg|ALT_INV_storage\(3) <= NOT \regs:11:general_regs|reg|storage\(3);
\regs:9:general_regs|reg|ALT_INV_storage\(3) <= NOT \regs:9:general_regs|reg|storage\(3);
\regs:6:general_regs|reg|ALT_INV_storage\(3) <= NOT \regs:6:general_regs|reg|storage\(3);
\regs:2:general_regs|reg|ALT_INV_storage\(3) <= NOT \regs:2:general_regs|reg|storage\(3);
\regs:0:general_regs|buff|ALT_INV_output[3]~28_combout\ <= NOT \regs:0:general_regs|buff|output[3]~28_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(3) <= NOT \regs:3:general_regs|reg|storage\(3);
\regs:1:general_regs|reg|ALT_INV_storage\(3) <= NOT \regs:1:general_regs|reg|storage\(3);
\regs:0:general_regs|reg|ALT_INV_storage\(3) <= NOT \regs:0:general_regs|reg|storage\(3);
\regs:7:general_regs|buff|ALT_INV_output[3]~3_combout\ <= NOT \regs:7:general_regs|buff|output[3]~3_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(3) <= NOT \regs:7:general_regs|reg|storage\(3);
\regs:5:general_regs|buff|ALT_INV_output[3]~3_combout\ <= NOT \regs:5:general_regs|buff|output[3]~3_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(3) <= NOT \regs:5:general_regs|reg|storage\(3);
\regs:4:general_regs|buff|ALT_INV_output[3]~3_combout\ <= NOT \regs:4:general_regs|buff|output[3]~3_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(3) <= NOT \regs:4:general_regs|reg|storage\(3);
\regs:0:general_regs|buff|ALT_INV_output[2]~26_combout\ <= NOT \regs:0:general_regs|buff|output[2]~26_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(2) <= NOT \regs:13:general_regs|reg|storage\(2);
\regs:10:general_regs|reg|ALT_INV_storage\(2) <= NOT \regs:10:general_regs|reg|storage\(2);
\regs:8:general_regs|buff|ALT_INV_output[2]~2_combout\ <= NOT \regs:8:general_regs|buff|output[2]~2_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(2) <= NOT \regs:8:general_regs|reg|storage\(2);
\regs:0:general_regs|buff|ALT_INV_output[2]~25_combout\ <= NOT \regs:0:general_regs|buff|output[2]~25_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(2) <= NOT \regs:15:general_regs|reg|storage\(2);
\regs:12:general_regs|reg|ALT_INV_storage\(2) <= NOT \regs:12:general_regs|reg|storage\(2);
\regs:11:general_regs|reg|ALT_INV_storage\(2) <= NOT \regs:11:general_regs|reg|storage\(2);
\regs:9:general_regs|reg|ALT_INV_storage\(2) <= NOT \regs:9:general_regs|reg|storage\(2);
\regs:6:general_regs|reg|ALT_INV_storage\(2) <= NOT \regs:6:general_regs|reg|storage\(2);
\regs:2:general_regs|reg|ALT_INV_storage\(2) <= NOT \regs:2:general_regs|reg|storage\(2);
\regs:0:general_regs|buff|ALT_INV_output[2]~24_combout\ <= NOT \regs:0:general_regs|buff|output[2]~24_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(2) <= NOT \regs:3:general_regs|reg|storage\(2);
\regs:1:general_regs|reg|ALT_INV_storage\(2) <= NOT \regs:1:general_regs|reg|storage\(2);
\regs:0:general_regs|reg|ALT_INV_storage\(2) <= NOT \regs:0:general_regs|reg|storage\(2);
\regs:7:general_regs|buff|ALT_INV_output[2]~2_combout\ <= NOT \regs:7:general_regs|buff|output[2]~2_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(2) <= NOT \regs:7:general_regs|reg|storage\(2);
\regs:5:general_regs|buff|ALT_INV_output[2]~2_combout\ <= NOT \regs:5:general_regs|buff|output[2]~2_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(2) <= NOT \regs:5:general_regs|reg|storage\(2);
\regs:4:general_regs|buff|ALT_INV_output[2]~2_combout\ <= NOT \regs:4:general_regs|buff|output[2]~2_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(2) <= NOT \regs:4:general_regs|reg|storage\(2);
\regs:0:general_regs|buff|ALT_INV_output[1]~22_combout\ <= NOT \regs:0:general_regs|buff|output[1]~22_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(1) <= NOT \regs:13:general_regs|reg|storage\(1);
\regs:10:general_regs|reg|ALT_INV_storage\(1) <= NOT \regs:10:general_regs|reg|storage\(1);
\regs:8:general_regs|buff|ALT_INV_output[1]~1_combout\ <= NOT \regs:8:general_regs|buff|output[1]~1_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(1) <= NOT \regs:8:general_regs|reg|storage\(1);
\regs:0:general_regs|buff|ALT_INV_output[1]~21_combout\ <= NOT \regs:0:general_regs|buff|output[1]~21_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(1) <= NOT \regs:15:general_regs|reg|storage\(1);
\regs:12:general_regs|reg|ALT_INV_storage\(1) <= NOT \regs:12:general_regs|reg|storage\(1);
\regs:11:general_regs|reg|ALT_INV_storage\(1) <= NOT \regs:11:general_regs|reg|storage\(1);
\regs:9:general_regs|reg|ALT_INV_storage\(1) <= NOT \regs:9:general_regs|reg|storage\(1);
\regs:6:general_regs|reg|ALT_INV_storage\(1) <= NOT \regs:6:general_regs|reg|storage\(1);
\regs:2:general_regs|reg|ALT_INV_storage\(1) <= NOT \regs:2:general_regs|reg|storage\(1);
\regs:0:general_regs|buff|ALT_INV_output[1]~20_combout\ <= NOT \regs:0:general_regs|buff|output[1]~20_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(1) <= NOT \regs:3:general_regs|reg|storage\(1);
\regs:1:general_regs|reg|ALT_INV_storage\(1) <= NOT \regs:1:general_regs|reg|storage\(1);
\regs:0:general_regs|reg|ALT_INV_storage\(1) <= NOT \regs:0:general_regs|reg|storage\(1);
\regs:7:general_regs|buff|ALT_INV_output[1]~1_combout\ <= NOT \regs:7:general_regs|buff|output[1]~1_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(1) <= NOT \regs:7:general_regs|reg|storage\(1);
\regs:5:general_regs|buff|ALT_INV_output[1]~1_combout\ <= NOT \regs:5:general_regs|buff|output[1]~1_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(1) <= NOT \regs:5:general_regs|reg|storage\(1);
\regs:4:general_regs|buff|ALT_INV_output[1]~1_combout\ <= NOT \regs:4:general_regs|buff|output[1]~1_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(1) <= NOT \regs:4:general_regs|reg|storage\(1);
\regs:0:general_regs|buff|ALT_INV_output[0]~18_combout\ <= NOT \regs:0:general_regs|buff|output[0]~18_combout\;
\regs:13:general_regs|reg|ALT_INV_storage\(0) <= NOT \regs:13:general_regs|reg|storage\(0);
\addr_decoder|ALT_INV_Mux1~0_combout\ <= NOT \addr_decoder|Mux1~0_combout\;
\ALT_INV_re_all[10]~3_combout\ <= NOT \re_all[10]~3_combout\;
\regs:10:general_regs|reg|ALT_INV_storage\(0) <= NOT \regs:10:general_regs|reg|storage\(0);
\regs:8:general_regs|buff|ALT_INV_output[0]~0_combout\ <= NOT \regs:8:general_regs|buff|output[0]~0_combout\;
\regs:8:general_regs|reg|ALT_INV_storage\(0) <= NOT \regs:8:general_regs|reg|storage\(0);
\regs:0:general_regs|buff|ALT_INV_output[0]~17_combout\ <= NOT \regs:0:general_regs|buff|output[0]~17_combout\;
\regs:15:general_regs|reg|ALT_INV_storage\(0) <= NOT \regs:15:general_regs|reg|storage\(0);
\regs:12:general_regs|reg|ALT_INV_storage\(0) <= NOT \regs:12:general_regs|reg|storage\(0);
\regs:11:general_regs|reg|ALT_INV_storage\(0) <= NOT \regs:11:general_regs|reg|storage\(0);
\regs:9:general_regs|reg|ALT_INV_storage\(0) <= NOT \regs:9:general_regs|reg|storage\(0);
\regs:6:general_regs|reg|ALT_INV_storage\(0) <= NOT \regs:6:general_regs|reg|storage\(0);
\regs:2:general_regs|reg|ALT_INV_storage\(0) <= NOT \regs:2:general_regs|reg|storage\(0);
\regs:0:general_regs|buff|ALT_INV_output[0]~16_combout\ <= NOT \regs:0:general_regs|buff|output[0]~16_combout\;
\ALT_INV_re_all[3]~2_combout\ <= NOT \re_all[3]~2_combout\;
\regs:3:general_regs|reg|ALT_INV_storage\(0) <= NOT \regs:3:general_regs|reg|storage\(0);
\ALT_INV_re_all[1]~1_combout\ <= NOT \re_all[1]~1_combout\;
\regs:1:general_regs|reg|ALT_INV_storage\(0) <= NOT \regs:1:general_regs|reg|storage\(0);
\ALT_INV_re_all[0]~0_combout\ <= NOT \re_all[0]~0_combout\;
\regs:0:general_regs|reg|ALT_INV_storage\(0) <= NOT \regs:0:general_regs|reg|storage\(0);
\regs:7:general_regs|buff|ALT_INV_output[0]~0_combout\ <= NOT \regs:7:general_regs|buff|output[0]~0_combout\;
\regs:7:general_regs|reg|ALT_INV_storage\(0) <= NOT \regs:7:general_regs|reg|storage\(0);
\regs:5:general_regs|buff|ALT_INV_output[0]~0_combout\ <= NOT \regs:5:general_regs|buff|output[0]~0_combout\;
\regs:5:general_regs|reg|ALT_INV_storage\(0) <= NOT \regs:5:general_regs|reg|storage\(0);
\regs:4:general_regs|buff|ALT_INV_output[0]~0_combout\ <= NOT \regs:4:general_regs|buff|output[0]~0_combout\;
\regs:4:general_regs|reg|ALT_INV_storage\(0) <= NOT \regs:4:general_regs|reg|storage\(0);

-- Location: IOOBUF_X89_Y9_N56
\data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[0]~19_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(0));

-- Location: IOOBUF_X89_Y4_N79
\data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[1]~23_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(1));

-- Location: IOOBUF_X89_Y8_N22
\data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[2]~27_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(2));

-- Location: IOOBUF_X89_Y9_N5
\data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[3]~31_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(3));

-- Location: IOOBUF_X89_Y8_N39
\data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[4]~35_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(4));

-- Location: IOOBUF_X89_Y23_N39
\data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[5]~39_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(5));

-- Location: IOOBUF_X89_Y6_N56
\data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[6]~43_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(6));

-- Location: IOOBUF_X89_Y4_N45
\data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[7]~47_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(7));

-- Location: IOOBUF_X89_Y8_N56
\data[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[8]~51_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(8));

-- Location: IOOBUF_X84_Y0_N2
\data[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[9]~55_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(9));

-- Location: IOOBUF_X89_Y6_N5
\data[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[10]~59_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(10));

-- Location: IOOBUF_X89_Y9_N22
\data[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[11]~63_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(11));

-- Location: IOOBUF_X89_Y23_N56
\data[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[12]~67_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(12));

-- Location: IOOBUF_X89_Y8_N5
\data[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[13]~71_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(13));

-- Location: IOOBUF_X86_Y0_N2
\data[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[14]~75_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(14));

-- Location: IOOBUF_X89_Y6_N39
\data[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regs:0:general_regs|buff|output[15]~79_combout\,
	oe => \read_enabled~input_o\,
	devoe => ww_devoe,
	o => data(15));

-- Location: IOIBUF_X89_Y6_N21
\addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y9_N55
\data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(0),
	o => \data[0]~input_o\);

-- Location: MLABCELL_X87_Y17_N30
\regs:9:general_regs|reg|storage[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:9:general_regs|reg|storage[0]~feeder_combout\ = ( \data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[0]~input_o\,
	combout => \regs:9:general_regs|reg|storage[0]~feeder_combout\);

-- Location: IOIBUF_X89_Y25_N21
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G11
\reset~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \reset~input_o\,
	outclk => \reset~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y9_N38
\addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\write_enabled~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_enabled,
	o => \write_enabled~input_o\);

-- Location: IOIBUF_X89_Y25_N4
\addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

-- Location: LABCELL_X83_Y15_N48
\we_all[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \we_all[9]~8_combout\ = ( \addr[3]~input_o\ & ( (\addr[0]~input_o\ & (\write_enabled~input_o\ & (!\addr[2]~input_o\ & !\addr[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_write_enabled~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	dataf => \ALT_INV_addr[3]~input_o\,
	combout => \we_all[9]~8_combout\);

-- Location: FF_X87_Y17_N32
\regs:9:general_regs|reg|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:9:general_regs|reg|storage[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(0));

-- Location: LABCELL_X83_Y15_N51
\we_all[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \we_all[11]~9_combout\ = ( \addr[3]~input_o\ & ( (\addr[0]~input_o\ & (\write_enabled~input_o\ & (\addr[1]~input_o\ & !\addr[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_write_enabled~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	dataf => \ALT_INV_addr[3]~input_o\,
	combout => \we_all[11]~9_combout\);

-- Location: FF_X87_Y17_N41
\regs:11:general_regs|reg|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(0));

-- Location: MLABCELL_X87_Y17_N39
\regs:0:general_regs|buff|output[0]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[0]~81_combout\ = ( \regs:11:general_regs|reg|storage\(0) & ( \addr[2]~input_o\ & ( (!\addr[1]~input_o\ & \regs:9:general_regs|reg|storage\(0)) ) ) ) # ( !\regs:11:general_regs|reg|storage\(0) & ( \addr[2]~input_o\ & ( 
-- (!\addr[1]~input_o\ & \regs:9:general_regs|reg|storage\(0)) ) ) ) # ( \regs:11:general_regs|reg|storage\(0) & ( !\addr[2]~input_o\ & ( (\regs:9:general_regs|reg|storage\(0)) # (\addr[1]~input_o\) ) ) ) # ( !\regs:11:general_regs|reg|storage\(0) & ( 
-- !\addr[2]~input_o\ & ( (!\addr[1]~input_o\ & \regs:9:general_regs|reg|storage\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datac => \regs:9:general_regs|reg|ALT_INV_storage\(0),
	datae => \regs:11:general_regs|reg|ALT_INV_storage\(0),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:0:general_regs|buff|output[0]~81_combout\);

-- Location: IOIBUF_X86_Y0_N18
\read_enabled~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_enabled,
	o => \read_enabled~input_o\);

-- Location: LABCELL_X83_Y14_N27
\we_all[15]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \we_all[15]~11_combout\ = ( \addr[3]~input_o\ & ( (\addr[2]~input_o\ & (\addr[0]~input_o\ & (\addr[1]~input_o\ & \write_enabled~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_write_enabled~input_o\,
	dataf => \ALT_INV_addr[3]~input_o\,
	combout => \we_all[15]~11_combout\);

-- Location: FF_X85_Y15_N44
\regs:15:general_regs|reg|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(0));

-- Location: LABCELL_X85_Y15_N42
\regs:0:general_regs|buff|output[0]~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[0]~80_combout\ = ( \regs:15:general_regs|reg|storage\(0) & ( \addr[2]~input_o\ & ( (!\addr[0]~input_o\ & (\read_enabled~input_o\ & ((\addr[3]~input_o\) # (\addr[1]~input_o\)))) ) ) ) # ( 
-- !\regs:15:general_regs|reg|storage\(0) & ( \addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[1]~input_o\ & (!\addr[0]~input_o\ & \addr[3]~input_o\)) # (\addr[1]~input_o\ & ((!\addr[0]~input_o\) # (\addr[3]~input_o\))))) ) ) ) # ( 
-- \regs:15:general_regs|reg|storage\(0) & ( !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[0]~input_o\ & (\addr[1]~input_o\ & !\addr[3]~input_o\)) # (\addr[0]~input_o\ & ((\addr[3]~input_o\))))) ) ) ) # ( !\regs:15:general_regs|reg|storage\(0) & 
-- ( !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[0]~input_o\ & (\addr[1]~input_o\ & !\addr[3]~input_o\)) # (\addr[0]~input_o\ & ((\addr[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000011000000000100001100000000010011010000000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_read_enabled~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(0),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:0:general_regs|buff|output[0]~80_combout\);

-- Location: LABCELL_X83_Y15_N21
\we_all[12]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \we_all[12]~10_combout\ = ( !\addr[0]~input_o\ & ( (\addr[3]~input_o\ & (\write_enabled~input_o\ & \addr[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_write_enabled~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	dataf => \ALT_INV_addr[0]~input_o\,
	combout => \we_all[12]~10_combout\);

-- Location: FF_X87_Y13_N38
\regs:12:general_regs|reg|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(0));

-- Location: LABCELL_X83_Y15_N15
\we_all[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \we_all[6]~7_combout\ = ( \addr[2]~input_o\ & ( (!\addr[3]~input_o\ & (\addr[1]~input_o\ & (\write_enabled~input_o\ & !\addr[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	datac => \ALT_INV_write_enabled~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \ALT_INV_addr[2]~input_o\,
	combout => \we_all[6]~7_combout\);

-- Location: FF_X87_Y13_N32
\regs:6:general_regs|reg|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(0));

-- Location: MLABCELL_X87_Y13_N36
\regs:0:general_regs|buff|output[0]~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[0]~82_combout\ = ( \regs:12:general_regs|reg|storage\(0) & ( \regs:6:general_regs|reg|storage\(0) ) ) # ( !\regs:12:general_regs|reg|storage\(0) & ( \regs:6:general_regs|reg|storage\(0) & ( !\addr[3]~input_o\ ) ) ) # ( 
-- \regs:12:general_regs|reg|storage\(0) & ( !\regs:6:general_regs|reg|storage\(0) & ( \addr[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_addr[3]~input_o\,
	datae => \regs:12:general_regs|reg|ALT_INV_storage\(0),
	dataf => \regs:6:general_regs|reg|ALT_INV_storage\(0),
	combout => \regs:0:general_regs|buff|output[0]~82_combout\);

-- Location: LABCELL_X83_Y15_N24
\we_all[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \we_all[2]~6_combout\ = ( !\addr[3]~input_o\ & ( (\addr[1]~input_o\ & (\write_enabled~input_o\ & (!\addr[0]~input_o\ & !\addr[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_write_enabled~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	dataf => \ALT_INV_addr[3]~input_o\,
	combout => \we_all[2]~6_combout\);

-- Location: FF_X87_Y15_N2
\regs:2:general_regs|reg|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(0));

-- Location: MLABCELL_X87_Y15_N0
\regs:0:general_regs|buff|output[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[0]~17_combout\ = ( \regs:2:general_regs|reg|storage\(0) & ( \addr[2]~input_o\ & ( (\regs:0:general_regs|buff|output[0]~80_combout\ & ((!\addr[0]~input_o\ & ((!\regs:0:general_regs|buff|output[0]~82_combout\))) # 
-- (\addr[0]~input_o\ & (!\regs:0:general_regs|buff|output[0]~81_combout\)))) ) ) ) # ( !\regs:2:general_regs|reg|storage\(0) & ( \addr[2]~input_o\ & ( (\regs:0:general_regs|buff|output[0]~80_combout\ & ((!\addr[0]~input_o\ & 
-- ((!\regs:0:general_regs|buff|output[0]~82_combout\))) # (\addr[0]~input_o\ & (!\regs:0:general_regs|buff|output[0]~81_combout\)))) ) ) ) # ( \regs:2:general_regs|reg|storage\(0) & ( !\addr[2]~input_o\ & ( (!\regs:0:general_regs|buff|output[0]~81_combout\ 
-- & (\regs:0:general_regs|buff|output[0]~80_combout\ & \addr[0]~input_o\)) ) ) ) # ( !\regs:2:general_regs|reg|storage\(0) & ( !\addr[2]~input_o\ & ( (\regs:0:general_regs|buff|output[0]~80_combout\ & ((!\regs:0:general_regs|buff|output[0]~81_combout\) # 
-- (!\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010000000000010001000110000001000100011000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[0]~81_combout\,
	datab => \regs:0:general_regs|buff|ALT_INV_output[0]~80_combout\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[0]~82_combout\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(0),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:0:general_regs|buff|output[0]~17_combout\);

-- Location: LABCELL_X83_Y15_N54
\we_all[8]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \we_all[8]~12_combout\ = ( \addr[3]~input_o\ & ( (!\addr[0]~input_o\ & (\write_enabled~input_o\ & (!\addr[2]~input_o\ & !\addr[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_write_enabled~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	dataf => \ALT_INV_addr[3]~input_o\,
	combout => \we_all[8]~12_combout\);

-- Location: FF_X84_Y15_N5
\regs:8:general_regs|reg|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(0));

-- Location: MLABCELL_X84_Y15_N3
\regs:8:general_regs|buff|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[0]~0_combout\ = ( !\regs:8:general_regs|reg|storage\(0) & ( !\addr[2]~input_o\ & ( (\addr[3]~input_o\ & (\read_enabled~input_o\ & (!\addr[0]~input_o\ & !\addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_read_enabled~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(0),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:8:general_regs|buff|output[0]~0_combout\);

-- Location: MLABCELL_X84_Y15_N39
\re_all[10]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \re_all[10]~3_combout\ = ( \read_enabled~input_o\ & ( (\addr[3]~input_o\ & (\addr[1]~input_o\ & (!\addr[0]~input_o\ & !\addr[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \re_all[10]~3_combout\);

-- Location: MLABCELL_X84_Y12_N15
\regs:10:general_regs|reg|storage[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:10:general_regs|reg|storage[0]~feeder_combout\ = ( \data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[0]~input_o\,
	combout => \regs:10:general_regs|reg|storage[0]~feeder_combout\);

-- Location: LABCELL_X83_Y15_N57
\we_all[10]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \we_all[10]~13_combout\ = ( \addr[3]~input_o\ & ( (!\addr[0]~input_o\ & (\write_enabled~input_o\ & (\addr[1]~input_o\ & !\addr[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_write_enabled~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	dataf => \ALT_INV_addr[3]~input_o\,
	combout => \we_all[10]~13_combout\);

-- Location: FF_X84_Y12_N16
\regs:10:general_regs|reg|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:10:general_regs|reg|storage[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(0));

-- Location: MLABCELL_X84_Y15_N15
\addr_decoder|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \addr_decoder|Mux1~0_combout\ = ( \addr[1]~input_o\ & ( (\addr[3]~input_o\ & (!\addr[0]~input_o\ & \addr[2]~input_o\)) ) ) # ( !\addr[1]~input_o\ & ( (\addr[3]~input_o\ & (\addr[0]~input_o\ & \addr[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	dataf => \ALT_INV_addr[1]~input_o\,
	combout => \addr_decoder|Mux1~0_combout\);

-- Location: LABCELL_X83_Y15_N30
\we_all[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- we_all(13) = (\addr_decoder|Mux1~0_combout\ & \write_enabled~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_write_enabled~input_o\,
	combout => we_all(13));

-- Location: FF_X84_Y15_N50
\regs:13:general_regs|reg|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(0));

-- Location: MLABCELL_X84_Y15_N48
\regs:0:general_regs|buff|output[0]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[0]~18_combout\ = ( \regs:13:general_regs|reg|storage\(0) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[0]~0_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(0)))) ) ) ) # ( 
-- !\regs:13:general_regs|reg|storage\(0) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[0]~0_combout\ & (!\addr_decoder|Mux1~0_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(0))))) ) ) ) # ( 
-- \regs:13:general_regs|reg|storage\(0) & ( !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[0]~0_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(0)))) ) ) ) # ( !\regs:13:general_regs|reg|storage\(0) & ( 
-- !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[0]~0_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101010001010100010101000101010001010000000001000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:8:general_regs|buff|ALT_INV_output[0]~0_combout\,
	datab => \ALT_INV_re_all[10]~3_combout\,
	datac => \regs:10:general_regs|reg|ALT_INV_storage\(0),
	datad => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(0),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[0]~18_combout\);

-- Location: LABCELL_X83_Y15_N0
\we_all[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \we_all[5]~1_combout\ = ( !\addr[3]~input_o\ & ( (\addr[0]~input_o\ & (\write_enabled~input_o\ & (\addr[2]~input_o\ & !\addr[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_write_enabled~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	dataf => \ALT_INV_addr[3]~input_o\,
	combout => \we_all[5]~1_combout\);

-- Location: FF_X85_Y15_N38
\regs:5:general_regs|reg|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(0));

-- Location: LABCELL_X85_Y15_N36
\regs:5:general_regs|buff|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[0]~0_combout\ = ( !\regs:5:general_regs|reg|storage\(0) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[0]~input_o\ & (!\addr[3]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(0),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[0]~0_combout\);

-- Location: LABCELL_X83_Y15_N27
\we_all[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \we_all[4]~0_combout\ = ( !\addr[3]~input_o\ & ( (!\addr[1]~input_o\ & (\write_enabled~input_o\ & (!\addr[0]~input_o\ & \addr[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_write_enabled~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	dataf => \ALT_INV_addr[3]~input_o\,
	combout => \we_all[4]~0_combout\);

-- Location: FF_X85_Y15_N32
\regs:4:general_regs|reg|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(0));

-- Location: LABCELL_X85_Y15_N30
\regs:4:general_regs|buff|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[0]~0_combout\ = ( !\regs:4:general_regs|reg|storage\(0) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[2]~input_o\ & (!\addr[3]~input_o\ & !\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(0),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[0]~0_combout\);

-- Location: LABCELL_X83_Y16_N39
\re_all[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \re_all[3]~2_combout\ = ( \addr[1]~input_o\ & ( (\read_enabled~input_o\ & (!\addr[3]~input_o\ & (\addr[0]~input_o\ & !\addr[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_enabled~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	dataf => \ALT_INV_addr[1]~input_o\,
	combout => \re_all[3]~2_combout\);

-- Location: LABCELL_X83_Y15_N33
\re_all[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \re_all[0]~0_combout\ = ( !\addr[0]~input_o\ & ( (!\addr[3]~input_o\ & (\read_enabled~input_o\ & (!\addr[1]~input_o\ & !\addr[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_read_enabled~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	dataf => \ALT_INV_addr[0]~input_o\,
	combout => \re_all[0]~0_combout\);

-- Location: LABCELL_X83_Y16_N3
\re_all[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \re_all[1]~1_combout\ = ( !\addr[2]~input_o\ & ( (!\addr[1]~input_o\ & (\read_enabled~input_o\ & (!\addr[3]~input_o\ & \addr[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_read_enabled~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \re_all[1]~1_combout\);

-- Location: MLABCELL_X84_Y12_N6
\regs:1:general_regs|reg|storage[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:1:general_regs|reg|storage[0]~feeder_combout\ = ( \data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[0]~input_o\,
	combout => \regs:1:general_regs|reg|storage[0]~feeder_combout\);

-- Location: LABCELL_X83_Y15_N6
\we_all[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \we_all[1]~4_combout\ = ( !\addr[3]~input_o\ & ( (\addr[0]~input_o\ & (\write_enabled~input_o\ & (!\addr[2]~input_o\ & !\addr[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_write_enabled~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	dataf => \ALT_INV_addr[3]~input_o\,
	combout => \we_all[1]~4_combout\);

-- Location: FF_X84_Y12_N7
\regs:1:general_regs|reg|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:1:general_regs|reg|storage[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(0));

-- Location: LABCELL_X83_Y15_N9
\we_all[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \we_all[3]~5_combout\ = ( !\addr[3]~input_o\ & ( (\addr[0]~input_o\ & (\write_enabled~input_o\ & (\addr[1]~input_o\ & !\addr[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_write_enabled~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	dataf => \ALT_INV_addr[3]~input_o\,
	combout => \we_all[3]~5_combout\);

-- Location: FF_X83_Y12_N2
\regs:3:general_regs|reg|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(0));

-- Location: MLABCELL_X84_Y12_N30
\regs:0:general_regs|reg|storage[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|reg|storage[0]~feeder_combout\ = ( \data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[0]~input_o\,
	combout => \regs:0:general_regs|reg|storage[0]~feeder_combout\);

-- Location: LABCELL_X83_Y15_N3
\we_all[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \we_all[0]~3_combout\ = ( !\addr[1]~input_o\ & ( (!\addr[0]~input_o\ & (\write_enabled~input_o\ & (!\addr[3]~input_o\ & !\addr[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_write_enabled~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	dataf => \ALT_INV_addr[1]~input_o\,
	combout => \we_all[0]~3_combout\);

-- Location: FF_X84_Y12_N32
\regs:0:general_regs|reg|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:0:general_regs|reg|storage[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(0));

-- Location: LABCELL_X83_Y12_N0
\regs:0:general_regs|buff|output[0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[0]~16_combout\ = ( \regs:3:general_regs|reg|storage\(0) & ( \regs:0:general_regs|reg|storage\(0) & ( (!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(0)) ) ) ) # ( !\regs:3:general_regs|reg|storage\(0) & ( 
-- \regs:0:general_regs|reg|storage\(0) & ( (!\re_all[3]~2_combout\ & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(0)))) ) ) ) # ( \regs:3:general_regs|reg|storage\(0) & ( !\regs:0:general_regs|reg|storage\(0) & ( (!\re_all[0]~0_combout\ & 
-- ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(0)))) ) ) ) # ( !\regs:3:general_regs|reg|storage\(0) & ( !\regs:0:general_regs|reg|storage\(0) & ( (!\re_all[3]~2_combout\ & (!\re_all[0]~0_combout\ & ((!\re_all[1]~1_combout\) # 
-- (\regs:1:general_regs|reg|storage\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000110000001100110010100000101010101111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[3]~2_combout\,
	datab => \ALT_INV_re_all[0]~0_combout\,
	datac => \ALT_INV_re_all[1]~1_combout\,
	datad => \regs:1:general_regs|reg|ALT_INV_storage\(0),
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(0),
	dataf => \regs:0:general_regs|reg|ALT_INV_storage\(0),
	combout => \regs:0:general_regs|buff|output[0]~16_combout\);

-- Location: LABCELL_X83_Y14_N24
\we_all[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \we_all[7]~2_combout\ = ( !\addr[3]~input_o\ & ( (\addr[2]~input_o\ & (\addr[0]~input_o\ & (\write_enabled~input_o\ & \addr[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_write_enabled~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	dataf => \ALT_INV_addr[3]~input_o\,
	combout => \we_all[7]~2_combout\);

-- Location: FF_X88_Y16_N32
\regs:7:general_regs|reg|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[0]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(0));

-- Location: LABCELL_X88_Y16_N30
\regs:7:general_regs|buff|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[0]~0_combout\ = ( !\regs:7:general_regs|reg|storage\(0) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (\addr[0]~input_o\ & (\addr[2]~input_o\ & !\addr[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(0),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[0]~0_combout\);

-- Location: LABCELL_X85_Y15_N48
\regs:0:general_regs|buff|output[0]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[0]~19_combout\ = ( \regs:0:general_regs|buff|output[0]~16_combout\ & ( !\regs:7:general_regs|buff|output[0]~0_combout\ & ( (!\regs:0:general_regs|buff|output[0]~17_combout\ & 
-- (\regs:0:general_regs|buff|output[0]~18_combout\ & (!\regs:5:general_regs|buff|output[0]~0_combout\ & !\regs:4:general_regs|buff|output[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[0]~17_combout\,
	datab => \regs:0:general_regs|buff|ALT_INV_output[0]~18_combout\,
	datac => \regs:5:general_regs|buff|ALT_INV_output[0]~0_combout\,
	datad => \regs:4:general_regs|buff|ALT_INV_output[0]~0_combout\,
	datae => \regs:0:general_regs|buff|ALT_INV_output[0]~16_combout\,
	dataf => \regs:7:general_regs|buff|ALT_INV_output[0]~0_combout\,
	combout => \regs:0:general_regs|buff|output[0]~19_combout\);

-- Location: IOIBUF_X89_Y4_N78
\data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(1),
	o => \data[1]~input_o\);

-- Location: FF_X84_Y16_N35
\regs:4:general_regs|reg|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(1));

-- Location: MLABCELL_X84_Y16_N33
\regs:4:general_regs|buff|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[1]~1_combout\ = ( !\regs:4:general_regs|reg|storage\(1) & ( \read_enabled~input_o\ & ( (!\addr[0]~input_o\ & (!\addr[3]~input_o\ & (!\addr[1]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(1),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[1]~1_combout\);

-- Location: FF_X84_Y13_N35
\regs:5:general_regs|reg|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(1));

-- Location: MLABCELL_X84_Y13_N33
\regs:5:general_regs|buff|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[1]~1_combout\ = ( !\regs:5:general_regs|reg|storage\(1) & ( \read_enabled~input_o\ & ( (\addr[2]~input_o\ & (!\addr[3]~input_o\ & (\addr[0]~input_o\ & !\addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(1),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[1]~1_combout\);

-- Location: FF_X84_Y13_N38
\regs:8:general_regs|reg|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(1));

-- Location: MLABCELL_X84_Y13_N36
\regs:8:general_regs|buff|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[1]~1_combout\ = ( !\regs:8:general_regs|reg|storage\(1) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[3]~input_o\ & (!\addr[2]~input_o\ & !\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(1),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:8:general_regs|buff|output[1]~1_combout\);

-- Location: FF_X84_Y15_N37
\regs:10:general_regs|reg|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(1));

-- Location: FF_X84_Y15_N56
\regs:13:general_regs|reg|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(1));

-- Location: MLABCELL_X84_Y15_N54
\regs:0:general_regs|buff|output[1]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[1]~22_combout\ = ( \regs:13:general_regs|reg|storage\(1) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[1]~1_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(1)))) ) ) ) # ( 
-- !\regs:13:general_regs|reg|storage\(1) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[1]~1_combout\ & (!\addr_decoder|Mux1~0_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(1))))) ) ) ) # ( 
-- \regs:13:general_regs|reg|storage\(1) & ( !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[1]~1_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(1)))) ) ) ) # ( !\regs:13:general_regs|reg|storage\(1) & ( 
-- !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[1]~1_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010101010100000101010001000000010001010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:8:general_regs|buff|ALT_INV_output[1]~1_combout\,
	datab => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datac => \regs:10:general_regs|reg|ALT_INV_storage\(1),
	datad => \ALT_INV_re_all[10]~3_combout\,
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(1),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[1]~22_combout\);

-- Location: FF_X84_Y16_N47
\regs:12:general_regs|reg|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(1));

-- Location: FF_X83_Y15_N40
\regs:6:general_regs|reg|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(1));

-- Location: MLABCELL_X84_Y16_N45
\regs:0:general_regs|buff|output[1]~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[1]~85_combout\ = ( \regs:6:general_regs|reg|storage\(1) & ( (!\addr[3]~input_o\) # (\regs:12:general_regs|reg|storage\(1)) ) ) # ( !\regs:6:general_regs|reg|storage\(1) & ( (\addr[3]~input_o\ & 
-- \regs:12:general_regs|reg|storage\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_addr[3]~input_o\,
	datad => \regs:12:general_regs|reg|ALT_INV_storage\(1),
	dataf => \regs:6:general_regs|reg|ALT_INV_storage\(1),
	combout => \regs:0:general_regs|buff|output[1]~85_combout\);

-- Location: LABCELL_X88_Y16_N12
\regs:9:general_regs|reg|storage[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:9:general_regs|reg|storage[1]~feeder_combout\ = ( \data[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[1]~input_o\,
	combout => \regs:9:general_regs|reg|storage[1]~feeder_combout\);

-- Location: FF_X88_Y16_N13
\regs:9:general_regs|reg|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:9:general_regs|reg|storage[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(1));

-- Location: FF_X83_Y17_N2
\regs:11:general_regs|reg|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(1));

-- Location: LABCELL_X83_Y17_N0
\regs:0:general_regs|buff|output[1]~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[1]~84_combout\ = ( \regs:11:general_regs|reg|storage\(1) & ( \addr[1]~input_o\ & ( !\addr[2]~input_o\ ) ) ) # ( \regs:11:general_regs|reg|storage\(1) & ( !\addr[1]~input_o\ & ( \regs:9:general_regs|reg|storage\(1) ) ) ) # 
-- ( !\regs:11:general_regs|reg|storage\(1) & ( !\addr[1]~input_o\ & ( \regs:9:general_regs|reg|storage\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:9:general_regs|reg|ALT_INV_storage\(1),
	datac => \ALT_INV_addr[2]~input_o\,
	datae => \regs:11:general_regs|reg|ALT_INV_storage\(1),
	dataf => \ALT_INV_addr[1]~input_o\,
	combout => \regs:0:general_regs|buff|output[1]~84_combout\);

-- Location: FF_X84_Y16_N8
\regs:2:general_regs|reg|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(1));

-- Location: FF_X83_Y16_N44
\regs:15:general_regs|reg|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(1));

-- Location: LABCELL_X83_Y16_N42
\regs:0:general_regs|buff|output[1]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[1]~83_combout\ = ( \regs:15:general_regs|reg|storage\(1) & ( \addr[2]~input_o\ & ( (\read_enabled~input_o\ & (!\addr[0]~input_o\ & ((\addr[1]~input_o\) # (\addr[3]~input_o\)))) ) ) ) # ( 
-- !\regs:15:general_regs|reg|storage\(1) & ( \addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[3]~input_o\ & (\addr[1]~input_o\ & !\addr[0]~input_o\)) # (\addr[3]~input_o\ & ((!\addr[0]~input_o\) # (\addr[1]~input_o\))))) ) ) ) # ( 
-- \regs:15:general_regs|reg|storage\(1) & ( !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[3]~input_o\ & (\addr[1]~input_o\ & !\addr[0]~input_o\)) # (\addr[3]~input_o\ & ((\addr[0]~input_o\))))) ) ) ) # ( !\regs:15:general_regs|reg|storage\(1) & 
-- ( !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[3]~input_o\ & (\addr[1]~input_o\ & !\addr[0]~input_o\)) # (\addr[3]~input_o\ & ((\addr[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010001000001000001000100010101000000010001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_enabled~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(1),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:0:general_regs|buff|output[1]~83_combout\);

-- Location: MLABCELL_X84_Y16_N6
\regs:0:general_regs|buff|output[1]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[1]~21_combout\ = ( \regs:2:general_regs|reg|storage\(1) & ( \regs:0:general_regs|buff|output[1]~83_combout\ & ( (!\addr[0]~input_o\ & (!\regs:0:general_regs|buff|output[1]~85_combout\ & (\addr[2]~input_o\))) # 
-- (\addr[0]~input_o\ & (((!\regs:0:general_regs|buff|output[1]~84_combout\)))) ) ) ) # ( !\regs:2:general_regs|reg|storage\(1) & ( \regs:0:general_regs|buff|output[1]~83_combout\ & ( (!\addr[0]~input_o\ & ((!\regs:0:general_regs|buff|output[1]~85_combout\) 
-- # ((!\addr[2]~input_o\)))) # (\addr[0]~input_o\ & (((!\regs:0:general_regs|buff|output[1]~84_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111101101010000101110100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \regs:0:general_regs|buff|ALT_INV_output[1]~85_combout\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \regs:0:general_regs|buff|ALT_INV_output[1]~84_combout\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(1),
	dataf => \regs:0:general_regs|buff|ALT_INV_output[1]~83_combout\,
	combout => \regs:0:general_regs|buff|output[1]~21_combout\);

-- Location: FF_X88_Y16_N11
\regs:7:general_regs|reg|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(1));

-- Location: LABCELL_X88_Y16_N9
\regs:7:general_regs|buff|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[1]~1_combout\ = ( !\regs:7:general_regs|reg|storage\(1) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (!\addr[3]~input_o\ & (\addr[0]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(1),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[1]~1_combout\);

-- Location: FF_X83_Y12_N44
\regs:1:general_regs|reg|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(1));

-- Location: LABCELL_X83_Y12_N6
\regs:0:general_regs|reg|storage[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|reg|storage[1]~feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[1]~input_o\,
	combout => \regs:0:general_regs|reg|storage[1]~feeder_combout\);

-- Location: FF_X83_Y12_N7
\regs:0:general_regs|reg|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:0:general_regs|reg|storage[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(1));

-- Location: FF_X83_Y12_N20
\regs:3:general_regs|reg|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(1));

-- Location: LABCELL_X83_Y12_N18
\regs:0:general_regs|buff|output[1]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[1]~20_combout\ = ( \regs:3:general_regs|reg|storage\(1) & ( \re_all[3]~2_combout\ & ( (!\re_all[1]~1_combout\ & (((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(1))))) # (\re_all[1]~1_combout\ & 
-- (\regs:1:general_regs|reg|storage\(1) & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(1))))) ) ) ) # ( \regs:3:general_regs|reg|storage\(1) & ( !\re_all[3]~2_combout\ & ( (!\re_all[1]~1_combout\ & (((!\re_all[0]~0_combout\) # 
-- (\regs:0:general_regs|reg|storage\(1))))) # (\re_all[1]~1_combout\ & (\regs:1:general_regs|reg|storage\(1) & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(1))))) ) ) ) # ( !\regs:3:general_regs|reg|storage\(1) & ( !\re_all[3]~2_combout\ & 
-- ( (!\re_all[1]~1_combout\ & (((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(1))))) # (\re_all[1]~1_combout\ & (\regs:1:general_regs|reg|storage\(1) & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100001011101110110000101100000000000000001011101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[1]~1_combout\,
	datab => \regs:1:general_regs|reg|ALT_INV_storage\(1),
	datac => \regs:0:general_regs|reg|ALT_INV_storage\(1),
	datad => \ALT_INV_re_all[0]~0_combout\,
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(1),
	dataf => \ALT_INV_re_all[3]~2_combout\,
	combout => \regs:0:general_regs|buff|output[1]~20_combout\);

-- Location: MLABCELL_X84_Y16_N48
\regs:0:general_regs|buff|output[1]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[1]~23_combout\ = ( !\regs:7:general_regs|buff|output[1]~1_combout\ & ( \regs:0:general_regs|buff|output[1]~20_combout\ & ( (!\regs:4:general_regs|buff|output[1]~1_combout\ & (!\regs:5:general_regs|buff|output[1]~1_combout\ 
-- & (\regs:0:general_regs|buff|output[1]~22_combout\ & !\regs:0:general_regs|buff|output[1]~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:4:general_regs|buff|ALT_INV_output[1]~1_combout\,
	datab => \regs:5:general_regs|buff|ALT_INV_output[1]~1_combout\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[1]~22_combout\,
	datad => \regs:0:general_regs|buff|ALT_INV_output[1]~21_combout\,
	datae => \regs:7:general_regs|buff|ALT_INV_output[1]~1_combout\,
	dataf => \regs:0:general_regs|buff|ALT_INV_output[1]~20_combout\,
	combout => \regs:0:general_regs|buff|output[1]~23_combout\);

-- Location: IOIBUF_X89_Y8_N21
\data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(2),
	o => \data[2]~input_o\);

-- Location: FF_X88_Y16_N22
\regs:9:general_regs|reg|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(2));

-- Location: FF_X83_Y17_N17
\regs:11:general_regs|reg|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(2));

-- Location: LABCELL_X83_Y17_N15
\regs:0:general_regs|buff|output[2]~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[2]~87_combout\ = (!\addr[1]~input_o\ & (((\regs:9:general_regs|reg|storage\(2))))) # (\addr[1]~input_o\ & (!\addr[2]~input_o\ & ((\regs:11:general_regs|reg|storage\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000001010010011100000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \regs:9:general_regs|reg|ALT_INV_storage\(2),
	datad => \regs:11:general_regs|reg|ALT_INV_storage\(2),
	combout => \regs:0:general_regs|buff|output[2]~87_combout\);

-- Location: FF_X85_Y16_N4
\regs:6:general_regs|reg|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(2));

-- Location: FF_X83_Y17_N23
\regs:12:general_regs|reg|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(2));

-- Location: LABCELL_X83_Y17_N21
\regs:0:general_regs|buff|output[2]~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[2]~88_combout\ = (!\addr[3]~input_o\ & (\regs:6:general_regs|reg|storage\(2))) # (\addr[3]~input_o\ & ((\regs:12:general_regs|reg|storage\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \regs:6:general_regs|reg|ALT_INV_storage\(2),
	datad => \regs:12:general_regs|reg|ALT_INV_storage\(2),
	combout => \regs:0:general_regs|buff|output[2]~88_combout\);

-- Location: FF_X88_Y16_N56
\regs:15:general_regs|reg|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(2));

-- Location: LABCELL_X88_Y16_N54
\regs:0:general_regs|buff|output[2]~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[2]~86_combout\ = ( \regs:15:general_regs|reg|storage\(2) & ( \read_enabled~input_o\ & ( (!\addr[3]~input_o\ & (((!\addr[0]~input_o\ & \addr[1]~input_o\)))) # (\addr[3]~input_o\ & (!\addr[2]~input_o\ $ 
-- ((!\addr[0]~input_o\)))) ) ) ) # ( !\regs:15:general_regs|reg|storage\(2) & ( \read_enabled~input_o\ & ( (!\addr[0]~input_o\ & ((!\addr[3]~input_o\ & ((\addr[1]~input_o\))) # (\addr[3]~input_o\ & (\addr[2]~input_o\)))) # (\addr[0]~input_o\ & 
-- (\addr[3]~input_o\ & ((!\addr[2]~input_o\) # (\addr[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100011001110000110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(2),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[2]~86_combout\);

-- Location: FF_X83_Y17_N8
\regs:2:general_regs|reg|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(2));

-- Location: LABCELL_X83_Y17_N6
\regs:0:general_regs|buff|output[2]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[2]~25_combout\ = ( \regs:2:general_regs|reg|storage\(2) & ( \addr[0]~input_o\ & ( (!\regs:0:general_regs|buff|output[2]~87_combout\ & \regs:0:general_regs|buff|output[2]~86_combout\) ) ) ) # ( 
-- !\regs:2:general_regs|reg|storage\(2) & ( \addr[0]~input_o\ & ( (!\regs:0:general_regs|buff|output[2]~87_combout\ & \regs:0:general_regs|buff|output[2]~86_combout\) ) ) ) # ( \regs:2:general_regs|reg|storage\(2) & ( !\addr[0]~input_o\ & ( 
-- (\addr[2]~input_o\ & (!\regs:0:general_regs|buff|output[2]~88_combout\ & \regs:0:general_regs|buff|output[2]~86_combout\)) ) ) ) # ( !\regs:2:general_regs|reg|storage\(2) & ( !\addr[0]~input_o\ & ( (\regs:0:general_regs|buff|output[2]~86_combout\ & 
-- ((!\addr[2]~input_o\) # (!\regs:0:general_regs|buff|output[2]~88_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000000101000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \regs:0:general_regs|buff|ALT_INV_output[2]~87_combout\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[2]~88_combout\,
	datad => \regs:0:general_regs|buff|ALT_INV_output[2]~86_combout\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(2),
	dataf => \ALT_INV_addr[0]~input_o\,
	combout => \regs:0:general_regs|buff|output[2]~25_combout\);

-- Location: FF_X83_Y14_N41
\regs:7:general_regs|reg|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(2));

-- Location: LABCELL_X83_Y14_N39
\regs:7:general_regs|buff|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[2]~2_combout\ = ( !\regs:7:general_regs|reg|storage\(2) & ( \read_enabled~input_o\ & ( (\addr[0]~input_o\ & (\addr[1]~input_o\ & (!\addr[3]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(2),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[2]~2_combout\);

-- Location: FF_X85_Y14_N32
\regs:5:general_regs|reg|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(2));

-- Location: LABCELL_X85_Y14_N30
\regs:5:general_regs|buff|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[2]~2_combout\ = ( !\regs:5:general_regs|reg|storage\(2) & ( \read_enabled~input_o\ & ( (!\addr[3]~input_o\ & (\addr[2]~input_o\ & (\addr[0]~input_o\ & !\addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(2),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[2]~2_combout\);

-- Location: FF_X84_Y14_N5
\regs:0:general_regs|reg|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(2));

-- Location: MLABCELL_X84_Y14_N9
\regs:1:general_regs|reg|storage[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:1:general_regs|reg|storage[2]~feeder_combout\ = ( \data[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[2]~input_o\,
	combout => \regs:1:general_regs|reg|storage[2]~feeder_combout\);

-- Location: FF_X84_Y14_N11
\regs:1:general_regs|reg|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:1:general_regs|reg|storage[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(2));

-- Location: FF_X84_Y14_N44
\regs:3:general_regs|reg|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(2));

-- Location: MLABCELL_X84_Y14_N42
\regs:0:general_regs|buff|output[2]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[2]~24_combout\ = ( \regs:3:general_regs|reg|storage\(2) & ( \re_all[1]~1_combout\ & ( (\regs:1:general_regs|reg|storage\(2) & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(2)))) ) ) ) # ( 
-- !\regs:3:general_regs|reg|storage\(2) & ( \re_all[1]~1_combout\ & ( (!\re_all[3]~2_combout\ & (\regs:1:general_regs|reg|storage\(2) & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(2))))) ) ) ) # ( \regs:3:general_regs|reg|storage\(2) & ( 
-- !\re_all[1]~1_combout\ & ( (!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(2)) ) ) ) # ( !\regs:3:general_regs|reg|storage\(2) & ( !\re_all[1]~1_combout\ & ( (!\re_all[3]~2_combout\ & ((!\re_all[0]~0_combout\) # 
-- (\regs:0:general_regs|reg|storage\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000100111101011111010100000000110001000000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|reg|ALT_INV_storage\(2),
	datab => \ALT_INV_re_all[3]~2_combout\,
	datac => \ALT_INV_re_all[0]~0_combout\,
	datad => \regs:1:general_regs|reg|ALT_INV_storage\(2),
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(2),
	dataf => \ALT_INV_re_all[1]~1_combout\,
	combout => \regs:0:general_regs|buff|output[2]~24_combout\);

-- Location: FF_X83_Y13_N11
\regs:10:general_regs|reg|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(2));

-- Location: FF_X83_Y13_N35
\regs:8:general_regs|reg|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(2));

-- Location: LABCELL_X83_Y13_N33
\regs:8:general_regs|buff|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[2]~2_combout\ = ( !\regs:8:general_regs|reg|storage\(2) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (!\addr[2]~input_o\ & (!\addr[0]~input_o\ & \addr[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(2),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:8:general_regs|buff|output[2]~2_combout\);

-- Location: FF_X83_Y13_N14
\regs:13:general_regs|reg|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(2));

-- Location: LABCELL_X83_Y13_N12
\regs:0:general_regs|buff|output[2]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[2]~26_combout\ = ( \regs:13:general_regs|reg|storage\(2) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[2]~2_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(2)))) ) ) ) # ( 
-- !\regs:13:general_regs|reg|storage\(2) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[2]~2_combout\ & (!\addr_decoder|Mux1~0_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(2))))) ) ) ) # ( 
-- \regs:13:general_regs|reg|storage\(2) & ( !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[2]~2_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(2)))) ) ) ) # ( !\regs:13:general_regs|reg|storage\(2) & ( 
-- !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[2]~2_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000101100001011000010110000000000001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[10]~3_combout\,
	datab => \regs:10:general_regs|reg|ALT_INV_storage\(2),
	datac => \regs:8:general_regs|buff|ALT_INV_output[2]~2_combout\,
	datad => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(2),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[2]~26_combout\);

-- Location: FF_X83_Y14_N32
\regs:4:general_regs|reg|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(2));

-- Location: LABCELL_X83_Y14_N30
\regs:4:general_regs|buff|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[2]~2_combout\ = ( !\regs:4:general_regs|reg|storage\(2) & ( \read_enabled~input_o\ & ( (!\addr[0]~input_o\ & (!\addr[1]~input_o\ & (\addr[2]~input_o\ & !\addr[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(2),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[2]~2_combout\);

-- Location: MLABCELL_X84_Y14_N0
\regs:0:general_regs|buff|output[2]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[2]~27_combout\ = ( \regs:0:general_regs|buff|output[2]~26_combout\ & ( !\regs:4:general_regs|buff|output[2]~2_combout\ & ( (!\regs:0:general_regs|buff|output[2]~25_combout\ & 
-- (!\regs:7:general_regs|buff|output[2]~2_combout\ & (!\regs:5:general_regs|buff|output[2]~2_combout\ & \regs:0:general_regs|buff|output[2]~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[2]~25_combout\,
	datab => \regs:7:general_regs|buff|ALT_INV_output[2]~2_combout\,
	datac => \regs:5:general_regs|buff|ALT_INV_output[2]~2_combout\,
	datad => \regs:0:general_regs|buff|ALT_INV_output[2]~24_combout\,
	datae => \regs:0:general_regs|buff|ALT_INV_output[2]~26_combout\,
	dataf => \regs:4:general_regs|buff|ALT_INV_output[2]~2_combout\,
	combout => \regs:0:general_regs|buff|output[2]~27_combout\);

-- Location: IOIBUF_X89_Y9_N4
\data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(3),
	o => \data[3]~input_o\);

-- Location: LABCELL_X83_Y13_N48
\regs:10:general_regs|reg|storage[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:10:general_regs|reg|storage[3]~feeder_combout\ = ( \data[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[3]~input_o\,
	combout => \regs:10:general_regs|reg|storage[3]~feeder_combout\);

-- Location: FF_X83_Y13_N49
\regs:10:general_regs|reg|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:10:general_regs|reg|storage[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(3));

-- Location: FF_X84_Y13_N41
\regs:8:general_regs|reg|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(3));

-- Location: MLABCELL_X84_Y13_N39
\regs:8:general_regs|buff|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[3]~3_combout\ = ( !\regs:8:general_regs|reg|storage\(3) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[3]~input_o\ & (!\addr[0]~input_o\ & !\addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(3),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:8:general_regs|buff|output[3]~3_combout\);

-- Location: FF_X84_Y13_N44
\regs:13:general_regs|reg|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(3));

-- Location: MLABCELL_X84_Y13_N42
\regs:0:general_regs|buff|output[3]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[3]~30_combout\ = ( \regs:13:general_regs|reg|storage\(3) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[3]~3_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(3)))) ) ) ) # ( 
-- !\regs:13:general_regs|reg|storage\(3) & ( \read_enabled~input_o\ & ( (!\addr_decoder|Mux1~0_combout\ & (!\regs:8:general_regs|buff|output[3]~3_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(3))))) ) ) ) # ( 
-- \regs:13:general_regs|reg|storage\(3) & ( !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[3]~3_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(3)))) ) ) ) # ( !\regs:13:general_regs|reg|storage\(3) & ( 
-- !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[3]~3_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000000111100110000000010100010000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datab => \regs:10:general_regs|reg|ALT_INV_storage\(3),
	datac => \ALT_INV_re_all[10]~3_combout\,
	datad => \regs:8:general_regs|buff|ALT_INV_output[3]~3_combout\,
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(3),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[3]~30_combout\);

-- Location: FF_X88_Y16_N8
\regs:7:general_regs|reg|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(3));

-- Location: LABCELL_X88_Y16_N6
\regs:7:general_regs|buff|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[3]~3_combout\ = ( !\regs:7:general_regs|reg|storage\(3) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (!\addr[3]~input_o\ & (\addr[2]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(3),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[3]~3_combout\);

-- Location: LABCELL_X83_Y12_N42
\regs:1:general_regs|reg|storage[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:1:general_regs|reg|storage[3]~feeder_combout\ = ( \data[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[3]~input_o\,
	combout => \regs:1:general_regs|reg|storage[3]~feeder_combout\);

-- Location: FF_X83_Y12_N43
\regs:1:general_regs|reg|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:1:general_regs|reg|storage[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(3));

-- Location: LABCELL_X83_Y12_N9
\regs:0:general_regs|reg|storage[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|reg|storage[3]~feeder_combout\ = ( \data[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[3]~input_o\,
	combout => \regs:0:general_regs|reg|storage[3]~feeder_combout\);

-- Location: FF_X83_Y12_N11
\regs:0:general_regs|reg|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:0:general_regs|reg|storage[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(3));

-- Location: FF_X83_Y12_N56
\regs:3:general_regs|reg|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(3));

-- Location: LABCELL_X83_Y12_N54
\regs:0:general_regs|buff|output[3]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[3]~28_combout\ = ( \regs:3:general_regs|reg|storage\(3) & ( \re_all[3]~2_combout\ & ( (!\regs:1:general_regs|reg|storage\(3) & (!\re_all[1]~1_combout\ & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(3))))) 
-- # (\regs:1:general_regs|reg|storage\(3) & ((!\re_all[0]~0_combout\) # ((\regs:0:general_regs|reg|storage\(3))))) ) ) ) # ( \regs:3:general_regs|reg|storage\(3) & ( !\re_all[3]~2_combout\ & ( (!\regs:1:general_regs|reg|storage\(3) & (!\re_all[1]~1_combout\ 
-- & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(3))))) # (\regs:1:general_regs|reg|storage\(3) & ((!\re_all[0]~0_combout\) # ((\regs:0:general_regs|reg|storage\(3))))) ) ) ) # ( !\regs:3:general_regs|reg|storage\(3) & ( 
-- !\re_all[3]~2_combout\ & ( (!\regs:1:general_regs|reg|storage\(3) & (!\re_all[1]~1_combout\ & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(3))))) # (\regs:1:general_regs|reg|storage\(3) & ((!\re_all[0]~0_combout\) # 
-- ((\regs:0:general_regs|reg|storage\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011110101110001001111010100000000000000001100010011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:1:general_regs|reg|ALT_INV_storage\(3),
	datab => \ALT_INV_re_all[0]~0_combout\,
	datac => \ALT_INV_re_all[1]~1_combout\,
	datad => \regs:0:general_regs|reg|ALT_INV_storage\(3),
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(3),
	dataf => \ALT_INV_re_all[3]~2_combout\,
	combout => \regs:0:general_regs|buff|output[3]~28_combout\);

-- Location: FF_X85_Y15_N11
\regs:15:general_regs|reg|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(3));

-- Location: LABCELL_X85_Y15_N9
\regs:0:general_regs|buff|output[3]~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[3]~89_combout\ = ( \regs:15:general_regs|reg|storage\(3) & ( \addr[2]~input_o\ & ( (!\addr[0]~input_o\ & (\read_enabled~input_o\ & ((\addr[3]~input_o\) # (\addr[1]~input_o\)))) ) ) ) # ( 
-- !\regs:15:general_regs|reg|storage\(3) & ( \addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[1]~input_o\ & (!\addr[0]~input_o\ & \addr[3]~input_o\)) # (\addr[1]~input_o\ & ((!\addr[0]~input_o\) # (\addr[3]~input_o\))))) ) ) ) # ( 
-- \regs:15:general_regs|reg|storage\(3) & ( !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[0]~input_o\ & (\addr[1]~input_o\ & !\addr[3]~input_o\)) # (\addr[0]~input_o\ & ((\addr[3]~input_o\))))) ) ) ) # ( !\regs:15:general_regs|reg|storage\(3) & 
-- ( !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[0]~input_o\ & (\addr[1]~input_o\ & !\addr[3]~input_o\)) # (\addr[0]~input_o\ & ((\addr[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000011000001000000001100000100000011010000010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_read_enabled~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(3),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:0:general_regs|buff|output[3]~89_combout\);

-- Location: FF_X88_Y16_N4
\regs:9:general_regs|reg|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(3));

-- Location: FF_X83_Y17_N32
\regs:11:general_regs|reg|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(3));

-- Location: LABCELL_X83_Y17_N30
\regs:0:general_regs|buff|output[3]~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[3]~90_combout\ = ( \addr[1]~input_o\ & ( (!\addr[2]~input_o\ & \regs:11:general_regs|reg|storage\(3)) ) ) # ( !\addr[1]~input_o\ & ( \regs:9:general_regs|reg|storage\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datac => \regs:9:general_regs|reg|ALT_INV_storage\(3),
	datad => \regs:11:general_regs|reg|ALT_INV_storage\(3),
	dataf => \ALT_INV_addr[1]~input_o\,
	combout => \regs:0:general_regs|buff|output[3]~90_combout\);

-- Location: FF_X83_Y17_N38
\regs:12:general_regs|reg|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(3));

-- Location: MLABCELL_X82_Y17_N3
\regs:6:general_regs|reg|storage[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:6:general_regs|reg|storage[3]~feeder_combout\ = ( \data[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[3]~input_o\,
	combout => \regs:6:general_regs|reg|storage[3]~feeder_combout\);

-- Location: FF_X82_Y17_N4
\regs:6:general_regs|reg|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:6:general_regs|reg|storage[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(3));

-- Location: LABCELL_X83_Y17_N36
\regs:0:general_regs|buff|output[3]~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[3]~91_combout\ = ( \regs:12:general_regs|reg|storage\(3) & ( \regs:6:general_regs|reg|storage\(3) ) ) # ( !\regs:12:general_regs|reg|storage\(3) & ( \regs:6:general_regs|reg|storage\(3) & ( !\addr[3]~input_o\ ) ) ) # ( 
-- \regs:12:general_regs|reg|storage\(3) & ( !\regs:6:general_regs|reg|storage\(3) & ( \addr[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_addr[3]~input_o\,
	datae => \regs:12:general_regs|reg|ALT_INV_storage\(3),
	dataf => \regs:6:general_regs|reg|ALT_INV_storage\(3),
	combout => \regs:0:general_regs|buff|output[3]~91_combout\);

-- Location: FF_X83_Y17_N56
\regs:2:general_regs|reg|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(3));

-- Location: LABCELL_X83_Y17_N54
\regs:0:general_regs|buff|output[3]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[3]~29_combout\ = ( \regs:2:general_regs|reg|storage\(3) & ( \addr[2]~input_o\ & ( (\regs:0:general_regs|buff|output[3]~89_combout\ & ((!\addr[0]~input_o\ & ((!\regs:0:general_regs|buff|output[3]~91_combout\))) # 
-- (\addr[0]~input_o\ & (!\regs:0:general_regs|buff|output[3]~90_combout\)))) ) ) ) # ( !\regs:2:general_regs|reg|storage\(3) & ( \addr[2]~input_o\ & ( (\regs:0:general_regs|buff|output[3]~89_combout\ & ((!\addr[0]~input_o\ & 
-- ((!\regs:0:general_regs|buff|output[3]~91_combout\))) # (\addr[0]~input_o\ & (!\regs:0:general_regs|buff|output[3]~90_combout\)))) ) ) ) # ( \regs:2:general_regs|reg|storage\(3) & ( !\addr[2]~input_o\ & ( (\regs:0:general_regs|buff|output[3]~89_combout\ & 
-- (!\regs:0:general_regs|buff|output[3]~90_combout\ & \addr[0]~input_o\)) ) ) ) # ( !\regs:2:general_regs|reg|storage\(3) & ( !\addr[2]~input_o\ & ( (\regs:0:general_regs|buff|output[3]~89_combout\ & ((!\regs:0:general_regs|buff|output[3]~90_combout\) # 
-- (!\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100000000000100010001010000010001000101000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[3]~89_combout\,
	datab => \regs:0:general_regs|buff|ALT_INV_output[3]~90_combout\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[3]~91_combout\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(3),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:0:general_regs|buff|output[3]~29_combout\);

-- Location: FF_X85_Y15_N2
\regs:5:general_regs|reg|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(3));

-- Location: LABCELL_X85_Y15_N0
\regs:5:general_regs|buff|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[3]~3_combout\ = ( !\regs:5:general_regs|reg|storage\(3) & ( \read_enabled~input_o\ & ( (!\addr[3]~input_o\ & (\addr[2]~input_o\ & (!\addr[1]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(3),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[3]~3_combout\);

-- Location: FF_X85_Y15_N26
\regs:4:general_regs|reg|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(3));

-- Location: LABCELL_X85_Y15_N24
\regs:4:general_regs|buff|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[3]~3_combout\ = ( !\regs:4:general_regs|reg|storage\(3) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[2]~input_o\ & (!\addr[3]~input_o\ & !\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(3),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[3]~3_combout\);

-- Location: LABCELL_X85_Y15_N12
\regs:0:general_regs|buff|output[3]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[3]~31_combout\ = ( !\regs:5:general_regs|buff|output[3]~3_combout\ & ( !\regs:4:general_regs|buff|output[3]~3_combout\ & ( (\regs:0:general_regs|buff|output[3]~30_combout\ & (!\regs:7:general_regs|buff|output[3]~3_combout\ 
-- & (\regs:0:general_regs|buff|output[3]~28_combout\ & !\regs:0:general_regs|buff|output[3]~29_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[3]~30_combout\,
	datab => \regs:7:general_regs|buff|ALT_INV_output[3]~3_combout\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[3]~28_combout\,
	datad => \regs:0:general_regs|buff|ALT_INV_output[3]~29_combout\,
	datae => \regs:5:general_regs|buff|ALT_INV_output[3]~3_combout\,
	dataf => \regs:4:general_regs|buff|ALT_INV_output[3]~3_combout\,
	combout => \regs:0:general_regs|buff|output[3]~31_combout\);

-- Location: IOIBUF_X89_Y8_N38
\data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(4),
	o => \data[4]~input_o\);

-- Location: FF_X85_Y15_N29
\regs:4:general_regs|reg|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(4));

-- Location: LABCELL_X85_Y15_N27
\regs:4:general_regs|buff|output[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[4]~4_combout\ = ( !\regs:4:general_regs|reg|storage\(4) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[2]~input_o\ & (!\addr[0]~input_o\ & !\addr[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(4),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[4]~4_combout\);

-- Location: FF_X88_Y16_N35
\regs:7:general_regs|reg|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(4));

-- Location: LABCELL_X88_Y16_N33
\regs:7:general_regs|buff|output[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[4]~4_combout\ = ( !\regs:7:general_regs|reg|storage\(4) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (\addr[0]~input_o\ & (!\addr[3]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(4),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[4]~4_combout\);

-- Location: FF_X87_Y14_N10
\regs:1:general_regs|reg|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(4));

-- Location: FF_X87_Y14_N14
\regs:3:general_regs|reg|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(4));

-- Location: FF_X87_Y14_N35
\regs:0:general_regs|reg|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(4));

-- Location: MLABCELL_X87_Y14_N12
\regs:0:general_regs|buff|output[4]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[4]~32_combout\ = ( \regs:3:general_regs|reg|storage\(4) & ( \regs:0:general_regs|reg|storage\(4) & ( (!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(4)) ) ) ) # ( !\regs:3:general_regs|reg|storage\(4) & ( 
-- \regs:0:general_regs|reg|storage\(4) & ( (!\re_all[3]~2_combout\ & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(4)))) ) ) ) # ( \regs:3:general_regs|reg|storage\(4) & ( !\regs:0:general_regs|reg|storage\(4) & ( (!\re_all[0]~0_combout\ & 
-- ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(4)))) ) ) ) # ( !\regs:3:general_regs|reg|storage\(4) & ( !\regs:0:general_regs|reg|storage\(4) & ( (!\re_all[3]~2_combout\ & (!\re_all[0]~0_combout\ & ((!\re_all[1]~1_combout\) # 
-- (\regs:1:general_regs|reg|storage\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000110000001111000010001000101010101100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[3]~2_combout\,
	datab => \ALT_INV_re_all[1]~1_combout\,
	datac => \ALT_INV_re_all[0]~0_combout\,
	datad => \regs:1:general_regs|reg|ALT_INV_storage\(4),
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(4),
	dataf => \regs:0:general_regs|reg|ALT_INV_storage\(4),
	combout => \regs:0:general_regs|buff|output[4]~32_combout\);

-- Location: FF_X84_Y15_N32
\regs:8:general_regs|reg|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(4));

-- Location: MLABCELL_X84_Y15_N30
\regs:8:general_regs|buff|output[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[4]~4_combout\ = ( !\regs:8:general_regs|reg|storage\(4) & ( \read_enabled~input_o\ & ( (\addr[3]~input_o\ & (!\addr[1]~input_o\ & (!\addr[2]~input_o\ & !\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(4),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:8:general_regs|buff|output[4]~4_combout\);

-- Location: MLABCELL_X84_Y15_N36
\regs:10:general_regs|reg|storage[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:10:general_regs|reg|storage[4]~feeder_combout\ = \data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[4]~input_o\,
	combout => \regs:10:general_regs|reg|storage[4]~feeder_combout\);

-- Location: FF_X84_Y15_N38
\regs:10:general_regs|reg|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:10:general_regs|reg|storage[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(4));

-- Location: FF_X84_Y15_N8
\regs:13:general_regs|reg|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(4));

-- Location: MLABCELL_X84_Y15_N6
\regs:0:general_regs|buff|output[4]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[4]~34_combout\ = ( \regs:13:general_regs|reg|storage\(4) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[4]~4_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(4)))) ) ) ) # ( 
-- !\regs:13:general_regs|reg|storage\(4) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[4]~4_combout\ & (!\addr_decoder|Mux1~0_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(4))))) ) ) ) # ( 
-- \regs:13:general_regs|reg|storage\(4) & ( !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[4]~4_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(4)))) ) ) ) # ( !\regs:13:general_regs|reg|storage\(4) & ( 
-- !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[4]~4_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010101010100000101010001000000010001010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:8:general_regs|buff|ALT_INV_output[4]~4_combout\,
	datab => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datac => \regs:10:general_regs|reg|ALT_INV_storage\(4),
	datad => \ALT_INV_re_all[10]~3_combout\,
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(4),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[4]~34_combout\);

-- Location: FF_X85_Y15_N5
\regs:5:general_regs|reg|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(4));

-- Location: LABCELL_X85_Y15_N3
\regs:5:general_regs|buff|output[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[4]~4_combout\ = ( !\regs:5:general_regs|reg|storage\(4) & ( \read_enabled~input_o\ & ( (!\addr[3]~input_o\ & (\addr[2]~input_o\ & (\addr[0]~input_o\ & !\addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(4),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[4]~4_combout\);

-- Location: FF_X88_Y16_N37
\regs:9:general_regs|reg|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(4));

-- Location: FF_X83_Y17_N35
\regs:11:general_regs|reg|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(4));

-- Location: LABCELL_X83_Y17_N33
\regs:0:general_regs|buff|output[4]~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[4]~93_combout\ = (!\addr[1]~input_o\ & (((\regs:9:general_regs|reg|storage\(4))))) # (\addr[1]~input_o\ & (!\addr[2]~input_o\ & ((\regs:11:general_regs|reg|storage\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000001100001011100000110000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	datac => \regs:9:general_regs|reg|ALT_INV_storage\(4),
	datad => \regs:11:general_regs|reg|ALT_INV_storage\(4),
	combout => \regs:0:general_regs|buff|output[4]~93_combout\);

-- Location: FF_X85_Y15_N8
\regs:15:general_regs|reg|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(4));

-- Location: LABCELL_X85_Y15_N6
\regs:0:general_regs|buff|output[4]~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[4]~92_combout\ = ( \regs:15:general_regs|reg|storage\(4) & ( \addr[2]~input_o\ & ( (!\addr[0]~input_o\ & (\read_enabled~input_o\ & ((\addr[3]~input_o\) # (\addr[1]~input_o\)))) ) ) ) # ( 
-- !\regs:15:general_regs|reg|storage\(4) & ( \addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[1]~input_o\ & (!\addr[0]~input_o\ & \addr[3]~input_o\)) # (\addr[1]~input_o\ & ((!\addr[0]~input_o\) # (\addr[3]~input_o\))))) ) ) ) # ( 
-- \regs:15:general_regs|reg|storage\(4) & ( !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[0]~input_o\ & (\addr[1]~input_o\ & !\addr[3]~input_o\)) # (\addr[0]~input_o\ & ((\addr[3]~input_o\))))) ) ) ) # ( !\regs:15:general_regs|reg|storage\(4) & 
-- ( !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[0]~input_o\ & (\addr[1]~input_o\ & !\addr[3]~input_o\)) # (\addr[0]~input_o\ & ((\addr[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000011000000000100001100000000010011010000000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_read_enabled~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(4),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:0:general_regs|buff|output[4]~92_combout\);

-- Location: FF_X83_Y15_N38
\regs:6:general_regs|reg|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(4));

-- Location: FF_X83_Y15_N20
\regs:12:general_regs|reg|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(4));

-- Location: LABCELL_X83_Y15_N18
\regs:0:general_regs|buff|output[4]~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[4]~94_combout\ = (!\addr[3]~input_o\ & (\regs:6:general_regs|reg|storage\(4))) # (\addr[3]~input_o\ & ((\regs:12:general_regs|reg|storage\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datac => \regs:6:general_regs|reg|ALT_INV_storage\(4),
	datad => \regs:12:general_regs|reg|ALT_INV_storage\(4),
	combout => \regs:0:general_regs|buff|output[4]~94_combout\);

-- Location: FF_X83_Y15_N44
\regs:2:general_regs|reg|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(4));

-- Location: LABCELL_X83_Y15_N42
\regs:0:general_regs|buff|output[4]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[4]~33_combout\ = ( \regs:2:general_regs|reg|storage\(4) & ( \addr[0]~input_o\ & ( (!\regs:0:general_regs|buff|output[4]~93_combout\ & \regs:0:general_regs|buff|output[4]~92_combout\) ) ) ) # ( 
-- !\regs:2:general_regs|reg|storage\(4) & ( \addr[0]~input_o\ & ( (!\regs:0:general_regs|buff|output[4]~93_combout\ & \regs:0:general_regs|buff|output[4]~92_combout\) ) ) ) # ( \regs:2:general_regs|reg|storage\(4) & ( !\addr[0]~input_o\ & ( 
-- (\regs:0:general_regs|buff|output[4]~92_combout\ & (\addr[2]~input_o\ & !\regs:0:general_regs|buff|output[4]~94_combout\)) ) ) ) # ( !\regs:2:general_regs|reg|storage\(4) & ( !\addr[0]~input_o\ & ( (\regs:0:general_regs|buff|output[4]~92_combout\ & 
-- ((!\addr[2]~input_o\) # (!\regs:0:general_regs|buff|output[4]~94_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000000000110000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[4]~93_combout\,
	datab => \regs:0:general_regs|buff|ALT_INV_output[4]~92_combout\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \regs:0:general_regs|buff|ALT_INV_output[4]~94_combout\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(4),
	dataf => \ALT_INV_addr[0]~input_o\,
	combout => \regs:0:general_regs|buff|output[4]~33_combout\);

-- Location: LABCELL_X83_Y15_N36
\regs:0:general_regs|buff|output[4]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[4]~35_combout\ = ( !\regs:5:general_regs|buff|output[4]~4_combout\ & ( !\regs:0:general_regs|buff|output[4]~33_combout\ & ( (!\regs:4:general_regs|buff|output[4]~4_combout\ & 
-- (!\regs:7:general_regs|buff|output[4]~4_combout\ & (\regs:0:general_regs|buff|output[4]~32_combout\ & \regs:0:general_regs|buff|output[4]~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:4:general_regs|buff|ALT_INV_output[4]~4_combout\,
	datab => \regs:7:general_regs|buff|ALT_INV_output[4]~4_combout\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[4]~32_combout\,
	datad => \regs:0:general_regs|buff|ALT_INV_output[4]~34_combout\,
	datae => \regs:5:general_regs|buff|ALT_INV_output[4]~4_combout\,
	dataf => \regs:0:general_regs|buff|ALT_INV_output[4]~33_combout\,
	combout => \regs:0:general_regs|buff|output[4]~35_combout\);

-- Location: IOIBUF_X89_Y23_N38
\data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(5),
	o => \data[5]~input_o\);

-- Location: MLABCELL_X87_Y17_N15
\regs:9:general_regs|reg|storage[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:9:general_regs|reg|storage[5]~feeder_combout\ = ( \data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[5]~input_o\,
	combout => \regs:9:general_regs|reg|storage[5]~feeder_combout\);

-- Location: FF_X87_Y17_N17
\regs:9:general_regs|reg|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:9:general_regs|reg|storage[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(5));

-- Location: FF_X87_Y17_N50
\regs:11:general_regs|reg|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(5));

-- Location: MLABCELL_X87_Y17_N48
\regs:0:general_regs|buff|output[5]~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[5]~96_combout\ = ( \regs:11:general_regs|reg|storage\(5) & ( \addr[2]~input_o\ & ( (\regs:9:general_regs|reg|storage\(5) & !\addr[1]~input_o\) ) ) ) # ( !\regs:11:general_regs|reg|storage\(5) & ( \addr[2]~input_o\ & ( 
-- (\regs:9:general_regs|reg|storage\(5) & !\addr[1]~input_o\) ) ) ) # ( \regs:11:general_regs|reg|storage\(5) & ( !\addr[2]~input_o\ & ( (\addr[1]~input_o\) # (\regs:9:general_regs|reg|storage\(5)) ) ) ) # ( !\regs:11:general_regs|reg|storage\(5) & ( 
-- !\addr[2]~input_o\ & ( (\regs:9:general_regs|reg|storage\(5) & !\addr[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \regs:9:general_regs|reg|ALT_INV_storage\(5),
	datac => \ALT_INV_addr[1]~input_o\,
	datae => \regs:11:general_regs|reg|ALT_INV_storage\(5),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:0:general_regs|buff|output[5]~96_combout\);

-- Location: FF_X85_Y15_N47
\regs:15:general_regs|reg|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(5));

-- Location: LABCELL_X85_Y15_N45
\regs:0:general_regs|buff|output[5]~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[5]~95_combout\ = ( \regs:15:general_regs|reg|storage\(5) & ( \addr[2]~input_o\ & ( (!\addr[0]~input_o\ & (\read_enabled~input_o\ & ((\addr[3]~input_o\) # (\addr[1]~input_o\)))) ) ) ) # ( 
-- !\regs:15:general_regs|reg|storage\(5) & ( \addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[1]~input_o\ & (!\addr[0]~input_o\ & \addr[3]~input_o\)) # (\addr[1]~input_o\ & ((!\addr[0]~input_o\) # (\addr[3]~input_o\))))) ) ) ) # ( 
-- \regs:15:general_regs|reg|storage\(5) & ( !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[0]~input_o\ & (\addr[1]~input_o\ & !\addr[3]~input_o\)) # (\addr[0]~input_o\ & ((\addr[3]~input_o\))))) ) ) ) # ( !\regs:15:general_regs|reg|storage\(5) & 
-- ( !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[0]~input_o\ & (\addr[1]~input_o\ & !\addr[3]~input_o\)) # (\addr[0]~input_o\ & ((\addr[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000011000001000000001100000100000011010000010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_read_enabled~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(5),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:0:general_regs|buff|output[5]~95_combout\);

-- Location: FF_X87_Y13_N23
\regs:12:general_regs|reg|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(5));

-- Location: MLABCELL_X87_Y13_N15
\regs:6:general_regs|reg|storage[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:6:general_regs|reg|storage[5]~feeder_combout\ = ( \data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[5]~input_o\,
	combout => \regs:6:general_regs|reg|storage[5]~feeder_combout\);

-- Location: FF_X87_Y13_N17
\regs:6:general_regs|reg|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:6:general_regs|reg|storage[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(5));

-- Location: MLABCELL_X87_Y13_N21
\regs:0:general_regs|buff|output[5]~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[5]~97_combout\ = ( \regs:12:general_regs|reg|storage\(5) & ( \regs:6:general_regs|reg|storage\(5) ) ) # ( !\regs:12:general_regs|reg|storage\(5) & ( \regs:6:general_regs|reg|storage\(5) & ( !\addr[3]~input_o\ ) ) ) # ( 
-- \regs:12:general_regs|reg|storage\(5) & ( !\regs:6:general_regs|reg|storage\(5) & ( \addr[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datae => \regs:12:general_regs|reg|ALT_INV_storage\(5),
	dataf => \regs:6:general_regs|reg|ALT_INV_storage\(5),
	combout => \regs:0:general_regs|buff|output[5]~97_combout\);

-- Location: FF_X87_Y15_N8
\regs:2:general_regs|reg|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(5));

-- Location: MLABCELL_X87_Y15_N6
\regs:0:general_regs|buff|output[5]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[5]~37_combout\ = ( \regs:2:general_regs|reg|storage\(5) & ( \addr[2]~input_o\ & ( (\regs:0:general_regs|buff|output[5]~95_combout\ & ((!\addr[0]~input_o\ & ((!\regs:0:general_regs|buff|output[5]~97_combout\))) # 
-- (\addr[0]~input_o\ & (!\regs:0:general_regs|buff|output[5]~96_combout\)))) ) ) ) # ( !\regs:2:general_regs|reg|storage\(5) & ( \addr[2]~input_o\ & ( (\regs:0:general_regs|buff|output[5]~95_combout\ & ((!\addr[0]~input_o\ & 
-- ((!\regs:0:general_regs|buff|output[5]~97_combout\))) # (\addr[0]~input_o\ & (!\regs:0:general_regs|buff|output[5]~96_combout\)))) ) ) ) # ( \regs:2:general_regs|reg|storage\(5) & ( !\addr[2]~input_o\ & ( (!\regs:0:general_regs|buff|output[5]~96_combout\ 
-- & (\regs:0:general_regs|buff|output[5]~95_combout\ & \addr[0]~input_o\)) ) ) ) # ( !\regs:2:general_regs|reg|storage\(5) & ( !\addr[2]~input_o\ & ( (\regs:0:general_regs|buff|output[5]~95_combout\ & ((!\regs:0:general_regs|buff|output[5]~96_combout\) # 
-- (!\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010000000000010001000110000001000100011000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[5]~96_combout\,
	datab => \regs:0:general_regs|buff|ALT_INV_output[5]~95_combout\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[5]~97_combout\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(5),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:0:general_regs|buff|output[5]~37_combout\);

-- Location: FF_X85_Y14_N38
\regs:8:general_regs|reg|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(5));

-- Location: LABCELL_X85_Y14_N36
\regs:8:general_regs|buff|output[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[5]~5_combout\ = ( !\regs:8:general_regs|reg|storage\(5) & ( \read_enabled~input_o\ & ( (\addr[3]~input_o\ & (!\addr[2]~input_o\ & (!\addr[0]~input_o\ & !\addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(5),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:8:general_regs|buff|output[5]~5_combout\);

-- Location: MLABCELL_X84_Y12_N0
\regs:10:general_regs|reg|storage[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:10:general_regs|reg|storage[5]~feeder_combout\ = ( \data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[5]~input_o\,
	combout => \regs:10:general_regs|reg|storage[5]~feeder_combout\);

-- Location: FF_X84_Y12_N1
\regs:10:general_regs|reg|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:10:general_regs|reg|storage[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(5));

-- Location: FF_X85_Y14_N14
\regs:13:general_regs|reg|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(5));

-- Location: LABCELL_X85_Y14_N12
\regs:0:general_regs|buff|output[5]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[5]~38_combout\ = ( \regs:13:general_regs|reg|storage\(5) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[5]~5_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(5)))) ) ) ) # ( 
-- !\regs:13:general_regs|reg|storage\(5) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[5]~5_combout\ & (!\addr_decoder|Mux1~0_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(5))))) ) ) ) # ( 
-- \regs:13:general_regs|reg|storage\(5) & ( !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[5]~5_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(5)))) ) ) ) # ( !\regs:13:general_regs|reg|storage\(5) & ( 
-- !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[5]~5_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010101000101010001010100010000000001010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:8:general_regs|buff|ALT_INV_output[5]~5_combout\,
	datab => \regs:10:general_regs|reg|ALT_INV_storage\(5),
	datac => \ALT_INV_re_all[10]~3_combout\,
	datad => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(5),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[5]~38_combout\);

-- Location: FF_X85_Y15_N35
\regs:4:general_regs|reg|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(5));

-- Location: LABCELL_X85_Y15_N33
\regs:4:general_regs|buff|output[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[5]~5_combout\ = ( !\regs:4:general_regs|reg|storage\(5) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[2]~input_o\ & (!\addr[0]~input_o\ & !\addr[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(5),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[5]~5_combout\);

-- Location: FF_X85_Y15_N41
\regs:5:general_regs|reg|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(5));

-- Location: LABCELL_X85_Y15_N39
\regs:5:general_regs|buff|output[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[5]~5_combout\ = ( !\regs:5:general_regs|reg|storage\(5) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[0]~input_o\ & (\addr[2]~input_o\ & !\addr[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(5),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[5]~5_combout\);

-- Location: MLABCELL_X84_Y12_N24
\regs:1:general_regs|reg|storage[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:1:general_regs|reg|storage[5]~feeder_combout\ = ( \data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[5]~input_o\,
	combout => \regs:1:general_regs|reg|storage[5]~feeder_combout\);

-- Location: FF_X84_Y12_N26
\regs:1:general_regs|reg|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:1:general_regs|reg|storage[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(5));

-- Location: FF_X83_Y12_N32
\regs:3:general_regs|reg|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(5));

-- Location: MLABCELL_X84_Y12_N18
\regs:0:general_regs|reg|storage[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|reg|storage[5]~feeder_combout\ = ( \data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[5]~input_o\,
	combout => \regs:0:general_regs|reg|storage[5]~feeder_combout\);

-- Location: FF_X84_Y12_N19
\regs:0:general_regs|reg|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:0:general_regs|reg|storage[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(5));

-- Location: LABCELL_X83_Y12_N30
\regs:0:general_regs|buff|output[5]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[5]~36_combout\ = ( \regs:3:general_regs|reg|storage\(5) & ( \regs:0:general_regs|reg|storage\(5) & ( (!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(5)) ) ) ) # ( !\regs:3:general_regs|reg|storage\(5) & ( 
-- \regs:0:general_regs|reg|storage\(5) & ( (!\re_all[3]~2_combout\ & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(5)))) ) ) ) # ( \regs:3:general_regs|reg|storage\(5) & ( !\regs:0:general_regs|reg|storage\(5) & ( (!\re_all[0]~0_combout\ & 
-- ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(5)))) ) ) ) # ( !\regs:3:general_regs|reg|storage\(5) & ( !\regs:0:general_regs|reg|storage\(5) & ( (!\re_all[3]~2_combout\ & (!\re_all[0]~0_combout\ & ((!\re_all[1]~1_combout\) # 
-- (\regs:1:general_regs|reg|storage\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000110000001100110010100000101010101111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[3]~2_combout\,
	datab => \ALT_INV_re_all[0]~0_combout\,
	datac => \ALT_INV_re_all[1]~1_combout\,
	datad => \regs:1:general_regs|reg|ALT_INV_storage\(5),
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(5),
	dataf => \regs:0:general_regs|reg|ALT_INV_storage\(5),
	combout => \regs:0:general_regs|buff|output[5]~36_combout\);

-- Location: FF_X88_Y16_N44
\regs:7:general_regs|reg|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[5]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(5));

-- Location: LABCELL_X88_Y16_N42
\regs:7:general_regs|buff|output[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[5]~5_combout\ = ( !\regs:7:general_regs|reg|storage\(5) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (!\addr[3]~input_o\ & (\addr[2]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(5),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[5]~5_combout\);

-- Location: LABCELL_X85_Y15_N18
\regs:0:general_regs|buff|output[5]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[5]~39_combout\ = ( \regs:0:general_regs|buff|output[5]~36_combout\ & ( !\regs:7:general_regs|buff|output[5]~5_combout\ & ( (!\regs:0:general_regs|buff|output[5]~37_combout\ & 
-- (\regs:0:general_regs|buff|output[5]~38_combout\ & (!\regs:4:general_regs|buff|output[5]~5_combout\ & !\regs:5:general_regs|buff|output[5]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[5]~37_combout\,
	datab => \regs:0:general_regs|buff|ALT_INV_output[5]~38_combout\,
	datac => \regs:4:general_regs|buff|ALT_INV_output[5]~5_combout\,
	datad => \regs:5:general_regs|buff|ALT_INV_output[5]~5_combout\,
	datae => \regs:0:general_regs|buff|ALT_INV_output[5]~36_combout\,
	dataf => \regs:7:general_regs|buff|ALT_INV_output[5]~5_combout\,
	combout => \regs:0:general_regs|buff|output[5]~39_combout\);

-- Location: IOIBUF_X89_Y6_N55
\data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(6),
	o => \data[6]~input_o\);

-- Location: FF_X83_Y13_N53
\regs:10:general_regs|reg|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(6));

-- Location: FF_X85_Y14_N26
\regs:8:general_regs|reg|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(6));

-- Location: LABCELL_X85_Y14_N24
\regs:8:general_regs|buff|output[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[6]~6_combout\ = ( !\regs:8:general_regs|reg|storage\(6) & ( \read_enabled~input_o\ & ( (!\addr[0]~input_o\ & (!\addr[2]~input_o\ & (!\addr[1]~input_o\ & \addr[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(6),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:8:general_regs|buff|output[6]~6_combout\);

-- Location: FF_X83_Y13_N56
\regs:13:general_regs|reg|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(6));

-- Location: LABCELL_X83_Y13_N54
\regs:0:general_regs|buff|output[6]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[6]~42_combout\ = ( \regs:13:general_regs|reg|storage\(6) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[6]~6_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(6)))) ) ) ) # ( 
-- !\regs:13:general_regs|reg|storage\(6) & ( \read_enabled~input_o\ & ( (!\addr_decoder|Mux1~0_combout\ & (!\regs:8:general_regs|buff|output[6]~6_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(6))))) ) ) ) # ( 
-- \regs:13:general_regs|reg|storage\(6) & ( !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[6]~6_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(6)))) ) ) ) # ( !\regs:13:general_regs|reg|storage\(6) & ( 
-- !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[6]~6_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100000000101011110000000010001100000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[10]~3_combout\,
	datab => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datac => \regs:10:general_regs|reg|ALT_INV_storage\(6),
	datad => \regs:8:general_regs|buff|ALT_INV_output[6]~6_combout\,
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(6),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[6]~42_combout\);

-- Location: FF_X88_Y16_N53
\regs:7:general_regs|reg|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(6));

-- Location: LABCELL_X88_Y16_N51
\regs:7:general_regs|buff|output[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[6]~6_combout\ = ( !\regs:7:general_regs|reg|storage\(6) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (!\addr[3]~input_o\ & (\addr[0]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(6),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[6]~6_combout\);

-- Location: FF_X85_Y14_N50
\regs:5:general_regs|reg|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(6));

-- Location: LABCELL_X85_Y14_N48
\regs:5:general_regs|buff|output[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[6]~6_combout\ = ( !\regs:5:general_regs|reg|storage\(6) & ( \read_enabled~input_o\ & ( (!\addr[3]~input_o\ & (\addr[2]~input_o\ & (\addr[0]~input_o\ & !\addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(6),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[6]~6_combout\);

-- Location: FF_X83_Y14_N44
\regs:4:general_regs|reg|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(6));

-- Location: LABCELL_X83_Y14_N42
\regs:4:general_regs|buff|output[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[6]~6_combout\ = ( !\regs:4:general_regs|reg|storage\(6) & ( \read_enabled~input_o\ & ( (!\addr[0]~input_o\ & (!\addr[3]~input_o\ & (\addr[2]~input_o\ & !\addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(6),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[6]~6_combout\);

-- Location: FF_X83_Y16_N47
\regs:15:general_regs|reg|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(6));

-- Location: LABCELL_X83_Y16_N45
\regs:0:general_regs|buff|output[6]~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[6]~98_combout\ = ( \regs:15:general_regs|reg|storage\(6) & ( \addr[2]~input_o\ & ( (\read_enabled~input_o\ & (!\addr[0]~input_o\ & ((\addr[1]~input_o\) # (\addr[3]~input_o\)))) ) ) ) # ( 
-- !\regs:15:general_regs|reg|storage\(6) & ( \addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[3]~input_o\ & (!\addr[0]~input_o\ & \addr[1]~input_o\)) # (\addr[3]~input_o\ & ((!\addr[0]~input_o\) # (\addr[1]~input_o\))))) ) ) ) # ( 
-- \regs:15:general_regs|reg|storage\(6) & ( !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[3]~input_o\ & (!\addr[0]~input_o\ & \addr[1]~input_o\)) # (\addr[3]~input_o\ & (\addr[0]~input_o\)))) ) ) ) # ( !\regs:15:general_regs|reg|storage\(6) & ( 
-- !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[3]~input_o\ & (!\addr[0]~input_o\ & \addr[1]~input_o\)) # (\addr[3]~input_o\ & (\addr[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000001000000010100000100010000010100010001000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_enabled~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(6),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:0:general_regs|buff|output[6]~98_combout\);

-- Location: LABCELL_X88_Y16_N39
\regs:9:general_regs|reg|storage[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:9:general_regs|reg|storage[6]~feeder_combout\ = ( \data[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[6]~input_o\,
	combout => \regs:9:general_regs|reg|storage[6]~feeder_combout\);

-- Location: FF_X88_Y16_N40
\regs:9:general_regs|reg|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:9:general_regs|reg|storage[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(6));

-- Location: FF_X83_Y17_N14
\regs:11:general_regs|reg|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(6));

-- Location: LABCELL_X83_Y17_N12
\regs:0:general_regs|buff|output[6]~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[6]~99_combout\ = ( \addr[1]~input_o\ & ( (!\addr[2]~input_o\ & \regs:11:general_regs|reg|storage\(6)) ) ) # ( !\addr[1]~input_o\ & ( \regs:9:general_regs|reg|storage\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \regs:9:general_regs|reg|ALT_INV_storage\(6),
	datad => \regs:11:general_regs|reg|ALT_INV_storage\(6),
	dataf => \ALT_INV_addr[1]~input_o\,
	combout => \regs:0:general_regs|buff|output[6]~99_combout\);

-- Location: FF_X83_Y17_N44
\regs:2:general_regs|reg|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(6));

-- Location: FF_X85_Y16_N40
\regs:6:general_regs|reg|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(6));

-- Location: FF_X83_Y17_N20
\regs:12:general_regs|reg|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(6));

-- Location: LABCELL_X83_Y17_N18
\regs:0:general_regs|buff|output[6]~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[6]~100_combout\ = (!\addr[3]~input_o\ & (\regs:6:general_regs|reg|storage\(6))) # (\addr[3]~input_o\ & ((\regs:12:general_regs|reg|storage\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \regs:6:general_regs|reg|ALT_INV_storage\(6),
	datad => \regs:12:general_regs|reg|ALT_INV_storage\(6),
	combout => \regs:0:general_regs|buff|output[6]~100_combout\);

-- Location: LABCELL_X83_Y17_N42
\regs:0:general_regs|buff|output[6]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[6]~41_combout\ = ( \regs:2:general_regs|reg|storage\(6) & ( \regs:0:general_regs|buff|output[6]~100_combout\ & ( (\regs:0:general_regs|buff|output[6]~98_combout\ & (!\regs:0:general_regs|buff|output[6]~99_combout\ & 
-- \addr[0]~input_o\)) ) ) ) # ( !\regs:2:general_regs|reg|storage\(6) & ( \regs:0:general_regs|buff|output[6]~100_combout\ & ( (\regs:0:general_regs|buff|output[6]~98_combout\ & ((!\addr[0]~input_o\ & ((!\addr[2]~input_o\))) # (\addr[0]~input_o\ & 
-- (!\regs:0:general_regs|buff|output[6]~99_combout\)))) ) ) ) # ( \regs:2:general_regs|reg|storage\(6) & ( !\regs:0:general_regs|buff|output[6]~100_combout\ & ( (\regs:0:general_regs|buff|output[6]~98_combout\ & ((!\addr[0]~input_o\ & ((\addr[2]~input_o\))) 
-- # (\addr[0]~input_o\ & (!\regs:0:general_regs|buff|output[6]~99_combout\)))) ) ) ) # ( !\regs:2:general_regs|reg|storage\(6) & ( !\regs:0:general_regs|buff|output[6]~100_combout\ & ( (\regs:0:general_regs|buff|output[6]~98_combout\ & 
-- ((!\regs:0:general_regs|buff|output[6]~99_combout\) # (!\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100000001010100010001010000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[6]~98_combout\,
	datab => \regs:0:general_regs|buff|ALT_INV_output[6]~99_combout\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(6),
	dataf => \regs:0:general_regs|buff|ALT_INV_output[6]~100_combout\,
	combout => \regs:0:general_regs|buff|output[6]~41_combout\);

-- Location: FF_X87_Y14_N8
\regs:1:general_regs|reg|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(6));

-- Location: FF_X87_Y14_N26
\regs:3:general_regs|reg|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(6));

-- Location: FF_X87_Y14_N20
\regs:0:general_regs|reg|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(6));

-- Location: MLABCELL_X87_Y14_N24
\regs:0:general_regs|buff|output[6]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[6]~40_combout\ = ( \regs:3:general_regs|reg|storage\(6) & ( \regs:0:general_regs|reg|storage\(6) & ( (!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(6)) ) ) ) # ( !\regs:3:general_regs|reg|storage\(6) & ( 
-- \regs:0:general_regs|reg|storage\(6) & ( (!\re_all[3]~2_combout\ & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(6)))) ) ) ) # ( \regs:3:general_regs|reg|storage\(6) & ( !\regs:0:general_regs|reg|storage\(6) & ( (!\re_all[0]~0_combout\ & 
-- ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(6)))) ) ) ) # ( !\regs:3:general_regs|reg|storage\(6) & ( !\regs:0:general_regs|reg|storage\(6) & ( (!\re_all[3]~2_combout\ & (!\re_all[0]~0_combout\ & ((!\re_all[1]~1_combout\) # 
-- (\regs:1:general_regs|reg|storage\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000110000001111000010001000101010101100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[3]~2_combout\,
	datab => \ALT_INV_re_all[1]~1_combout\,
	datac => \ALT_INV_re_all[0]~0_combout\,
	datad => \regs:1:general_regs|reg|ALT_INV_storage\(6),
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(6),
	dataf => \regs:0:general_regs|reg|ALT_INV_storage\(6),
	combout => \regs:0:general_regs|buff|output[6]~40_combout\);

-- Location: MLABCELL_X87_Y14_N3
\regs:0:general_regs|buff|output[6]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[6]~43_combout\ = ( !\regs:0:general_regs|buff|output[6]~41_combout\ & ( \regs:0:general_regs|buff|output[6]~40_combout\ & ( (\regs:0:general_regs|buff|output[6]~42_combout\ & 
-- (!\regs:7:general_regs|buff|output[6]~6_combout\ & (!\regs:5:general_regs|buff|output[6]~6_combout\ & !\regs:4:general_regs|buff|output[6]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[6]~42_combout\,
	datab => \regs:7:general_regs|buff|ALT_INV_output[6]~6_combout\,
	datac => \regs:5:general_regs|buff|ALT_INV_output[6]~6_combout\,
	datad => \regs:4:general_regs|buff|ALT_INV_output[6]~6_combout\,
	datae => \regs:0:general_regs|buff|ALT_INV_output[6]~41_combout\,
	dataf => \regs:0:general_regs|buff|ALT_INV_output[6]~40_combout\,
	combout => \regs:0:general_regs|buff|output[6]~43_combout\);

-- Location: IOIBUF_X89_Y4_N44
\data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(7),
	o => \data[7]~input_o\);

-- Location: FF_X85_Y14_N29
\regs:8:general_regs|reg|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(7));

-- Location: LABCELL_X85_Y14_N27
\regs:8:general_regs|buff|output[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[7]~7_combout\ = ( !\regs:8:general_regs|reg|storage\(7) & ( \read_enabled~input_o\ & ( (!\addr[0]~input_o\ & (!\addr[2]~input_o\ & (\addr[3]~input_o\ & !\addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(7),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:8:general_regs|buff|output[7]~7_combout\);

-- Location: FF_X84_Y15_N13
\regs:10:general_regs|reg|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(7));

-- Location: FF_X85_Y14_N2
\regs:13:general_regs|reg|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(7));

-- Location: LABCELL_X85_Y14_N0
\regs:0:general_regs|buff|output[7]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[7]~46_combout\ = ( \regs:13:general_regs|reg|storage\(7) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[7]~7_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(7)))) ) ) ) # ( 
-- !\regs:13:general_regs|reg|storage\(7) & ( \read_enabled~input_o\ & ( (!\addr_decoder|Mux1~0_combout\ & (!\regs:8:general_regs|buff|output[7]~7_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(7))))) ) ) ) # ( 
-- \regs:13:general_regs|reg|storage\(7) & ( !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[7]~7_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(7)))) ) ) ) # ( !\regs:13:general_regs|reg|storage\(7) & ( 
-- !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[7]~7_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000101000001111000010000000110000001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[10]~3_combout\,
	datab => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datac => \regs:8:general_regs|buff|ALT_INV_output[7]~7_combout\,
	datad => \regs:10:general_regs|reg|ALT_INV_storage\(7),
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(7),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[7]~46_combout\);

-- Location: FF_X85_Y14_N53
\regs:5:general_regs|reg|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(7));

-- Location: LABCELL_X85_Y14_N51
\regs:5:general_regs|buff|output[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[7]~7_combout\ = ( !\regs:5:general_regs|reg|storage\(7) & ( \read_enabled~input_o\ & ( (!\addr[3]~input_o\ & (\addr[2]~input_o\ & (!\addr[1]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(7),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[7]~7_combout\);

-- Location: FF_X87_Y14_N38
\regs:1:general_regs|reg|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(7));

-- Location: FF_X87_Y14_N2
\regs:0:general_regs|reg|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(7));

-- Location: FF_X87_Y14_N44
\regs:3:general_regs|reg|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(7));

-- Location: MLABCELL_X87_Y14_N42
\regs:0:general_regs|buff|output[7]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[7]~44_combout\ = ( \regs:3:general_regs|reg|storage\(7) & ( \re_all[3]~2_combout\ & ( (!\regs:1:general_regs|reg|storage\(7) & (!\re_all[1]~1_combout\ & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(7))))) 
-- # (\regs:1:general_regs|reg|storage\(7) & (((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(7))))) ) ) ) # ( \regs:3:general_regs|reg|storage\(7) & ( !\re_all[3]~2_combout\ & ( (!\regs:1:general_regs|reg|storage\(7) & (!\re_all[1]~1_combout\ 
-- & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(7))))) # (\regs:1:general_regs|reg|storage\(7) & (((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(7))))) ) ) ) # ( !\regs:3:general_regs|reg|storage\(7) & ( 
-- !\re_all[3]~2_combout\ & ( (!\regs:1:general_regs|reg|storage\(7) & (!\re_all[1]~1_combout\ & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(7))))) # (\regs:1:general_regs|reg|storage\(7) & (((!\re_all[0]~0_combout\) # 
-- (\regs:0:general_regs|reg|storage\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100001101110111010000110100000000000000001101110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:1:general_regs|reg|ALT_INV_storage\(7),
	datab => \ALT_INV_re_all[1]~1_combout\,
	datac => \regs:0:general_regs|reg|ALT_INV_storage\(7),
	datad => \ALT_INV_re_all[0]~0_combout\,
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(7),
	dataf => \ALT_INV_re_all[3]~2_combout\,
	combout => \regs:0:general_regs|buff|output[7]~44_combout\);

-- Location: FF_X84_Y16_N56
\regs:4:general_regs|reg|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(7));

-- Location: MLABCELL_X84_Y16_N54
\regs:4:general_regs|buff|output[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[7]~7_combout\ = ( !\regs:4:general_regs|reg|storage\(7) & ( \read_enabled~input_o\ & ( (\addr[2]~input_o\ & (!\addr[3]~input_o\ & (!\addr[0]~input_o\ & !\addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(7),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[7]~7_combout\);

-- Location: FF_X87_Y16_N41
\regs:11:general_regs|reg|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(7));

-- Location: FF_X87_Y16_N35
\regs:9:general_regs|reg|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(7));

-- Location: MLABCELL_X87_Y16_N39
\regs:0:general_regs|buff|output[7]~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[7]~102_combout\ = ( \regs:9:general_regs|reg|storage\(7) & ( (!\addr[1]~input_o\) # ((!\addr[2]~input_o\ & \regs:11:general_regs|reg|storage\(7))) ) ) # ( !\regs:9:general_regs|reg|storage\(7) & ( (\addr[1]~input_o\ & 
-- (!\addr[2]~input_o\ & \regs:11:general_regs|reg|storage\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010101010111011101010101011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datad => \regs:11:general_regs|reg|ALT_INV_storage\(7),
	dataf => \regs:9:general_regs|reg|ALT_INV_storage\(7),
	combout => \regs:0:general_regs|buff|output[7]~102_combout\);

-- Location: FF_X85_Y16_N47
\regs:6:general_regs|reg|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(7));

-- Location: FF_X84_Y16_N44
\regs:12:general_regs|reg|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(7));

-- Location: MLABCELL_X84_Y16_N42
\regs:0:general_regs|buff|output[7]~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[7]~103_combout\ = (!\addr[3]~input_o\ & (\regs:6:general_regs|reg|storage\(7))) # (\addr[3]~input_o\ & ((\regs:12:general_regs|reg|storage\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \regs:6:general_regs|reg|ALT_INV_storage\(7),
	datad => \regs:12:general_regs|reg|ALT_INV_storage\(7),
	combout => \regs:0:general_regs|buff|output[7]~103_combout\);

-- Location: FF_X87_Y16_N47
\regs:15:general_regs|reg|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(7));

-- Location: MLABCELL_X87_Y16_N45
\regs:0:general_regs|buff|output[7]~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[7]~101_combout\ = ( \regs:15:general_regs|reg|storage\(7) & ( \addr[2]~input_o\ & ( (!\addr[0]~input_o\ & (\read_enabled~input_o\ & ((\addr[3]~input_o\) # (\addr[1]~input_o\)))) ) ) ) # ( 
-- !\regs:15:general_regs|reg|storage\(7) & ( \addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[1]~input_o\ & (\addr[3]~input_o\ & !\addr[0]~input_o\)) # (\addr[1]~input_o\ & ((!\addr[0]~input_o\) # (\addr[3]~input_o\))))) ) ) ) # ( 
-- \regs:15:general_regs|reg|storage\(7) & ( !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[3]~input_o\ & (\addr[1]~input_o\ & !\addr[0]~input_o\)) # (\addr[3]~input_o\ & ((\addr[0]~input_o\))))) ) ) ) # ( !\regs:15:general_regs|reg|storage\(7) & 
-- ( !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[3]~input_o\ & (\addr[1]~input_o\ & !\addr[0]~input_o\)) # (\addr[3]~input_o\ & ((\addr[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000011000000000100001100000000011100010000000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_read_enabled~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(7),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:0:general_regs|buff|output[7]~101_combout\);

-- Location: FF_X84_Y16_N2
\regs:2:general_regs|reg|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(7));

-- Location: MLABCELL_X84_Y16_N0
\regs:0:general_regs|buff|output[7]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[7]~45_combout\ = ( \regs:2:general_regs|reg|storage\(7) & ( \addr[0]~input_o\ & ( (!\regs:0:general_regs|buff|output[7]~102_combout\ & \regs:0:general_regs|buff|output[7]~101_combout\) ) ) ) # ( 
-- !\regs:2:general_regs|reg|storage\(7) & ( \addr[0]~input_o\ & ( (!\regs:0:general_regs|buff|output[7]~102_combout\ & \regs:0:general_regs|buff|output[7]~101_combout\) ) ) ) # ( \regs:2:general_regs|reg|storage\(7) & ( !\addr[0]~input_o\ & ( 
-- (!\regs:0:general_regs|buff|output[7]~103_combout\ & (\addr[2]~input_o\ & \regs:0:general_regs|buff|output[7]~101_combout\)) ) ) ) # ( !\regs:2:general_regs|reg|storage\(7) & ( !\addr[0]~input_o\ & ( (\regs:0:general_regs|buff|output[7]~101_combout\ & 
-- ((!\regs:0:general_regs|buff|output[7]~103_combout\) # (!\addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000000000110000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[7]~102_combout\,
	datab => \regs:0:general_regs|buff|ALT_INV_output[7]~103_combout\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \regs:0:general_regs|buff|ALT_INV_output[7]~101_combout\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(7),
	dataf => \ALT_INV_addr[0]~input_o\,
	combout => \regs:0:general_regs|buff|output[7]~45_combout\);

-- Location: FF_X88_Y16_N26
\regs:7:general_regs|reg|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[7]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(7));

-- Location: LABCELL_X88_Y16_N24
\regs:7:general_regs|buff|output[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[7]~7_combout\ = ( !\regs:7:general_regs|reg|storage\(7) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (!\addr[3]~input_o\ & (\addr[2]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(7),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[7]~7_combout\);

-- Location: MLABCELL_X87_Y14_N39
\regs:0:general_regs|buff|output[7]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[7]~47_combout\ = ( !\regs:0:general_regs|buff|output[7]~45_combout\ & ( !\regs:7:general_regs|buff|output[7]~7_combout\ & ( (\regs:0:general_regs|buff|output[7]~46_combout\ & 
-- (!\regs:5:general_regs|buff|output[7]~7_combout\ & (\regs:0:general_regs|buff|output[7]~44_combout\ & !\regs:4:general_regs|buff|output[7]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[7]~46_combout\,
	datab => \regs:5:general_regs|buff|ALT_INV_output[7]~7_combout\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[7]~44_combout\,
	datad => \regs:4:general_regs|buff|ALT_INV_output[7]~7_combout\,
	datae => \regs:0:general_regs|buff|ALT_INV_output[7]~45_combout\,
	dataf => \regs:7:general_regs|buff|ALT_INV_output[7]~7_combout\,
	combout => \regs:0:general_regs|buff|output[7]~47_combout\);

-- Location: IOIBUF_X89_Y8_N55
\data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(8),
	o => \data[8]~input_o\);

-- Location: MLABCELL_X87_Y14_N6
\regs:1:general_regs|reg|storage[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:1:general_regs|reg|storage[8]~feeder_combout\ = \data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[8]~input_o\,
	combout => \regs:1:general_regs|reg|storage[8]~feeder_combout\);

-- Location: FF_X87_Y14_N7
\regs:1:general_regs|reg|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:1:general_regs|reg|storage[8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(8));

-- Location: FF_X87_Y14_N32
\regs:0:general_regs|reg|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(8));

-- Location: FF_X87_Y14_N50
\regs:3:general_regs|reg|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(8));

-- Location: MLABCELL_X87_Y14_N48
\regs:0:general_regs|buff|output[8]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[8]~48_combout\ = ( \regs:3:general_regs|reg|storage\(8) & ( \re_all[3]~2_combout\ & ( (!\re_all[0]~0_combout\ & ((!\re_all[1]~1_combout\) # ((\regs:1:general_regs|reg|storage\(8))))) # (\re_all[0]~0_combout\ & 
-- (\regs:0:general_regs|reg|storage\(8) & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(8))))) ) ) ) # ( \regs:3:general_regs|reg|storage\(8) & ( !\re_all[3]~2_combout\ & ( (!\re_all[0]~0_combout\ & ((!\re_all[1]~1_combout\) # 
-- ((\regs:1:general_regs|reg|storage\(8))))) # (\re_all[0]~0_combout\ & (\regs:0:general_regs|reg|storage\(8) & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(8))))) ) ) ) # ( !\regs:3:general_regs|reg|storage\(8) & ( !\re_all[3]~2_combout\ 
-- & ( (!\re_all[0]~0_combout\ & ((!\re_all[1]~1_combout\) # ((\regs:1:general_regs|reg|storage\(8))))) # (\re_all[0]~0_combout\ & (\regs:0:general_regs|reg|storage\(8) & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101011001111100010101100111100000000000000001000101011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[0]~0_combout\,
	datab => \ALT_INV_re_all[1]~1_combout\,
	datac => \regs:1:general_regs|reg|ALT_INV_storage\(8),
	datad => \regs:0:general_regs|reg|ALT_INV_storage\(8),
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(8),
	dataf => \ALT_INV_re_all[3]~2_combout\,
	combout => \regs:0:general_regs|buff|output[8]~48_combout\);

-- Location: FF_X87_Y16_N44
\regs:15:general_regs|reg|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(8));

-- Location: MLABCELL_X87_Y16_N42
\regs:0:general_regs|buff|output[8]~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[8]~108_combout\ = ( \regs:15:general_regs|reg|storage\(8) & ( \addr[2]~input_o\ & ( (\read_enabled~input_o\ & (!\addr[0]~input_o\ & ((\addr[3]~input_o\) # (\addr[1]~input_o\)))) ) ) ) # ( 
-- !\regs:15:general_regs|reg|storage\(8) & ( \addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[1]~input_o\ & (\addr[3]~input_o\ & !\addr[0]~input_o\)) # (\addr[1]~input_o\ & ((!\addr[0]~input_o\) # (\addr[3]~input_o\))))) ) ) ) # ( 
-- \regs:15:general_regs|reg|storage\(8) & ( !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[3]~input_o\ & (\addr[1]~input_o\ & !\addr[0]~input_o\)) # (\addr[3]~input_o\ & ((\addr[0]~input_o\))))) ) ) ) # ( !\regs:15:general_regs|reg|storage\(8) & 
-- ( !\addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[3]~input_o\ & (\addr[1]~input_o\ & !\addr[0]~input_o\)) # (\addr[3]~input_o\ & ((\addr[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000011000001000000001100000111000000010000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_read_enabled~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(8),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:0:general_regs|buff|output[8]~108_combout\);

-- Location: FF_X87_Y16_N20
\regs:9:general_regs|reg|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(8));

-- Location: FF_X87_Y16_N38
\regs:11:general_regs|reg|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(8));

-- Location: MLABCELL_X87_Y16_N36
\regs:0:general_regs|buff|output[8]~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[8]~109_combout\ = (!\addr[1]~input_o\ & (((\regs:9:general_regs|reg|storage\(8))))) # (\addr[1]~input_o\ & (!\addr[2]~input_o\ & ((\regs:11:general_regs|reg|storage\(8)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000001010010011100000101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \regs:9:general_regs|reg|ALT_INV_storage\(8),
	datad => \regs:11:general_regs|reg|ALT_INV_storage\(8),
	combout => \regs:0:general_regs|buff|output[8]~109_combout\);

-- Location: FF_X85_Y16_N50
\regs:2:general_regs|reg|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(8));

-- Location: FF_X85_Y16_N56
\regs:6:general_regs|reg|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(8));

-- Location: FF_X85_Y16_N32
\regs:12:general_regs|reg|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(8));

-- Location: LABCELL_X85_Y16_N30
\regs:0:general_regs|buff|output[8]~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[8]~110_combout\ = (!\addr[3]~input_o\ & (\regs:6:general_regs|reg|storage\(8))) # (\addr[3]~input_o\ & ((\regs:12:general_regs|reg|storage\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datac => \regs:6:general_regs|reg|ALT_INV_storage\(8),
	datad => \regs:12:general_regs|reg|ALT_INV_storage\(8),
	combout => \regs:0:general_regs|buff|output[8]~110_combout\);

-- Location: LABCELL_X85_Y16_N48
\regs:0:general_regs|buff|output[8]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[8]~49_combout\ = ( \regs:2:general_regs|reg|storage\(8) & ( \regs:0:general_regs|buff|output[8]~110_combout\ & ( (\regs:0:general_regs|buff|output[8]~108_combout\ & (\addr[0]~input_o\ & 
-- !\regs:0:general_regs|buff|output[8]~109_combout\)) ) ) ) # ( !\regs:2:general_regs|reg|storage\(8) & ( \regs:0:general_regs|buff|output[8]~110_combout\ & ( (\regs:0:general_regs|buff|output[8]~108_combout\ & ((!\addr[0]~input_o\ & ((!\addr[2]~input_o\))) 
-- # (\addr[0]~input_o\ & (!\regs:0:general_regs|buff|output[8]~109_combout\)))) ) ) ) # ( \regs:2:general_regs|reg|storage\(8) & ( !\regs:0:general_regs|buff|output[8]~110_combout\ & ( (\regs:0:general_regs|buff|output[8]~108_combout\ & ((!\addr[0]~input_o\ 
-- & ((\addr[2]~input_o\))) # (\addr[0]~input_o\ & (!\regs:0:general_regs|buff|output[8]~109_combout\)))) ) ) ) # ( !\regs:2:general_regs|reg|storage\(8) & ( !\regs:0:general_regs|buff|output[8]~110_combout\ & ( 
-- (\regs:0:general_regs|buff|output[8]~108_combout\ & ((!\addr[0]~input_o\) # (!\regs:0:general_regs|buff|output[8]~109_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100000100000101010001010100000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[8]~108_combout\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[8]~109_combout\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(8),
	dataf => \regs:0:general_regs|buff|ALT_INV_output[8]~110_combout\,
	combout => \regs:0:general_regs|buff|output[8]~49_combout\);

-- Location: FF_X84_Y13_N32
\regs:5:general_regs|reg|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(8));

-- Location: MLABCELL_X84_Y13_N30
\regs:5:general_regs|buff|output[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[8]~8_combout\ = ( !\regs:5:general_regs|reg|storage\(8) & ( \read_enabled~input_o\ & ( (\addr[2]~input_o\ & (!\addr[3]~input_o\ & (!\addr[1]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(8),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[8]~8_combout\);

-- Location: FF_X83_Y13_N4
\regs:10:general_regs|reg|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(8));

-- Location: FF_X84_Y13_N53
\regs:8:general_regs|reg|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(8));

-- Location: MLABCELL_X84_Y13_N51
\regs:8:general_regs|buff|output[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[8]~8_combout\ = ( !\regs:8:general_regs|reg|storage\(8) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[3]~input_o\ & (!\addr[0]~input_o\ & !\addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(8),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:8:general_regs|buff|output[8]~8_combout\);

-- Location: FF_X84_Y13_N56
\regs:13:general_regs|reg|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(8));

-- Location: MLABCELL_X84_Y13_N54
\regs:0:general_regs|buff|output[8]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[8]~50_combout\ = ( \regs:13:general_regs|reg|storage\(8) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[8]~8_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(8)))) ) ) ) # ( 
-- !\regs:13:general_regs|reg|storage\(8) & ( \read_enabled~input_o\ & ( (!\addr_decoder|Mux1~0_combout\ & (!\regs:8:general_regs|buff|output[8]~8_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(8))))) ) ) ) # ( 
-- \regs:13:general_regs|reg|storage\(8) & ( !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[8]~8_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(8)))) ) ) ) # ( !\regs:13:general_regs|reg|storage\(8) & ( 
-- !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[8]~8_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100000000101110110000000010110000000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[10]~3_combout\,
	datab => \regs:10:general_regs|reg|ALT_INV_storage\(8),
	datac => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datad => \regs:8:general_regs|buff|ALT_INV_output[8]~8_combout\,
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(8),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[8]~50_combout\);

-- Location: FF_X88_Y16_N29
\regs:7:general_regs|reg|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(8));

-- Location: LABCELL_X88_Y16_N27
\regs:7:general_regs|buff|output[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[8]~8_combout\ = ( !\regs:7:general_regs|reg|storage\(8) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (!\addr[3]~input_o\ & (\addr[0]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(8),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[8]~8_combout\);

-- Location: FF_X83_Y14_N47
\regs:4:general_regs|reg|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(8));

-- Location: LABCELL_X83_Y14_N45
\regs:4:general_regs|buff|output[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[8]~8_combout\ = ( !\regs:4:general_regs|reg|storage\(8) & ( \read_enabled~input_o\ & ( (!\addr[0]~input_o\ & (!\addr[3]~input_o\ & (!\addr[1]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(8),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[8]~8_combout\);

-- Location: LABCELL_X88_Y16_N0
\regs:0:general_regs|buff|output[8]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[8]~51_combout\ = ( !\regs:7:general_regs|buff|output[8]~8_combout\ & ( !\regs:4:general_regs|buff|output[8]~8_combout\ & ( (\regs:0:general_regs|buff|output[8]~48_combout\ & 
-- (!\regs:0:general_regs|buff|output[8]~49_combout\ & (!\regs:5:general_regs|buff|output[8]~8_combout\ & \regs:0:general_regs|buff|output[8]~50_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[8]~48_combout\,
	datab => \regs:0:general_regs|buff|ALT_INV_output[8]~49_combout\,
	datac => \regs:5:general_regs|buff|ALT_INV_output[8]~8_combout\,
	datad => \regs:0:general_regs|buff|ALT_INV_output[8]~50_combout\,
	datae => \regs:7:general_regs|buff|ALT_INV_output[8]~8_combout\,
	dataf => \regs:4:general_regs|buff|ALT_INV_output[8]~8_combout\,
	combout => \regs:0:general_regs|buff|output[8]~51_combout\);

-- Location: IOIBUF_X84_Y0_N1
\data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(9),
	o => \data[9]~input_o\);

-- Location: FF_X83_Y17_N5
\regs:11:general_regs|reg|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(9));

-- Location: LABCELL_X85_Y14_N54
\regs:0:general_regs|buff|output[9]~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[9]~104_combout\ = ( \addr[2]~input_o\ & ( (\read_enabled~input_o\ & ((!\addr[0]~input_o\) # (\addr[1]~input_o\))) ) ) # ( !\addr[2]~input_o\ & ( (\addr[0]~input_o\ & (!\addr[1]~input_o\ & \read_enabled~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	datac => \ALT_INV_read_enabled~input_o\,
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:0:general_regs|buff|output[9]~104_combout\);

-- Location: FF_X83_Y17_N50
\regs:12:general_regs|reg|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(9));

-- Location: LABCELL_X83_Y17_N48
\regs:0:general_regs|buff|output[9]~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[9]~107_combout\ = ( \regs:12:general_regs|reg|storage\(9) & ( \addr[0]~input_o\ & ( (!\regs:0:general_regs|buff|output[9]~104_combout\ & ((!\addr[3]~input_o\) # (\regs:11:general_regs|reg|storage\(9)))) ) ) ) # ( 
-- !\regs:12:general_regs|reg|storage\(9) & ( \addr[0]~input_o\ & ( (!\regs:0:general_regs|buff|output[9]~104_combout\ & ((!\addr[3]~input_o\) # (\regs:11:general_regs|reg|storage\(9)))) ) ) ) # ( \regs:12:general_regs|reg|storage\(9) & ( !\addr[0]~input_o\ 
-- & ( (!\regs:0:general_regs|buff|output[9]~104_combout\) # (\addr[3]~input_o\) ) ) ) # ( !\regs:12:general_regs|reg|storage\(9) & ( !\addr[0]~input_o\ & ( !\regs:0:general_regs|buff|output[9]~104_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100111111001111010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:11:general_regs|reg|ALT_INV_storage\(9),
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[9]~104_combout\,
	datae => \regs:12:general_regs|reg|ALT_INV_storage\(9),
	dataf => \ALT_INV_addr[0]~input_o\,
	combout => \regs:0:general_regs|buff|output[9]~107_combout\);

-- Location: LABCELL_X88_Y16_N15
\regs:9:general_regs|reg|storage[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:9:general_regs|reg|storage[9]~feeder_combout\ = ( \data[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[9]~input_o\,
	combout => \regs:9:general_regs|reg|storage[9]~feeder_combout\);

-- Location: FF_X88_Y16_N17
\regs:9:general_regs|reg|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:9:general_regs|reg|storage[9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(9));

-- Location: FF_X83_Y16_N50
\regs:15:general_regs|reg|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(9));

-- Location: LABCELL_X83_Y16_N48
\regs:0:general_regs|buff|output[9]~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[9]~105_combout\ = ( \regs:15:general_regs|reg|storage\(9) & ( \addr[1]~input_o\ & ( (\read_enabled~input_o\ & (!\regs:0:general_regs|buff|output[9]~104_combout\ & \addr[0]~input_o\)) ) ) ) # ( 
-- !\regs:15:general_regs|reg|storage\(9) & ( \addr[1]~input_o\ & ( (\read_enabled~input_o\ & \addr[0]~input_o\) ) ) ) # ( \regs:15:general_regs|reg|storage\(9) & ( !\addr[1]~input_o\ & ( (!\regs:9:general_regs|reg|storage\(9) & 
-- (\regs:0:general_regs|buff|output[9]~104_combout\ & \addr[0]~input_o\)) ) ) ) # ( !\regs:15:general_regs|reg|storage\(9) & ( !\addr[1]~input_o\ & ( (!\regs:9:general_regs|reg|storage\(9) & (\regs:0:general_regs|buff|output[9]~104_combout\ & 
-- \addr[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000010101010000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_enabled~input_o\,
	datab => \regs:9:general_regs|reg|ALT_INV_storage\(9),
	datac => \regs:0:general_regs|buff|ALT_INV_output[9]~104_combout\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(9),
	dataf => \ALT_INV_addr[1]~input_o\,
	combout => \regs:0:general_regs|buff|output[9]~105_combout\);

-- Location: FF_X83_Y16_N2
\regs:6:general_regs|reg|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(9));

-- Location: LABCELL_X83_Y16_N0
\regs:0:general_regs|buff|output[9]~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[9]~106_combout\ = ( !\addr[0]~input_o\ & ( (\addr[1]~input_o\ & (\read_enabled~input_o\ & ((!\regs:0:general_regs|buff|output[9]~104_combout\) # (!\regs:6:general_regs|reg|storage\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010000000100010001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_read_enabled~input_o\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[9]~104_combout\,
	datad => \regs:6:general_regs|reg|ALT_INV_storage\(9),
	dataf => \ALT_INV_addr[0]~input_o\,
	combout => \regs:0:general_regs|buff|output[9]~106_combout\);

-- Location: FF_X84_Y16_N38
\regs:2:general_regs|reg|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(9));

-- Location: MLABCELL_X84_Y16_N36
\regs:0:general_regs|buff|output[9]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[9]~53_combout\ = ( \regs:2:general_regs|reg|storage\(9) & ( \addr[3]~input_o\ & ( (!\regs:0:general_regs|buff|output[9]~107_combout\ & ((!\addr[0]~input_o\) # (\regs:0:general_regs|buff|output[9]~105_combout\))) ) ) ) # ( 
-- !\regs:2:general_regs|reg|storage\(9) & ( \addr[3]~input_o\ & ( (!\regs:0:general_regs|buff|output[9]~107_combout\ & ((!\addr[0]~input_o\) # (\regs:0:general_regs|buff|output[9]~105_combout\))) ) ) ) # ( \regs:2:general_regs|reg|storage\(9) & ( 
-- !\addr[3]~input_o\ & ( (!\regs:0:general_regs|buff|output[9]~107_combout\ & \regs:0:general_regs|buff|output[9]~106_combout\) ) ) ) # ( !\regs:2:general_regs|reg|storage\(9) & ( !\addr[3]~input_o\ & ( \regs:0:general_regs|buff|output[9]~106_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001010101010100010101000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[9]~107_combout\,
	datab => \regs:0:general_regs|buff|ALT_INV_output[9]~105_combout\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \regs:0:general_regs|buff|ALT_INV_output[9]~106_combout\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(9),
	dataf => \ALT_INV_addr[3]~input_o\,
	combout => \regs:0:general_regs|buff|output[9]~53_combout\);

-- Location: FF_X84_Y13_N5
\regs:5:general_regs|reg|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(9));

-- Location: MLABCELL_X84_Y13_N3
\regs:5:general_regs|buff|output[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[9]~9_combout\ = ( !\regs:5:general_regs|reg|storage\(9) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (!\addr[3]~input_o\ & (\addr[0]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(9),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[9]~9_combout\);

-- Location: FF_X84_Y13_N11
\regs:8:general_regs|reg|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(9));

-- Location: MLABCELL_X84_Y13_N9
\regs:8:general_regs|buff|output[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[9]~9_combout\ = ( !\regs:8:general_regs|reg|storage\(9) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[3]~input_o\ & (!\addr[0]~input_o\ & !\addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(9),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:8:general_regs|buff|output[9]~9_combout\);

-- Location: LABCELL_X83_Y13_N36
\regs:10:general_regs|reg|storage[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:10:general_regs|reg|storage[9]~feeder_combout\ = ( \data[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[9]~input_o\,
	combout => \regs:10:general_regs|reg|storage[9]~feeder_combout\);

-- Location: FF_X83_Y13_N37
\regs:10:general_regs|reg|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:10:general_regs|reg|storage[9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(9));

-- Location: FF_X84_Y13_N14
\regs:13:general_regs|reg|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(9));

-- Location: MLABCELL_X84_Y13_N12
\regs:0:general_regs|buff|output[9]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[9]~54_combout\ = ( \regs:13:general_regs|reg|storage\(9) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[9]~9_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(9)))) ) ) ) # ( 
-- !\regs:13:general_regs|reg|storage\(9) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[9]~9_combout\ & (!\addr_decoder|Mux1~0_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(9))))) ) ) ) # ( 
-- \regs:13:general_regs|reg|storage\(9) & ( !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[9]~9_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(9)))) ) ) ) # ( !\regs:13:general_regs|reg|storage\(9) & ( 
-- !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[9]~9_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011001100100010001100110010000000110000001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[10]~3_combout\,
	datab => \regs:8:general_regs|buff|ALT_INV_output[9]~9_combout\,
	datac => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datad => \regs:10:general_regs|reg|ALT_INV_storage\(9),
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(9),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[9]~54_combout\);

-- Location: FF_X88_Y16_N47
\regs:7:general_regs|reg|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(9));

-- Location: LABCELL_X88_Y16_N45
\regs:7:general_regs|buff|output[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[9]~9_combout\ = ( !\regs:7:general_regs|reg|storage\(9) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (!\addr[3]~input_o\ & (\addr[0]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(9),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[9]~9_combout\);

-- Location: FF_X83_Y12_N10
\regs:0:general_regs|reg|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(9));

-- Location: LABCELL_X83_Y12_N45
\regs:1:general_regs|reg|storage[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:1:general_regs|reg|storage[9]~feeder_combout\ = \data[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[9]~input_o\,
	combout => \regs:1:general_regs|reg|storage[9]~feeder_combout\);

-- Location: FF_X83_Y12_N47
\regs:1:general_regs|reg|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:1:general_regs|reg|storage[9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(9));

-- Location: FF_X83_Y12_N38
\regs:3:general_regs|reg|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(9));

-- Location: LABCELL_X83_Y12_N36
\regs:0:general_regs|buff|output[9]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[9]~52_combout\ = ( \regs:3:general_regs|reg|storage\(9) & ( \re_all[3]~2_combout\ & ( (!\regs:0:general_regs|reg|storage\(9) & (!\re_all[0]~0_combout\ & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(9))))) 
-- # (\regs:0:general_regs|reg|storage\(9) & (((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(9))))) ) ) ) # ( \regs:3:general_regs|reg|storage\(9) & ( !\re_all[3]~2_combout\ & ( (!\regs:0:general_regs|reg|storage\(9) & (!\re_all[0]~0_combout\ 
-- & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(9))))) # (\regs:0:general_regs|reg|storage\(9) & (((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(9))))) ) ) ) # ( !\regs:3:general_regs|reg|storage\(9) & ( 
-- !\re_all[3]~2_combout\ & ( (!\regs:0:general_regs|reg|storage\(9) & (!\re_all[0]~0_combout\ & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(9))))) # (\regs:0:general_regs|reg|storage\(9) & (((!\re_all[1]~1_combout\) # 
-- (\regs:1:general_regs|reg|storage\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011011101110100001101110100000000000000001101000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|reg|ALT_INV_storage\(9),
	datab => \ALT_INV_re_all[0]~0_combout\,
	datac => \ALT_INV_re_all[1]~1_combout\,
	datad => \regs:1:general_regs|reg|ALT_INV_storage\(9),
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(9),
	dataf => \ALT_INV_re_all[3]~2_combout\,
	combout => \regs:0:general_regs|buff|output[9]~52_combout\);

-- Location: FF_X84_Y16_N32
\regs:4:general_regs|reg|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(9));

-- Location: MLABCELL_X84_Y16_N30
\regs:4:general_regs|buff|output[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[9]~9_combout\ = ( !\regs:4:general_regs|reg|storage\(9) & ( \read_enabled~input_o\ & ( (!\addr[0]~input_o\ & (!\addr[3]~input_o\ & (\addr[2]~input_o\ & !\addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(9),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[9]~9_combout\);

-- Location: MLABCELL_X84_Y16_N12
\regs:0:general_regs|buff|output[9]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[9]~55_combout\ = ( \regs:0:general_regs|buff|output[9]~52_combout\ & ( !\regs:4:general_regs|buff|output[9]~9_combout\ & ( (!\regs:0:general_regs|buff|output[9]~53_combout\ & 
-- (!\regs:5:general_regs|buff|output[9]~9_combout\ & (\regs:0:general_regs|buff|output[9]~54_combout\ & !\regs:7:general_regs|buff|output[9]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[9]~53_combout\,
	datab => \regs:5:general_regs|buff|ALT_INV_output[9]~9_combout\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[9]~54_combout\,
	datad => \regs:7:general_regs|buff|ALT_INV_output[9]~9_combout\,
	datae => \regs:0:general_regs|buff|ALT_INV_output[9]~52_combout\,
	dataf => \regs:4:general_regs|buff|ALT_INV_output[9]~9_combout\,
	combout => \regs:0:general_regs|buff|output[9]~55_combout\);

-- Location: IOIBUF_X89_Y6_N4
\data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(10),
	o => \data[10]~input_o\);

-- Location: FF_X83_Y14_N38
\regs:7:general_regs|reg|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(10));

-- Location: LABCELL_X83_Y14_N36
\regs:7:general_regs|buff|output[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[10]~10_combout\ = ( !\regs:7:general_regs|reg|storage\(10) & ( \read_enabled~input_o\ & ( (\addr[0]~input_o\ & (\addr[1]~input_o\ & (\addr[2]~input_o\ & !\addr[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(10),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[10]~10_combout\);

-- Location: FF_X83_Y14_N23
\regs:4:general_regs|reg|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(10));

-- Location: LABCELL_X83_Y14_N21
\regs:4:general_regs|buff|output[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[10]~10_combout\ = ( !\regs:4:general_regs|reg|storage\(10) & ( \read_enabled~input_o\ & ( (\addr[2]~input_o\ & (!\addr[3]~input_o\ & (!\addr[1]~input_o\ & !\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(10),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[10]~10_combout\);

-- Location: FF_X83_Y13_N44
\regs:8:general_regs|reg|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(10));

-- Location: LABCELL_X83_Y13_N42
\regs:8:general_regs|buff|output[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[10]~10_combout\ = ( !\regs:8:general_regs|reg|storage\(10) & ( \read_enabled~input_o\ & ( (\addr[3]~input_o\ & (!\addr[0]~input_o\ & (!\addr[1]~input_o\ & !\addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(10),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:8:general_regs|buff|output[10]~10_combout\);

-- Location: FF_X83_Y13_N2
\regs:10:general_regs|reg|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(10));

-- Location: FF_X83_Y13_N20
\regs:13:general_regs|reg|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(10));

-- Location: LABCELL_X83_Y13_N18
\regs:0:general_regs|buff|output[10]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[10]~58_combout\ = ( \regs:13:general_regs|reg|storage\(10) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[10]~10_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(10)))) ) ) ) # 
-- ( !\regs:13:general_regs|reg|storage\(10) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[10]~10_combout\ & (!\addr_decoder|Mux1~0_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(10))))) ) ) ) # ( 
-- \regs:13:general_regs|reg|storage\(10) & ( !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[10]~10_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(10)))) ) ) ) # ( !\regs:13:general_regs|reg|storage\(10) & ( 
-- !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[10]~10_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110010001100000000001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[10]~3_combout\,
	datab => \regs:8:general_regs|buff|ALT_INV_output[10]~10_combout\,
	datac => \regs:10:general_regs|reg|ALT_INV_storage\(10),
	datad => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(10),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[10]~58_combout\);

-- Location: FF_X85_Y15_N56
\regs:15:general_regs|reg|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(10));

-- Location: LABCELL_X85_Y15_N54
\regs:15:general_regs|buff|output[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:15:general_regs|buff|output[10]~0_combout\ = ( !\regs:15:general_regs|reg|storage\(10) & ( \addr[3]~input_o\ & ( (\read_enabled~input_o\ & (\addr[0]~input_o\ & (\addr[1]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_enabled~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(10),
	dataf => \ALT_INV_addr[3]~input_o\,
	combout => \regs:15:general_regs|buff|output[10]~0_combout\);

-- Location: FF_X83_Y16_N26
\regs:6:general_regs|reg|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(10));

-- Location: LABCELL_X83_Y16_N24
\regs:6:general_regs|buff|output[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:6:general_regs|buff|output[10]~0_combout\ = ( !\regs:6:general_regs|reg|storage\(10) & ( \addr[2]~input_o\ & ( (\read_enabled~input_o\ & (!\addr[3]~input_o\ & (\addr[1]~input_o\ & !\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_enabled~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:6:general_regs|reg|ALT_INV_storage\(10),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:6:general_regs|buff|output[10]~0_combout\);

-- Location: FF_X84_Y16_N23
\regs:2:general_regs|reg|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(10));

-- Location: MLABCELL_X84_Y16_N21
\regs:2:general_regs|buff|output[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:2:general_regs|buff|output[10]~0_combout\ = ( !\regs:2:general_regs|reg|storage\(10) & ( \read_enabled~input_o\ & ( (!\addr[2]~input_o\ & (!\addr[3]~input_o\ & (\addr[1]~input_o\ & !\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(10),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:2:general_regs|buff|output[10]~0_combout\);

-- Location: FF_X83_Y17_N29
\regs:11:general_regs|reg|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(10));

-- Location: LABCELL_X83_Y17_N27
\regs:11:general_regs|buff|output[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:11:general_regs|buff|output[10]~0_combout\ = ( !\regs:11:general_regs|reg|storage\(10) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (\addr[3]~input_o\ & (\addr[0]~input_o\ & !\addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:11:general_regs|reg|ALT_INV_storage\(10),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:11:general_regs|buff|output[10]~0_combout\);

-- Location: FF_X83_Y16_N38
\regs:12:general_regs|reg|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(10));

-- Location: LABCELL_X83_Y16_N36
\regs:12:general_regs|buff|output[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:12:general_regs|buff|output[10]~0_combout\ = ( \addr[2]~input_o\ & ( (\read_enabled~input_o\ & (\addr[3]~input_o\ & (!\addr[0]~input_o\ & !\regs:12:general_regs|reg|storage\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_enabled~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \regs:12:general_regs|reg|ALT_INV_storage\(10),
	dataf => \ALT_INV_addr[2]~input_o\,
	combout => \regs:12:general_regs|buff|output[10]~0_combout\);

-- Location: FF_X88_Y16_N20
\regs:9:general_regs|reg|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(10));

-- Location: LABCELL_X88_Y16_N18
\regs:9:general_regs|buff|output[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:9:general_regs|buff|output[10]~0_combout\ = ( !\regs:9:general_regs|reg|storage\(10) & ( \read_enabled~input_o\ & ( (!\addr[2]~input_o\ & (\addr[0]~input_o\ & (!\addr[1]~input_o\ & \addr[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:9:general_regs|reg|ALT_INV_storage\(10),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:9:general_regs|buff|output[10]~0_combout\);

-- Location: MLABCELL_X84_Y16_N24
\regs:0:general_regs|buff|output[10]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[10]~57_combout\ = ( !\regs:12:general_regs|buff|output[10]~0_combout\ & ( !\regs:9:general_regs|buff|output[10]~0_combout\ & ( (!\regs:15:general_regs|buff|output[10]~0_combout\ & 
-- (!\regs:6:general_regs|buff|output[10]~0_combout\ & (!\regs:2:general_regs|buff|output[10]~0_combout\ & !\regs:11:general_regs|buff|output[10]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:15:general_regs|buff|ALT_INV_output[10]~0_combout\,
	datab => \regs:6:general_regs|buff|ALT_INV_output[10]~0_combout\,
	datac => \regs:2:general_regs|buff|ALT_INV_output[10]~0_combout\,
	datad => \regs:11:general_regs|buff|ALT_INV_output[10]~0_combout\,
	datae => \regs:12:general_regs|buff|ALT_INV_output[10]~0_combout\,
	dataf => \regs:9:general_regs|buff|ALT_INV_output[10]~0_combout\,
	combout => \regs:0:general_regs|buff|output[10]~57_combout\);

-- Location: FF_X83_Y12_N46
\regs:1:general_regs|reg|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(10));

-- Location: FF_X83_Y12_N14
\regs:3:general_regs|reg|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(10));

-- Location: FF_X83_Y12_N8
\regs:0:general_regs|reg|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(10));

-- Location: LABCELL_X83_Y12_N12
\regs:0:general_regs|buff|output[10]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[10]~56_combout\ = ( \regs:3:general_regs|reg|storage\(10) & ( \regs:0:general_regs|reg|storage\(10) & ( (!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(10)) ) ) ) # ( !\regs:3:general_regs|reg|storage\(10) & 
-- ( \regs:0:general_regs|reg|storage\(10) & ( (!\re_all[3]~2_combout\ & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(10)))) ) ) ) # ( \regs:3:general_regs|reg|storage\(10) & ( !\regs:0:general_regs|reg|storage\(10) & ( 
-- (!\re_all[0]~0_combout\ & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(10)))) ) ) ) # ( !\regs:3:general_regs|reg|storage\(10) & ( !\regs:0:general_regs|reg|storage\(10) & ( (!\re_all[3]~2_combout\ & (!\re_all[0]~0_combout\ & 
-- ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000110000001100110010100000101010101111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[3]~2_combout\,
	datab => \ALT_INV_re_all[0]~0_combout\,
	datac => \ALT_INV_re_all[1]~1_combout\,
	datad => \regs:1:general_regs|reg|ALT_INV_storage\(10),
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(10),
	dataf => \regs:0:general_regs|reg|ALT_INV_storage\(10),
	combout => \regs:0:general_regs|buff|output[10]~56_combout\);

-- Location: FF_X85_Y14_N11
\regs:5:general_regs|reg|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[10]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(10));

-- Location: LABCELL_X85_Y14_N9
\regs:5:general_regs|buff|output[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[10]~10_combout\ = ( !\regs:5:general_regs|reg|storage\(10) & ( \read_enabled~input_o\ & ( (\addr[0]~input_o\ & (\addr[2]~input_o\ & (!\addr[3]~input_o\ & !\addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(10),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[10]~10_combout\);

-- Location: LABCELL_X83_Y13_N0
\regs:0:general_regs|buff|output[10]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[10]~59_combout\ = ( \regs:0:general_regs|buff|output[10]~56_combout\ & ( !\regs:5:general_regs|buff|output[10]~10_combout\ & ( (!\regs:7:general_regs|buff|output[10]~10_combout\ & 
-- (!\regs:4:general_regs|buff|output[10]~10_combout\ & (\regs:0:general_regs|buff|output[10]~58_combout\ & \regs:0:general_regs|buff|output[10]~57_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:7:general_regs|buff|ALT_INV_output[10]~10_combout\,
	datab => \regs:4:general_regs|buff|ALT_INV_output[10]~10_combout\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[10]~58_combout\,
	datad => \regs:0:general_regs|buff|ALT_INV_output[10]~57_combout\,
	datae => \regs:0:general_regs|buff|ALT_INV_output[10]~56_combout\,
	dataf => \regs:5:general_regs|buff|ALT_INV_output[10]~10_combout\,
	combout => \regs:0:general_regs|buff|output[10]~59_combout\);

-- Location: IOIBUF_X89_Y9_N21
\data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(11),
	o => \data[11]~input_o\);

-- Location: FF_X83_Y14_N56
\regs:7:general_regs|reg|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(11));

-- Location: LABCELL_X83_Y14_N54
\regs:7:general_regs|buff|output[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[11]~11_combout\ = ( !\regs:7:general_regs|reg|storage\(11) & ( \read_enabled~input_o\ & ( (\addr[0]~input_o\ & (!\addr[3]~input_o\ & (\addr[2]~input_o\ & \addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(11),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[11]~11_combout\);

-- Location: LABCELL_X81_Y15_N3
\regs:10:general_regs|reg|storage[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:10:general_regs|reg|storage[11]~feeder_combout\ = ( \data[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[11]~input_o\,
	combout => \regs:10:general_regs|reg|storage[11]~feeder_combout\);

-- Location: FF_X81_Y15_N4
\regs:10:general_regs|reg|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:10:general_regs|reg|storage[11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(11));

-- Location: FF_X84_Y15_N44
\regs:8:general_regs|reg|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(11));

-- Location: MLABCELL_X84_Y15_N42
\regs:8:general_regs|buff|output[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[11]~11_combout\ = ( !\regs:8:general_regs|reg|storage\(11) & ( \read_enabled~input_o\ & ( (!\addr[2]~input_o\ & (!\addr[0]~input_o\ & (\addr[3]~input_o\ & !\addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(11),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:8:general_regs|buff|output[11]~11_combout\);

-- Location: FF_X84_Y15_N20
\regs:13:general_regs|reg|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(11));

-- Location: MLABCELL_X84_Y15_N18
\regs:0:general_regs|buff|output[11]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[11]~62_combout\ = ( \regs:13:general_regs|reg|storage\(11) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[11]~11_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(11)))) ) ) ) # 
-- ( !\regs:13:general_regs|reg|storage\(11) & ( \read_enabled~input_o\ & ( (!\addr_decoder|Mux1~0_combout\ & (!\regs:8:general_regs|buff|output[11]~11_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(11))))) ) ) ) # ( 
-- \regs:13:general_regs|reg|storage\(11) & ( !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[11]~11_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(11)))) ) ) ) # ( !\regs:13:general_regs|reg|storage\(11) & ( 
-- !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[11]~11_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000000110011110000000010001010000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_re_all[10]~3_combout\,
	datac => \regs:10:general_regs|reg|ALT_INV_storage\(11),
	datad => \regs:8:general_regs|buff|ALT_INV_output[11]~11_combout\,
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(11),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[11]~62_combout\);

-- Location: FF_X87_Y16_N56
\regs:9:general_regs|reg|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(11));

-- Location: MLABCELL_X87_Y16_N54
\regs:9:general_regs|buff|output[11]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:9:general_regs|buff|output[11]~1_combout\ = ( !\regs:9:general_regs|reg|storage\(11) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[3]~input_o\ & (\addr[0]~input_o\ & !\addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:9:general_regs|reg|ALT_INV_storage\(11),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:9:general_regs|buff|output[11]~1_combout\);

-- Location: FF_X83_Y16_N8
\regs:12:general_regs|reg|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(11));

-- Location: LABCELL_X83_Y16_N6
\regs:12:general_regs|buff|output[11]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:12:general_regs|buff|output[11]~1_combout\ = ( \addr[3]~input_o\ & ( (\read_enabled~input_o\ & (\addr[2]~input_o\ & (!\addr[0]~input_o\ & !\regs:12:general_regs|reg|storage\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_enabled~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \regs:12:general_regs|reg|ALT_INV_storage\(11),
	dataf => \ALT_INV_addr[3]~input_o\,
	combout => \regs:12:general_regs|buff|output[11]~1_combout\);

-- Location: FF_X87_Y16_N5
\regs:11:general_regs|reg|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(11));

-- Location: MLABCELL_X87_Y16_N3
\regs:11:general_regs|buff|output[11]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:11:general_regs|buff|output[11]~1_combout\ = ( !\regs:11:general_regs|reg|storage\(11) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (\addr[3]~input_o\ & (!\addr[2]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:11:general_regs|reg|ALT_INV_storage\(11),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:11:general_regs|buff|output[11]~1_combout\);

-- Location: FF_X83_Y16_N32
\regs:6:general_regs|reg|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(11));

-- Location: LABCELL_X83_Y16_N30
\regs:6:general_regs|buff|output[11]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:6:general_regs|buff|output[11]~1_combout\ = ( !\regs:6:general_regs|reg|storage\(11) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (!\addr[3]~input_o\ & (!\addr[0]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:6:general_regs|reg|ALT_INV_storage\(11),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:6:general_regs|buff|output[11]~1_combout\);

-- Location: FF_X85_Y16_N11
\regs:2:general_regs|reg|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(11));

-- Location: LABCELL_X85_Y16_N9
\regs:2:general_regs|buff|output[11]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:2:general_regs|buff|output[11]~1_combout\ = ( !\regs:2:general_regs|reg|storage\(11) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (!\addr[0]~input_o\ & (!\addr[2]~input_o\ & !\addr[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(11),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:2:general_regs|buff|output[11]~1_combout\);

-- Location: FF_X83_Y16_N14
\regs:15:general_regs|reg|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(11));

-- Location: LABCELL_X83_Y16_N12
\regs:15:general_regs|buff|output[11]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:15:general_regs|buff|output[11]~1_combout\ = ( !\regs:15:general_regs|reg|storage\(11) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (\addr[3]~input_o\ & (\addr[0]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(11),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:15:general_regs|buff|output[11]~1_combout\);

-- Location: LABCELL_X83_Y16_N18
\regs:0:general_regs|buff|output[11]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[11]~61_combout\ = ( !\regs:2:general_regs|buff|output[11]~1_combout\ & ( !\regs:15:general_regs|buff|output[11]~1_combout\ & ( (!\regs:9:general_regs|buff|output[11]~1_combout\ & 
-- (!\regs:12:general_regs|buff|output[11]~1_combout\ & (!\regs:11:general_regs|buff|output[11]~1_combout\ & !\regs:6:general_regs|buff|output[11]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:9:general_regs|buff|ALT_INV_output[11]~1_combout\,
	datab => \regs:12:general_regs|buff|ALT_INV_output[11]~1_combout\,
	datac => \regs:11:general_regs|buff|ALT_INV_output[11]~1_combout\,
	datad => \regs:6:general_regs|buff|ALT_INV_output[11]~1_combout\,
	datae => \regs:2:general_regs|buff|ALT_INV_output[11]~1_combout\,
	dataf => \regs:15:general_regs|buff|ALT_INV_output[11]~1_combout\,
	combout => \regs:0:general_regs|buff|output[11]~61_combout\);

-- Location: FF_X83_Y14_N35
\regs:4:general_regs|reg|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(11));

-- Location: LABCELL_X83_Y14_N33
\regs:4:general_regs|buff|output[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[11]~11_combout\ = ( !\regs:4:general_regs|reg|storage\(11) & ( \read_enabled~input_o\ & ( (!\addr[0]~input_o\ & (!\addr[1]~input_o\ & (!\addr[3]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(11),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[11]~11_combout\);

-- Location: MLABCELL_X84_Y12_N39
\regs:0:general_regs|reg|storage[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|reg|storage[11]~feeder_combout\ = ( \data[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[11]~input_o\,
	combout => \regs:0:general_regs|reg|storage[11]~feeder_combout\);

-- Location: FF_X84_Y12_N40
\regs:0:general_regs|reg|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:0:general_regs|reg|storage[11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(11));

-- Location: FF_X83_Y12_N50
\regs:3:general_regs|reg|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(11));

-- Location: MLABCELL_X84_Y12_N27
\regs:1:general_regs|reg|storage[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:1:general_regs|reg|storage[11]~feeder_combout\ = ( \data[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[11]~input_o\,
	combout => \regs:1:general_regs|reg|storage[11]~feeder_combout\);

-- Location: FF_X84_Y12_N28
\regs:1:general_regs|reg|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:1:general_regs|reg|storage[11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(11));

-- Location: LABCELL_X83_Y12_N48
\regs:0:general_regs|buff|output[11]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[11]~60_combout\ = ( \regs:3:general_regs|reg|storage\(11) & ( \regs:1:general_regs|reg|storage\(11) & ( (!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(11)) ) ) ) # ( !\regs:3:general_regs|reg|storage\(11) & 
-- ( \regs:1:general_regs|reg|storage\(11) & ( (!\re_all[3]~2_combout\ & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(11)))) ) ) ) # ( \regs:3:general_regs|reg|storage\(11) & ( !\regs:1:general_regs|reg|storage\(11) & ( 
-- (!\re_all[1]~1_combout\ & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(11)))) ) ) ) # ( !\regs:3:general_regs|reg|storage\(11) & ( !\regs:1:general_regs|reg|storage\(11) & ( (!\re_all[3]~2_combout\ & (!\re_all[1]~1_combout\ & 
-- ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000110000001111000010001000101010101100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[3]~2_combout\,
	datab => \ALT_INV_re_all[0]~0_combout\,
	datac => \ALT_INV_re_all[1]~1_combout\,
	datad => \regs:0:general_regs|reg|ALT_INV_storage\(11),
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(11),
	dataf => \regs:1:general_regs|reg|ALT_INV_storage\(11),
	combout => \regs:0:general_regs|buff|output[11]~60_combout\);

-- Location: FF_X85_Y14_N35
\regs:5:general_regs|reg|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[11]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(11));

-- Location: LABCELL_X85_Y14_N33
\regs:5:general_regs|buff|output[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[11]~11_combout\ = ( !\regs:5:general_regs|reg|storage\(11) & ( \read_enabled~input_o\ & ( (!\addr[3]~input_o\ & (\addr[2]~input_o\ & (!\addr[1]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(11),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[11]~11_combout\);

-- Location: LABCELL_X83_Y14_N3
\regs:0:general_regs|buff|output[11]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[11]~63_combout\ = ( \regs:0:general_regs|buff|output[11]~60_combout\ & ( !\regs:5:general_regs|buff|output[11]~11_combout\ & ( (!\regs:7:general_regs|buff|output[11]~11_combout\ & 
-- (\regs:0:general_regs|buff|output[11]~62_combout\ & (\regs:0:general_regs|buff|output[11]~61_combout\ & !\regs:4:general_regs|buff|output[11]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:7:general_regs|buff|ALT_INV_output[11]~11_combout\,
	datab => \regs:0:general_regs|buff|ALT_INV_output[11]~62_combout\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[11]~61_combout\,
	datad => \regs:4:general_regs|buff|ALT_INV_output[11]~11_combout\,
	datae => \regs:0:general_regs|buff|ALT_INV_output[11]~60_combout\,
	dataf => \regs:5:general_regs|buff|ALT_INV_output[11]~11_combout\,
	combout => \regs:0:general_regs|buff|output[11]~63_combout\);

-- Location: IOIBUF_X89_Y23_N55
\data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(12),
	o => \data[12]~input_o\);

-- Location: FF_X84_Y13_N23
\regs:5:general_regs|reg|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(12));

-- Location: MLABCELL_X84_Y13_N21
\regs:5:general_regs|buff|output[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[12]~12_combout\ = ( !\regs:5:general_regs|reg|storage\(12) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (!\addr[3]~input_o\ & (\addr[0]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(12),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[12]~12_combout\);

-- Location: FF_X84_Y14_N53
\regs:0:general_regs|reg|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(12));

-- Location: FF_X84_Y14_N25
\regs:1:general_regs|reg|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(12));

-- Location: FF_X84_Y14_N32
\regs:3:general_regs|reg|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(12));

-- Location: MLABCELL_X84_Y14_N30
\regs:0:general_regs|buff|output[12]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[12]~64_combout\ = ( \regs:3:general_regs|reg|storage\(12) & ( \re_all[1]~1_combout\ & ( (\regs:1:general_regs|reg|storage\(12) & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(12)))) ) ) ) # ( 
-- !\regs:3:general_regs|reg|storage\(12) & ( \re_all[1]~1_combout\ & ( (!\re_all[3]~2_combout\ & (\regs:1:general_regs|reg|storage\(12) & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(12))))) ) ) ) # ( \regs:3:general_regs|reg|storage\(12) 
-- & ( !\re_all[1]~1_combout\ & ( (!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(12)) ) ) ) # ( !\regs:3:general_regs|reg|storage\(12) & ( !\re_all[1]~1_combout\ & ( (!\re_all[3]~2_combout\ & ((!\re_all[0]~0_combout\) # 
-- (\regs:0:general_regs|reg|storage\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000100111101011111010100000000110001000000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|reg|ALT_INV_storage\(12),
	datab => \ALT_INV_re_all[3]~2_combout\,
	datac => \ALT_INV_re_all[0]~0_combout\,
	datad => \regs:1:general_regs|reg|ALT_INV_storage\(12),
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(12),
	dataf => \ALT_INV_re_all[1]~1_combout\,
	combout => \regs:0:general_regs|buff|output[12]~64_combout\);

-- Location: FF_X83_Y14_N17
\regs:7:general_regs|reg|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(12));

-- Location: LABCELL_X83_Y14_N15
\regs:7:general_regs|buff|output[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[12]~12_combout\ = ( !\regs:7:general_regs|reg|storage\(12) & ( \read_enabled~input_o\ & ( (\addr[2]~input_o\ & (!\addr[3]~input_o\ & (\addr[1]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(12),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[12]~12_combout\);

-- Location: MLABCELL_X84_Y15_N12
\regs:10:general_regs|reg|storage[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:10:general_regs|reg|storage[12]~feeder_combout\ = \data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[12]~input_o\,
	combout => \regs:10:general_regs|reg|storage[12]~feeder_combout\);

-- Location: FF_X84_Y15_N14
\regs:10:general_regs|reg|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:10:general_regs|reg|storage[12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(12));

-- Location: FF_X84_Y15_N35
\regs:8:general_regs|reg|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(12));

-- Location: MLABCELL_X84_Y15_N33
\regs:8:general_regs|buff|output[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[12]~12_combout\ = ( !\regs:8:general_regs|reg|storage\(12) & ( \read_enabled~input_o\ & ( (\addr[3]~input_o\ & (!\addr[1]~input_o\ & (!\addr[0]~input_o\ & !\addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(12),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:8:general_regs|buff|output[12]~12_combout\);

-- Location: FF_X84_Y15_N26
\regs:13:general_regs|reg|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(12));

-- Location: MLABCELL_X84_Y15_N24
\regs:0:general_regs|buff|output[12]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[12]~66_combout\ = ( \regs:13:general_regs|reg|storage\(12) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[12]~12_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(12)))) ) ) ) # 
-- ( !\regs:13:general_regs|reg|storage\(12) & ( \read_enabled~input_o\ & ( (!\addr_decoder|Mux1~0_combout\ & (!\regs:8:general_regs|buff|output[12]~12_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(12))))) ) ) ) # ( 
-- \regs:13:general_regs|reg|storage\(12) & ( !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[12]~12_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(12)))) ) ) ) # ( !\regs:13:general_regs|reg|storage\(12) & ( 
-- !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[12]~12_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000111100000101000011000000010000001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:10:general_regs|reg|ALT_INV_storage\(12),
	datab => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datac => \regs:8:general_regs|buff|ALT_INV_output[12]~12_combout\,
	datad => \ALT_INV_re_all[10]~3_combout\,
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(12),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[12]~66_combout\);

-- Location: FF_X83_Y14_N8
\regs:4:general_regs|reg|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(12));

-- Location: LABCELL_X83_Y14_N6
\regs:4:general_regs|buff|output[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[12]~12_combout\ = ( !\regs:4:general_regs|reg|storage\(12) & ( \read_enabled~input_o\ & ( (\addr[2]~input_o\ & (!\addr[3]~input_o\ & (!\addr[0]~input_o\ & !\addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(12),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[12]~12_combout\);

-- Location: FF_X87_Y16_N14
\regs:15:general_regs|reg|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(12));

-- Location: MLABCELL_X87_Y16_N12
\regs:15:general_regs|buff|output[12]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:15:general_regs|buff|output[12]~2_combout\ = ( !\regs:15:general_regs|reg|storage\(12) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (\addr[3]~input_o\ & (\addr[0]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(12),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:15:general_regs|buff|output[12]~2_combout\);

-- Location: FF_X85_Y16_N17
\regs:2:general_regs|reg|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(12));

-- Location: LABCELL_X85_Y16_N15
\regs:2:general_regs|buff|output[12]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:2:general_regs|buff|output[12]~2_combout\ = ( !\regs:2:general_regs|reg|storage\(12) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (!\addr[0]~input_o\ & (!\addr[2]~input_o\ & !\addr[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(12),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:2:general_regs|buff|output[12]~2_combout\);

-- Location: FF_X85_Y16_N26
\regs:12:general_regs|reg|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(12));

-- Location: LABCELL_X85_Y16_N24
\regs:12:general_regs|buff|output[12]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:12:general_regs|buff|output[12]~2_combout\ = ( !\addr[0]~input_o\ & ( (\addr[3]~input_o\ & (\addr[2]~input_o\ & (\read_enabled~input_o\ & !\regs:12:general_regs|reg|storage\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_read_enabled~input_o\,
	datad => \regs:12:general_regs|reg|ALT_INV_storage\(12),
	dataf => \ALT_INV_addr[0]~input_o\,
	combout => \regs:12:general_regs|buff|output[12]~2_combout\);

-- Location: FF_X87_Y16_N8
\regs:11:general_regs|reg|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(12));

-- Location: MLABCELL_X87_Y16_N6
\regs:11:general_regs|buff|output[12]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:11:general_regs|buff|output[12]~2_combout\ = ( !\regs:11:general_regs|reg|storage\(12) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (\addr[3]~input_o\ & (\addr[0]~input_o\ & !\addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:11:general_regs|reg|ALT_INV_storage\(12),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:11:general_regs|buff|output[12]~2_combout\);

-- Location: FF_X87_Y16_N23
\regs:9:general_regs|reg|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(12));

-- Location: MLABCELL_X87_Y16_N21
\regs:9:general_regs|buff|output[12]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:9:general_regs|buff|output[12]~2_combout\ = ( !\regs:9:general_regs|reg|storage\(12) & ( !\addr[1]~input_o\ & ( (\read_enabled~input_o\ & (\addr[3]~input_o\ & (!\addr[2]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_enabled~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:9:general_regs|reg|ALT_INV_storage\(12),
	dataf => \ALT_INV_addr[1]~input_o\,
	combout => \regs:9:general_regs|buff|output[12]~2_combout\);

-- Location: FF_X85_Y16_N20
\regs:6:general_regs|reg|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[12]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(12));

-- Location: LABCELL_X85_Y16_N18
\regs:6:general_regs|buff|output[12]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:6:general_regs|buff|output[12]~2_combout\ = ( !\regs:6:general_regs|reg|storage\(12) & ( \read_enabled~input_o\ & ( (!\addr[3]~input_o\ & (!\addr[0]~input_o\ & (\addr[1]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:6:general_regs|reg|ALT_INV_storage\(12),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:6:general_regs|buff|output[12]~2_combout\);

-- Location: LABCELL_X85_Y16_N0
\regs:0:general_regs|buff|output[12]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[12]~65_combout\ = ( !\regs:9:general_regs|buff|output[12]~2_combout\ & ( !\regs:6:general_regs|buff|output[12]~2_combout\ & ( (!\regs:15:general_regs|buff|output[12]~2_combout\ & 
-- (!\regs:2:general_regs|buff|output[12]~2_combout\ & (!\regs:12:general_regs|buff|output[12]~2_combout\ & !\regs:11:general_regs|buff|output[12]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:15:general_regs|buff|ALT_INV_output[12]~2_combout\,
	datab => \regs:2:general_regs|buff|ALT_INV_output[12]~2_combout\,
	datac => \regs:12:general_regs|buff|ALT_INV_output[12]~2_combout\,
	datad => \regs:11:general_regs|buff|ALT_INV_output[12]~2_combout\,
	datae => \regs:9:general_regs|buff|ALT_INV_output[12]~2_combout\,
	dataf => \regs:6:general_regs|buff|ALT_INV_output[12]~2_combout\,
	combout => \regs:0:general_regs|buff|output[12]~65_combout\);

-- Location: MLABCELL_X84_Y14_N36
\regs:0:general_regs|buff|output[12]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[12]~67_combout\ = ( !\regs:4:general_regs|buff|output[12]~12_combout\ & ( \regs:0:general_regs|buff|output[12]~65_combout\ & ( (!\regs:5:general_regs|buff|output[12]~12_combout\ & 
-- (\regs:0:general_regs|buff|output[12]~64_combout\ & (!\regs:7:general_regs|buff|output[12]~12_combout\ & \regs:0:general_regs|buff|output[12]~66_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:5:general_regs|buff|ALT_INV_output[12]~12_combout\,
	datab => \regs:0:general_regs|buff|ALT_INV_output[12]~64_combout\,
	datac => \regs:7:general_regs|buff|ALT_INV_output[12]~12_combout\,
	datad => \regs:0:general_regs|buff|ALT_INV_output[12]~66_combout\,
	datae => \regs:4:general_regs|buff|ALT_INV_output[12]~12_combout\,
	dataf => \regs:0:general_regs|buff|ALT_INV_output[12]~65_combout\,
	combout => \regs:0:general_regs|buff|output[12]~67_combout\);

-- Location: IOIBUF_X89_Y8_N4
\data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(13),
	o => \data[13]~input_o\);

-- Location: FF_X84_Y13_N2
\regs:5:general_regs|reg|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(13));

-- Location: MLABCELL_X84_Y13_N0
\regs:5:general_regs|buff|output[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[13]~13_combout\ = ( !\regs:5:general_regs|reg|storage\(13) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (!\addr[3]~input_o\ & (\addr[2]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(13),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[13]~13_combout\);

-- Location: FF_X88_Y16_N50
\regs:7:general_regs|reg|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(13));

-- Location: LABCELL_X88_Y16_N48
\regs:7:general_regs|buff|output[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[13]~13_combout\ = ( !\regs:7:general_regs|reg|storage\(13) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (!\addr[3]~input_o\ & (\addr[2]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(13),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[13]~13_combout\);

-- Location: FF_X84_Y14_N20
\regs:1:general_regs|reg|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(13));

-- Location: FF_X84_Y14_N14
\regs:0:general_regs|reg|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(13));

-- Location: FF_X84_Y14_N56
\regs:3:general_regs|reg|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(13));

-- Location: MLABCELL_X84_Y14_N54
\regs:0:general_regs|buff|output[13]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[13]~68_combout\ = ( \regs:3:general_regs|reg|storage\(13) & ( \re_all[1]~1_combout\ & ( (\regs:1:general_regs|reg|storage\(13) & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(13)))) ) ) ) # ( 
-- !\regs:3:general_regs|reg|storage\(13) & ( \re_all[1]~1_combout\ & ( (\regs:1:general_regs|reg|storage\(13) & (!\re_all[3]~2_combout\ & ((!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(13))))) ) ) ) # ( \regs:3:general_regs|reg|storage\(13) 
-- & ( !\re_all[1]~1_combout\ & ( (!\re_all[0]~0_combout\) # (\regs:0:general_regs|reg|storage\(13)) ) ) ) # ( !\regs:3:general_regs|reg|storage\(13) & ( !\re_all[1]~1_combout\ & ( (!\re_all[3]~2_combout\ & ((!\re_all[0]~0_combout\) # 
-- (\regs:0:general_regs|reg|storage\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100111100001111111101000000010001000101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:1:general_regs|reg|ALT_INV_storage\(13),
	datab => \ALT_INV_re_all[3]~2_combout\,
	datac => \ALT_INV_re_all[0]~0_combout\,
	datad => \regs:0:general_regs|reg|ALT_INV_storage\(13),
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(13),
	dataf => \ALT_INV_re_all[1]~1_combout\,
	combout => \regs:0:general_regs|buff|output[13]~68_combout\);

-- Location: FF_X87_Y16_N11
\regs:11:general_regs|reg|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(13));

-- Location: MLABCELL_X87_Y16_N9
\regs:11:general_regs|buff|output[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:11:general_regs|buff|output[13]~3_combout\ = ( !\regs:11:general_regs|reg|storage\(13) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (\addr[3]~input_o\ & (!\addr[2]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:11:general_regs|reg|ALT_INV_storage\(13),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:11:general_regs|buff|output[13]~3_combout\);

-- Location: FF_X85_Y16_N14
\regs:2:general_regs|reg|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(13));

-- Location: LABCELL_X85_Y16_N12
\regs:2:general_regs|buff|output[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:2:general_regs|buff|output[13]~3_combout\ = ( !\regs:2:general_regs|reg|storage\(13) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (!\addr[0]~input_o\ & (!\addr[3]~input_o\ & !\addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(13),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:2:general_regs|buff|output[13]~3_combout\);

-- Location: FF_X85_Y16_N35
\regs:12:general_regs|reg|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(13));

-- Location: LABCELL_X85_Y16_N33
\regs:12:general_regs|buff|output[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:12:general_regs|buff|output[13]~3_combout\ = ( \read_enabled~input_o\ & ( (\addr[3]~input_o\ & (\addr[2]~input_o\ & (!\addr[0]~input_o\ & !\regs:12:general_regs|reg|storage\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \regs:12:general_regs|reg|ALT_INV_storage\(13),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:12:general_regs|buff|output[13]~3_combout\);

-- Location: FF_X87_Y16_N17
\regs:15:general_regs|reg|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(13));

-- Location: MLABCELL_X87_Y16_N15
\regs:15:general_regs|buff|output[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:15:general_regs|buff|output[13]~3_combout\ = ( !\regs:15:general_regs|reg|storage\(13) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (\addr[3]~input_o\ & (\addr[2]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(13),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:15:general_regs|buff|output[13]~3_combout\);

-- Location: FF_X85_Y16_N59
\regs:6:general_regs|reg|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(13));

-- Location: LABCELL_X85_Y16_N57
\regs:6:general_regs|buff|output[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:6:general_regs|buff|output[13]~3_combout\ = ( !\regs:6:general_regs|reg|storage\(13) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (\addr[2]~input_o\ & (!\addr[0]~input_o\ & !\addr[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:6:general_regs|reg|ALT_INV_storage\(13),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:6:general_regs|buff|output[13]~3_combout\);

-- Location: FF_X87_Y16_N50
\regs:9:general_regs|reg|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(13));

-- Location: MLABCELL_X87_Y16_N48
\regs:9:general_regs|buff|output[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:9:general_regs|buff|output[13]~3_combout\ = ( !\regs:9:general_regs|reg|storage\(13) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[3]~input_o\ & (\addr[0]~input_o\ & !\addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:9:general_regs|reg|ALT_INV_storage\(13),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:9:general_regs|buff|output[13]~3_combout\);

-- Location: LABCELL_X85_Y16_N42
\regs:0:general_regs|buff|output[13]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[13]~69_combout\ = ( !\regs:6:general_regs|buff|output[13]~3_combout\ & ( !\regs:9:general_regs|buff|output[13]~3_combout\ & ( (!\regs:11:general_regs|buff|output[13]~3_combout\ & 
-- (!\regs:2:general_regs|buff|output[13]~3_combout\ & (!\regs:12:general_regs|buff|output[13]~3_combout\ & !\regs:15:general_regs|buff|output[13]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:11:general_regs|buff|ALT_INV_output[13]~3_combout\,
	datab => \regs:2:general_regs|buff|ALT_INV_output[13]~3_combout\,
	datac => \regs:12:general_regs|buff|ALT_INV_output[13]~3_combout\,
	datad => \regs:15:general_regs|buff|ALT_INV_output[13]~3_combout\,
	datae => \regs:6:general_regs|buff|ALT_INV_output[13]~3_combout\,
	dataf => \regs:9:general_regs|buff|ALT_INV_output[13]~3_combout\,
	combout => \regs:0:general_regs|buff|output[13]~69_combout\);

-- Location: FF_X84_Y16_N59
\regs:4:general_regs|reg|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(13));

-- Location: MLABCELL_X84_Y16_N57
\regs:4:general_regs|buff|output[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[13]~13_combout\ = ( !\regs:4:general_regs|reg|storage\(13) & ( \read_enabled~input_o\ & ( (\addr[2]~input_o\ & (!\addr[3]~input_o\ & (!\addr[1]~input_o\ & !\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(13),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[13]~13_combout\);

-- Location: FF_X84_Y13_N50
\regs:8:general_regs|reg|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(13));

-- Location: MLABCELL_X84_Y13_N48
\regs:8:general_regs|buff|output[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[13]~13_combout\ = ( !\regs:8:general_regs|reg|storage\(13) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[3]~input_o\ & (!\addr[2]~input_o\ & !\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(13),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:8:general_regs|buff|output[13]~13_combout\);

-- Location: FF_X84_Y13_N26
\regs:13:general_regs|reg|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(13));

-- Location: FF_X87_Y15_N43
\regs:10:general_regs|reg|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[13]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(13));

-- Location: MLABCELL_X84_Y13_N24
\regs:0:general_regs|buff|output[13]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[13]~70_combout\ = ( \regs:13:general_regs|reg|storage\(13) & ( \regs:10:general_regs|reg|storage\(13) & ( !\regs:8:general_regs|buff|output[13]~13_combout\ ) ) ) # ( !\regs:13:general_regs|reg|storage\(13) & ( 
-- \regs:10:general_regs|reg|storage\(13) & ( (!\regs:8:general_regs|buff|output[13]~13_combout\ & ((!\addr_decoder|Mux1~0_combout\) # (!\read_enabled~input_o\))) ) ) ) # ( \regs:13:general_regs|reg|storage\(13) & ( !\regs:10:general_regs|reg|storage\(13) & 
-- ( (!\re_all[10]~3_combout\ & !\regs:8:general_regs|buff|output[13]~13_combout\) ) ) ) # ( !\regs:13:general_regs|reg|storage\(13) & ( !\regs:10:general_regs|reg|storage\(13) & ( (!\re_all[10]~3_combout\ & (!\regs:8:general_regs|buff|output[13]~13_combout\ 
-- & ((!\addr_decoder|Mux1~0_combout\) # (!\read_enabled~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000101010100000000011111100000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[10]~3_combout\,
	datab => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_read_enabled~input_o\,
	datad => \regs:8:general_regs|buff|ALT_INV_output[13]~13_combout\,
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(13),
	dataf => \regs:10:general_regs|reg|ALT_INV_storage\(13),
	combout => \regs:0:general_regs|buff|output[13]~70_combout\);

-- Location: LABCELL_X85_Y16_N36
\regs:0:general_regs|buff|output[13]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[13]~71_combout\ = ( !\regs:4:general_regs|buff|output[13]~13_combout\ & ( \regs:0:general_regs|buff|output[13]~70_combout\ & ( (!\regs:5:general_regs|buff|output[13]~13_combout\ & 
-- (!\regs:7:general_regs|buff|output[13]~13_combout\ & (\regs:0:general_regs|buff|output[13]~68_combout\ & \regs:0:general_regs|buff|output[13]~69_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:5:general_regs|buff|ALT_INV_output[13]~13_combout\,
	datab => \regs:7:general_regs|buff|ALT_INV_output[13]~13_combout\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[13]~68_combout\,
	datad => \regs:0:general_regs|buff|ALT_INV_output[13]~69_combout\,
	datae => \regs:4:general_regs|buff|ALT_INV_output[13]~13_combout\,
	dataf => \regs:0:general_regs|buff|ALT_INV_output[13]~70_combout\,
	combout => \regs:0:general_regs|buff|output[13]~71_combout\);

-- Location: IOIBUF_X86_Y0_N1
\data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(14),
	o => \data[14]~input_o\);

-- Location: MLABCELL_X87_Y14_N9
\regs:1:general_regs|reg|storage[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:1:general_regs|reg|storage[14]~feeder_combout\ = \data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[14]~input_o\,
	combout => \regs:1:general_regs|reg|storage[14]~feeder_combout\);

-- Location: FF_X87_Y14_N11
\regs:1:general_regs|reg|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:1:general_regs|reg|storage[14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(14));

-- Location: FF_X87_Y14_N56
\regs:3:general_regs|reg|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(14));

-- Location: FF_X87_Y14_N22
\regs:0:general_regs|reg|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(14));

-- Location: MLABCELL_X87_Y14_N54
\regs:0:general_regs|buff|output[14]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[14]~72_combout\ = ( \regs:3:general_regs|reg|storage\(14) & ( \regs:0:general_regs|reg|storage\(14) & ( (!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(14)) ) ) ) # ( !\regs:3:general_regs|reg|storage\(14) & 
-- ( \regs:0:general_regs|reg|storage\(14) & ( (!\re_all[3]~2_combout\ & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(14)))) ) ) ) # ( \regs:3:general_regs|reg|storage\(14) & ( !\regs:0:general_regs|reg|storage\(14) & ( 
-- (!\re_all[0]~0_combout\ & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(14)))) ) ) ) # ( !\regs:3:general_regs|reg|storage\(14) & ( !\regs:0:general_regs|reg|storage\(14) & ( (!\re_all[3]~2_combout\ & (!\re_all[0]~0_combout\ & 
-- ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000110000001111000010001000101010101100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[3]~2_combout\,
	datab => \ALT_INV_re_all[1]~1_combout\,
	datac => \ALT_INV_re_all[0]~0_combout\,
	datad => \regs:1:general_regs|reg|ALT_INV_storage\(14),
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(14),
	dataf => \regs:0:general_regs|reg|ALT_INV_storage\(14),
	combout => \regs:0:general_regs|buff|output[14]~72_combout\);

-- Location: FF_X83_Y14_N59
\regs:7:general_regs|reg|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(14));

-- Location: LABCELL_X83_Y14_N57
\regs:7:general_regs|buff|output[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[14]~14_combout\ = ( !\regs:7:general_regs|reg|storage\(14) & ( \read_enabled~input_o\ & ( (\addr[0]~input_o\ & (!\addr[3]~input_o\ & (\addr[1]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(14),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[14]~14_combout\);

-- Location: FF_X84_Y13_N20
\regs:5:general_regs|reg|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(14));

-- Location: MLABCELL_X84_Y13_N18
\regs:5:general_regs|buff|output[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[14]~14_combout\ = ( !\regs:5:general_regs|reg|storage\(14) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (!\addr[3]~input_o\ & (\addr[2]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(14),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[14]~14_combout\);

-- Location: FF_X83_Y14_N11
\regs:4:general_regs|reg|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(14));

-- Location: LABCELL_X83_Y14_N9
\regs:4:general_regs|buff|output[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[14]~14_combout\ = ( !\regs:4:general_regs|reg|storage\(14) & ( \read_enabled~input_o\ & ( (\addr[2]~input_o\ & (!\addr[3]~input_o\ & (!\addr[1]~input_o\ & !\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(14),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[14]~14_combout\);

-- Location: LABCELL_X83_Y13_N6
\regs:10:general_regs|reg|storage[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:10:general_regs|reg|storage[14]~feeder_combout\ = ( \data[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[14]~input_o\,
	combout => \regs:10:general_regs|reg|storage[14]~feeder_combout\);

-- Location: FF_X83_Y13_N8
\regs:10:general_regs|reg|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:10:general_regs|reg|storage[14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(14));

-- Location: FF_X84_Y13_N8
\regs:8:general_regs|reg|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(14));

-- Location: MLABCELL_X84_Y13_N6
\regs:8:general_regs|buff|output[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[14]~14_combout\ = ( !\regs:8:general_regs|reg|storage\(14) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[3]~input_o\ & (!\addr[2]~input_o\ & !\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(14),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:8:general_regs|buff|output[14]~14_combout\);

-- Location: FF_X83_Y13_N26
\regs:13:general_regs|reg|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(14));

-- Location: LABCELL_X83_Y13_N24
\regs:0:general_regs|buff|output[14]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[14]~74_combout\ = ( \regs:13:general_regs|reg|storage\(14) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[14]~14_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(14)))) ) ) ) # 
-- ( !\regs:13:general_regs|reg|storage\(14) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[14]~14_combout\ & (!\addr_decoder|Mux1~0_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(14))))) ) ) ) # ( 
-- \regs:13:general_regs|reg|storage\(14) & ( !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[14]~14_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(14)))) ) ) ) # ( !\regs:13:general_regs|reg|storage\(14) & ( 
-- !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[14]~14_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000101100001011000010110000000000001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[10]~3_combout\,
	datab => \regs:10:general_regs|reg|ALT_INV_storage\(14),
	datac => \regs:8:general_regs|buff|ALT_INV_output[14]~14_combout\,
	datad => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(14),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[14]~74_combout\);

-- Location: FF_X87_Y16_N26
\regs:15:general_regs|reg|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(14));

-- Location: MLABCELL_X87_Y16_N24
\regs:15:general_regs|buff|output[14]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:15:general_regs|buff|output[14]~4_combout\ = ( !\regs:15:general_regs|reg|storage\(14) & ( \addr[1]~input_o\ & ( (\read_enabled~input_o\ & (\addr[3]~input_o\ & (\addr[0]~input_o\ & \addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_enabled~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(14),
	dataf => \ALT_INV_addr[1]~input_o\,
	combout => \regs:15:general_regs|buff|output[14]~4_combout\);

-- Location: FF_X85_Y16_N8
\regs:2:general_regs|reg|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(14));

-- Location: LABCELL_X85_Y16_N6
\regs:2:general_regs|buff|output[14]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:2:general_regs|buff|output[14]~4_combout\ = ( !\regs:2:general_regs|reg|storage\(14) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (!\addr[0]~input_o\ & (!\addr[3]~input_o\ & !\addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[3]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(14),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:2:general_regs|buff|output[14]~4_combout\);

-- Location: FF_X85_Y16_N29
\regs:12:general_regs|reg|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(14));

-- Location: LABCELL_X85_Y16_N27
\regs:12:general_regs|buff|output[14]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:12:general_regs|buff|output[14]~4_combout\ = ( \read_enabled~input_o\ & ( (\addr[3]~input_o\ & (\addr[2]~input_o\ & (!\addr[0]~input_o\ & !\regs:12:general_regs|reg|storage\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \regs:12:general_regs|reg|ALT_INV_storage\(14),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:12:general_regs|buff|output[14]~4_combout\);

-- Location: FF_X85_Y16_N23
\regs:6:general_regs|reg|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(14));

-- Location: LABCELL_X85_Y16_N21
\regs:6:general_regs|buff|output[14]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:6:general_regs|buff|output[14]~4_combout\ = ( !\regs:6:general_regs|reg|storage\(14) & ( \read_enabled~input_o\ & ( (!\addr[3]~input_o\ & (!\addr[0]~input_o\ & (\addr[2]~input_o\ & \addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:6:general_regs|reg|ALT_INV_storage\(14),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:6:general_regs|buff|output[14]~4_combout\);

-- Location: FF_X87_Y16_N2
\regs:11:general_regs|reg|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(14));

-- Location: MLABCELL_X87_Y16_N0
\regs:11:general_regs|buff|output[14]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:11:general_regs|buff|output[14]~4_combout\ = ( !\regs:11:general_regs|reg|storage\(14) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (\addr[3]~input_o\ & (\addr[0]~input_o\ & !\addr[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[2]~input_o\,
	datae => \regs:11:general_regs|reg|ALT_INV_storage\(14),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:11:general_regs|buff|output[14]~4_combout\);

-- Location: FF_X87_Y16_N53
\regs:9:general_regs|reg|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[14]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(14));

-- Location: MLABCELL_X87_Y16_N51
\regs:9:general_regs|buff|output[14]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:9:general_regs|buff|output[14]~4_combout\ = ( !\regs:9:general_regs|reg|storage\(14) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[3]~input_o\ & (!\addr[2]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:9:general_regs|reg|ALT_INV_storage\(14),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:9:general_regs|buff|output[14]~4_combout\);

-- Location: MLABCELL_X87_Y16_N30
\regs:0:general_regs|buff|output[14]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[14]~73_combout\ = ( !\regs:11:general_regs|buff|output[14]~4_combout\ & ( !\regs:9:general_regs|buff|output[14]~4_combout\ & ( (!\regs:15:general_regs|buff|output[14]~4_combout\ & 
-- (!\regs:2:general_regs|buff|output[14]~4_combout\ & (!\regs:12:general_regs|buff|output[14]~4_combout\ & !\regs:6:general_regs|buff|output[14]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:15:general_regs|buff|ALT_INV_output[14]~4_combout\,
	datab => \regs:2:general_regs|buff|ALT_INV_output[14]~4_combout\,
	datac => \regs:12:general_regs|buff|ALT_INV_output[14]~4_combout\,
	datad => \regs:6:general_regs|buff|ALT_INV_output[14]~4_combout\,
	datae => \regs:11:general_regs|buff|ALT_INV_output[14]~4_combout\,
	dataf => \regs:9:general_regs|buff|ALT_INV_output[14]~4_combout\,
	combout => \regs:0:general_regs|buff|output[14]~73_combout\);

-- Location: LABCELL_X83_Y14_N48
\regs:0:general_regs|buff|output[14]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[14]~75_combout\ = ( \regs:0:general_regs|buff|output[14]~74_combout\ & ( \regs:0:general_regs|buff|output[14]~73_combout\ & ( (\regs:0:general_regs|buff|output[14]~72_combout\ & 
-- (!\regs:7:general_regs|buff|output[14]~14_combout\ & (!\regs:5:general_regs|buff|output[14]~14_combout\ & !\regs:4:general_regs|buff|output[14]~14_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[14]~72_combout\,
	datab => \regs:7:general_regs|buff|ALT_INV_output[14]~14_combout\,
	datac => \regs:5:general_regs|buff|ALT_INV_output[14]~14_combout\,
	datad => \regs:4:general_regs|buff|ALT_INV_output[14]~14_combout\,
	datae => \regs:0:general_regs|buff|ALT_INV_output[14]~74_combout\,
	dataf => \regs:0:general_regs|buff|ALT_INV_output[14]~73_combout\,
	combout => \regs:0:general_regs|buff|output[14]~75_combout\);

-- Location: IOIBUF_X89_Y6_N38
\data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data(15),
	o => \data[15]~input_o\);

-- Location: MLABCELL_X84_Y12_N51
\regs:1:general_regs|reg|storage[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:1:general_regs|reg|storage[15]~feeder_combout\ = ( \data[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[15]~input_o\,
	combout => \regs:1:general_regs|reg|storage[15]~feeder_combout\);

-- Location: FF_X84_Y12_N52
\regs:1:general_regs|reg|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:1:general_regs|reg|storage[15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:1:general_regs|reg|storage\(15));

-- Location: FF_X83_Y12_N26
\regs:3:general_regs|reg|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:3:general_regs|reg|storage\(15));

-- Location: MLABCELL_X84_Y12_N45
\regs:0:general_regs|reg|storage[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|reg|storage[15]~feeder_combout\ = ( \data[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[15]~input_o\,
	combout => \regs:0:general_regs|reg|storage[15]~feeder_combout\);

-- Location: FF_X84_Y12_N47
\regs:0:general_regs|reg|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:0:general_regs|reg|storage[15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:0:general_regs|reg|storage\(15));

-- Location: LABCELL_X83_Y12_N24
\regs:0:general_regs|buff|output[15]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[15]~76_combout\ = ( \regs:3:general_regs|reg|storage\(15) & ( \regs:0:general_regs|reg|storage\(15) & ( (!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(15)) ) ) ) # ( !\regs:3:general_regs|reg|storage\(15) & 
-- ( \regs:0:general_regs|reg|storage\(15) & ( (!\re_all[3]~2_combout\ & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(15)))) ) ) ) # ( \regs:3:general_regs|reg|storage\(15) & ( !\regs:0:general_regs|reg|storage\(15) & ( 
-- (!\re_all[0]~0_combout\ & ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(15)))) ) ) ) # ( !\regs:3:general_regs|reg|storage\(15) & ( !\regs:0:general_regs|reg|storage\(15) & ( (!\re_all[3]~2_combout\ & (!\re_all[0]~0_combout\ & 
-- ((!\re_all[1]~1_combout\) # (\regs:1:general_regs|reg|storage\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000110000001100110010100000101010101111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[3]~2_combout\,
	datab => \ALT_INV_re_all[0]~0_combout\,
	datac => \ALT_INV_re_all[1]~1_combout\,
	datad => \regs:1:general_regs|reg|ALT_INV_storage\(15),
	datae => \regs:3:general_regs|reg|ALT_INV_storage\(15),
	dataf => \regs:0:general_regs|reg|ALT_INV_storage\(15),
	combout => \regs:0:general_regs|buff|output[15]~76_combout\);

-- Location: FF_X84_Y16_N20
\regs:2:general_regs|reg|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:2:general_regs|reg|storage\(15));

-- Location: MLABCELL_X84_Y16_N18
\regs:2:general_regs|buff|output[15]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:2:general_regs|buff|output[15]~5_combout\ = ( !\regs:2:general_regs|reg|storage\(15) & ( \read_enabled~input_o\ & ( (!\addr[2]~input_o\ & (!\addr[3]~input_o\ & (!\addr[0]~input_o\ & \addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:2:general_regs|reg|ALT_INV_storage\(15),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:2:general_regs|buff|output[15]~5_combout\);

-- Location: FF_X83_Y17_N26
\regs:11:general_regs|reg|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:11:general_regs|reg|storage\(15));

-- Location: LABCELL_X83_Y17_N24
\regs:11:general_regs|buff|output[15]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:11:general_regs|buff|output[15]~5_combout\ = ( !\regs:11:general_regs|reg|storage\(15) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (\addr[3]~input_o\ & (!\addr[2]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:11:general_regs|reg|ALT_INV_storage\(15),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:11:general_regs|buff|output[15]~5_combout\);

-- Location: FF_X83_Y16_N35
\regs:6:general_regs|reg|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:6:general_regs|reg|storage\(15));

-- Location: LABCELL_X83_Y16_N33
\regs:6:general_regs|buff|output[15]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:6:general_regs|buff|output[15]~5_combout\ = ( !\regs:6:general_regs|reg|storage\(15) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (!\addr[3]~input_o\ & (\addr[2]~input_o\ & !\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:6:general_regs|reg|ALT_INV_storage\(15),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:6:general_regs|buff|output[15]~5_combout\);

-- Location: FF_X83_Y16_N11
\regs:12:general_regs|reg|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:12:general_regs|reg|storage\(15));

-- Location: LABCELL_X83_Y16_N9
\regs:12:general_regs|buff|output[15]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:12:general_regs|buff|output[15]~5_combout\ = ( \addr[3]~input_o\ & ( (\read_enabled~input_o\ & (\addr[2]~input_o\ & (!\addr[0]~input_o\ & !\regs:12:general_regs|reg|storage\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_enabled~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \regs:12:general_regs|reg|ALT_INV_storage\(15),
	dataf => \ALT_INV_addr[3]~input_o\,
	combout => \regs:12:general_regs|buff|output[15]~5_combout\);

-- Location: FF_X87_Y16_N59
\regs:9:general_regs|reg|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:9:general_regs|reg|storage\(15));

-- Location: MLABCELL_X87_Y16_N57
\regs:9:general_regs|buff|output[15]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:9:general_regs|buff|output[15]~5_combout\ = ( !\regs:9:general_regs|reg|storage\(15) & ( \read_enabled~input_o\ & ( (!\addr[1]~input_o\ & (\addr[3]~input_o\ & (!\addr[2]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:9:general_regs|reg|ALT_INV_storage\(15),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:9:general_regs|buff|output[15]~5_combout\);

-- Location: FF_X83_Y16_N17
\regs:15:general_regs|reg|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:15:general_regs|reg|storage\(15));

-- Location: LABCELL_X83_Y16_N15
\regs:15:general_regs|buff|output[15]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:15:general_regs|buff|output[15]~5_combout\ = ( !\regs:15:general_regs|reg|storage\(15) & ( \read_enabled~input_o\ & ( (\addr[1]~input_o\ & (\addr[3]~input_o\ & (\addr[2]~input_o\ & \addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[2]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:15:general_regs|reg|ALT_INV_storage\(15),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:15:general_regs|buff|output[15]~5_combout\);

-- Location: LABCELL_X83_Y16_N54
\regs:0:general_regs|buff|output[15]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[15]~77_combout\ = ( !\regs:9:general_regs|buff|output[15]~5_combout\ & ( !\regs:15:general_regs|buff|output[15]~5_combout\ & ( (!\regs:2:general_regs|buff|output[15]~5_combout\ & 
-- (!\regs:11:general_regs|buff|output[15]~5_combout\ & (!\regs:6:general_regs|buff|output[15]~5_combout\ & !\regs:12:general_regs|buff|output[15]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:2:general_regs|buff|ALT_INV_output[15]~5_combout\,
	datab => \regs:11:general_regs|buff|ALT_INV_output[15]~5_combout\,
	datac => \regs:6:general_regs|buff|ALT_INV_output[15]~5_combout\,
	datad => \regs:12:general_regs|buff|ALT_INV_output[15]~5_combout\,
	datae => \regs:9:general_regs|buff|ALT_INV_output[15]~5_combout\,
	dataf => \regs:15:general_regs|buff|ALT_INV_output[15]~5_combout\,
	combout => \regs:0:general_regs|buff|output[15]~77_combout\);

-- Location: MLABCELL_X84_Y12_N54
\regs:10:general_regs|reg|storage[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:10:general_regs|reg|storage[15]~feeder_combout\ = ( \data[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[15]~input_o\,
	combout => \regs:10:general_regs|reg|storage[15]~feeder_combout\);

-- Location: FF_X84_Y12_N55
\regs:10:general_regs|reg|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regs:10:general_regs|reg|storage[15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	ena => \we_all[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:10:general_regs|reg|storage\(15));

-- Location: FF_X85_Y14_N41
\regs:8:general_regs|reg|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:8:general_regs|reg|storage\(15));

-- Location: LABCELL_X85_Y14_N39
\regs:8:general_regs|buff|output[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:8:general_regs|buff|output[15]~15_combout\ = ( !\regs:8:general_regs|reg|storage\(15) & ( \read_enabled~input_o\ & ( (\addr[3]~input_o\ & (!\addr[2]~input_o\ & (!\addr[1]~input_o\ & !\addr[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[3]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[0]~input_o\,
	datae => \regs:8:general_regs|reg|ALT_INV_storage\(15),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:8:general_regs|buff|output[15]~15_combout\);

-- Location: FF_X85_Y14_N44
\regs:13:general_regs|reg|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => we_all(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:13:general_regs|reg|storage\(15));

-- Location: LABCELL_X85_Y14_N42
\regs:0:general_regs|buff|output[15]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[15]~78_combout\ = ( \regs:13:general_regs|reg|storage\(15) & ( \read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[15]~15_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(15)))) ) ) ) # 
-- ( !\regs:13:general_regs|reg|storage\(15) & ( \read_enabled~input_o\ & ( (!\addr_decoder|Mux1~0_combout\ & (!\regs:8:general_regs|buff|output[15]~15_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(15))))) ) ) ) # ( 
-- \regs:13:general_regs|reg|storage\(15) & ( !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[15]~15_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(15)))) ) ) ) # ( !\regs:13:general_regs|reg|storage\(15) & ( 
-- !\read_enabled~input_o\ & ( (!\regs:8:general_regs|buff|output[15]~15_combout\ & ((!\re_all[10]~3_combout\) # (\regs:10:general_regs|reg|storage\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100000000101011110000000010001100000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_re_all[10]~3_combout\,
	datab => \addr_decoder|ALT_INV_Mux1~0_combout\,
	datac => \regs:10:general_regs|reg|ALT_INV_storage\(15),
	datad => \regs:8:general_regs|buff|ALT_INV_output[15]~15_combout\,
	datae => \regs:13:general_regs|reg|ALT_INV_storage\(15),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:0:general_regs|buff|output[15]~78_combout\);

-- Location: FF_X83_Y14_N20
\regs:4:general_regs|reg|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:4:general_regs|reg|storage\(15));

-- Location: LABCELL_X83_Y14_N18
\regs:4:general_regs|buff|output[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:4:general_regs|buff|output[15]~15_combout\ = ( !\regs:4:general_regs|reg|storage\(15) & ( \read_enabled~input_o\ & ( (\addr[2]~input_o\ & (!\addr[3]~input_o\ & (!\addr[0]~input_o\ & !\addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:4:general_regs|reg|ALT_INV_storage\(15),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:4:general_regs|buff|output[15]~15_combout\);

-- Location: FF_X83_Y14_N14
\regs:7:general_regs|reg|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:7:general_regs|reg|storage\(15));

-- Location: LABCELL_X83_Y14_N12
\regs:7:general_regs|buff|output[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:7:general_regs|buff|output[15]~15_combout\ = ( !\regs:7:general_regs|reg|storage\(15) & ( \read_enabled~input_o\ & ( (\addr[2]~input_o\ & (!\addr[3]~input_o\ & (\addr[0]~input_o\ & \addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[2]~input_o\,
	datab => \ALT_INV_addr[3]~input_o\,
	datac => \ALT_INV_addr[0]~input_o\,
	datad => \ALT_INV_addr[1]~input_o\,
	datae => \regs:7:general_regs|reg|ALT_INV_storage\(15),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:7:general_regs|buff|output[15]~15_combout\);

-- Location: FF_X85_Y14_N8
\regs:5:general_regs|reg|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \data[15]~input_o\,
	clrn => \ALT_INV_reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \we_all[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs:5:general_regs|reg|storage\(15));

-- Location: LABCELL_X85_Y14_N6
\regs:5:general_regs|buff|output[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:5:general_regs|buff|output[15]~15_combout\ = ( !\regs:5:general_regs|reg|storage\(15) & ( \read_enabled~input_o\ & ( (\addr[0]~input_o\ & (\addr[2]~input_o\ & (!\addr[1]~input_o\ & !\addr[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[2]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	datad => \ALT_INV_addr[3]~input_o\,
	datae => \regs:5:general_regs|reg|ALT_INV_storage\(15),
	dataf => \ALT_INV_read_enabled~input_o\,
	combout => \regs:5:general_regs|buff|output[15]~15_combout\);

-- Location: LABCELL_X85_Y14_N21
\regs:0:general_regs|buff|output[15]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \regs:0:general_regs|buff|output[15]~79_combout\ = ( !\regs:7:general_regs|buff|output[15]~15_combout\ & ( !\regs:5:general_regs|buff|output[15]~15_combout\ & ( (\regs:0:general_regs|buff|output[15]~76_combout\ & 
-- (\regs:0:general_regs|buff|output[15]~77_combout\ & (\regs:0:general_regs|buff|output[15]~78_combout\ & !\regs:4:general_regs|buff|output[15]~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regs:0:general_regs|buff|ALT_INV_output[15]~76_combout\,
	datab => \regs:0:general_regs|buff|ALT_INV_output[15]~77_combout\,
	datac => \regs:0:general_regs|buff|ALT_INV_output[15]~78_combout\,
	datad => \regs:4:general_regs|buff|ALT_INV_output[15]~15_combout\,
	datae => \regs:7:general_regs|buff|ALT_INV_output[15]~15_combout\,
	dataf => \regs:5:general_regs|buff|ALT_INV_output[15]~15_combout\,
	combout => \regs:0:general_regs|buff|output[15]~79_combout\);

-- Location: LABCELL_X24_Y22_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


