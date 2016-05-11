-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/28/2016 11:36:22"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tempotestblock IS
    PORT (
	clock_in : IN std_logic;
	tempo : IN std_logic_vector(7 DOWNTO 0);
	clock_out : OUT std_logic
	);
END tempotestblock;

-- Design Ports Information
-- clock_out	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[5]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[4]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[3]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[6]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempo[0]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_in	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tempotestblock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_in : std_logic;
SIGNAL ww_tempo : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock_out : std_logic;
SIGNAL \clock_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_out~output_o\ : std_logic;
SIGNAL \clock_in~input_o\ : std_logic;
SIGNAL \clock_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \tempo[3]~input_o\ : std_logic;
SIGNAL \tempo[2]~input_o\ : std_logic;
SIGNAL \tempo[1]~input_o\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \tempo[4]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \tempo[6]~input_o\ : std_logic;
SIGNAL \tempo[5]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \tempo[7]~input_o\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[165]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[99]~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \tempo[0]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|sel[11]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~84_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~85_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[132]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[47]~89_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_25~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[46]~90_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~10_combout\ : std_logic;
SIGNAL \LessThan0~56_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[60]~91_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[59]~92_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[58]~93_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_26~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[57]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[56]~95_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \ctr[0]~26_combout\ : std_logic;
SIGNAL \LessThan0~55_combout\ : std_logic;
SIGNAL \ctr[0]~27\ : std_logic;
SIGNAL \ctr[1]~28_combout\ : std_logic;
SIGNAL \ctr[1]~29\ : std_logic;
SIGNAL \ctr[2]~30_combout\ : std_logic;
SIGNAL \ctr[2]~31\ : std_logic;
SIGNAL \ctr[3]~32_combout\ : std_logic;
SIGNAL \ctr[3]~33\ : std_logic;
SIGNAL \ctr[4]~34_combout\ : std_logic;
SIGNAL \ctr[4]~35\ : std_logic;
SIGNAL \ctr[5]~36_combout\ : std_logic;
SIGNAL \ctr[5]~37\ : std_logic;
SIGNAL \ctr[6]~38_combout\ : std_logic;
SIGNAL \ctr[6]~39\ : std_logic;
SIGNAL \ctr[7]~40_combout\ : std_logic;
SIGNAL \ctr[7]~41\ : std_logic;
SIGNAL \ctr[8]~42_combout\ : std_logic;
SIGNAL \ctr[8]~43\ : std_logic;
SIGNAL \ctr[9]~44_combout\ : std_logic;
SIGNAL \ctr[9]~45\ : std_logic;
SIGNAL \ctr[10]~46_combout\ : std_logic;
SIGNAL \ctr[10]~47\ : std_logic;
SIGNAL \ctr[11]~48_combout\ : std_logic;
SIGNAL \ctr[11]~49\ : std_logic;
SIGNAL \ctr[12]~50_combout\ : std_logic;
SIGNAL \ctr[12]~51\ : std_logic;
SIGNAL \ctr[13]~52_combout\ : std_logic;
SIGNAL \ctr[13]~53\ : std_logic;
SIGNAL \ctr[14]~54_combout\ : std_logic;
SIGNAL \ctr[14]~55\ : std_logic;
SIGNAL \ctr[15]~56_combout\ : std_logic;
SIGNAL \ctr[15]~57\ : std_logic;
SIGNAL \ctr[16]~58_combout\ : std_logic;
SIGNAL \ctr[16]~59\ : std_logic;
SIGNAL \ctr[17]~60_combout\ : std_logic;
SIGNAL \ctr[17]~61\ : std_logic;
SIGNAL \ctr[18]~62_combout\ : std_logic;
SIGNAL \ctr[18]~63\ : std_logic;
SIGNAL \ctr[19]~64_combout\ : std_logic;
SIGNAL \ctr[19]~65\ : std_logic;
SIGNAL \ctr[20]~66_combout\ : std_logic;
SIGNAL \ctr[20]~67\ : std_logic;
SIGNAL \ctr[21]~68_combout\ : std_logic;
SIGNAL \ctr[21]~69\ : std_logic;
SIGNAL \ctr[22]~70_combout\ : std_logic;
SIGNAL \ctr[22]~71\ : std_logic;
SIGNAL \ctr[23]~72_combout\ : std_logic;
SIGNAL \ctr[23]~73\ : std_logic;
SIGNAL \ctr[24]~74_combout\ : std_logic;
SIGNAL \ctr[24]~75\ : std_logic;
SIGNAL \ctr[25]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[198]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~96_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[71]~97_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~98_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[69]~99_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~100_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~101_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[231]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[84]~102_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[83]~103_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~104_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[81]~105_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[80]~106_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_28~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[79]~107_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[96]~108_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[95]~109_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[94]~110_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[93]~111_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[92]~112_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[91]~113_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[90]~114_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[89]~115_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~117_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~116_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~118_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~119_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~120_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[104]~121_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[103]~122_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~123_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~124_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~286_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~125_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[118]~126_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~127_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[116]~128_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~129_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~130_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~131_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~287_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~288_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~132_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[129]~133_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~134_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~135_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~136_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~137_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[124]~138_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~289_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[122]~139_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~140_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~290_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~141_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[139]~142_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[138]~143_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~144_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~145_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~146_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[134]~291_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[152]~292_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[152]~147_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[151]~148_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[150]~149_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[149]~150_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[148]~151_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[147]~152_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[146]~153_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[145]~293_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[144]~154_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[163]~294_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[163]~155_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[162]~156_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[161]~157_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[160]~158_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[159]~159_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[158]~160_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[157]~161_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[156]~295_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[155]~162_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[174]~163_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[174]~296_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[173]~164_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[172]~165_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[171]~166_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[170]~167_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[169]~168_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[168]~169_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[167]~297_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[166]~170_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[185]~298_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[185]~171_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[184]~172_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[183]~173_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[182]~174_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[181]~175_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[180]~176_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[179]~177_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[178]~299_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[177]~178_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[10]~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[196]~179_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[196]~300_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[195]~180_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[194]~181_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[193]~182_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[192]~183_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[191]~184_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[190]~185_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[189]~301_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[188]~186_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[207]~302_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[207]~187_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[206]~188_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[205]~189_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[204]~190_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[203]~191_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[202]~192_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[201]~193_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[200]~303_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[10]~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[218]~304_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[218]~194_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[217]~195_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[216]~196_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[215]~197_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[214]~198_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[213]~199_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[212]~200_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[211]~305_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[210]~201_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[7]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[9]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[10]~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[9]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[229]~202_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[229]~306_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[228]~203_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[227]~204_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[226]~205_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[225]~206_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[224]~207_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[223]~208_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[222]~307_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[7]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[9]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[10]~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[9]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[240]~209_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[240]~308_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[239]~210_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[238]~211_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[237]~212_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[236]~213_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[235]~214_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[234]~215_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[233]~309_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[7]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[9]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[10]~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[251]~310_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[9]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[251]~216_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[250]~217_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[249]~218_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[248]~219_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[247]~220_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[246]~221_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[245]~222_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[244]~311_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[262]~223_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[262]~312_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[261]~224_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[260]~225_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[259]~226_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[258]~227_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[257]~228_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[256]~229_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_15~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[255]~313_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[273]~314_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[273]~230_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[272]~231_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[271]~232_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[270]~233_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[269]~234_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[268]~235_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[267]~236_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[266]~315_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[265]~237_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[284]~316_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[284]~238_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[283]~239_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[282]~240_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[281]~241_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[280]~242_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[279]~243_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[278]~244_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[277]~317_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[276]~245_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[295]~246_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[295]~318_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[294]~247_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[293]~248_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[292]~249_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[291]~250_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[290]~251_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[289]~252_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[288]~319_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[287]~253_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[306]~254_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[306]~320_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[305]~255_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[304]~256_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[303]~257_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[302]~258_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[301]~259_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[300]~260_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[299]~321_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[298]~261_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[317]~322_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[317]~262_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[316]~263_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[315]~264_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[314]~265_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[313]~266_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[312]~267_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[311]~268_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_20~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[310]~323_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[309]~269_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[328]~270_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[328]~324_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[327]~271_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[326]~272_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[325]~273_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[324]~274_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[323]~275_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[322]~276_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_21~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[321]~325_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[320]~277_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[339]~278_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[339]~326_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[338]~279_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[337]~280_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[336]~281_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[335]~282_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[334]~283_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[333]~284_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_23~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[332]~327_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[331]~285_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~15_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_24~20_combout\ : std_logic;
SIGNAL \LessThan0~4_cout\ : std_logic;
SIGNAL \LessThan0~6_cout\ : std_logic;
SIGNAL \LessThan0~8_cout\ : std_logic;
SIGNAL \LessThan0~10_cout\ : std_logic;
SIGNAL \LessThan0~12_cout\ : std_logic;
SIGNAL \LessThan0~14_cout\ : std_logic;
SIGNAL \LessThan0~16_cout\ : std_logic;
SIGNAL \LessThan0~18_cout\ : std_logic;
SIGNAL \LessThan0~20_cout\ : std_logic;
SIGNAL \LessThan0~22_cout\ : std_logic;
SIGNAL \LessThan0~24_cout\ : std_logic;
SIGNAL \LessThan0~26_cout\ : std_logic;
SIGNAL \LessThan0~28_cout\ : std_logic;
SIGNAL \LessThan0~30_cout\ : std_logic;
SIGNAL \LessThan0~32_cout\ : std_logic;
SIGNAL \LessThan0~34_cout\ : std_logic;
SIGNAL \LessThan0~36_cout\ : std_logic;
SIGNAL \LessThan0~38_cout\ : std_logic;
SIGNAL \LessThan0~40_cout\ : std_logic;
SIGNAL \LessThan0~42_cout\ : std_logic;
SIGNAL \LessThan0~44_cout\ : std_logic;
SIGNAL \LessThan0~46_cout\ : std_logic;
SIGNAL \LessThan0~48_cout\ : std_logic;
SIGNAL \LessThan0~50_cout\ : std_logic;
SIGNAL \LessThan0~52_cout\ : std_logic;
SIGNAL \LessThan0~53_combout\ : std_logic;
SIGNAL \clock_out~0_combout\ : std_logic;
SIGNAL \clock_out~reg0_q\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(1055 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|StageOut\ : std_logic_vector(351 DOWNTO 0);
SIGNAL ctr : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_clock_in <= clock_in;
ww_tempo <= tempo;
clock_out <= ww_clock_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_in~input_o\);

-- Location: IOOBUF_X0_Y20_N9
\clock_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clock_out~reg0_q\,
	devoe => ww_devoe,
	o => \clock_out~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clock_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_in,
	o => \clock_in~input_o\);

-- Location: CLKCTRL_G9
\clock_in~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_in~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y25_N15
\tempo[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(3),
	o => \tempo[3]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\tempo[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(2),
	o => \tempo[2]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\tempo[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(1),
	o => \tempo[1]~input_o\);

-- Location: LCCOMB_X14_Y23_N4
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(\tempo[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X14_Y23_N6
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\tempo[2]~input_o\ & (\Add0~1_cout\ & VCC)) # (!\tempo[2]~input_o\ & (!\Add0~1_cout\))
-- \Add0~3\ = CARRY((!\tempo[2]~input_o\ & !\Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[2]~input_o\,
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X14_Y23_N8
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\tempo[3]~input_o\ & ((GND) # (!\Add0~3\))) # (!\tempo[3]~input_o\ & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((\tempo[3]~input_o\) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempo[3]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: IOIBUF_X0_Y22_N15
\tempo[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(4),
	o => \tempo[4]~input_o\);

-- Location: LCCOMB_X14_Y23_N10
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\tempo[4]~input_o\ & (\Add0~5\ & VCC)) # (!\tempo[4]~input_o\ & (!\Add0~5\))
-- \Add0~7\ = CARRY((!\tempo[4]~input_o\ & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempo[4]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: IOIBUF_X0_Y23_N8
\tempo[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(6),
	o => \tempo[6]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\tempo[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(5),
	o => \tempo[5]~input_o\);

-- Location: LCCOMB_X14_Y23_N12
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\tempo[5]~input_o\ & (\Add0~7\ $ (GND))) # (!\tempo[5]~input_o\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\tempo[5]~input_o\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempo[5]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X14_Y23_N14
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\tempo[6]~input_o\ & (!\Add0~9\)) # (!\tempo[6]~input_o\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\tempo[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempo[6]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: IOIBUF_X0_Y25_N22
\tempo[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(7),
	o => \tempo[7]~input_o\);

-- Location: LCCOMB_X14_Y23_N16
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\tempo[7]~input_o\ & (\Add0~11\ $ (GND))) # (!\tempo[7]~input_o\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\tempo[7]~input_o\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[7]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X14_Y23_N18
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X24_Y24_N8
\Div0|auto_generated|divider|divider|selnose[165]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[165]~0_combout\ = (!\Add0~10_combout\ & (!\Add0~8_combout\ & (!\Add0~12_combout\ & !\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~14_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose[165]~0_combout\);

-- Location: LCCOMB_X23_Y24_N24
\Div0|auto_generated|divider|divider|selnose[99]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[99]~1_combout\ = (!\Add0~6_combout\ & (!\Add0~4_combout\ & \Div0|auto_generated|divider|divider|selnose[165]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => \Add0~4_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[165]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose[99]~1_combout\);

-- Location: IOIBUF_X0_Y25_N1
\tempo[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tempo(0),
	o => \tempo[0]~input_o\);

-- Location: LCCOMB_X27_Y23_N4
\Div0|auto_generated|divider|divider|sel[11]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel[11]~0_combout\ = (\Div0|auto_generated|divider|divider|selnose[165]~0_combout\ & (!\Add0~2_combout\ & (!\Add0~4_combout\ & !\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[165]~0_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \Div0|auto_generated|divider|divider|sel[11]~0_combout\);

-- Location: LCCOMB_X27_Y23_N26
\Div0|auto_generated|divider|divider|StageOut[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(12) = ((!\tempo[1]~input_o\) # (!\Div0|auto_generated|divider|divider|sel[11]~0_combout\)) # (!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|sel[11]~0_combout\,
	datac => \tempo[1]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut\(12));

-- Location: LCCOMB_X27_Y23_N18
\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~1_cout\);

-- Location: LCCOMB_X27_Y23_N20
\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut\(12) & ((\tempo[1]~input_o\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~1_cout\ & VCC)) # (!\tempo[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~1_cout\)))) # (!\Div0|auto_generated|divider|divider|StageOut\(12) & ((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut\(12) & (!\tempo[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut\(12) & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~1_cout\) # (!\tempo[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut\(12),
	datab => \tempo[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~1_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~3\);

-- Location: LCCOMB_X27_Y23_N22
\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\ = \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\);

-- Location: LCCOMB_X27_Y23_N0
\Div0|auto_generated|divider|divider|StageOut[24]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~84_combout\ = (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\ & (((\Div0|auto_generated|divider|divider|StageOut\(12))))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\ & ((\Div0|auto_generated|divider|divider|sel[11]~0_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~2_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|sel[11]~0_combout\ & (\Div0|auto_generated|divider|divider|StageOut\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|sel[11]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut\(12),
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~84_combout\);

-- Location: LCCOMB_X27_Y23_N10
\Div0|auto_generated|divider|divider|StageOut[23]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~85_combout\ = (\tempo[0]~input_o\ & (\Div0|auto_generated|divider|divider|sel[11]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|sel[11]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~85_combout\);

-- Location: LCCOMB_X27_Y23_N12
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~0_combout\ = (\Div0|auto_generated|divider|divider|StageOut[23]~85_combout\ & ((\tempo[1]~input_o\) # (GND))) # (!\Div0|auto_generated|divider|divider|StageOut[23]~85_combout\ & 
-- (\tempo[1]~input_o\ $ (VCC)))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[23]~85_combout\) # (\tempo[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~85_combout\,
	datab => \tempo[1]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~1\);

-- Location: LCCOMB_X27_Y23_N14
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~2_combout\ = (\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[24]~84_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[24]~84_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~1\) # (GND))))) # (!\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[24]~84_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[24]~84_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\ = CARRY((\Add0~2_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~1\) # (!\Div0|auto_generated|divider|divider|StageOut[24]~84_combout\))) # (!\Add0~2_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[24]~84_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[24]~84_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\);

-- Location: LCCOMB_X27_Y23_N16
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~4_combout\ = \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~4_combout\);

-- Location: LCCOMB_X27_Y23_N24
\Div0|auto_generated|divider|divider|StageOut[36]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~86_combout\ = (\Div0|auto_generated|divider|divider|selnose[99]~1_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~4_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[24]~84_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~4_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~2_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[99]~1_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[24]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[99]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[24]~84_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~86_combout\);

-- Location: LCCOMB_X27_Y23_N6
\Div0|auto_generated|divider|divider|StageOut[35]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~87_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~4_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[23]~85_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~4_combout\ & ((\Div0|auto_generated|divider|divider|selnose[99]~1_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~0_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[99]~1_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[23]~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[99]~1_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[23]~85_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~87_combout\);

-- Location: LCCOMB_X27_Y23_N8
\Div0|auto_generated|divider|divider|StageOut[34]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(34) = ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~4_combout\) # (!\Div0|auto_generated|divider|divider|selnose[99]~1_combout\)) # (!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datac => \Div0|auto_generated|divider|divider|selnose[99]~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut\(34));

-- Location: LCCOMB_X22_Y26_N20
\Div0|auto_generated|divider|divider|op_25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_25~0_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut\(34)) # (GND))) # (!\tempo[1]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut\(34) $ (VCC)))
-- \Div0|auto_generated|divider|divider|op_25~1\ = CARRY((\tempo[1]~input_o\) # (\Div0|auto_generated|divider|divider|StageOut\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut\(34),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_25~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_25~1\);

-- Location: LCCOMB_X22_Y26_N22
\Div0|auto_generated|divider|divider|op_25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_25~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[35]~87_combout\ & ((\Add0~2_combout\ & (!\Div0|auto_generated|divider|divider|op_25~1\)) # (!\Add0~2_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_25~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[35]~87_combout\ & ((\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|op_25~1\) # (GND))) # (!\Add0~2_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_25~1\))))
-- \Div0|auto_generated|divider|divider|op_25~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[35]~87_combout\ & (\Add0~2_combout\ & !\Div0|auto_generated|divider|divider|op_25~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[35]~87_combout\ & 
-- ((\Add0~2_combout\) # (!\Div0|auto_generated|divider|divider|op_25~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_25~1\,
	combout => \Div0|auto_generated|divider|divider|op_25~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_25~3\);

-- Location: LCCOMB_X22_Y26_N24
\Div0|auto_generated|divider|divider|op_25~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_25~4_combout\ = ((\Add0~4_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[36]~86_combout\ $ (\Div0|auto_generated|divider|divider|op_25~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_25~5\ = CARRY((\Add0~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[36]~86_combout\ & !\Div0|auto_generated|divider|divider|op_25~3\)) # (!\Add0~4_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[36]~86_combout\) # (!\Div0|auto_generated|divider|divider|op_25~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_25~3\,
	combout => \Div0|auto_generated|divider|divider|op_25~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_25~5\);

-- Location: LCCOMB_X22_Y26_N26
\Div0|auto_generated|divider|divider|op_25~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_25~6_combout\ = !\Div0|auto_generated|divider|divider|op_25~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_25~5\,
	combout => \Div0|auto_generated|divider|divider|op_25~6_combout\);

-- Location: LCCOMB_X21_Y26_N24
\Div0|auto_generated|divider|divider|selnose[132]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[132]~2_combout\ = (\Div0|auto_generated|divider|divider|selnose[165]~0_combout\ & !\Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|selnose[165]~0_combout\,
	datac => \Add0~6_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose[132]~2_combout\);

-- Location: LCCOMB_X22_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[48]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~88_combout\ = (\Div0|auto_generated|divider|divider|selnose[132]~2_combout\ & ((\Div0|auto_generated|divider|divider|op_25~6_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[36]~86_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_25~6_combout\ & (\Div0|auto_generated|divider|divider|op_25~4_combout\)))) # (!\Div0|auto_generated|divider|divider|selnose[132]~2_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[36]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_25~4_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[132]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_25~6_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[36]~86_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~88_combout\);

-- Location: LCCOMB_X22_Y26_N10
\Div0|auto_generated|divider|divider|StageOut[47]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[47]~89_combout\ = (\Div0|auto_generated|divider|divider|selnose[132]~2_combout\ & ((\Div0|auto_generated|divider|divider|op_25~6_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[35]~87_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_25~6_combout\ & (\Div0|auto_generated|divider|divider|op_25~2_combout\)))) # (!\Div0|auto_generated|divider|divider|selnose[132]~2_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[35]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_25~2_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[132]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_25~6_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[35]~87_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[47]~89_combout\);

-- Location: LCCOMB_X22_Y26_N12
\Div0|auto_generated|divider|divider|StageOut[46]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[46]~90_combout\ = (\Div0|auto_generated|divider|divider|op_25~6_combout\ & (((\Div0|auto_generated|divider|divider|StageOut\(34))))) # (!\Div0|auto_generated|divider|divider|op_25~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[132]~2_combout\ & (\Div0|auto_generated|divider|divider|op_25~0_combout\)) # (!\Div0|auto_generated|divider|divider|selnose[132]~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut\(34))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_25~6_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[132]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_25~0_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut\(34),
	combout => \Div0|auto_generated|divider|divider|StageOut[46]~90_combout\);

-- Location: LCCOMB_X21_Y26_N22
\Div0|auto_generated|divider|divider|StageOut[45]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(45) = ((\Add0~6_combout\) # ((\Div0|auto_generated|divider|divider|op_25~6_combout\) # (!\Div0|auto_generated|divider|divider|selnose[165]~0_combout\))) # (!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datab => \Add0~6_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[165]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_25~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut\(45));

-- Location: LCCOMB_X21_Y26_N10
\Div0|auto_generated|divider|divider|op_26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_26~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_26~1_cout\);

-- Location: LCCOMB_X21_Y26_N12
\Div0|auto_generated|divider|divider|op_26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_26~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut\(45) & ((\tempo[1]~input_o\ & (\Div0|auto_generated|divider|divider|op_26~1_cout\ & VCC)) # (!\tempo[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|op_26~1_cout\)))) # (!\Div0|auto_generated|divider|divider|StageOut\(45) & ((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|op_26~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|op_26~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_26~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut\(45) & (!\tempo[1]~input_o\ & !\Div0|auto_generated|divider|divider|op_26~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut\(45) & 
-- ((!\Div0|auto_generated|divider|divider|op_26~1_cout\) # (!\tempo[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut\(45),
	datab => \tempo[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_26~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_26~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_26~3\);

-- Location: LCCOMB_X21_Y26_N14
\Div0|auto_generated|divider|divider|op_26~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_26~4_combout\ = ((\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[46]~90_combout\ $ (\Div0|auto_generated|divider|divider|op_26~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_26~5\ = CARRY((\Add0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[46]~90_combout\ & !\Div0|auto_generated|divider|divider|op_26~3\)) # (!\Add0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[46]~90_combout\) # (!\Div0|auto_generated|divider|divider|op_26~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[46]~90_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_26~3\,
	combout => \Div0|auto_generated|divider|divider|op_26~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_26~5\);

-- Location: LCCOMB_X21_Y26_N16
\Div0|auto_generated|divider|divider|op_26~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_26~6_combout\ = (\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[47]~89_combout\ & (!\Div0|auto_generated|divider|divider|op_26~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[47]~89_combout\ & ((\Div0|auto_generated|divider|divider|op_26~5\) # (GND))))) # (!\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[47]~89_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_26~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[47]~89_combout\ & (!\Div0|auto_generated|divider|divider|op_26~5\))))
-- \Div0|auto_generated|divider|divider|op_26~7\ = CARRY((\Add0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_26~5\) # (!\Div0|auto_generated|divider|divider|StageOut[47]~89_combout\))) # (!\Add0~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[47]~89_combout\ & !\Div0|auto_generated|divider|divider|op_26~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[47]~89_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_26~5\,
	combout => \Div0|auto_generated|divider|divider|op_26~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_26~7\);

-- Location: LCCOMB_X21_Y26_N18
\Div0|auto_generated|divider|divider|op_26~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_26~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[48]~88_combout\ $ (\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|op_26~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_26~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[48]~88_combout\ & ((!\Div0|auto_generated|divider|divider|op_26~7\) # (!\Add0~6_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[48]~88_combout\ & (!\Add0~6_combout\ & !\Div0|auto_generated|divider|divider|op_26~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[48]~88_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_26~7\,
	combout => \Div0|auto_generated|divider|divider|op_26~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_26~9\);

-- Location: LCCOMB_X21_Y26_N20
\Div0|auto_generated|divider|divider|op_26~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_26~10_combout\ = !\Div0|auto_generated|divider|divider|op_26~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_26~9\,
	combout => \Div0|auto_generated|divider|divider|op_26~10_combout\);

-- Location: LCCOMB_X22_Y26_N6
\LessThan0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~56_combout\ = (\Div0|auto_generated|divider|divider|selnose[165]~0_combout\ & (((!\Div0|auto_generated|divider|divider|op_25~6_combout\ & !\Add0~6_combout\)) # (!\Div0|auto_generated|divider|divider|op_26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_25~6_combout\,
	datab => \Add0~6_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[165]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_26~10_combout\,
	combout => \LessThan0~56_combout\);

-- Location: LCCOMB_X27_Y23_N28
\Div0|auto_generated|divider|divider|selnose[99]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(99) = ((\Add0~4_combout\) # ((\Add0~6_combout\) # (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~4_combout\))) # (!\Div0|auto_generated|divider|divider|selnose[165]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[165]~0_combout\,
	datab => \Add0~4_combout\,
	datac => \Add0~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(99));

-- Location: LCCOMB_X27_Y23_N2
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((\Div0|auto_generated|divider|divider|sel[11]~0_combout\ & ((\tempo[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\)))) # (!\Div0|auto_generated|divider|divider|selnose\(99))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\,
	datab => \tempo[1]~input_o\,
	datac => \Div0|auto_generated|divider|divider|sel[11]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose\(99),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[60]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[60]~91_combout\ = (\Div0|auto_generated|divider|divider|op_26~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[48]~88_combout\)) # (!\Div0|auto_generated|divider|divider|op_26~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[165]~0_combout\ & ((\Div0|auto_generated|divider|divider|op_26~8_combout\))) # (!\Div0|auto_generated|divider|divider|selnose[165]~0_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[48]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[48]~88_combout\,
	datab => \Div0|auto_generated|divider|divider|op_26~10_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[165]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_26~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[60]~91_combout\);

-- Location: LCCOMB_X21_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[59]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[59]~92_combout\ = (\Div0|auto_generated|divider|divider|selnose[165]~0_combout\ & ((\Div0|auto_generated|divider|divider|op_26~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[47]~89_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_26~10_combout\ & (\Div0|auto_generated|divider|divider|op_26~6_combout\)))) # (!\Div0|auto_generated|divider|divider|selnose[165]~0_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[47]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_26~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[47]~89_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[165]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_26~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[59]~92_combout\);

-- Location: LCCOMB_X21_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[58]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[58]~93_combout\ = (\Div0|auto_generated|divider|divider|selnose[165]~0_combout\ & ((\Div0|auto_generated|divider|divider|op_26~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[46]~90_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_26~10_combout\ & (\Div0|auto_generated|divider|divider|op_26~4_combout\)))) # (!\Div0|auto_generated|divider|divider|selnose[165]~0_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[46]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_26~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[46]~90_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[165]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_26~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[58]~93_combout\);

-- Location: LCCOMB_X21_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[57]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[57]~94_combout\ = (\Div0|auto_generated|divider|divider|op_26~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut\(45))) # (!\Div0|auto_generated|divider|divider|op_26~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[165]~0_combout\ & ((\Div0|auto_generated|divider|divider|op_26~2_combout\))) # (!\Div0|auto_generated|divider|divider|selnose[165]~0_combout\ & (\Div0|auto_generated|divider|divider|StageOut\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut\(45),
	datab => \Div0|auto_generated|divider|divider|op_26~10_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[165]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_26~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[57]~94_combout\);

-- Location: LCCOMB_X21_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[56]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[56]~95_combout\ = (\tempo[0]~input_o\ & (\Div0|auto_generated|divider|divider|selnose[165]~0_combout\ & !\Div0|auto_generated|divider|divider|op_26~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo[0]~input_o\,
	datac => \Div0|auto_generated|divider|divider|selnose[165]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_26~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[56]~95_combout\);

-- Location: LCCOMB_X24_Y23_N0
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X24_Y23_N2
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[56]~95_combout\ & ((\tempo[1]~input_o\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ & VCC)) # 
-- (!\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))) # (!\Div0|auto_generated|divider|divider|StageOut[56]~95_combout\ & ((\tempo[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)) # (!\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[56]~95_combout\ & (!\tempo[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[56]~95_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\) # (!\tempo[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[56]~95_combout\,
	datab => \tempo[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X24_Y23_N4
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = ((\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[57]~94_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((\Add0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[57]~94_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\)) # (!\Add0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[57]~94_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[57]~94_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X24_Y23_N6
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[58]~93_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[58]~93_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\) # (GND))))) # (!\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[58]~93_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[58]~93_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((\Add0~4_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[58]~93_combout\))) # (!\Add0~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[58]~93_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[58]~93_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X24_Y23_N8
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = ((\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[59]~92_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Add0~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[59]~92_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)) # (!\Add0~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[59]~92_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[59]~92_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X24_Y23_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[60]~91_combout\ & ((\Add0~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)) # (!\Add0~8_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[60]~91_combout\ & ((\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\) # (GND))) # 
-- (!\Add0~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[60]~91_combout\ & (\Add0~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[60]~91_combout\ & ((\Add0~8_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[60]~91_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X24_Y23_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X24_Y24_N22
\Div0|auto_generated|divider|divider|selnose[198]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(198) = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\) # ((\Add0~10_combout\) # ((\Add0~12_combout\) # (\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~14_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(198));

-- Location: LCCOMB_X27_Y25_N6
\ctr[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[0]~26_combout\ = ctr(0) $ (VCC)
-- \ctr[0]~27\ = CARRY(ctr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctr(0),
	datad => VCC,
	combout => \ctr[0]~26_combout\,
	cout => \ctr[0]~27\);

-- Location: LCCOMB_X26_Y24_N28
\LessThan0~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~55_combout\ = (!\LessThan0~2_combout\ & (!\LessThan0~56_combout\ & !\LessThan0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~56_combout\,
	datad => \LessThan0~53_combout\,
	combout => \LessThan0~55_combout\);

-- Location: FF_X27_Y25_N7
\ctr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[0]~26_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(0));

-- Location: LCCOMB_X27_Y25_N8
\ctr[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[1]~28_combout\ = (ctr(1) & (!\ctr[0]~27\)) # (!ctr(1) & ((\ctr[0]~27\) # (GND)))
-- \ctr[1]~29\ = CARRY((!\ctr[0]~27\) # (!ctr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(1),
	datad => VCC,
	cin => \ctr[0]~27\,
	combout => \ctr[1]~28_combout\,
	cout => \ctr[1]~29\);

-- Location: FF_X26_Y25_N21
\ctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	asdata => \ctr[1]~28_combout\,
	sclr => \LessThan0~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(1));

-- Location: LCCOMB_X27_Y25_N10
\ctr[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[2]~30_combout\ = (ctr(2) & (\ctr[1]~29\ $ (GND))) # (!ctr(2) & (!\ctr[1]~29\ & VCC))
-- \ctr[2]~31\ = CARRY((ctr(2) & !\ctr[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(2),
	datad => VCC,
	cin => \ctr[1]~29\,
	combout => \ctr[2]~30_combout\,
	cout => \ctr[2]~31\);

-- Location: FF_X26_Y25_N3
\ctr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	asdata => \ctr[2]~30_combout\,
	sclr => \LessThan0~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(2));

-- Location: LCCOMB_X27_Y25_N12
\ctr[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[3]~32_combout\ = (ctr(3) & (!\ctr[2]~31\)) # (!ctr(3) & ((\ctr[2]~31\) # (GND)))
-- \ctr[3]~33\ = CARRY((!\ctr[2]~31\) # (!ctr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(3),
	datad => VCC,
	cin => \ctr[2]~31\,
	combout => \ctr[3]~32_combout\,
	cout => \ctr[3]~33\);

-- Location: FF_X26_Y25_N7
\ctr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	asdata => \ctr[3]~32_combout\,
	sclr => \LessThan0~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(3));

-- Location: LCCOMB_X27_Y25_N14
\ctr[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[4]~34_combout\ = (ctr(4) & (\ctr[3]~33\ $ (GND))) # (!ctr(4) & (!\ctr[3]~33\ & VCC))
-- \ctr[4]~35\ = CARRY((ctr(4) & !\ctr[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(4),
	datad => VCC,
	cin => \ctr[3]~33\,
	combout => \ctr[4]~34_combout\,
	cout => \ctr[4]~35\);

-- Location: FF_X27_Y25_N15
\ctr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[4]~34_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(4));

-- Location: LCCOMB_X27_Y25_N16
\ctr[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[5]~36_combout\ = (ctr(5) & (!\ctr[4]~35\)) # (!ctr(5) & ((\ctr[4]~35\) # (GND)))
-- \ctr[5]~37\ = CARRY((!\ctr[4]~35\) # (!ctr(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(5),
	datad => VCC,
	cin => \ctr[4]~35\,
	combout => \ctr[5]~36_combout\,
	cout => \ctr[5]~37\);

-- Location: FF_X27_Y25_N17
\ctr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[5]~36_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(5));

-- Location: LCCOMB_X27_Y25_N18
\ctr[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[6]~38_combout\ = (ctr(6) & (\ctr[5]~37\ $ (GND))) # (!ctr(6) & (!\ctr[5]~37\ & VCC))
-- \ctr[6]~39\ = CARRY((ctr(6) & !\ctr[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(6),
	datad => VCC,
	cin => \ctr[5]~37\,
	combout => \ctr[6]~38_combout\,
	cout => \ctr[6]~39\);

-- Location: FF_X26_Y25_N1
\ctr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	asdata => \ctr[6]~38_combout\,
	sclr => \LessThan0~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(6));

-- Location: LCCOMB_X27_Y25_N20
\ctr[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[7]~40_combout\ = (ctr(7) & (!\ctr[6]~39\)) # (!ctr(7) & ((\ctr[6]~39\) # (GND)))
-- \ctr[7]~41\ = CARRY((!\ctr[6]~39\) # (!ctr(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(7),
	datad => VCC,
	cin => \ctr[6]~39\,
	combout => \ctr[7]~40_combout\,
	cout => \ctr[7]~41\);

-- Location: FF_X26_Y25_N25
\ctr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	asdata => \ctr[7]~40_combout\,
	sclr => \LessThan0~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(7));

-- Location: LCCOMB_X27_Y25_N22
\ctr[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[8]~42_combout\ = (ctr(8) & (\ctr[7]~41\ $ (GND))) # (!ctr(8) & (!\ctr[7]~41\ & VCC))
-- \ctr[8]~43\ = CARRY((ctr(8) & !\ctr[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(8),
	datad => VCC,
	cin => \ctr[7]~41\,
	combout => \ctr[8]~42_combout\,
	cout => \ctr[8]~43\);

-- Location: FF_X27_Y25_N23
\ctr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[8]~42_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(8));

-- Location: LCCOMB_X27_Y25_N24
\ctr[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[9]~44_combout\ = (ctr(9) & (!\ctr[8]~43\)) # (!ctr(9) & ((\ctr[8]~43\) # (GND)))
-- \ctr[9]~45\ = CARRY((!\ctr[8]~43\) # (!ctr(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(9),
	datad => VCC,
	cin => \ctr[8]~43\,
	combout => \ctr[9]~44_combout\,
	cout => \ctr[9]~45\);

-- Location: FF_X27_Y25_N25
\ctr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[9]~44_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(9));

-- Location: LCCOMB_X27_Y25_N26
\ctr[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[10]~46_combout\ = (ctr(10) & (\ctr[9]~45\ $ (GND))) # (!ctr(10) & (!\ctr[9]~45\ & VCC))
-- \ctr[10]~47\ = CARRY((ctr(10) & !\ctr[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(10),
	datad => VCC,
	cin => \ctr[9]~45\,
	combout => \ctr[10]~46_combout\,
	cout => \ctr[10]~47\);

-- Location: FF_X26_Y25_N13
\ctr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	asdata => \ctr[10]~46_combout\,
	sclr => \LessThan0~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(10));

-- Location: LCCOMB_X27_Y25_N28
\ctr[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[11]~48_combout\ = (ctr(11) & (!\ctr[10]~47\)) # (!ctr(11) & ((\ctr[10]~47\) # (GND)))
-- \ctr[11]~49\ = CARRY((!\ctr[10]~47\) # (!ctr(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(11),
	datad => VCC,
	cin => \ctr[10]~47\,
	combout => \ctr[11]~48_combout\,
	cout => \ctr[11]~49\);

-- Location: FF_X27_Y25_N29
\ctr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[11]~48_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(11));

-- Location: LCCOMB_X27_Y25_N30
\ctr[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[12]~50_combout\ = (ctr(12) & (\ctr[11]~49\ $ (GND))) # (!ctr(12) & (!\ctr[11]~49\ & VCC))
-- \ctr[12]~51\ = CARRY((ctr(12) & !\ctr[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(12),
	datad => VCC,
	cin => \ctr[11]~49\,
	combout => \ctr[12]~50_combout\,
	cout => \ctr[12]~51\);

-- Location: FF_X26_Y25_N27
\ctr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	asdata => \ctr[12]~50_combout\,
	sclr => \LessThan0~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(12));

-- Location: LCCOMB_X27_Y24_N0
\ctr[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[13]~52_combout\ = (ctr(13) & (!\ctr[12]~51\)) # (!ctr(13) & ((\ctr[12]~51\) # (GND)))
-- \ctr[13]~53\ = CARRY((!\ctr[12]~51\) # (!ctr(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(13),
	datad => VCC,
	cin => \ctr[12]~51\,
	combout => \ctr[13]~52_combout\,
	cout => \ctr[13]~53\);

-- Location: FF_X27_Y24_N1
\ctr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[13]~52_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(13));

-- Location: LCCOMB_X27_Y24_N2
\ctr[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[14]~54_combout\ = (ctr(14) & (\ctr[13]~53\ $ (GND))) # (!ctr(14) & (!\ctr[13]~53\ & VCC))
-- \ctr[14]~55\ = CARRY((ctr(14) & !\ctr[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(14),
	datad => VCC,
	cin => \ctr[13]~53\,
	combout => \ctr[14]~54_combout\,
	cout => \ctr[14]~55\);

-- Location: FF_X27_Y24_N3
\ctr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[14]~54_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(14));

-- Location: LCCOMB_X27_Y24_N4
\ctr[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[15]~56_combout\ = (ctr(15) & (!\ctr[14]~55\)) # (!ctr(15) & ((\ctr[14]~55\) # (GND)))
-- \ctr[15]~57\ = CARRY((!\ctr[14]~55\) # (!ctr(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(15),
	datad => VCC,
	cin => \ctr[14]~55\,
	combout => \ctr[15]~56_combout\,
	cout => \ctr[15]~57\);

-- Location: FF_X27_Y24_N5
\ctr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[15]~56_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(15));

-- Location: LCCOMB_X27_Y24_N6
\ctr[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[16]~58_combout\ = (ctr(16) & (\ctr[15]~57\ $ (GND))) # (!ctr(16) & (!\ctr[15]~57\ & VCC))
-- \ctr[16]~59\ = CARRY((ctr(16) & !\ctr[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(16),
	datad => VCC,
	cin => \ctr[15]~57\,
	combout => \ctr[16]~58_combout\,
	cout => \ctr[16]~59\);

-- Location: FF_X27_Y24_N7
\ctr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[16]~58_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(16));

-- Location: LCCOMB_X27_Y24_N8
\ctr[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[17]~60_combout\ = (ctr(17) & (!\ctr[16]~59\)) # (!ctr(17) & ((\ctr[16]~59\) # (GND)))
-- \ctr[17]~61\ = CARRY((!\ctr[16]~59\) # (!ctr(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(17),
	datad => VCC,
	cin => \ctr[16]~59\,
	combout => \ctr[17]~60_combout\,
	cout => \ctr[17]~61\);

-- Location: FF_X27_Y24_N9
\ctr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[17]~60_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(17));

-- Location: LCCOMB_X27_Y24_N10
\ctr[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[18]~62_combout\ = (ctr(18) & (\ctr[17]~61\ $ (GND))) # (!ctr(18) & (!\ctr[17]~61\ & VCC))
-- \ctr[18]~63\ = CARRY((ctr(18) & !\ctr[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(18),
	datad => VCC,
	cin => \ctr[17]~61\,
	combout => \ctr[18]~62_combout\,
	cout => \ctr[18]~63\);

-- Location: FF_X27_Y24_N11
\ctr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[18]~62_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(18));

-- Location: LCCOMB_X27_Y24_N12
\ctr[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[19]~64_combout\ = (ctr(19) & (!\ctr[18]~63\)) # (!ctr(19) & ((\ctr[18]~63\) # (GND)))
-- \ctr[19]~65\ = CARRY((!\ctr[18]~63\) # (!ctr(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(19),
	datad => VCC,
	cin => \ctr[18]~63\,
	combout => \ctr[19]~64_combout\,
	cout => \ctr[19]~65\);

-- Location: FF_X27_Y24_N13
\ctr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[19]~64_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(19));

-- Location: LCCOMB_X27_Y24_N14
\ctr[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[20]~66_combout\ = (ctr(20) & (\ctr[19]~65\ $ (GND))) # (!ctr(20) & (!\ctr[19]~65\ & VCC))
-- \ctr[20]~67\ = CARRY((ctr(20) & !\ctr[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(20),
	datad => VCC,
	cin => \ctr[19]~65\,
	combout => \ctr[20]~66_combout\,
	cout => \ctr[20]~67\);

-- Location: FF_X27_Y24_N15
\ctr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[20]~66_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(20));

-- Location: LCCOMB_X27_Y24_N16
\ctr[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[21]~68_combout\ = (ctr(21) & (!\ctr[20]~67\)) # (!ctr(21) & ((\ctr[20]~67\) # (GND)))
-- \ctr[21]~69\ = CARRY((!\ctr[20]~67\) # (!ctr(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(21),
	datad => VCC,
	cin => \ctr[20]~67\,
	combout => \ctr[21]~68_combout\,
	cout => \ctr[21]~69\);

-- Location: FF_X27_Y24_N17
\ctr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[21]~68_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(21));

-- Location: LCCOMB_X27_Y24_N18
\ctr[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[22]~70_combout\ = (ctr(22) & (\ctr[21]~69\ $ (GND))) # (!ctr(22) & (!\ctr[21]~69\ & VCC))
-- \ctr[22]~71\ = CARRY((ctr(22) & !\ctr[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(22),
	datad => VCC,
	cin => \ctr[21]~69\,
	combout => \ctr[22]~70_combout\,
	cout => \ctr[22]~71\);

-- Location: FF_X27_Y24_N19
\ctr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[22]~70_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(22));

-- Location: LCCOMB_X27_Y24_N20
\ctr[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[23]~72_combout\ = (ctr(23) & (!\ctr[22]~71\)) # (!ctr(23) & ((\ctr[22]~71\) # (GND)))
-- \ctr[23]~73\ = CARRY((!\ctr[22]~71\) # (!ctr(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ctr(23),
	datad => VCC,
	cin => \ctr[22]~71\,
	combout => \ctr[23]~72_combout\,
	cout => \ctr[23]~73\);

-- Location: FF_X27_Y24_N21
\ctr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[23]~72_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(23));

-- Location: LCCOMB_X27_Y24_N22
\ctr[24]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[24]~74_combout\ = (ctr(24) & (\ctr[23]~73\ $ (GND))) # (!ctr(24) & (!\ctr[23]~73\ & VCC))
-- \ctr[24]~75\ = CARRY((ctr(24) & !\ctr[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(24),
	datad => VCC,
	cin => \ctr[23]~73\,
	combout => \ctr[24]~74_combout\,
	cout => \ctr[24]~75\);

-- Location: FF_X27_Y24_N23
\ctr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[24]~74_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(24));

-- Location: LCCOMB_X27_Y24_N24
\ctr[25]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctr[25]~76_combout\ = \ctr[24]~75\ $ (ctr(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ctr(25),
	cin => \ctr[24]~75\,
	combout => \ctr[25]~76_combout\);

-- Location: FF_X27_Y24_N25
\ctr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \ctr[25]~76_combout\,
	sclr => \LessThan0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctr(25));

-- Location: LCCOMB_X24_Y24_N24
\Div0|auto_generated|divider|divider|selnose[198]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[198]~3_combout\ = (!\Add0~10_combout\ & (!\Add0~12_combout\ & !\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datac => \Add0~12_combout\,
	datad => \Add0~14_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose[198]~3_combout\);

-- Location: LCCOMB_X24_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[72]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~96_combout\ = (\Div0|auto_generated|divider|divider|selnose[198]~3_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[60]~91_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[198]~3_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[60]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[198]~3_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[60]~91_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~96_combout\);

-- Location: LCCOMB_X24_Y23_N20
\Div0|auto_generated|divider|divider|StageOut[71]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[71]~97_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[59]~92_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|selnose[198]~3_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[198]~3_combout\ & (\Div0|auto_generated|divider|divider|StageOut[59]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[59]~92_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[198]~3_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[71]~97_combout\);

-- Location: LCCOMB_X24_Y23_N18
\Div0|auto_generated|divider|divider|StageOut[70]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~98_combout\ = (\Div0|auto_generated|divider|divider|selnose[198]~3_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[58]~93_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[198]~3_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[58]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[198]~3_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[58]~93_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~98_combout\);

-- Location: LCCOMB_X24_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[69]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[69]~99_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[57]~94_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|selnose[198]~3_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[198]~3_combout\ & (\Div0|auto_generated|divider|divider|StageOut[57]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[57]~94_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[198]~3_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[69]~99_combout\);

-- Location: LCCOMB_X24_Y23_N22
\Div0|auto_generated|divider|divider|StageOut[68]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~100_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[56]~95_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|selnose[198]~3_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[198]~3_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[56]~95_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[198]~3_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[56]~95_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~100_combout\);

-- Location: LCCOMB_X24_Y24_N6
\Div0|auto_generated|divider|divider|StageOut[67]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~101_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\tempo[0]~input_o\ & \Div0|auto_generated|divider|divider|selnose[198]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|selnose[198]~3_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~101_combout\);

-- Location: LCCOMB_X23_Y24_N4
\Div0|auto_generated|divider|divider|op_28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_28~0_combout\ = (\Div0|auto_generated|divider|divider|StageOut[67]~101_combout\ & ((\tempo[1]~input_o\) # (GND))) # (!\Div0|auto_generated|divider|divider|StageOut[67]~101_combout\ & (\tempo[1]~input_o\ $ (VCC)))
-- \Div0|auto_generated|divider|divider|op_28~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[67]~101_combout\) # (\tempo[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[67]~101_combout\,
	datab => \tempo[1]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_28~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_28~1\);

-- Location: LCCOMB_X23_Y24_N6
\Div0|auto_generated|divider|divider|op_28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_28~2_combout\ = (\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[68]~100_combout\ & (!\Div0|auto_generated|divider|divider|op_28~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[68]~100_combout\ & ((\Div0|auto_generated|divider|divider|op_28~1\) # (GND))))) # (!\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[68]~100_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_28~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[68]~100_combout\ & (!\Div0|auto_generated|divider|divider|op_28~1\))))
-- \Div0|auto_generated|divider|divider|op_28~3\ = CARRY((\Add0~2_combout\ & ((!\Div0|auto_generated|divider|divider|op_28~1\) # (!\Div0|auto_generated|divider|divider|StageOut[68]~100_combout\))) # (!\Add0~2_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[68]~100_combout\ & !\Div0|auto_generated|divider|divider|op_28~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[68]~100_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_28~1\,
	combout => \Div0|auto_generated|divider|divider|op_28~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_28~3\);

-- Location: LCCOMB_X23_Y24_N8
\Div0|auto_generated|divider|divider|op_28~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_28~4_combout\ = ((\Add0~4_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[69]~99_combout\ $ (\Div0|auto_generated|divider|divider|op_28~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_28~5\ = CARRY((\Add0~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[69]~99_combout\ & !\Div0|auto_generated|divider|divider|op_28~3\)) # (!\Add0~4_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[69]~99_combout\) # (!\Div0|auto_generated|divider|divider|op_28~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[69]~99_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_28~3\,
	combout => \Div0|auto_generated|divider|divider|op_28~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_28~5\);

-- Location: LCCOMB_X23_Y24_N10
\Div0|auto_generated|divider|divider|op_28~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_28~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[70]~98_combout\ & ((\Add0~6_combout\ & (!\Div0|auto_generated|divider|divider|op_28~5\)) # (!\Add0~6_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_28~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[70]~98_combout\ & ((\Add0~6_combout\ & ((\Div0|auto_generated|divider|divider|op_28~5\) # (GND))) # (!\Add0~6_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_28~5\))))
-- \Div0|auto_generated|divider|divider|op_28~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[70]~98_combout\ & (\Add0~6_combout\ & !\Div0|auto_generated|divider|divider|op_28~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[70]~98_combout\ & 
-- ((\Add0~6_combout\) # (!\Div0|auto_generated|divider|divider|op_28~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[70]~98_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_28~5\,
	combout => \Div0|auto_generated|divider|divider|op_28~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_28~7\);

-- Location: LCCOMB_X23_Y24_N12
\Div0|auto_generated|divider|divider|op_28~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_28~8_combout\ = ((\Add0~8_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[71]~97_combout\ $ (\Div0|auto_generated|divider|divider|op_28~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_28~9\ = CARRY((\Add0~8_combout\ & (\Div0|auto_generated|divider|divider|StageOut[71]~97_combout\ & !\Div0|auto_generated|divider|divider|op_28~7\)) # (!\Add0~8_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[71]~97_combout\) # (!\Div0|auto_generated|divider|divider|op_28~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[71]~97_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_28~7\,
	combout => \Div0|auto_generated|divider|divider|op_28~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_28~9\);

-- Location: LCCOMB_X23_Y24_N14
\Div0|auto_generated|divider|divider|op_28~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_28~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[72]~96_combout\ & ((\Add0~10_combout\ & (!\Div0|auto_generated|divider|divider|op_28~9\)) # (!\Add0~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_28~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[72]~96_combout\ & ((\Add0~10_combout\ & ((\Div0|auto_generated|divider|divider|op_28~9\) # (GND))) # (!\Add0~10_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_28~9\))))
-- \Div0|auto_generated|divider|divider|op_28~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[72]~96_combout\ & (\Add0~10_combout\ & !\Div0|auto_generated|divider|divider|op_28~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[72]~96_combout\ 
-- & ((\Add0~10_combout\) # (!\Div0|auto_generated|divider|divider|op_28~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[72]~96_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_28~9\,
	combout => \Div0|auto_generated|divider|divider|op_28~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_28~11\);

-- Location: LCCOMB_X23_Y24_N16
\Div0|auto_generated|divider|divider|op_28~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_28~12_combout\ = \Div0|auto_generated|divider|divider|op_28~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_28~11\,
	combout => \Div0|auto_generated|divider|divider|op_28~12_combout\);

-- Location: LCCOMB_X24_Y24_N28
\Div0|auto_generated|divider|divider|selnose[231]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(231) = (\Add0~12_combout\) # ((\Div0|auto_generated|divider|divider|op_28~12_combout\) # (\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_28~12_combout\,
	datad => \Add0~14_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(231));

-- Location: LCCOMB_X24_Y24_N18
\Div0|auto_generated|divider|divider|selnose[231]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[231]~4_combout\ = (!\Add0~12_combout\ & !\Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \Add0~14_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\);

-- Location: LCCOMB_X23_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[84]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[84]~102_combout\ = (\Div0|auto_generated|divider|divider|op_28~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[72]~96_combout\)) # (!\Div0|auto_generated|divider|divider|op_28~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & ((\Div0|auto_generated|divider|divider|op_28~10_combout\))) # (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[72]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[72]~96_combout\,
	datab => \Div0|auto_generated|divider|divider|op_28~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_28~10_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[84]~102_combout\);

-- Location: LCCOMB_X23_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[83]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[83]~103_combout\ = (\Div0|auto_generated|divider|divider|op_28~12_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[71]~97_combout\)))) # (!\Div0|auto_generated|divider|divider|op_28~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (\Div0|auto_generated|divider|divider|op_28~8_combout\)) # (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[71]~97_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_28~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_28~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[71]~97_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[83]~103_combout\);

-- Location: LCCOMB_X23_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[82]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~104_combout\ = (\Div0|auto_generated|divider|divider|op_28~12_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[70]~98_combout\)))) # (!\Div0|auto_generated|divider|divider|op_28~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (\Div0|auto_generated|divider|divider|op_28~6_combout\)) # (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[70]~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_28~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_28~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[70]~98_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~104_combout\);

-- Location: LCCOMB_X23_Y24_N18
\Div0|auto_generated|divider|divider|StageOut[81]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[81]~105_combout\ = (\Div0|auto_generated|divider|divider|op_28~12_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[69]~99_combout\)))) # (!\Div0|auto_generated|divider|divider|op_28~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (\Div0|auto_generated|divider|divider|op_28~4_combout\)) # (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[69]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_28~4_combout\,
	datab => \Div0|auto_generated|divider|divider|op_28~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[69]~99_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[81]~105_combout\);

-- Location: LCCOMB_X23_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[80]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[80]~106_combout\ = (\Div0|auto_generated|divider|divider|op_28~12_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[68]~100_combout\)))) # (!\Div0|auto_generated|divider|divider|op_28~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (\Div0|auto_generated|divider|divider|op_28~2_combout\)) # (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[68]~100_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_28~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_28~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[68]~100_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[80]~106_combout\);

-- Location: LCCOMB_X23_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[79]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[79]~107_combout\ = (\Div0|auto_generated|divider|divider|op_28~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[67]~101_combout\)) # (!\Div0|auto_generated|divider|divider|op_28~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & ((\Div0|auto_generated|divider|divider|op_28~0_combout\))) # (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[67]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[67]~101_combout\,
	datab => \Div0|auto_generated|divider|divider|op_28~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_28~0_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[79]~107_combout\);

-- Location: LCCOMB_X24_Y24_N20
\Div0|auto_generated|divider|divider|StageOut[78]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(78) = (\Add0~12_combout\) # (((\Div0|auto_generated|divider|divider|op_28~12_combout\) # (\Add0~14_combout\)) # (!\tempo[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \tempo[0]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_28~12_combout\,
	datad => \Add0~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut\(78));

-- Location: LCCOMB_X22_Y24_N8
\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\);

-- Location: LCCOMB_X22_Y24_N10
\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut\(78) & ((\tempo[1]~input_o\ & (\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\ & VCC)) # (!\tempo[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\)))) # (!\Div0|auto_generated|divider|divider|StageOut\(78) & ((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut\(78) & (!\tempo[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut\(78) & ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\) # (!\tempo[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut\(78),
	datab => \tempo[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X22_Y24_N12
\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[79]~107_combout\ $ (\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[79]~107_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\) # (!\Add0~2_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[79]~107_combout\ & (!\Add0~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[79]~107_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X22_Y24_N14
\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[80]~106_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[80]~106_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\) # (GND))))) # (!\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[80]~106_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[80]~106_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY((\Add0~4_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[80]~106_combout\))) # (!\Add0~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[80]~106_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[80]~106_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X22_Y24_N16
\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = ((\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[81]~105_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ = CARRY((\Add0~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[81]~105_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)) # (!\Add0~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[81]~105_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[81]~105_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\);

-- Location: LCCOMB_X22_Y24_N18
\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = (\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[82]~104_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[82]~104_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\) # (GND))))) # (!\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[82]~104_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[82]~104_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ = CARRY((\Add0~8_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[82]~104_combout\))) # (!\Add0~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[82]~104_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[82]~104_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\);

-- Location: LCCOMB_X22_Y24_N20
\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[83]~103_combout\ $ (\Add0~10_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[83]~103_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\) # (!\Add0~10_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[83]~103_combout\ & (!\Add0~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[83]~103_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\);

-- Location: LCCOMB_X22_Y24_N22
\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ = (\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[84]~102_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[84]~102_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\) # (GND))))) # (!\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[84]~102_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[84]~102_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ = CARRY((\Add0~12_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\) # (!\Div0|auto_generated|divider|divider|StageOut[84]~102_combout\))) # (!\Add0~12_combout\ 
-- & (!\Div0|auto_generated|divider|divider|StageOut[84]~102_combout\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[84]~102_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\);

-- Location: LCCOMB_X22_Y24_N24
\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ = \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\);

-- Location: LCCOMB_X24_Y24_N10
\Div0|auto_generated|divider|divider|selnose[264]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(264) = (\Add0~14_combout\) # (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(264));

-- Location: LCCOMB_X22_Y24_N4
\Div0|auto_generated|divider|divider|StageOut[96]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[96]~108_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[84]~102_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[84]~102_combout\))) # (!\Add0~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Add0~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[84]~102_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[96]~108_combout\);

-- Location: LCCOMB_X22_Y24_N6
\Div0|auto_generated|divider|divider|StageOut[95]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[95]~109_combout\ = (\Add0~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[83]~103_combout\)) # (!\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[83]~103_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[83]~103_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datac => \Add0~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[95]~109_combout\);

-- Location: LCCOMB_X22_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[94]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[94]~110_combout\ = (\Add0~14_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[82]~104_combout\)))) # (!\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ 
-- & ((\Div0|auto_generated|divider|divider|StageOut[82]~104_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (\Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[82]~104_combout\,
	datac => \Add0~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[94]~110_combout\);

-- Location: LCCOMB_X22_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[93]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[93]~111_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[81]~105_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[81]~105_combout\))) # (!\Add0~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Add0~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[81]~105_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[93]~111_combout\);

-- Location: LCCOMB_X22_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[92]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[92]~112_combout\ = (\Add0~14_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[80]~106_combout\)))) # (!\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ 
-- & ((\Div0|auto_generated|divider|divider|StageOut[80]~106_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (\Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datab => \Add0~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[80]~106_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[92]~112_combout\);

-- Location: LCCOMB_X22_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[91]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[91]~113_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[79]~107_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[79]~107_combout\))) # (!\Add0~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Add0~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[79]~107_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[91]~113_combout\);

-- Location: LCCOMB_X22_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[90]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[90]~114_combout\ = (\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (((\Div0|auto_generated|divider|divider|StageOut\(78))))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut\(78)))) # (!\Add0~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Add0~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut\(78),
	combout => \Div0|auto_generated|divider|divider|StageOut[90]~114_combout\);

-- Location: LCCOMB_X24_Y24_N12
\Div0|auto_generated|divider|divider|StageOut[89]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[89]~115_combout\ = (!\Add0~14_combout\ & (\tempo[0]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datac => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[89]~115_combout\);

-- Location: LCCOMB_X21_Y24_N12
\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[89]~115_combout\) # (GND))) # (!\tempo[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[89]~115_combout\ $ (VCC)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ = CARRY((\tempo[1]~input_o\) # (\Div0|auto_generated|divider|divider|StageOut[89]~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[89]~115_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\);

-- Location: LCCOMB_X21_Y24_N14
\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[90]~114_combout\ & ((\Add0~2_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\)) # (!\Add0~2_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[90]~114_combout\ & ((\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\) # (GND))) # 
-- (!\Add0~2_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[90]~114_combout\ & (\Add0~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[90]~114_combout\ & ((\Add0~2_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[90]~114_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\);

-- Location: LCCOMB_X21_Y24_N16
\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ = ((\Add0~4_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[91]~113_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ = CARRY((\Add0~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[91]~113_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\)) # (!\Add0~4_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[91]~113_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[91]~113_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\);

-- Location: LCCOMB_X21_Y24_N18
\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ = (\Add0~6_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[92]~112_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[92]~112_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\) # (GND))))) # (!\Add0~6_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[92]~112_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[92]~112_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ = CARRY((\Add0~6_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[92]~112_combout\))) # (!\Add0~6_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[92]~112_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[92]~112_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\);

-- Location: LCCOMB_X21_Y24_N20
\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ = ((\Add0~8_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[93]~111_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ = CARRY((\Add0~8_combout\ & (\Div0|auto_generated|divider|divider|StageOut[93]~111_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\)) # (!\Add0~8_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[93]~111_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[93]~111_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\);

-- Location: LCCOMB_X21_Y24_N22
\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ = (\Add0~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[94]~110_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[94]~110_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\) # (GND))))) # (!\Add0~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[94]~110_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[94]~110_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ = CARRY((\Add0~10_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[94]~110_combout\))) # (!\Add0~10_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[94]~110_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[94]~110_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\);

-- Location: LCCOMB_X21_Y24_N24
\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[95]~109_combout\ $ (\Add0~12_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[95]~109_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\) # (!\Add0~12_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[95]~109_combout\ & (!\Add0~12_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[95]~109_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\);

-- Location: LCCOMB_X21_Y24_N26
\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[96]~108_combout\ & ((\Add0~14_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\)) # (!\Add0~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[96]~108_combout\ & ((\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\) # (GND))) # 
-- (!\Add0~14_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[96]~108_combout\ & (\Add0~14_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[96]~108_combout\ & ((\Add0~14_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[96]~108_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\);

-- Location: LCCOMB_X21_Y24_N28
\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ = \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\);

-- Location: LCCOMB_X23_Y24_N22
\Div0|auto_generated|divider|divider|StageOut[108]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~117_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~117_combout\);

-- Location: LCCOMB_X23_Y24_N20
\Div0|auto_generated|divider|divider|StageOut[108]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~116_combout\ = (\Div0|auto_generated|divider|divider|StageOut[96]~108_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[96]~108_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~116_combout\);

-- Location: LCCOMB_X21_Y24_N4
\Div0|auto_generated|divider|divider|StageOut[107]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[107]~118_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\Div0|auto_generated|divider|divider|StageOut[95]~109_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[95]~109_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[107]~118_combout\);

-- Location: LCCOMB_X21_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[106]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[106]~119_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[94]~110_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[94]~110_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[106]~119_combout\);

-- Location: LCCOMB_X21_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[105]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~120_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[93]~111_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[93]~111_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~120_combout\);

-- Location: LCCOMB_X21_Y24_N6
\Div0|auto_generated|divider|divider|StageOut[104]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[104]~121_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[92]~112_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[92]~112_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[104]~121_combout\);

-- Location: LCCOMB_X21_Y25_N16
\Div0|auto_generated|divider|divider|StageOut[103]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[103]~122_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[91]~113_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[91]~113_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[103]~122_combout\);

-- Location: LCCOMB_X21_Y24_N8
\Div0|auto_generated|divider|divider|StageOut[102]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~123_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[90]~114_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[90]~114_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~123_combout\);

-- Location: LCCOMB_X21_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[101]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~124_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[89]~115_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[89]~115_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~124_combout\);

-- Location: LCCOMB_X24_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[100]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(100) = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\) # (!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut\(100));

-- Location: LCCOMB_X20_Y24_N10
\Div0|auto_generated|divider|divider|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~0_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut\(100)) # (GND))) # (!\tempo[1]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut\(100) $ (VCC)))
-- \Div0|auto_generated|divider|divider|op_1~1\ = CARRY((\tempo[1]~input_o\) # (\Div0|auto_generated|divider|divider|StageOut\(100)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut\(100),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_1~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~1\);

-- Location: LCCOMB_X20_Y24_N12
\Div0|auto_generated|divider|divider|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[101]~124_combout\ & ((\Add0~2_combout\ & (!\Div0|auto_generated|divider|divider|op_1~1\)) # (!\Add0~2_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_1~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[101]~124_combout\ & ((\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|op_1~1\) # (GND))) # (!\Add0~2_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_1~1\))))
-- \Div0|auto_generated|divider|divider|op_1~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[101]~124_combout\ & (\Add0~2_combout\ & !\Div0|auto_generated|divider|divider|op_1~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[101]~124_combout\ 
-- & ((\Add0~2_combout\) # (!\Div0|auto_generated|divider|divider|op_1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[101]~124_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~1\,
	combout => \Div0|auto_generated|divider|divider|op_1~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X20_Y24_N14
\Div0|auto_generated|divider|divider|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~4_combout\ = ((\Add0~4_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[102]~123_combout\ $ (\Div0|auto_generated|divider|divider|op_1~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_1~5\ = CARRY((\Add0~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[102]~123_combout\ & !\Div0|auto_generated|divider|divider|op_1~3\)) # (!\Add0~4_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[102]~123_combout\) # (!\Div0|auto_generated|divider|divider|op_1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[102]~123_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~3\,
	combout => \Div0|auto_generated|divider|divider|op_1~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X20_Y24_N16
\Div0|auto_generated|divider|divider|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[103]~122_combout\ & ((\Add0~6_combout\ & (!\Div0|auto_generated|divider|divider|op_1~5\)) # (!\Add0~6_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_1~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[103]~122_combout\ & ((\Add0~6_combout\ & ((\Div0|auto_generated|divider|divider|op_1~5\) # (GND))) # (!\Add0~6_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_1~5\))))
-- \Div0|auto_generated|divider|divider|op_1~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[103]~122_combout\ & (\Add0~6_combout\ & !\Div0|auto_generated|divider|divider|op_1~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[103]~122_combout\ 
-- & ((\Add0~6_combout\) # (!\Div0|auto_generated|divider|divider|op_1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[103]~122_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~5\,
	combout => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~7\);

-- Location: LCCOMB_X20_Y24_N18
\Div0|auto_generated|divider|divider|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[104]~121_combout\ $ (\Add0~8_combout\ $ (\Div0|auto_generated|divider|divider|op_1~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_1~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[104]~121_combout\ & ((!\Div0|auto_generated|divider|divider|op_1~7\) # (!\Add0~8_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[104]~121_combout\ & (!\Add0~8_combout\ & !\Div0|auto_generated|divider|divider|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[104]~121_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~7\,
	combout => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~9\);

-- Location: LCCOMB_X20_Y24_N20
\Div0|auto_generated|divider|divider|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~10_combout\ = (\Add0~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[105]~120_combout\ & (!\Div0|auto_generated|divider|divider|op_1~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[105]~120_combout\ & ((\Div0|auto_generated|divider|divider|op_1~9\) # (GND))))) # (!\Add0~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[105]~120_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_1~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[105]~120_combout\ & (!\Div0|auto_generated|divider|divider|op_1~9\))))
-- \Div0|auto_generated|divider|divider|op_1~11\ = CARRY((\Add0~10_combout\ & ((!\Div0|auto_generated|divider|divider|op_1~9\) # (!\Div0|auto_generated|divider|divider|StageOut[105]~120_combout\))) # (!\Add0~10_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[105]~120_combout\ & !\Div0|auto_generated|divider|divider|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[105]~120_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~9\,
	combout => \Div0|auto_generated|divider|divider|op_1~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~11\);

-- Location: LCCOMB_X20_Y24_N22
\Div0|auto_generated|divider|divider|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[106]~119_combout\ $ (\Add0~12_combout\ $ (\Div0|auto_generated|divider|divider|op_1~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_1~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[106]~119_combout\ & ((!\Div0|auto_generated|divider|divider|op_1~11\) # (!\Add0~12_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[106]~119_combout\ & (!\Add0~12_combout\ & !\Div0|auto_generated|divider|divider|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[106]~119_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~11\,
	combout => \Div0|auto_generated|divider|divider|op_1~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~13\);

-- Location: LCCOMB_X20_Y24_N24
\Div0|auto_generated|divider|divider|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~14_combout\ = (\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[107]~118_combout\ & (!\Div0|auto_generated|divider|divider|op_1~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[107]~118_combout\ & ((\Div0|auto_generated|divider|divider|op_1~13\) # (GND))))) # (!\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[107]~118_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_1~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[107]~118_combout\ & (!\Div0|auto_generated|divider|divider|op_1~13\))))
-- \Div0|auto_generated|divider|divider|op_1~15\ = CARRY((\Add0~14_combout\ & ((!\Div0|auto_generated|divider|divider|op_1~13\) # (!\Div0|auto_generated|divider|divider|StageOut[107]~118_combout\))) # (!\Add0~14_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[107]~118_combout\ & !\Div0|auto_generated|divider|divider|op_1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[107]~118_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~13\,
	combout => \Div0|auto_generated|divider|divider|op_1~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_1~15\);

-- Location: LCCOMB_X20_Y24_N26
\Div0|auto_generated|divider|divider|op_1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[108]~117_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[108]~116_combout\) # (!\Div0|auto_generated|divider|divider|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[108]~117_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[108]~116_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_1~15\,
	cout => \Div0|auto_generated|divider|divider|op_1~17_cout\);

-- Location: LCCOMB_X20_Y24_N28
\Div0|auto_generated|divider|divider|op_1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_1~18_combout\ = !\Div0|auto_generated|divider|divider|op_1~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_1~17_cout\,
	combout => \Div0|auto_generated|divider|divider|op_1~18_combout\);

-- Location: LCCOMB_X21_Y24_N10
\Div0|auto_generated|divider|divider|StageOut[119]~286\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~286_combout\ = (\Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[95]~109_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[95]~109_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~286_combout\);

-- Location: LCCOMB_X20_Y24_N8
\Div0|auto_generated|divider|divider|StageOut[119]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~125_combout\ = (\Div0|auto_generated|divider|divider|op_1~14_combout\ & !\Div0|auto_generated|divider|divider|op_1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_1~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~125_combout\);

-- Location: LCCOMB_X24_Y23_N24
\Div0|auto_generated|divider|divider|StageOut[118]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[118]~126_combout\ = (\Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[106]~119_combout\))) # (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[106]~119_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[118]~126_combout\);

-- Location: LCCOMB_X20_Y24_N6
\Div0|auto_generated|divider|divider|StageOut[117]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~127_combout\ = (\Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[105]~120_combout\))) # (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_1~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[105]~120_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~127_combout\);

-- Location: LCCOMB_X20_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[116]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[116]~128_combout\ = (\Div0|auto_generated|divider|divider|op_1~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[104]~121_combout\)) # (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[104]~121_combout\,
	datab => \Div0|auto_generated|divider|divider|op_1~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[116]~128_combout\);

-- Location: LCCOMB_X20_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[115]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~129_combout\ = (\Div0|auto_generated|divider|divider|op_1~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[103]~122_combout\)) # (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[103]~122_combout\,
	datab => \Div0|auto_generated|divider|divider|op_1~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~129_combout\);

-- Location: LCCOMB_X20_Y24_N4
\Div0|auto_generated|divider|divider|StageOut[114]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~130_combout\ = (\Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[102]~123_combout\))) # (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_1~4_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[102]~123_combout\,
	datad => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~130_combout\);

-- Location: LCCOMB_X20_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[113]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[113]~131_combout\ = (\Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[101]~124_combout\))) # (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[101]~124_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[113]~131_combout\);

-- Location: LCCOMB_X24_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[112]~287\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~287_combout\ = (\Div0|auto_generated|divider|divider|op_1~18_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\) # (!\tempo[0]~input_o\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & (\Div0|auto_generated|divider|divider|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_1~0_combout\,
	datac => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~287_combout\);

-- Location: LCCOMB_X24_Y24_N16
\Div0|auto_generated|divider|divider|StageOut[111]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(111) = (\Div0|auto_generated|divider|divider|op_1~18_combout\) # (!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datac => \tempo[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut\(111));

-- Location: LCCOMB_X24_Y26_N4
\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1_cout\);

-- Location: LCCOMB_X24_Y26_N6
\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut\(111) & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1_cout\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut\(111) & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1_cout\)))) # (!\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut\(111) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut\(111) & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|StageOut\(111) & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut\(111)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut\(111),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X24_Y26_N8
\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = ((\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[112]~287_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((\Add0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[112]~287_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\)) # (!\Add0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[112]~287_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[112]~287_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X24_Y26_N10
\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[113]~131_combout\ & ((\Add0~4_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)) # (!\Add0~4_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[113]~131_combout\ & ((\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\) # (GND))) # 
-- (!\Add0~4_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[113]~131_combout\ & (\Add0~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[113]~131_combout\ & ((\Add0~4_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[113]~131_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\);

-- Location: LCCOMB_X24_Y26_N12
\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[114]~130_combout\ $ (\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[114]~130_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\) # (!\Add0~6_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[114]~130_combout\ & (!\Add0~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[114]~130_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\);

-- Location: LCCOMB_X24_Y26_N14
\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[115]~129_combout\ & ((\Add0~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\)) # (!\Add0~8_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[115]~129_combout\ & ((\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\) # (GND))) # 
-- (!\Add0~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[115]~129_combout\ & (\Add0~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[115]~129_combout\ & ((\Add0~8_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[115]~129_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\);

-- Location: LCCOMB_X24_Y26_N16
\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ = ((\Add0~10_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[116]~128_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\ = CARRY((\Add0~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[116]~128_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\)) # (!\Add0~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[116]~128_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[116]~128_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\);

-- Location: LCCOMB_X24_Y26_N18
\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[117]~127_combout\ & ((\Add0~12_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\)) # 
-- (!\Add0~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[117]~127_combout\ & ((\Add0~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\) # (GND))) # (!\Add0~12_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[117]~127_combout\ & (\Add0~12_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[117]~127_combout\ & ((\Add0~12_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[117]~127_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\);

-- Location: LCCOMB_X24_Y26_N20
\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~16_combout\ = ((\Add0~14_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[118]~126_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\ = CARRY((\Add0~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[118]~126_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\)) # (!\Add0~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[118]~126_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[118]~126_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~16_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\);

-- Location: LCCOMB_X24_Y26_N22
\Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[119]~286_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[119]~125_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[119]~286_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[119]~125_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\);

-- Location: LCCOMB_X24_Y26_N24
\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ = \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\);

-- Location: LCCOMB_X24_Y23_N16
\Div0|auto_generated|divider|divider|StageOut[130]~288\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~288_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|op_1~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[106]~119_combout\))) # (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & (\Div0|auto_generated|divider|divider|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[106]~119_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~288_combout\);

-- Location: LCCOMB_X27_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[130]~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~132_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~16_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~132_combout\);

-- Location: LCCOMB_X26_Y26_N20
\Div0|auto_generated|divider|divider|StageOut[129]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[129]~133_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[117]~127_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[117]~127_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[129]~133_combout\);

-- Location: LCCOMB_X24_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[128]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~134_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[116]~128_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[116]~128_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~134_combout\);

-- Location: LCCOMB_X24_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[127]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[127]~135_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[115]~129_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[115]~129_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[127]~135_combout\);

-- Location: LCCOMB_X24_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[126]~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~136_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[114]~130_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[114]~130_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~136_combout\);

-- Location: LCCOMB_X24_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[125]~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~137_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[113]~131_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[113]~131_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~137_combout\);

-- Location: LCCOMB_X24_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[124]~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[124]~138_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[112]~287_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[112]~287_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[124]~138_combout\);

-- Location: LCCOMB_X26_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[123]~289\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[123]~289_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & (((\Div0|auto_generated|divider|divider|op_1~18_combout\)) # (!\tempo[0]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[123]~289_combout\);

-- Location: LCCOMB_X26_Y26_N22
\Div0|auto_generated|divider|divider|StageOut[122]~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[122]~139_combout\ = (\tempo[0]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[122]~139_combout\);

-- Location: LCCOMB_X28_Y26_N10
\Div0|auto_generated|divider|divider|op_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~0_combout\ = (\Div0|auto_generated|divider|divider|StageOut[122]~139_combout\ & ((\tempo[1]~input_o\) # (GND))) # (!\Div0|auto_generated|divider|divider|StageOut[122]~139_combout\ & (\tempo[1]~input_o\ $ (VCC)))
-- \Div0|auto_generated|divider|divider|op_3~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[122]~139_combout\) # (\tempo[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[122]~139_combout\,
	datab => \tempo[1]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X28_Y26_N12
\Div0|auto_generated|divider|divider|op_3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~2_combout\ = (\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[123]~289_combout\ & (!\Div0|auto_generated|divider|divider|op_3~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[123]~289_combout\ & ((\Div0|auto_generated|divider|divider|op_3~1\) # (GND))))) # (!\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[123]~289_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_3~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[123]~289_combout\ & (!\Div0|auto_generated|divider|divider|op_3~1\))))
-- \Div0|auto_generated|divider|divider|op_3~3\ = CARRY((\Add0~2_combout\ & ((!\Div0|auto_generated|divider|divider|op_3~1\) # (!\Div0|auto_generated|divider|divider|StageOut[123]~289_combout\))) # (!\Add0~2_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[123]~289_combout\ & !\Div0|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[123]~289_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~1\,
	combout => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X28_Y26_N14
\Div0|auto_generated|divider|divider|op_3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~4_combout\ = ((\Add0~4_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[124]~138_combout\ $ (\Div0|auto_generated|divider|divider|op_3~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_3~5\ = CARRY((\Add0~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[124]~138_combout\ & !\Div0|auto_generated|divider|divider|op_3~3\)) # (!\Add0~4_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[124]~138_combout\) # (!\Div0|auto_generated|divider|divider|op_3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[124]~138_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~3\,
	combout => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X28_Y26_N16
\Div0|auto_generated|divider|divider|op_3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[125]~137_combout\ & ((\Add0~6_combout\ & (!\Div0|auto_generated|divider|divider|op_3~5\)) # (!\Add0~6_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_3~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[125]~137_combout\ & ((\Add0~6_combout\ & ((\Div0|auto_generated|divider|divider|op_3~5\) # (GND))) # (!\Add0~6_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_3~5\))))
-- \Div0|auto_generated|divider|divider|op_3~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[125]~137_combout\ & (\Add0~6_combout\ & !\Div0|auto_generated|divider|divider|op_3~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[125]~137_combout\ 
-- & ((\Add0~6_combout\) # (!\Div0|auto_generated|divider|divider|op_3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[125]~137_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~5\,
	combout => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X28_Y26_N18
\Div0|auto_generated|divider|divider|op_3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~8_combout\ = ((\Add0~8_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[126]~136_combout\ $ (\Div0|auto_generated|divider|divider|op_3~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_3~9\ = CARRY((\Add0~8_combout\ & (\Div0|auto_generated|divider|divider|StageOut[126]~136_combout\ & !\Div0|auto_generated|divider|divider|op_3~7\)) # (!\Add0~8_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[126]~136_combout\) # (!\Div0|auto_generated|divider|divider|op_3~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[126]~136_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~7\,
	combout => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~9\);

-- Location: LCCOMB_X28_Y26_N20
\Div0|auto_generated|divider|divider|op_3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~10_combout\ = (\Add0~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[127]~135_combout\ & (!\Div0|auto_generated|divider|divider|op_3~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[127]~135_combout\ & ((\Div0|auto_generated|divider|divider|op_3~9\) # (GND))))) # (!\Add0~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[127]~135_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_3~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[127]~135_combout\ & (!\Div0|auto_generated|divider|divider|op_3~9\))))
-- \Div0|auto_generated|divider|divider|op_3~11\ = CARRY((\Add0~10_combout\ & ((!\Div0|auto_generated|divider|divider|op_3~9\) # (!\Div0|auto_generated|divider|divider|StageOut[127]~135_combout\))) # (!\Add0~10_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[127]~135_combout\ & !\Div0|auto_generated|divider|divider|op_3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[127]~135_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~9\,
	combout => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~11\);

-- Location: LCCOMB_X28_Y26_N22
\Div0|auto_generated|divider|divider|op_3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[128]~134_combout\ $ (\Add0~12_combout\ $ (\Div0|auto_generated|divider|divider|op_3~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_3~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[128]~134_combout\ & ((!\Div0|auto_generated|divider|divider|op_3~11\) # (!\Add0~12_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[128]~134_combout\ & (!\Add0~12_combout\ & !\Div0|auto_generated|divider|divider|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[128]~134_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~11\,
	combout => \Div0|auto_generated|divider|divider|op_3~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~13\);

-- Location: LCCOMB_X28_Y26_N24
\Div0|auto_generated|divider|divider|op_3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[129]~133_combout\ & ((\Add0~14_combout\ & (!\Div0|auto_generated|divider|divider|op_3~13\)) # (!\Add0~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_3~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[129]~133_combout\ & ((\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|op_3~13\) # (GND))) # (!\Add0~14_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_3~13\))))
-- \Div0|auto_generated|divider|divider|op_3~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[129]~133_combout\ & (\Add0~14_combout\ & !\Div0|auto_generated|divider|divider|op_3~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[129]~133_combout\ & ((\Add0~14_combout\) # (!\Div0|auto_generated|divider|divider|op_3~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[129]~133_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~13\,
	combout => \Div0|auto_generated|divider|divider|op_3~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~15\);

-- Location: LCCOMB_X28_Y26_N26
\Div0|auto_generated|divider|divider|op_3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[130]~288_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[130]~132_combout\) # (!\Div0|auto_generated|divider|divider|op_3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[130]~288_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[130]~132_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~15\,
	cout => \Div0|auto_generated|divider|divider|op_3~17_cout\);

-- Location: LCCOMB_X28_Y26_N28
\Div0|auto_generated|divider|divider|op_3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~18_combout\ = !\Div0|auto_generated|divider|divider|op_3~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_3~17_cout\,
	combout => \Div0|auto_generated|divider|divider|op_3~18_combout\);

-- Location: LCCOMB_X28_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[141]~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~140_combout\ = (\Div0|auto_generated|divider|divider|op_3~14_combout\ & !\Div0|auto_generated|divider|divider|op_3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~140_combout\);

-- Location: LCCOMB_X26_Y26_N24
\Div0|auto_generated|divider|divider|StageOut[141]~290\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~290_combout\ = (\Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[117]~127_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[117]~127_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~290_combout\);

-- Location: LCCOMB_X26_Y26_N16
\Div0|auto_generated|divider|divider|StageOut[140]~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~141_combout\ = (\Div0|auto_generated|divider|divider|op_3~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[128]~134_combout\)) # (!\Div0|auto_generated|divider|divider|op_3~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[128]~134_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~141_combout\);

-- Location: LCCOMB_X28_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[139]~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[139]~142_combout\ = (\Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[127]~135_combout\))) # (!\Div0|auto_generated|divider|divider|op_3~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[127]~135_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[139]~142_combout\);

-- Location: LCCOMB_X28_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[138]~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[138]~143_combout\ = (\Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[126]~136_combout\))) # (!\Div0|auto_generated|divider|divider|op_3~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[126]~136_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[138]~143_combout\);

-- Location: LCCOMB_X28_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[137]~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~144_combout\ = (\Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[125]~137_combout\))) # (!\Div0|auto_generated|divider|divider|op_3~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[125]~137_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~144_combout\);

-- Location: LCCOMB_X28_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[136]~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~145_combout\ = (\Div0|auto_generated|divider|divider|op_3~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[124]~138_combout\)) # (!\Div0|auto_generated|divider|divider|op_3~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[124]~138_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~145_combout\);

-- Location: LCCOMB_X28_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[135]~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~146_combout\ = (\Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[123]~289_combout\))) # (!\Div0|auto_generated|divider|divider|op_3~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[123]~289_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~146_combout\);

-- Location: LCCOMB_X26_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[134]~291\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[134]~291_combout\ = (\Div0|auto_generated|divider|divider|op_3~18_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & \tempo[0]~input_o\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~18_combout\ & (\Div0|auto_generated|divider|divider|op_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	datac => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[134]~291_combout\);

-- Location: LCCOMB_X26_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[133]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(133) = (\Div0|auto_generated|divider|divider|op_3~18_combout\) # (!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut\(133));

-- Location: LCCOMB_X27_Y26_N6
\Div0|auto_generated|divider|divider|op_4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_4~1_cout\);

-- Location: LCCOMB_X27_Y26_N8
\Div0|auto_generated|divider|divider|op_4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~2_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut\(133) & (\Div0|auto_generated|divider|divider|op_4~1_cout\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut\(133) & 
-- (!\Div0|auto_generated|divider|divider|op_4~1_cout\)))) # (!\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut\(133) & (!\Div0|auto_generated|divider|divider|op_4~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut\(133) & 
-- ((\Div0|auto_generated|divider|divider|op_4~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_4~3\ = CARRY((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|StageOut\(133) & !\Div0|auto_generated|divider|divider|op_4~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((!\Div0|auto_generated|divider|divider|op_4~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut\(133)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut\(133),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X27_Y26_N10
\Div0|auto_generated|divider|divider|op_4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[134]~291_combout\ $ (\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|op_4~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_4~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[134]~291_combout\ & ((!\Div0|auto_generated|divider|divider|op_4~3\) # (!\Add0~2_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[134]~291_combout\ & (!\Add0~2_combout\ & !\Div0|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[134]~291_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~3\,
	combout => \Div0|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X27_Y26_N12
\Div0|auto_generated|divider|divider|op_4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[135]~146_combout\ & ((\Add0~4_combout\ & (!\Div0|auto_generated|divider|divider|op_4~5\)) # (!\Add0~4_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_4~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[135]~146_combout\ & ((\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|op_4~5\) # (GND))) # (!\Add0~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_4~5\))))
-- \Div0|auto_generated|divider|divider|op_4~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[135]~146_combout\ & (\Add0~4_combout\ & !\Div0|auto_generated|divider|divider|op_4~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[135]~146_combout\ 
-- & ((\Add0~4_combout\) # (!\Div0|auto_generated|divider|divider|op_4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[135]~146_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~5\,
	combout => \Div0|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X27_Y26_N14
\Div0|auto_generated|divider|divider|op_4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[136]~145_combout\ $ (\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|op_4~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_4~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[136]~145_combout\ & ((!\Div0|auto_generated|divider|divider|op_4~7\) # (!\Add0~6_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[136]~145_combout\ & (!\Add0~6_combout\ & !\Div0|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[136]~145_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~7\,
	combout => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~9\);

-- Location: LCCOMB_X27_Y26_N16
\Div0|auto_generated|divider|divider|op_4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[137]~144_combout\ & ((\Add0~8_combout\ & (!\Div0|auto_generated|divider|divider|op_4~9\)) # (!\Add0~8_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_4~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[137]~144_combout\ & ((\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|op_4~9\) # (GND))) # (!\Add0~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_4~9\))))
-- \Div0|auto_generated|divider|divider|op_4~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[137]~144_combout\ & (\Add0~8_combout\ & !\Div0|auto_generated|divider|divider|op_4~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[137]~144_combout\ & ((\Add0~8_combout\) # (!\Div0|auto_generated|divider|divider|op_4~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[137]~144_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~9\,
	combout => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~11\);

-- Location: LCCOMB_X27_Y26_N18
\Div0|auto_generated|divider|divider|op_4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~12_combout\ = ((\Add0~10_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[138]~143_combout\ $ (\Div0|auto_generated|divider|divider|op_4~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_4~13\ = CARRY((\Add0~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[138]~143_combout\ & !\Div0|auto_generated|divider|divider|op_4~11\)) # (!\Add0~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[138]~143_combout\) # (!\Div0|auto_generated|divider|divider|op_4~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[138]~143_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~11\,
	combout => \Div0|auto_generated|divider|divider|op_4~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~13\);

-- Location: LCCOMB_X27_Y26_N20
\Div0|auto_generated|divider|divider|op_4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~14_combout\ = (\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[139]~142_combout\ & (!\Div0|auto_generated|divider|divider|op_4~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[139]~142_combout\ & ((\Div0|auto_generated|divider|divider|op_4~13\) # (GND))))) # (!\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[139]~142_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_4~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[139]~142_combout\ & (!\Div0|auto_generated|divider|divider|op_4~13\))))
-- \Div0|auto_generated|divider|divider|op_4~15\ = CARRY((\Add0~12_combout\ & ((!\Div0|auto_generated|divider|divider|op_4~13\) # (!\Div0|auto_generated|divider|divider|StageOut[139]~142_combout\))) # (!\Add0~12_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[139]~142_combout\ & !\Div0|auto_generated|divider|divider|op_4~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[139]~142_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~13\,
	combout => \Div0|auto_generated|divider|divider|op_4~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~15\);

-- Location: LCCOMB_X27_Y26_N22
\Div0|auto_generated|divider|divider|op_4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~16_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[140]~141_combout\ $ (\Add0~14_combout\ $ (\Div0|auto_generated|divider|divider|op_4~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_4~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[140]~141_combout\ & ((!\Div0|auto_generated|divider|divider|op_4~15\) # (!\Add0~14_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[140]~141_combout\ & (!\Add0~14_combout\ & !\Div0|auto_generated|divider|divider|op_4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[140]~141_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~15\,
	combout => \Div0|auto_generated|divider|divider|op_4~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_4~17\);

-- Location: LCCOMB_X27_Y26_N24
\Div0|auto_generated|divider|divider|op_4~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[141]~140_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[141]~290_combout\ & !\Div0|auto_generated|divider|divider|op_4~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[141]~140_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[141]~290_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~17\,
	cout => \Div0|auto_generated|divider|divider|op_4~19_cout\);

-- Location: LCCOMB_X27_Y26_N26
\Div0|auto_generated|divider|divider|op_4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~20_combout\ = \Div0|auto_generated|divider|divider|op_4~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_4~19_cout\,
	combout => \Div0|auto_generated|divider|divider|op_4~20_combout\);

-- Location: LCCOMB_X26_Y26_N12
\Div0|auto_generated|divider|divider|StageOut[152]~292\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[152]~292_combout\ = (\Div0|auto_generated|divider|divider|op_4~20_combout\ & ((\Div0|auto_generated|divider|divider|op_3~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[128]~134_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\Div0|auto_generated|divider|divider|op_3~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[128]~134_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[152]~292_combout\);

-- Location: LCCOMB_X26_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[152]~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[152]~147_combout\ = (\Div0|auto_generated|divider|divider|op_4~16_combout\ & !\Div0|auto_generated|divider|divider|op_4~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_4~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[152]~147_combout\);

-- Location: LCCOMB_X26_Y26_N10
\Div0|auto_generated|divider|divider|StageOut[151]~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[151]~148_combout\ = (\Div0|auto_generated|divider|divider|op_4~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[139]~142_combout\))) # (!\Div0|auto_generated|divider|divider|op_4~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_4~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[139]~142_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[151]~148_combout\);

-- Location: LCCOMB_X27_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[150]~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[150]~149_combout\ = (\Div0|auto_generated|divider|divider|op_4~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[138]~143_combout\))) # (!\Div0|auto_generated|divider|divider|op_4~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~20_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[138]~143_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[150]~149_combout\);

-- Location: LCCOMB_X27_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[149]~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[149]~150_combout\ = (\Div0|auto_generated|divider|divider|op_4~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[137]~144_combout\)) # (!\Div0|auto_generated|divider|divider|op_4~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[137]~144_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[149]~150_combout\);

-- Location: LCCOMB_X27_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[148]~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[148]~151_combout\ = (\Div0|auto_generated|divider|divider|op_4~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[136]~145_combout\)) # (!\Div0|auto_generated|divider|divider|op_4~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[136]~145_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[148]~151_combout\);

-- Location: LCCOMB_X27_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[147]~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[147]~152_combout\ = (\Div0|auto_generated|divider|divider|op_4~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[135]~146_combout\))) # (!\Div0|auto_generated|divider|divider|op_4~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~6_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[135]~146_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[147]~152_combout\);

-- Location: LCCOMB_X26_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[146]~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[146]~153_combout\ = (\Div0|auto_generated|divider|divider|op_4~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[134]~291_combout\)) # (!\Div0|auto_generated|divider|divider|op_4~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[134]~291_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[146]~153_combout\);

-- Location: LCCOMB_X26_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[145]~293\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[145]~293_combout\ = (\Div0|auto_generated|divider|divider|op_4~20_combout\ & (((\Div0|auto_generated|divider|divider|op_3~18_combout\)) # (!\tempo[0]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|op_4~20_combout\ & (((\Div0|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|op_4~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[145]~293_combout\);

-- Location: LCCOMB_X26_Y26_N14
\Div0|auto_generated|divider|divider|StageOut[144]~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[144]~154_combout\ = (\tempo[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_4~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_4~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[144]~154_combout\);

-- Location: LCCOMB_X23_Y26_N0
\Div0|auto_generated|divider|divider|op_5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_5~1_cout\);

-- Location: LCCOMB_X23_Y26_N2
\Div0|auto_generated|divider|divider|op_5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~2_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[144]~154_combout\ & (\Div0|auto_generated|divider|divider|op_5~1_cout\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[144]~154_combout\ & (!\Div0|auto_generated|divider|divider|op_5~1_cout\)))) # (!\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[144]~154_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_5~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut[144]~154_combout\ & ((\Div0|auto_generated|divider|divider|op_5~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_5~3\ = CARRY((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|StageOut[144]~154_combout\ & !\Div0|auto_generated|divider|divider|op_5~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((!\Div0|auto_generated|divider|divider|op_5~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[144]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[144]~154_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X23_Y26_N4
\Div0|auto_generated|divider|divider|op_5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~4_combout\ = ((\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[145]~293_combout\ $ (\Div0|auto_generated|divider|divider|op_5~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_5~5\ = CARRY((\Add0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[145]~293_combout\ & !\Div0|auto_generated|divider|divider|op_5~3\)) # (!\Add0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[145]~293_combout\) # (!\Div0|auto_generated|divider|divider|op_5~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[145]~293_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~3\,
	combout => \Div0|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X23_Y26_N6
\Div0|auto_generated|divider|divider|op_5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~6_combout\ = (\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[146]~153_combout\ & (!\Div0|auto_generated|divider|divider|op_5~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[146]~153_combout\ & ((\Div0|auto_generated|divider|divider|op_5~5\) # (GND))))) # (!\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[146]~153_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[146]~153_combout\ & (!\Div0|auto_generated|divider|divider|op_5~5\))))
-- \Div0|auto_generated|divider|divider|op_5~7\ = CARRY((\Add0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~5\) # (!\Div0|auto_generated|divider|divider|StageOut[146]~153_combout\))) # (!\Add0~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[146]~153_combout\ & !\Div0|auto_generated|divider|divider|op_5~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[146]~153_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~5\,
	combout => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X23_Y26_N8
\Div0|auto_generated|divider|divider|op_5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~8_combout\ = ((\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[147]~152_combout\ $ (\Div0|auto_generated|divider|divider|op_5~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_5~9\ = CARRY((\Add0~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[147]~152_combout\ & !\Div0|auto_generated|divider|divider|op_5~7\)) # (!\Add0~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[147]~152_combout\) # (!\Div0|auto_generated|divider|divider|op_5~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[147]~152_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~7\,
	combout => \Div0|auto_generated|divider|divider|op_5~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X23_Y26_N10
\Div0|auto_generated|divider|divider|op_5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~10_combout\ = (\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[148]~151_combout\ & (!\Div0|auto_generated|divider|divider|op_5~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[148]~151_combout\ & ((\Div0|auto_generated|divider|divider|op_5~9\) # (GND))))) # (!\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[148]~151_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[148]~151_combout\ & (!\Div0|auto_generated|divider|divider|op_5~9\))))
-- \Div0|auto_generated|divider|divider|op_5~11\ = CARRY((\Add0~8_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~9\) # (!\Div0|auto_generated|divider|divider|StageOut[148]~151_combout\))) # (!\Add0~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[148]~151_combout\ & !\Div0|auto_generated|divider|divider|op_5~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[148]~151_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~9\,
	combout => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~11\);

-- Location: LCCOMB_X23_Y26_N12
\Div0|auto_generated|divider|divider|op_5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~12_combout\ = ((\Add0~10_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[149]~150_combout\ $ (\Div0|auto_generated|divider|divider|op_5~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_5~13\ = CARRY((\Add0~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[149]~150_combout\ & !\Div0|auto_generated|divider|divider|op_5~11\)) # (!\Add0~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[149]~150_combout\) # (!\Div0|auto_generated|divider|divider|op_5~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[149]~150_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~11\,
	combout => \Div0|auto_generated|divider|divider|op_5~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~13\);

-- Location: LCCOMB_X23_Y26_N14
\Div0|auto_generated|divider|divider|op_5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~14_combout\ = (\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[150]~149_combout\ & (!\Div0|auto_generated|divider|divider|op_5~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[150]~149_combout\ & ((\Div0|auto_generated|divider|divider|op_5~13\) # (GND))))) # (!\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[150]~149_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[150]~149_combout\ & (!\Div0|auto_generated|divider|divider|op_5~13\))))
-- \Div0|auto_generated|divider|divider|op_5~15\ = CARRY((\Add0~12_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~13\) # (!\Div0|auto_generated|divider|divider|StageOut[150]~149_combout\))) # (!\Add0~12_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[150]~149_combout\ & !\Div0|auto_generated|divider|divider|op_5~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[150]~149_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~13\,
	combout => \Div0|auto_generated|divider|divider|op_5~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~15\);

-- Location: LCCOMB_X23_Y26_N16
\Div0|auto_generated|divider|divider|op_5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~16_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[151]~148_combout\ $ (\Add0~14_combout\ $ (\Div0|auto_generated|divider|divider|op_5~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_5~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[151]~148_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~15\) # (!\Add0~14_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[151]~148_combout\ & (!\Add0~14_combout\ & !\Div0|auto_generated|divider|divider|op_5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[151]~148_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~15\,
	combout => \Div0|auto_generated|divider|divider|op_5~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~17\);

-- Location: LCCOMB_X23_Y26_N18
\Div0|auto_generated|divider|divider|op_5~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[152]~292_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[152]~147_combout\ & !\Div0|auto_generated|divider|divider|op_5~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[152]~292_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[152]~147_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~17\,
	cout => \Div0|auto_generated|divider|divider|op_5~19_cout\);

-- Location: LCCOMB_X23_Y26_N20
\Div0|auto_generated|divider|divider|op_5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~20_combout\ = \Div0|auto_generated|divider|divider|op_5~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~19_cout\,
	combout => \Div0|auto_generated|divider|divider|op_5~20_combout\);

-- Location: LCCOMB_X26_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[163]~294\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[163]~294_combout\ = (\Div0|auto_generated|divider|divider|op_5~20_combout\ & ((\Div0|auto_generated|divider|divider|op_4~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[139]~142_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_4~20_combout\ & (\Div0|auto_generated|divider|divider|op_4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~20_combout\,
	datab => \Div0|auto_generated|divider|divider|op_4~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_4~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[139]~142_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[163]~294_combout\);

-- Location: LCCOMB_X26_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[163]~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[163]~155_combout\ = (\Div0|auto_generated|divider|divider|op_5~16_combout\ & !\Div0|auto_generated|divider|divider|op_5~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_5~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[163]~155_combout\);

-- Location: LCCOMB_X21_Y23_N4
\Div0|auto_generated|divider|divider|StageOut[162]~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[162]~156_combout\ = (\Div0|auto_generated|divider|divider|op_5~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[150]~149_combout\))) # (!\Div0|auto_generated|divider|divider|op_5~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[150]~149_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[162]~156_combout\);

-- Location: LCCOMB_X23_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[161]~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[161]~157_combout\ = (\Div0|auto_generated|divider|divider|op_5~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[149]~150_combout\))) # (!\Div0|auto_generated|divider|divider|op_5~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~12_combout\,
	datab => \Div0|auto_generated|divider|divider|op_5~20_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[149]~150_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[161]~157_combout\);

-- Location: LCCOMB_X23_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[160]~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[160]~158_combout\ = (\Div0|auto_generated|divider|divider|op_5~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[148]~151_combout\))) # (!\Div0|auto_generated|divider|divider|op_5~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_5~20_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[148]~151_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[160]~158_combout\);

-- Location: LCCOMB_X23_Y26_N22
\Div0|auto_generated|divider|divider|StageOut[159]~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[159]~159_combout\ = (\Div0|auto_generated|divider|divider|op_5~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[147]~152_combout\))) # (!\Div0|auto_generated|divider|divider|op_5~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_5~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[147]~152_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[159]~159_combout\);

-- Location: LCCOMB_X23_Y26_N24
\Div0|auto_generated|divider|divider|StageOut[158]~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[158]~160_combout\ = (\Div0|auto_generated|divider|divider|op_5~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[146]~153_combout\))) # (!\Div0|auto_generated|divider|divider|op_5~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_5~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[146]~153_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[158]~160_combout\);

-- Location: LCCOMB_X23_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[157]~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[157]~161_combout\ = (\Div0|auto_generated|divider|divider|op_5~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[145]~293_combout\))) # (!\Div0|auto_generated|divider|divider|op_5~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_5~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[145]~293_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[157]~161_combout\);

-- Location: LCCOMB_X26_Y26_N18
\Div0|auto_generated|divider|divider|StageOut[156]~295\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[156]~295_combout\ = (\Div0|auto_generated|divider|divider|op_5~20_combout\ & (((\tempo[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_4~20_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_5~20_combout\ & (\Div0|auto_generated|divider|divider|op_5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~20_combout\,
	datab => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	datac => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_4~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[156]~295_combout\);

-- Location: LCCOMB_X21_Y23_N26
\Div0|auto_generated|divider|divider|StageOut[155]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[155]~162_combout\ = (\tempo[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_5~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_5~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[155]~162_combout\);

-- Location: LCCOMB_X23_Y23_N4
\Div0|auto_generated|divider|divider|op_6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X23_Y23_N6
\Div0|auto_generated|divider|divider|op_6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[155]~162_combout\ & ((\tempo[1]~input_o\ & (\Div0|auto_generated|divider|divider|op_6~1_cout\ & VCC)) # (!\tempo[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|op_6~1_cout\)))) # (!\Div0|auto_generated|divider|divider|StageOut[155]~162_combout\ & ((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|op_6~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_6~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[155]~162_combout\ & (!\tempo[1]~input_o\ & !\Div0|auto_generated|divider|divider|op_6~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[155]~162_combout\ & ((!\Div0|auto_generated|divider|divider|op_6~1_cout\) # (!\tempo[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[155]~162_combout\,
	datab => \tempo[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X23_Y23_N8
\Div0|auto_generated|divider|divider|op_6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~4_combout\ = ((\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[156]~295_combout\ $ (\Div0|auto_generated|divider|divider|op_6~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_6~5\ = CARRY((\Add0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[156]~295_combout\ & !\Div0|auto_generated|divider|divider|op_6~3\)) # (!\Add0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[156]~295_combout\) # (!\Div0|auto_generated|divider|divider|op_6~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[156]~295_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~3\,
	combout => \Div0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X23_Y23_N10
\Div0|auto_generated|divider|divider|op_6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~6_combout\ = (\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[157]~161_combout\ & (!\Div0|auto_generated|divider|divider|op_6~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[157]~161_combout\ & ((\Div0|auto_generated|divider|divider|op_6~5\) # (GND))))) # (!\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[157]~161_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[157]~161_combout\ & (!\Div0|auto_generated|divider|divider|op_6~5\))))
-- \Div0|auto_generated|divider|divider|op_6~7\ = CARRY((\Add0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_6~5\) # (!\Div0|auto_generated|divider|divider|StageOut[157]~161_combout\))) # (!\Add0~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[157]~161_combout\ & !\Div0|auto_generated|divider|divider|op_6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[157]~161_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~5\,
	combout => \Div0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X23_Y23_N12
\Div0|auto_generated|divider|divider|op_6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~8_combout\ = ((\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[158]~160_combout\ $ (\Div0|auto_generated|divider|divider|op_6~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_6~9\ = CARRY((\Add0~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[158]~160_combout\ & !\Div0|auto_generated|divider|divider|op_6~7\)) # (!\Add0~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[158]~160_combout\) # (!\Div0|auto_generated|divider|divider|op_6~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[158]~160_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~7\,
	combout => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X23_Y23_N14
\Div0|auto_generated|divider|divider|op_6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~10_combout\ = (\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[159]~159_combout\ & (!\Div0|auto_generated|divider|divider|op_6~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[159]~159_combout\ & ((\Div0|auto_generated|divider|divider|op_6~9\) # (GND))))) # (!\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[159]~159_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[159]~159_combout\ & (!\Div0|auto_generated|divider|divider|op_6~9\))))
-- \Div0|auto_generated|divider|divider|op_6~11\ = CARRY((\Add0~8_combout\ & ((!\Div0|auto_generated|divider|divider|op_6~9\) # (!\Div0|auto_generated|divider|divider|StageOut[159]~159_combout\))) # (!\Add0~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[159]~159_combout\ & !\Div0|auto_generated|divider|divider|op_6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[159]~159_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~9\,
	combout => \Div0|auto_generated|divider|divider|op_6~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X23_Y23_N16
\Div0|auto_generated|divider|divider|op_6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~12_combout\ = ((\Add0~10_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[160]~158_combout\ $ (\Div0|auto_generated|divider|divider|op_6~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_6~13\ = CARRY((\Add0~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[160]~158_combout\ & !\Div0|auto_generated|divider|divider|op_6~11\)) # (!\Add0~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[160]~158_combout\) # (!\Div0|auto_generated|divider|divider|op_6~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[160]~158_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~11\,
	combout => \Div0|auto_generated|divider|divider|op_6~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~13\);

-- Location: LCCOMB_X23_Y23_N18
\Div0|auto_generated|divider|divider|op_6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~14_combout\ = (\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[161]~157_combout\ & (!\Div0|auto_generated|divider|divider|op_6~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[161]~157_combout\ & ((\Div0|auto_generated|divider|divider|op_6~13\) # (GND))))) # (!\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[161]~157_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[161]~157_combout\ & (!\Div0|auto_generated|divider|divider|op_6~13\))))
-- \Div0|auto_generated|divider|divider|op_6~15\ = CARRY((\Add0~12_combout\ & ((!\Div0|auto_generated|divider|divider|op_6~13\) # (!\Div0|auto_generated|divider|divider|StageOut[161]~157_combout\))) # (!\Add0~12_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[161]~157_combout\ & !\Div0|auto_generated|divider|divider|op_6~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[161]~157_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~13\,
	combout => \Div0|auto_generated|divider|divider|op_6~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~15\);

-- Location: LCCOMB_X23_Y23_N20
\Div0|auto_generated|divider|divider|op_6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~16_combout\ = ((\Add0~14_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[162]~156_combout\ $ (\Div0|auto_generated|divider|divider|op_6~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_6~17\ = CARRY((\Add0~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[162]~156_combout\ & !\Div0|auto_generated|divider|divider|op_6~15\)) # (!\Add0~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[162]~156_combout\) # (!\Div0|auto_generated|divider|divider|op_6~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[162]~156_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~15\,
	combout => \Div0|auto_generated|divider|divider|op_6~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~17\);

-- Location: LCCOMB_X23_Y23_N22
\Div0|auto_generated|divider|divider|op_6~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[163]~294_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[163]~155_combout\ & !\Div0|auto_generated|divider|divider|op_6~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[163]~294_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[163]~155_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~17\,
	cout => \Div0|auto_generated|divider|divider|op_6~19_cout\);

-- Location: LCCOMB_X23_Y23_N24
\Div0|auto_generated|divider|divider|op_6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~20_combout\ = \Div0|auto_generated|divider|divider|op_6~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_6~19_cout\,
	combout => \Div0|auto_generated|divider|divider|op_6~20_combout\);

-- Location: LCCOMB_X24_Y23_N26
\Div0|auto_generated|divider|divider|StageOut[174]~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[174]~163_combout\ = (!\Div0|auto_generated|divider|divider|op_6~20_combout\ & \Div0|auto_generated|divider|divider|op_6~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_6~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[174]~163_combout\);

-- Location: LCCOMB_X21_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[174]~296\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[174]~296_combout\ = (\Div0|auto_generated|divider|divider|op_6~20_combout\ & ((\Div0|auto_generated|divider|divider|op_5~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[150]~149_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_5~20_combout\ & (\Div0|auto_generated|divider|divider|op_5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~20_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[150]~149_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[174]~296_combout\);

-- Location: LCCOMB_X21_Y23_N12
\Div0|auto_generated|divider|divider|StageOut[173]~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[173]~164_combout\ = (\Div0|auto_generated|divider|divider|op_6~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[161]~157_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[161]~157_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[173]~164_combout\);

-- Location: LCCOMB_X23_Y23_N0
\Div0|auto_generated|divider|divider|StageOut[172]~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[172]~165_combout\ = (\Div0|auto_generated|divider|divider|op_6~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[160]~158_combout\))) # (!\Div0|auto_generated|divider|divider|op_6~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[160]~158_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[172]~165_combout\);

-- Location: LCCOMB_X23_Y23_N26
\Div0|auto_generated|divider|divider|StageOut[171]~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[171]~166_combout\ = (\Div0|auto_generated|divider|divider|op_6~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[159]~159_combout\))) # (!\Div0|auto_generated|divider|divider|op_6~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~10_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[159]~159_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[171]~166_combout\);

-- Location: LCCOMB_X23_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[170]~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[170]~167_combout\ = (\Div0|auto_generated|divider|divider|op_6~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[158]~160_combout\))) # (!\Div0|auto_generated|divider|divider|op_6~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[158]~160_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[170]~167_combout\);

-- Location: LCCOMB_X23_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[169]~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[169]~168_combout\ = (\Div0|auto_generated|divider|divider|op_6~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[157]~161_combout\))) # (!\Div0|auto_generated|divider|divider|op_6~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_6~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[157]~161_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[169]~168_combout\);

-- Location: LCCOMB_X23_Y23_N2
\Div0|auto_generated|divider|divider|StageOut[168]~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[168]~169_combout\ = (\Div0|auto_generated|divider|divider|op_6~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[156]~295_combout\))) # (!\Div0|auto_generated|divider|divider|op_6~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[156]~295_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[168]~169_combout\);

-- Location: LCCOMB_X22_Y23_N2
\Div0|auto_generated|divider|divider|StageOut[167]~297\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[167]~297_combout\ = (\Div0|auto_generated|divider|divider|op_6~20_combout\ & (((\tempo[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_5~20_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_6~20_combout\ & (\Div0|auto_generated|divider|divider|op_6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_6~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~20_combout\,
	datac => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_5~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[167]~297_combout\);

-- Location: LCCOMB_X21_Y23_N18
\Div0|auto_generated|divider|divider|StageOut[166]~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[166]~170_combout\ = (\tempo[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_6~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_6~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[166]~170_combout\);

-- Location: LCCOMB_X22_Y23_N4
\Div0|auto_generated|divider|divider|op_7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_7~1_cout\);

-- Location: LCCOMB_X22_Y23_N6
\Div0|auto_generated|divider|divider|op_7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~2_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[166]~170_combout\ & (\Div0|auto_generated|divider|divider|op_7~1_cout\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[166]~170_combout\ & (!\Div0|auto_generated|divider|divider|op_7~1_cout\)))) # (!\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[166]~170_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_7~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut[166]~170_combout\ & ((\Div0|auto_generated|divider|divider|op_7~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_7~3\ = CARRY((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|StageOut[166]~170_combout\ & !\Div0|auto_generated|divider|divider|op_7~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((!\Div0|auto_generated|divider|divider|op_7~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[166]~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[166]~170_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X22_Y23_N8
\Div0|auto_generated|divider|divider|op_7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~4_combout\ = ((\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[167]~297_combout\ $ (\Div0|auto_generated|divider|divider|op_7~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_7~5\ = CARRY((\Add0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[167]~297_combout\ & !\Div0|auto_generated|divider|divider|op_7~3\)) # (!\Add0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[167]~297_combout\) # (!\Div0|auto_generated|divider|divider|op_7~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[167]~297_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~3\,
	combout => \Div0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X22_Y23_N10
\Div0|auto_generated|divider|divider|op_7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[168]~169_combout\ & ((\Add0~4_combout\ & (!\Div0|auto_generated|divider|divider|op_7~5\)) # (!\Add0~4_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[168]~169_combout\ & ((\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|op_7~5\) # (GND))) # (!\Add0~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_7~5\))))
-- \Div0|auto_generated|divider|divider|op_7~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[168]~169_combout\ & (\Add0~4_combout\ & !\Div0|auto_generated|divider|divider|op_7~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[168]~169_combout\ 
-- & ((\Add0~4_combout\) # (!\Div0|auto_generated|divider|divider|op_7~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[168]~169_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~5\,
	combout => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X22_Y23_N12
\Div0|auto_generated|divider|divider|op_7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~8_combout\ = ((\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[169]~168_combout\ $ (\Div0|auto_generated|divider|divider|op_7~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_7~9\ = CARRY((\Add0~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[169]~168_combout\ & !\Div0|auto_generated|divider|divider|op_7~7\)) # (!\Add0~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[169]~168_combout\) # (!\Div0|auto_generated|divider|divider|op_7~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[169]~168_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~7\,
	combout => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X22_Y23_N14
\Div0|auto_generated|divider|divider|op_7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[170]~167_combout\ & ((\Add0~8_combout\ & (!\Div0|auto_generated|divider|divider|op_7~9\)) # (!\Add0~8_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[170]~167_combout\ & ((\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|op_7~9\) # (GND))) # (!\Add0~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_7~9\))))
-- \Div0|auto_generated|divider|divider|op_7~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[170]~167_combout\ & (\Add0~8_combout\ & !\Div0|auto_generated|divider|divider|op_7~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[170]~167_combout\ & ((\Add0~8_combout\) # (!\Div0|auto_generated|divider|divider|op_7~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[170]~167_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~9\,
	combout => \Div0|auto_generated|divider|divider|op_7~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~11\);

-- Location: LCCOMB_X22_Y23_N16
\Div0|auto_generated|divider|divider|op_7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~12_combout\ = ((\Add0~10_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[171]~166_combout\ $ (\Div0|auto_generated|divider|divider|op_7~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_7~13\ = CARRY((\Add0~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[171]~166_combout\ & !\Div0|auto_generated|divider|divider|op_7~11\)) # (!\Add0~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[171]~166_combout\) # (!\Div0|auto_generated|divider|divider|op_7~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[171]~166_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~11\,
	combout => \Div0|auto_generated|divider|divider|op_7~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~13\);

-- Location: LCCOMB_X22_Y23_N18
\Div0|auto_generated|divider|divider|op_7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~14_combout\ = (\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[172]~165_combout\ & (!\Div0|auto_generated|divider|divider|op_7~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[172]~165_combout\ & ((\Div0|auto_generated|divider|divider|op_7~13\) # (GND))))) # (!\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[172]~165_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[172]~165_combout\ & (!\Div0|auto_generated|divider|divider|op_7~13\))))
-- \Div0|auto_generated|divider|divider|op_7~15\ = CARRY((\Add0~12_combout\ & ((!\Div0|auto_generated|divider|divider|op_7~13\) # (!\Div0|auto_generated|divider|divider|StageOut[172]~165_combout\))) # (!\Add0~12_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[172]~165_combout\ & !\Div0|auto_generated|divider|divider|op_7~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[172]~165_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~13\,
	combout => \Div0|auto_generated|divider|divider|op_7~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~15\);

-- Location: LCCOMB_X22_Y23_N20
\Div0|auto_generated|divider|divider|op_7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~16_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[173]~164_combout\ $ (\Add0~14_combout\ $ (\Div0|auto_generated|divider|divider|op_7~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_7~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[173]~164_combout\ & ((!\Div0|auto_generated|divider|divider|op_7~15\) # (!\Add0~14_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[173]~164_combout\ & (!\Add0~14_combout\ & !\Div0|auto_generated|divider|divider|op_7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[173]~164_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~15\,
	combout => \Div0|auto_generated|divider|divider|op_7~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~17\);

-- Location: LCCOMB_X22_Y23_N22
\Div0|auto_generated|divider|divider|op_7~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[174]~163_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[174]~296_combout\ & !\Div0|auto_generated|divider|divider|op_7~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[174]~163_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[174]~296_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~17\,
	cout => \Div0|auto_generated|divider|divider|op_7~19_cout\);

-- Location: LCCOMB_X22_Y23_N24
\Div0|auto_generated|divider|divider|op_7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~20_combout\ = \Div0|auto_generated|divider|divider|op_7~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_7~19_cout\,
	combout => \Div0|auto_generated|divider|divider|op_7~20_combout\);

-- Location: LCCOMB_X21_Y23_N20
\Div0|auto_generated|divider|divider|StageOut[185]~298\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[185]~298_combout\ = (\Div0|auto_generated|divider|divider|op_7~20_combout\ & ((\Div0|auto_generated|divider|divider|op_6~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[161]~157_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_6~20_combout\ & ((\Div0|auto_generated|divider|divider|op_6~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[161]~157_combout\,
	datab => \Div0|auto_generated|divider|divider|op_7~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[185]~298_combout\);

-- Location: LCCOMB_X21_Y23_N24
\Div0|auto_generated|divider|divider|StageOut[185]~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[185]~171_combout\ = (\Div0|auto_generated|divider|divider|op_7~16_combout\ & !\Div0|auto_generated|divider|divider|op_7~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_7~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[185]~171_combout\);

-- Location: LCCOMB_X21_Y23_N14
\Div0|auto_generated|divider|divider|StageOut[184]~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[184]~172_combout\ = (\Div0|auto_generated|divider|divider|op_7~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[172]~165_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[172]~165_combout\,
	datab => \Div0|auto_generated|divider|divider|op_7~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[184]~172_combout\);

-- Location: LCCOMB_X22_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[183]~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[183]~173_combout\ = (\Div0|auto_generated|divider|divider|op_7~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[171]~166_combout\))) # (!\Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_7~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[171]~166_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[183]~173_combout\);

-- Location: LCCOMB_X22_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[182]~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[182]~174_combout\ = (\Div0|auto_generated|divider|divider|op_7~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[170]~167_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_7~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[170]~167_combout\,
	datab => \Div0|auto_generated|divider|divider|op_7~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[182]~174_combout\);

-- Location: LCCOMB_X22_Y23_N26
\Div0|auto_generated|divider|divider|StageOut[181]~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[181]~175_combout\ = (\Div0|auto_generated|divider|divider|op_7~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[169]~168_combout\))) # (!\Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_7~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[169]~168_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[181]~175_combout\);

-- Location: LCCOMB_X22_Y23_N0
\Div0|auto_generated|divider|divider|StageOut[180]~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[180]~176_combout\ = (\Div0|auto_generated|divider|divider|op_7~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[168]~169_combout\))) # (!\Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_7~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[168]~169_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[180]~176_combout\);

-- Location: LCCOMB_X21_Y23_N16
\Div0|auto_generated|divider|divider|StageOut[179]~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[179]~177_combout\ = (\Div0|auto_generated|divider|divider|op_7~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[167]~297_combout\))) # (!\Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_7~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[167]~297_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[179]~177_combout\);

-- Location: LCCOMB_X21_Y23_N10
\Div0|auto_generated|divider|divider|StageOut[178]~299\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[178]~299_combout\ = (\Div0|auto_generated|divider|divider|op_7~20_combout\ & (((\tempo[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_6~20_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_7~20_combout\ & (\Div0|auto_generated|divider|divider|op_7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_7~20_combout\,
	datac => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_6~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[178]~299_combout\);

-- Location: LCCOMB_X21_Y23_N2
\Div0|auto_generated|divider|divider|StageOut[177]~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[177]~178_combout\ = (\tempo[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_7~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[177]~178_combout\);

-- Location: LCCOMB_X19_Y23_N8
\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\);

-- Location: LCCOMB_X19_Y23_N10
\Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[177]~178_combout\ & ((\tempo[1]~input_o\ & (\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\ & VCC)) # 
-- (!\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\)))) # (!\Div0|auto_generated|divider|divider|StageOut[177]~178_combout\ & ((\tempo[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\)) # (!\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[177]~178_combout\ & (!\tempo[1]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[177]~178_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\) # (!\tempo[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[177]~178_combout\,
	datab => \tempo[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[1]~1_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\);

-- Location: LCCOMB_X19_Y23_N12
\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[178]~299_combout\ $ (\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[178]~299_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\) # (!\Add0~2_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[178]~299_combout\ & (!\Add0~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[178]~299_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\);

-- Location: LCCOMB_X19_Y23_N14
\Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\ = (\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[179]~177_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[179]~177_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\) # (GND))))) # (!\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[179]~177_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[179]~177_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\ = CARRY((\Add0~4_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[179]~177_combout\))) # (!\Add0~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[179]~177_combout\ & !\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[179]~177_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\);

-- Location: LCCOMB_X19_Y23_N16
\Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~8_combout\ = ((\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[180]~176_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\ = CARRY((\Add0~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[180]~176_combout\ & !\Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\)) # (!\Add0~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[180]~176_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[180]~176_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\);

-- Location: LCCOMB_X19_Y23_N18
\Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\ = (\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[181]~175_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[181]~175_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\) # (GND))))) # (!\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[181]~175_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[181]~175_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11\ = CARRY((\Add0~8_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[181]~175_combout\))) # (!\Add0~8_combout\ 
-- & (!\Div0|auto_generated|divider|divider|StageOut[181]~175_combout\ & !\Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[181]~175_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11\);

-- Location: LCCOMB_X19_Y23_N20
\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\ = ((\Add0~10_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[182]~174_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13\ = CARRY((\Add0~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[182]~174_combout\ & !\Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11\)) # (!\Add0~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[182]~174_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[182]~174_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13\);

-- Location: LCCOMB_X19_Y23_N22
\Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[183]~173_combout\ & ((\Add0~12_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13\)) # 
-- (!\Add0~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[183]~173_combout\ & ((\Add0~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13\) # (GND))) # (!\Add0~12_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[183]~173_combout\ & (\Add0~12_combout\ & !\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[183]~173_combout\ & ((\Add0~12_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[183]~173_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~15\);

-- Location: LCCOMB_X19_Y23_N24
\Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~16_combout\ = ((\Add0~14_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[184]~172_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~17\ = CARRY((\Add0~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[184]~172_combout\ & !\Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~15\)) # (!\Add0~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[184]~172_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[184]~172_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~16_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~17\);

-- Location: LCCOMB_X19_Y23_N26
\Div0|auto_generated|divider|divider|add_sub_17_result_int[10]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[10]~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[185]~298_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[185]~171_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[185]~298_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[185]~171_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~17\,
	cout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[10]~19_cout\);

-- Location: LCCOMB_X19_Y23_N28
\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ = \Div0|auto_generated|divider|divider|add_sub_17_result_int[10]~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_17_result_int[10]~19_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\);

-- Location: LCCOMB_X17_Y23_N24
\Div0|auto_generated|divider|divider|StageOut[196]~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[196]~179_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~16_combout\ & !\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[196]~179_combout\);

-- Location: LCCOMB_X21_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[196]~300\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[196]~300_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|op_7~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[172]~165_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~20_combout\ & ((\Div0|auto_generated|divider|divider|op_7~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[172]~165_combout\,
	datab => \Div0|auto_generated|divider|divider|op_7~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[196]~300_combout\);

-- Location: LCCOMB_X23_Y25_N0
\Div0|auto_generated|divider|divider|StageOut[195]~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[195]~180_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[183]~173_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[183]~173_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[195]~180_combout\);

-- Location: LCCOMB_X19_Y23_N4
\Div0|auto_generated|divider|divider|StageOut[194]~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[194]~181_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[182]~174_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[182]~174_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[194]~181_combout\);

-- Location: LCCOMB_X19_Y23_N6
\Div0|auto_generated|divider|divider|StageOut[193]~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[193]~182_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[181]~175_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[181]~175_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[193]~182_combout\);

-- Location: LCCOMB_X19_Y23_N0
\Div0|auto_generated|divider|divider|StageOut[192]~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[192]~183_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[180]~176_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[180]~176_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[192]~183_combout\);

-- Location: LCCOMB_X19_Y23_N2
\Div0|auto_generated|divider|divider|StageOut[191]~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[191]~184_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[179]~177_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[179]~177_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[191]~184_combout\);

-- Location: LCCOMB_X19_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[190]~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[190]~185_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[178]~299_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[178]~299_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[190]~185_combout\);

-- Location: LCCOMB_X21_Y23_N22
\Div0|auto_generated|divider|divider|StageOut[189]~301\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[189]~301_combout\ = (\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & (((\tempo[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_7~20_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~2_combout\,
	datab => \tempo[0]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[189]~301_combout\);

-- Location: LCCOMB_X21_Y23_N8
\Div0|auto_generated|divider|divider|StageOut[188]~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[188]~186_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & \tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\,
	datac => \tempo[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[188]~186_combout\);

-- Location: LCCOMB_X20_Y23_N10
\Div0|auto_generated|divider|divider|op_9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~0_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[188]~186_combout\) # (GND))) # (!\tempo[1]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut[188]~186_combout\ $ (VCC)))
-- \Div0|auto_generated|divider|divider|op_9~1\ = CARRY((\tempo[1]~input_o\) # (\Div0|auto_generated|divider|divider|StageOut[188]~186_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[188]~186_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_9~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~1\);

-- Location: LCCOMB_X20_Y23_N12
\Div0|auto_generated|divider|divider|op_9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~2_combout\ = (\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[189]~301_combout\ & (!\Div0|auto_generated|divider|divider|op_9~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[189]~301_combout\ & ((\Div0|auto_generated|divider|divider|op_9~1\) # (GND))))) # (!\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[189]~301_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[189]~301_combout\ & (!\Div0|auto_generated|divider|divider|op_9~1\))))
-- \Div0|auto_generated|divider|divider|op_9~3\ = CARRY((\Add0~2_combout\ & ((!\Div0|auto_generated|divider|divider|op_9~1\) # (!\Div0|auto_generated|divider|divider|StageOut[189]~301_combout\))) # (!\Add0~2_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[189]~301_combout\ & !\Div0|auto_generated|divider|divider|op_9~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[189]~301_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~1\,
	combout => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~3\);

-- Location: LCCOMB_X20_Y23_N14
\Div0|auto_generated|divider|divider|op_9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~4_combout\ = ((\Add0~4_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[190]~185_combout\ $ (\Div0|auto_generated|divider|divider|op_9~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_9~5\ = CARRY((\Add0~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[190]~185_combout\ & !\Div0|auto_generated|divider|divider|op_9~3\)) # (!\Add0~4_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[190]~185_combout\) # (!\Div0|auto_generated|divider|divider|op_9~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[190]~185_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~3\,
	combout => \Div0|auto_generated|divider|divider|op_9~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~5\);

-- Location: LCCOMB_X20_Y23_N16
\Div0|auto_generated|divider|divider|op_9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[191]~184_combout\ & ((\Add0~6_combout\ & (!\Div0|auto_generated|divider|divider|op_9~5\)) # (!\Add0~6_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[191]~184_combout\ & ((\Add0~6_combout\ & ((\Div0|auto_generated|divider|divider|op_9~5\) # (GND))) # (!\Add0~6_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_9~5\))))
-- \Div0|auto_generated|divider|divider|op_9~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[191]~184_combout\ & (\Add0~6_combout\ & !\Div0|auto_generated|divider|divider|op_9~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[191]~184_combout\ 
-- & ((\Add0~6_combout\) # (!\Div0|auto_generated|divider|divider|op_9~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[191]~184_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~5\,
	combout => \Div0|auto_generated|divider|divider|op_9~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~7\);

-- Location: LCCOMB_X20_Y23_N18
\Div0|auto_generated|divider|divider|op_9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[192]~183_combout\ $ (\Add0~8_combout\ $ (\Div0|auto_generated|divider|divider|op_9~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_9~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[192]~183_combout\ & ((!\Div0|auto_generated|divider|divider|op_9~7\) # (!\Add0~8_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[192]~183_combout\ & (!\Add0~8_combout\ & !\Div0|auto_generated|divider|divider|op_9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[192]~183_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~7\,
	combout => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~9\);

-- Location: LCCOMB_X20_Y23_N20
\Div0|auto_generated|divider|divider|op_9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~10_combout\ = (\Add0~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[193]~182_combout\ & (!\Div0|auto_generated|divider|divider|op_9~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[193]~182_combout\ & ((\Div0|auto_generated|divider|divider|op_9~9\) # (GND))))) # (!\Add0~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[193]~182_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[193]~182_combout\ & (!\Div0|auto_generated|divider|divider|op_9~9\))))
-- \Div0|auto_generated|divider|divider|op_9~11\ = CARRY((\Add0~10_combout\ & ((!\Div0|auto_generated|divider|divider|op_9~9\) # (!\Div0|auto_generated|divider|divider|StageOut[193]~182_combout\))) # (!\Add0~10_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[193]~182_combout\ & !\Div0|auto_generated|divider|divider|op_9~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[193]~182_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~9\,
	combout => \Div0|auto_generated|divider|divider|op_9~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~11\);

-- Location: LCCOMB_X20_Y23_N22
\Div0|auto_generated|divider|divider|op_9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~12_combout\ = ((\Add0~12_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[194]~181_combout\ $ (\Div0|auto_generated|divider|divider|op_9~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_9~13\ = CARRY((\Add0~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[194]~181_combout\ & !\Div0|auto_generated|divider|divider|op_9~11\)) # (!\Add0~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[194]~181_combout\) # (!\Div0|auto_generated|divider|divider|op_9~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[194]~181_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~11\,
	combout => \Div0|auto_generated|divider|divider|op_9~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~13\);

-- Location: LCCOMB_X20_Y23_N24
\Div0|auto_generated|divider|divider|op_9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[195]~180_combout\ & ((\Add0~14_combout\ & (!\Div0|auto_generated|divider|divider|op_9~13\)) # (!\Add0~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[195]~180_combout\ & ((\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|op_9~13\) # (GND))) # (!\Add0~14_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_9~13\))))
-- \Div0|auto_generated|divider|divider|op_9~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[195]~180_combout\ & (\Add0~14_combout\ & !\Div0|auto_generated|divider|divider|op_9~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[195]~180_combout\ & ((\Add0~14_combout\) # (!\Div0|auto_generated|divider|divider|op_9~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[195]~180_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~13\,
	combout => \Div0|auto_generated|divider|divider|op_9~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~15\);

-- Location: LCCOMB_X20_Y23_N26
\Div0|auto_generated|divider|divider|op_9~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[196]~179_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[196]~300_combout\) # (!\Div0|auto_generated|divider|divider|op_9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[196]~179_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[196]~300_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~15\,
	cout => \Div0|auto_generated|divider|divider|op_9~17_cout\);

-- Location: LCCOMB_X20_Y23_N28
\Div0|auto_generated|divider|divider|op_9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~18_combout\ = !\Div0|auto_generated|divider|divider|op_9~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_9~17_cout\,
	combout => \Div0|auto_generated|divider|divider|op_9~18_combout\);

-- Location: LCCOMB_X23_Y25_N28
\Div0|auto_generated|divider|divider|StageOut[207]~302\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[207]~302_combout\ = (\Div0|auto_generated|divider|divider|op_9~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[183]~173_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~18_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[183]~173_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[207]~302_combout\);

-- Location: LCCOMB_X20_Y23_N4
\Div0|auto_generated|divider|divider|StageOut[207]~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[207]~187_combout\ = (\Div0|auto_generated|divider|divider|op_9~14_combout\ & !\Div0|auto_generated|divider|divider|op_9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_9~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[207]~187_combout\);

-- Location: LCCOMB_X23_Y25_N26
\Div0|auto_generated|divider|divider|StageOut[206]~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[206]~188_combout\ = (\Div0|auto_generated|divider|divider|op_9~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[194]~181_combout\)) # (!\Div0|auto_generated|divider|divider|op_9~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_9~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[194]~181_combout\,
	datab => \Div0|auto_generated|divider|divider|op_9~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[206]~188_combout\);

-- Location: LCCOMB_X20_Y23_N6
\Div0|auto_generated|divider|divider|StageOut[205]~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[205]~189_combout\ = (\Div0|auto_generated|divider|divider|op_9~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[193]~182_combout\))) # (!\Div0|auto_generated|divider|divider|op_9~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_9~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[193]~182_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[205]~189_combout\);

-- Location: LCCOMB_X20_Y23_N0
\Div0|auto_generated|divider|divider|StageOut[204]~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[204]~190_combout\ = (\Div0|auto_generated|divider|divider|op_9~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[192]~183_combout\))) # (!\Div0|auto_generated|divider|divider|op_9~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[192]~183_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[204]~190_combout\);

-- Location: LCCOMB_X20_Y23_N2
\Div0|auto_generated|divider|divider|StageOut[203]~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[203]~191_combout\ = (\Div0|auto_generated|divider|divider|op_9~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[191]~184_combout\)) # (!\Div0|auto_generated|divider|divider|op_9~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[191]~184_combout\,
	datab => \Div0|auto_generated|divider|divider|op_9~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[203]~191_combout\);

-- Location: LCCOMB_X20_Y23_N8
\Div0|auto_generated|divider|divider|StageOut[202]~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[202]~192_combout\ = (\Div0|auto_generated|divider|divider|op_9~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[190]~185_combout\)) # (!\Div0|auto_generated|divider|divider|op_9~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[190]~185_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[202]~192_combout\);

-- Location: LCCOMB_X20_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[201]~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[201]~193_combout\ = (\Div0|auto_generated|divider|divider|op_9~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[189]~301_combout\))) # (!\Div0|auto_generated|divider|divider|op_9~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_9~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[189]~301_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[201]~193_combout\);

-- Location: LCCOMB_X21_Y23_N0
\Div0|auto_generated|divider|divider|StageOut[200]~303\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[200]~303_combout\ = (\Div0|auto_generated|divider|divider|op_9~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & (\tempo[0]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|op_9~18_combout\ & (((\Div0|auto_generated|divider|divider|op_9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\,
	datab => \tempo[0]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_9~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[200]~303_combout\);

-- Location: LCCOMB_X26_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[199]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(199) = (\Div0|auto_generated|divider|divider|op_9~18_combout\) # (!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut\(199));

-- Location: LCCOMB_X20_Y25_N2
\Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1_cout\);

-- Location: LCCOMB_X20_Y25_N4
\Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut\(199) & (\Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1_cout\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut\(199) & (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1_cout\)))) # (!\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut\(199) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut\(199) & ((\Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3\ = CARRY((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|StageOut\(199) & !\Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((!\Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut\(199)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut\(199),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[1]~1_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3\);

-- Location: LCCOMB_X20_Y25_N6
\Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\ = ((\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[200]~303_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\ = CARRY((\Add0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[200]~303_combout\ & !\Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3\)) # (!\Add0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[200]~303_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[200]~303_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\);

-- Location: LCCOMB_X20_Y25_N8
\Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[201]~193_combout\ & ((\Add0~4_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\)) # (!\Add0~4_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[201]~193_combout\ & ((\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\) # (GND))) # 
-- (!\Add0~4_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[201]~193_combout\ & (\Add0~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[201]~193_combout\ & ((\Add0~4_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[201]~193_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7\);

-- Location: LCCOMB_X20_Y25_N10
\Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[202]~192_combout\ $ (\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[202]~192_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7\) # (!\Add0~6_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[202]~192_combout\ & (!\Add0~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[202]~192_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9\);

-- Location: LCCOMB_X20_Y25_N12
\Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[203]~191_combout\ & ((\Add0~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9\)) # (!\Add0~8_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[203]~191_combout\ & ((\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9\) # (GND))) # 
-- (!\Add0~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[203]~191_combout\ & (\Add0~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[203]~191_combout\ & ((\Add0~8_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[203]~191_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~11\);

-- Location: LCCOMB_X20_Y25_N14
\Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~12_combout\ = ((\Add0~10_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[204]~190_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~13\ = CARRY((\Add0~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[204]~190_combout\ & !\Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~11\)) # (!\Add0~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[204]~190_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[204]~190_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~13\);

-- Location: LCCOMB_X20_Y25_N16
\Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[205]~189_combout\ & ((\Add0~12_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~13\)) # 
-- (!\Add0~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[205]~189_combout\ & ((\Add0~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~13\) # (GND))) # (!\Add0~12_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[205]~189_combout\ & (\Add0~12_combout\ & !\Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[205]~189_combout\ & ((\Add0~12_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[205]~189_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~15\);

-- Location: LCCOMB_X20_Y25_N18
\Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~16_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[206]~188_combout\ $ (\Add0~14_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[206]~188_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~15\) # (!\Add0~14_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[206]~188_combout\ & (!\Add0~14_combout\ & !\Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[206]~188_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~16_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~17\);

-- Location: LCCOMB_X20_Y25_N20
\Div0|auto_generated|divider|divider|add_sub_19_result_int[10]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[10]~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[207]~302_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[207]~187_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[207]~302_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[207]~187_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~17\,
	cout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[10]~19_cout\);

-- Location: LCCOMB_X20_Y25_N22
\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ = \Div0|auto_generated|divider|divider|add_sub_19_result_int[10]~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_19_result_int[10]~19_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\);

-- Location: LCCOMB_X23_Y25_N2
\Div0|auto_generated|divider|divider|StageOut[218]~304\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[218]~304_combout\ = (\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|op_9~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[194]~181_combout\)) # (!\Div0|auto_generated|divider|divider|op_9~18_combout\ & ((\Div0|auto_generated|divider|divider|op_9~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[194]~181_combout\,
	datab => \Div0|auto_generated|divider|divider|op_9~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[218]~304_combout\);

-- Location: LCCOMB_X24_Y25_N4
\Div0|auto_generated|divider|divider|StageOut[218]~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[218]~194_combout\ = (\Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~16_combout\ & !\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[218]~194_combout\);

-- Location: LCCOMB_X23_Y25_N12
\Div0|auto_generated|divider|divider|StageOut[217]~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[217]~195_combout\ = (\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[205]~189_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[205]~189_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[217]~195_combout\);

-- Location: LCCOMB_X20_Y25_N0
\Div0|auto_generated|divider|divider|StageOut[216]~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[216]~196_combout\ = (\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[204]~190_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[204]~190_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[216]~196_combout\);

-- Location: LCCOMB_X20_Y25_N28
\Div0|auto_generated|divider|divider|StageOut[215]~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[215]~197_combout\ = (\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[203]~191_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[203]~191_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[215]~197_combout\);

-- Location: LCCOMB_X20_Y25_N26
\Div0|auto_generated|divider|divider|StageOut[214]~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[214]~198_combout\ = (\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[202]~192_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[202]~192_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[214]~198_combout\);

-- Location: LCCOMB_X20_Y25_N24
\Div0|auto_generated|divider|divider|StageOut[213]~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[213]~199_combout\ = (\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[201]~193_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[201]~193_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[213]~199_combout\);

-- Location: LCCOMB_X20_Y25_N30
\Div0|auto_generated|divider|divider|StageOut[212]~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[212]~200_combout\ = (\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[200]~303_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[200]~303_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[212]~200_combout\);

-- Location: LCCOMB_X23_Y25_N16
\Div0|auto_generated|divider|divider|StageOut[211]~305\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[211]~305_combout\ = (\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|op_9~18_combout\) # ((!\tempo[0]~input_o\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~18_combout\,
	datab => \tempo[0]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[211]~305_combout\);

-- Location: LCCOMB_X23_Y25_N18
\Div0|auto_generated|divider|divider|StageOut[210]~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[210]~201_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & \tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\,
	datac => \tempo[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[210]~201_combout\);

-- Location: LCCOMB_X24_Y25_N12
\Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~0_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[210]~201_combout\) # (GND))) # (!\tempo[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[210]~201_combout\ $ (VCC)))
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~1\ = CARRY((\tempo[1]~input_o\) # (\Div0|auto_generated|divider|divider|StageOut[210]~201_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[210]~201_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~1\);

-- Location: LCCOMB_X24_Y25_N14
\Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[211]~305_combout\ & ((\Add0~2_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~1\)) # (!\Add0~2_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[211]~305_combout\ & ((\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~1\) # (GND))) # 
-- (!\Add0~2_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[211]~305_combout\ & (\Add0~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[211]~305_combout\ & ((\Add0~2_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[211]~305_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~3\);

-- Location: LCCOMB_X24_Y25_N16
\Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[212]~200_combout\ $ (\Add0~4_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[212]~200_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~3\) # (!\Add0~4_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[212]~200_combout\ & (!\Add0~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[212]~200_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~5\);

-- Location: LCCOMB_X24_Y25_N18
\Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~6_combout\ = (\Add0~6_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[213]~199_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[213]~199_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~5\) # (GND))))) # (!\Add0~6_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[213]~199_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[213]~199_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~7\ = CARRY((\Add0~6_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[213]~199_combout\))) # (!\Add0~6_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[213]~199_combout\ & !\Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[213]~199_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~7\);

-- Location: LCCOMB_X24_Y25_N20
\Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~8_combout\ = ((\Add0~8_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[214]~198_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~9\ = CARRY((\Add0~8_combout\ & (\Div0|auto_generated|divider|divider|StageOut[214]~198_combout\ & !\Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~7\)) # (!\Add0~8_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[214]~198_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[214]~198_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~9\);

-- Location: LCCOMB_X24_Y25_N22
\Div0|auto_generated|divider|divider|add_sub_20_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[7]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[215]~197_combout\ & ((\Add0~10_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~9\)) # (!\Add0~10_combout\ 
-- & (\Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[215]~197_combout\ & ((\Add0~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~9\) # (GND))) # 
-- (!\Add0~10_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[7]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[215]~197_combout\ & (\Add0~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[215]~197_combout\ & ((\Add0~10_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[215]~197_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[7]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[7]~11\);

-- Location: LCCOMB_X24_Y25_N24
\Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~12_combout\ = ((\Add0~12_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[216]~196_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_20_result_int[7]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~13\ = CARRY((\Add0~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[216]~196_combout\ & !\Div0|auto_generated|divider|divider|add_sub_20_result_int[7]~11\)) # (!\Add0~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[216]~196_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[7]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[216]~196_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_20_result_int[7]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~13\);

-- Location: LCCOMB_X24_Y25_N26
\Div0|auto_generated|divider|divider|add_sub_20_result_int[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[9]~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[217]~195_combout\ & ((\Add0~14_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~13\)) # 
-- (!\Add0~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[217]~195_combout\ & ((\Add0~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~13\) # (GND))) # (!\Add0~14_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[9]~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[217]~195_combout\ & (\Add0~14_combout\ & !\Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[217]~195_combout\ & ((\Add0~14_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[217]~195_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[9]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[9]~15\);

-- Location: LCCOMB_X24_Y25_N28
\Div0|auto_generated|divider|divider|add_sub_20_result_int[10]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[10]~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[218]~304_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[218]~194_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[9]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[218]~304_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[218]~194_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_20_result_int[9]~15\,
	cout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[10]~17_cout\);

-- Location: LCCOMB_X24_Y25_N30
\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ = !\Div0|auto_generated|divider|divider|add_sub_20_result_int[10]~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_20_result_int[10]~17_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\);

-- Location: LCCOMB_X23_Y25_N4
\Div0|auto_generated|divider|divider|StageOut[229]~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[229]~202_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & \Div0|auto_generated|divider|divider|add_sub_20_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_20_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[229]~202_combout\);

-- Location: LCCOMB_X23_Y25_N10
\Div0|auto_generated|divider|divider|StageOut[229]~306\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[229]~306_combout\ = (\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[205]~189_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[205]~189_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[229]~306_combout\);

-- Location: LCCOMB_X23_Y25_N14
\Div0|auto_generated|divider|divider|StageOut[228]~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[228]~203_combout\ = (\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[216]~196_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[216]~196_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[228]~203_combout\);

-- Location: LCCOMB_X24_Y25_N6
\Div0|auto_generated|divider|divider|StageOut[227]~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[227]~204_combout\ = (\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[215]~197_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_20_result_int[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[215]~197_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_20_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[227]~204_combout\);

-- Location: LCCOMB_X24_Y25_N0
\Div0|auto_generated|divider|divider|StageOut[226]~205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[226]~205_combout\ = (\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[214]~198_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[214]~198_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_20_result_int[6]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[226]~205_combout\);

-- Location: LCCOMB_X24_Y25_N2
\Div0|auto_generated|divider|divider|StageOut[225]~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[225]~206_combout\ = (\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[213]~199_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[213]~199_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_20_result_int[5]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[225]~206_combout\);

-- Location: LCCOMB_X24_Y25_N8
\Div0|auto_generated|divider|divider|StageOut[224]~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[224]~207_combout\ = (\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[212]~200_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[212]~200_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_20_result_int[4]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[224]~207_combout\);

-- Location: LCCOMB_X24_Y25_N10
\Div0|auto_generated|divider|divider|StageOut[223]~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[223]~208_combout\ = (\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[211]~305_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[211]~305_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_20_result_int[3]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[223]~208_combout\);

-- Location: LCCOMB_X23_Y25_N20
\Div0|auto_generated|divider|divider|StageOut[222]~307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[222]~307_combout\ = (\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & ((\tempo[0]~input_o\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_20_result_int[2]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\,
	datad => \tempo[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[222]~307_combout\);

-- Location: LCCOMB_X23_Y25_N8
\Div0|auto_generated|divider|divider|StageOut[221]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(221) = (\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\) # (!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut\(221));

-- Location: LCCOMB_X22_Y25_N4
\Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~0_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut\(221)) # (GND))) # (!\tempo[1]~input_o\ & (\Div0|auto_generated|divider|divider|StageOut\(221) $ (VCC)))
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~1\ = CARRY((\tempo[1]~input_o\) # (\Div0|auto_generated|divider|divider|StageOut\(221)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut\(221),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~1\);

-- Location: LCCOMB_X22_Y25_N6
\Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[222]~307_combout\ & ((\Add0~2_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~1\)) # (!\Add0~2_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[222]~307_combout\ & ((\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~1\) # (GND))) # 
-- (!\Add0~2_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[222]~307_combout\ & (\Add0~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[222]~307_combout\ & ((\Add0~2_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[222]~307_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~3\);

-- Location: LCCOMB_X22_Y25_N8
\Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[223]~208_combout\ $ (\Add0~4_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[223]~208_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~3\) # (!\Add0~4_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[223]~208_combout\ & (!\Add0~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[223]~208_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~5\);

-- Location: LCCOMB_X22_Y25_N10
\Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[224]~207_combout\ & ((\Add0~6_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~5\)) # (!\Add0~6_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[224]~207_combout\ & ((\Add0~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~5\) # (GND))) # 
-- (!\Add0~6_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[224]~207_combout\ & (\Add0~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[224]~207_combout\ & ((\Add0~6_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[224]~207_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~7\);

-- Location: LCCOMB_X22_Y25_N12
\Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~8_combout\ = ((\Add0~8_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[225]~206_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~9\ = CARRY((\Add0~8_combout\ & (\Div0|auto_generated|divider|divider|StageOut[225]~206_combout\ & !\Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~7\)) # (!\Add0~8_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[225]~206_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[225]~206_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~9\);

-- Location: LCCOMB_X22_Y25_N14
\Div0|auto_generated|divider|divider|add_sub_21_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[7]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[226]~205_combout\ & ((\Add0~10_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~9\)) # (!\Add0~10_combout\ 
-- & (\Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[226]~205_combout\ & ((\Add0~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~9\) # (GND))) # 
-- (!\Add0~10_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[7]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[226]~205_combout\ & (\Add0~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[226]~205_combout\ & ((\Add0~10_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[226]~205_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[7]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[7]~11\);

-- Location: LCCOMB_X22_Y25_N16
\Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[227]~204_combout\ $ (\Add0~12_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_21_result_int[7]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[227]~204_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_21_result_int[7]~11\) # (!\Add0~12_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[227]~204_combout\ & (!\Add0~12_combout\ & !\Div0|auto_generated|divider|divider|add_sub_21_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[227]~204_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_21_result_int[7]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~13\);

-- Location: LCCOMB_X22_Y25_N18
\Div0|auto_generated|divider|divider|add_sub_21_result_int[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[9]~14_combout\ = (\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[228]~203_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[228]~203_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~13\) # (GND))))) # (!\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[228]~203_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[228]~203_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[9]~15\ = CARRY((\Add0~14_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~13\) # (!\Div0|auto_generated|divider|divider|StageOut[228]~203_combout\))) # 
-- (!\Add0~14_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[228]~203_combout\ & !\Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[228]~203_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[9]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[9]~15\);

-- Location: LCCOMB_X22_Y25_N20
\Div0|auto_generated|divider|divider|add_sub_21_result_int[10]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[10]~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[229]~202_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[229]~306_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[9]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[229]~202_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[229]~306_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_21_result_int[9]~15\,
	cout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[10]~17_cout\);

-- Location: LCCOMB_X22_Y25_N22
\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ = !\Div0|auto_generated|divider|divider|add_sub_21_result_int[10]~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_21_result_int[10]~17_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\);

-- Location: LCCOMB_X22_Y25_N24
\Div0|auto_generated|divider|divider|StageOut[240]~209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[240]~209_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & \Div0|auto_generated|divider|divider|add_sub_21_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_21_result_int[9]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[240]~209_combout\);

-- Location: LCCOMB_X23_Y25_N22
\Div0|auto_generated|divider|divider|StageOut[240]~308\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[240]~308_combout\ = (\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[216]~196_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[216]~196_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_20_result_int[8]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[240]~308_combout\);

-- Location: LCCOMB_X22_Y25_N26
\Div0|auto_generated|divider|divider|StageOut[239]~210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[239]~210_combout\ = (\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[227]~204_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[227]~204_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[239]~210_combout\);

-- Location: LCCOMB_X22_Y25_N28
\Div0|auto_generated|divider|divider|StageOut[238]~211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[238]~211_combout\ = (\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[226]~205_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_21_result_int[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[226]~205_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_21_result_int[7]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[238]~211_combout\);

-- Location: LCCOMB_X22_Y25_N2
\Div0|auto_generated|divider|divider|StageOut[237]~212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[237]~212_combout\ = (\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[225]~206_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[225]~206_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_21_result_int[6]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[237]~212_combout\);

-- Location: LCCOMB_X22_Y25_N0
\Div0|auto_generated|divider|divider|StageOut[236]~213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[236]~213_combout\ = (\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[224]~207_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_21_result_int[5]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[224]~207_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[236]~213_combout\);

-- Location: LCCOMB_X22_Y25_N30
\Div0|auto_generated|divider|divider|StageOut[235]~214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[235]~214_combout\ = (\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[223]~208_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_21_result_int[4]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[223]~208_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[235]~214_combout\);

-- Location: LCCOMB_X23_Y25_N6
\Div0|auto_generated|divider|divider|StageOut[234]~215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[234]~215_combout\ = (\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[222]~307_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_21_result_int[3]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[222]~307_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[234]~215_combout\);

-- Location: LCCOMB_X23_Y25_N24
\Div0|auto_generated|divider|divider|StageOut[233]~309\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[233]~309_combout\ = (\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\)) # (!\tempo[0]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_21_result_int[2]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[233]~309_combout\);

-- Location: LCCOMB_X26_Y25_N2
\Div0|auto_generated|divider|divider|StageOut[232]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(232) = (\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\) # (!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut\(232));

-- Location: LCCOMB_X19_Y25_N0
\Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~0_combout\ = (\Div0|auto_generated|divider|divider|StageOut\(232) & ((\tempo[1]~input_o\) # (GND))) # (!\Div0|auto_generated|divider|divider|StageOut\(232) & (\tempo[1]~input_o\ $ (VCC)))
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut\(232)) # (\tempo[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut\(232),
	datab => \tempo[1]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~1\);

-- Location: LCCOMB_X19_Y25_N2
\Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~2_combout\ = (\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[233]~309_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[233]~309_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~1\) # (GND))))) # (!\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[233]~309_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[233]~309_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~3\ = CARRY((\Add0~2_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~1\) # (!\Div0|auto_generated|divider|divider|StageOut[233]~309_combout\))) # (!\Add0~2_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[233]~309_combout\ & !\Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[233]~309_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~3\);

-- Location: LCCOMB_X19_Y25_N4
\Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[234]~215_combout\ $ (\Add0~4_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[234]~215_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~3\) # (!\Add0~4_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[234]~215_combout\ & (!\Add0~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[234]~215_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~5\);

-- Location: LCCOMB_X19_Y25_N6
\Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[235]~214_combout\ & ((\Add0~6_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~5\)) # (!\Add0~6_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[235]~214_combout\ & ((\Add0~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~5\) # (GND))) # 
-- (!\Add0~6_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[235]~214_combout\ & (\Add0~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[235]~214_combout\ & ((\Add0~6_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[235]~214_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~7\);

-- Location: LCCOMB_X19_Y25_N8
\Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~8_combout\ = ((\Add0~8_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[236]~213_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~9\ = CARRY((\Add0~8_combout\ & (\Div0|auto_generated|divider|divider|StageOut[236]~213_combout\ & !\Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~7\)) # (!\Add0~8_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[236]~213_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[236]~213_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~9\);

-- Location: LCCOMB_X19_Y25_N10
\Div0|auto_generated|divider|divider|add_sub_22_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[7]~10_combout\ = (\Add0~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[237]~212_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[237]~212_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~9\) # (GND))))) # (!\Add0~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[237]~212_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[237]~212_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[7]~11\ = CARRY((\Add0~10_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[237]~212_combout\))) # 
-- (!\Add0~10_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[237]~212_combout\ & !\Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[237]~212_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[7]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[7]~11\);

-- Location: LCCOMB_X19_Y25_N12
\Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[238]~211_combout\ $ (\Add0~12_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_22_result_int[7]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[238]~211_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_22_result_int[7]~11\) # (!\Add0~12_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[238]~211_combout\ & (!\Add0~12_combout\ & !\Div0|auto_generated|divider|divider|add_sub_22_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[238]~211_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_22_result_int[7]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~13\);

-- Location: LCCOMB_X19_Y25_N14
\Div0|auto_generated|divider|divider|add_sub_22_result_int[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[9]~14_combout\ = (\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[239]~210_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[239]~210_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~13\) # (GND))))) # (!\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[239]~210_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[239]~210_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[9]~15\ = CARRY((\Add0~14_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~13\) # (!\Div0|auto_generated|divider|divider|StageOut[239]~210_combout\))) # 
-- (!\Add0~14_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[239]~210_combout\ & !\Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[239]~210_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[9]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[9]~15\);

-- Location: LCCOMB_X19_Y25_N16
\Div0|auto_generated|divider|divider|add_sub_22_result_int[10]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[10]~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[240]~209_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[240]~308_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[9]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[240]~209_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[240]~308_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_22_result_int[9]~15\,
	cout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[10]~17_cout\);

-- Location: LCCOMB_X19_Y25_N18
\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ = !\Div0|auto_generated|divider|divider|add_sub_22_result_int[10]~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_22_result_int[10]~17_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\);

-- Location: LCCOMB_X26_Y25_N4
\Div0|auto_generated|divider|divider|StageOut[251]~310\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[251]~310_combout\ = (\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[227]~204_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[227]~204_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_21_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[251]~310_combout\);

-- Location: LCCOMB_X19_Y25_N24
\Div0|auto_generated|divider|divider|StageOut[251]~216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[251]~216_combout\ = (\Div0|auto_generated|divider|divider|add_sub_22_result_int[9]~14_combout\ & !\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_22_result_int[9]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[251]~216_combout\);

-- Location: LCCOMB_X17_Y24_N24
\Div0|auto_generated|divider|divider|StageOut[250]~217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[250]~217_combout\ = (\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[238]~211_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[238]~211_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[250]~217_combout\);

-- Location: LCCOMB_X19_Y25_N30
\Div0|auto_generated|divider|divider|StageOut[249]~218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[249]~218_combout\ = (\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[237]~212_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_22_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_22_result_int[7]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[237]~212_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[249]~218_combout\);

-- Location: LCCOMB_X19_Y25_N28
\Div0|auto_generated|divider|divider|StageOut[248]~219\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[248]~219_combout\ = (\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[236]~213_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_22_result_int[6]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[236]~213_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[248]~219_combout\);

-- Location: LCCOMB_X19_Y25_N22
\Div0|auto_generated|divider|divider|StageOut[247]~220\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[247]~220_combout\ = (\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[235]~214_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_22_result_int[5]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[235]~214_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[247]~220_combout\);

-- Location: LCCOMB_X19_Y25_N20
\Div0|auto_generated|divider|divider|StageOut[246]~221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[246]~221_combout\ = (\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[234]~215_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_22_result_int[4]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[234]~215_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[246]~221_combout\);

-- Location: LCCOMB_X19_Y25_N26
\Div0|auto_generated|divider|divider|StageOut[245]~222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[245]~222_combout\ = (\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[233]~309_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_22_result_int[3]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[233]~309_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[245]~222_combout\);

-- Location: LCCOMB_X23_Y25_N30
\Div0|auto_generated|divider|divider|StageOut[244]~311\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[244]~311_combout\ = (\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\)) # (!\tempo[0]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_22_result_int[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[244]~311_combout\);

-- Location: LCCOMB_X26_Y25_N0
\Div0|auto_generated|divider|divider|StageOut[243]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(243) = (\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\) # (!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut\(243));

-- Location: LCCOMB_X19_Y24_N0
\Div0|auto_generated|divider|divider|op_15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~0_combout\ = (\Div0|auto_generated|divider|divider|StageOut\(243) & ((\tempo[1]~input_o\) # (GND))) # (!\Div0|auto_generated|divider|divider|StageOut\(243) & (\tempo[1]~input_o\ $ (VCC)))
-- \Div0|auto_generated|divider|divider|op_15~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut\(243)) # (\tempo[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut\(243),
	datab => \tempo[1]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_15~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~1\);

-- Location: LCCOMB_X19_Y24_N2
\Div0|auto_generated|divider|divider|op_15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~2_combout\ = (\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[244]~311_combout\ & (!\Div0|auto_generated|divider|divider|op_15~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[244]~311_combout\ & ((\Div0|auto_generated|divider|divider|op_15~1\) # (GND))))) # (!\Add0~2_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[244]~311_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_15~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[244]~311_combout\ & (!\Div0|auto_generated|divider|divider|op_15~1\))))
-- \Div0|auto_generated|divider|divider|op_15~3\ = CARRY((\Add0~2_combout\ & ((!\Div0|auto_generated|divider|divider|op_15~1\) # (!\Div0|auto_generated|divider|divider|StageOut[244]~311_combout\))) # (!\Add0~2_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[244]~311_combout\ & !\Div0|auto_generated|divider|divider|op_15~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[244]~311_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_15~1\,
	combout => \Div0|auto_generated|divider|divider|op_15~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~3\);

-- Location: LCCOMB_X19_Y24_N4
\Div0|auto_generated|divider|divider|op_15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~4_combout\ = ((\Add0~4_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[245]~222_combout\ $ (\Div0|auto_generated|divider|divider|op_15~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_15~5\ = CARRY((\Add0~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[245]~222_combout\ & !\Div0|auto_generated|divider|divider|op_15~3\)) # (!\Add0~4_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[245]~222_combout\) # (!\Div0|auto_generated|divider|divider|op_15~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[245]~222_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_15~3\,
	combout => \Div0|auto_generated|divider|divider|op_15~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~5\);

-- Location: LCCOMB_X19_Y24_N6
\Div0|auto_generated|divider|divider|op_15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~6_combout\ = (\Add0~6_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[246]~221_combout\ & (!\Div0|auto_generated|divider|divider|op_15~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[246]~221_combout\ & ((\Div0|auto_generated|divider|divider|op_15~5\) # (GND))))) # (!\Add0~6_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[246]~221_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_15~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[246]~221_combout\ & (!\Div0|auto_generated|divider|divider|op_15~5\))))
-- \Div0|auto_generated|divider|divider|op_15~7\ = CARRY((\Add0~6_combout\ & ((!\Div0|auto_generated|divider|divider|op_15~5\) # (!\Div0|auto_generated|divider|divider|StageOut[246]~221_combout\))) # (!\Add0~6_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[246]~221_combout\ & !\Div0|auto_generated|divider|divider|op_15~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[246]~221_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_15~5\,
	combout => \Div0|auto_generated|divider|divider|op_15~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~7\);

-- Location: LCCOMB_X19_Y24_N8
\Div0|auto_generated|divider|divider|op_15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[247]~220_combout\ $ (\Add0~8_combout\ $ (\Div0|auto_generated|divider|divider|op_15~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_15~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[247]~220_combout\ & ((!\Div0|auto_generated|divider|divider|op_15~7\) # (!\Add0~8_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[247]~220_combout\ & (!\Add0~8_combout\ & !\Div0|auto_generated|divider|divider|op_15~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[247]~220_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_15~7\,
	combout => \Div0|auto_generated|divider|divider|op_15~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~9\);

-- Location: LCCOMB_X19_Y24_N10
\Div0|auto_generated|divider|divider|op_15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[248]~219_combout\ & ((\Add0~10_combout\ & (!\Div0|auto_generated|divider|divider|op_15~9\)) # (!\Add0~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_15~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[248]~219_combout\ & ((\Add0~10_combout\ & ((\Div0|auto_generated|divider|divider|op_15~9\) # (GND))) # (!\Add0~10_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_15~9\))))
-- \Div0|auto_generated|divider|divider|op_15~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[248]~219_combout\ & (\Add0~10_combout\ & !\Div0|auto_generated|divider|divider|op_15~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[248]~219_combout\ & ((\Add0~10_combout\) # (!\Div0|auto_generated|divider|divider|op_15~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[248]~219_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_15~9\,
	combout => \Div0|auto_generated|divider|divider|op_15~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~11\);

-- Location: LCCOMB_X19_Y24_N12
\Div0|auto_generated|divider|divider|op_15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[249]~218_combout\ $ (\Add0~12_combout\ $ (\Div0|auto_generated|divider|divider|op_15~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_15~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[249]~218_combout\ & ((!\Div0|auto_generated|divider|divider|op_15~11\) # (!\Add0~12_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[249]~218_combout\ & (!\Add0~12_combout\ & !\Div0|auto_generated|divider|divider|op_15~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[249]~218_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_15~11\,
	combout => \Div0|auto_generated|divider|divider|op_15~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~13\);

-- Location: LCCOMB_X19_Y24_N14
\Div0|auto_generated|divider|divider|op_15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[250]~217_combout\ & ((\Add0~14_combout\ & (!\Div0|auto_generated|divider|divider|op_15~13\)) # (!\Add0~14_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_15~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[250]~217_combout\ & ((\Add0~14_combout\ & ((\Div0|auto_generated|divider|divider|op_15~13\) # (GND))) # (!\Add0~14_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_15~13\))))
-- \Div0|auto_generated|divider|divider|op_15~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[250]~217_combout\ & (\Add0~14_combout\ & !\Div0|auto_generated|divider|divider|op_15~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[250]~217_combout\ & ((\Add0~14_combout\) # (!\Div0|auto_generated|divider|divider|op_15~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[250]~217_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_15~13\,
	combout => \Div0|auto_generated|divider|divider|op_15~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_15~15\);

-- Location: LCCOMB_X19_Y24_N16
\Div0|auto_generated|divider|divider|op_15~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[251]~310_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[251]~216_combout\) # (!\Div0|auto_generated|divider|divider|op_15~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[251]~310_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[251]~216_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_15~15\,
	cout => \Div0|auto_generated|divider|divider|op_15~17_cout\);

-- Location: LCCOMB_X19_Y24_N18
\Div0|auto_generated|divider|divider|op_15~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_15~18_combout\ = !\Div0|auto_generated|divider|divider|op_15~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_15~17_cout\,
	combout => \Div0|auto_generated|divider|divider|op_15~18_combout\);

-- Location: LCCOMB_X19_Y24_N20
\Div0|auto_generated|divider|divider|StageOut[262]~223\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[262]~223_combout\ = (\Div0|auto_generated|divider|divider|op_15~14_combout\ & !\Div0|auto_generated|divider|divider|op_15~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_15~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[262]~223_combout\);

-- Location: LCCOMB_X17_Y24_N18
\Div0|auto_generated|divider|divider|StageOut[262]~312\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[262]~312_combout\ = (\Div0|auto_generated|divider|divider|op_15~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[238]~211_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\,
	datab => \Div0|auto_generated|divider|divider|op_15~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_22_result_int[8]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[238]~211_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[262]~312_combout\);

-- Location: LCCOMB_X17_Y24_N22
\Div0|auto_generated|divider|divider|StageOut[261]~224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[261]~224_combout\ = (\Div0|auto_generated|divider|divider|op_15~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[249]~218_combout\))) # (!\Div0|auto_generated|divider|divider|op_15~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_15~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_15~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[249]~218_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[261]~224_combout\);

-- Location: LCCOMB_X19_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[260]~225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[260]~225_combout\ = (\Div0|auto_generated|divider|divider|op_15~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[248]~219_combout\))) # (!\Div0|auto_generated|divider|divider|op_15~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_15~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_15~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_15~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[248]~219_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[260]~225_combout\);

-- Location: LCCOMB_X19_Y24_N24
\Div0|auto_generated|divider|divider|StageOut[259]~226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[259]~226_combout\ = (\Div0|auto_generated|divider|divider|op_15~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[247]~220_combout\))) # (!\Div0|auto_generated|divider|divider|op_15~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_15~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_15~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[247]~220_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[259]~226_combout\);

-- Location: LCCOMB_X19_Y24_N22
\Div0|auto_generated|divider|divider|StageOut[258]~227\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[258]~227_combout\ = (\Div0|auto_generated|divider|divider|op_15~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[246]~221_combout\))) # (!\Div0|auto_generated|divider|divider|op_15~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_15~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_15~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_15~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[246]~221_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[258]~227_combout\);

-- Location: LCCOMB_X19_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[257]~228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[257]~228_combout\ = (\Div0|auto_generated|divider|divider|op_15~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[245]~222_combout\))) # (!\Div0|auto_generated|divider|divider|op_15~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_15~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_15~4_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[245]~222_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[257]~228_combout\);

-- Location: LCCOMB_X19_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[256]~229\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[256]~229_combout\ = (\Div0|auto_generated|divider|divider|op_15~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[244]~311_combout\))) # (!\Div0|auto_generated|divider|divider|op_15~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_15~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[244]~311_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[256]~229_combout\);

-- Location: LCCOMB_X17_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[255]~313\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[255]~313_combout\ = (\Div0|auto_generated|divider|divider|op_15~18_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\)) # (!\tempo[0]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|op_15~18_combout\ & (((\Div0|auto_generated|divider|divider|op_15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|op_15~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_15~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[255]~313_combout\);

-- Location: LCCOMB_X17_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[254]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(254) = (\Div0|auto_generated|divider|divider|op_15~18_combout\) # (!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_15~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut\(254));

-- Location: LCCOMB_X16_Y24_N6
\Div0|auto_generated|divider|divider|op_16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_16~1_cout\);

-- Location: LCCOMB_X16_Y24_N8
\Div0|auto_generated|divider|divider|op_16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~2_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut\(254) & (\Div0|auto_generated|divider|divider|op_16~1_cout\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut\(254) & 
-- (!\Div0|auto_generated|divider|divider|op_16~1_cout\)))) # (!\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut\(254) & (!\Div0|auto_generated|divider|divider|op_16~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut\(254) & 
-- ((\Div0|auto_generated|divider|divider|op_16~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_16~3\ = CARRY((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|StageOut\(254) & !\Div0|auto_generated|divider|divider|op_16~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((!\Div0|auto_generated|divider|divider|op_16~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut\(254)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut\(254),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_16~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~3\);

-- Location: LCCOMB_X16_Y24_N10
\Div0|auto_generated|divider|divider|op_16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~4_combout\ = ((\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[255]~313_combout\ $ (\Div0|auto_generated|divider|divider|op_16~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_16~5\ = CARRY((\Add0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[255]~313_combout\ & !\Div0|auto_generated|divider|divider|op_16~3\)) # (!\Add0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[255]~313_combout\) # (!\Div0|auto_generated|divider|divider|op_16~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[255]~313_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~3\,
	combout => \Div0|auto_generated|divider|divider|op_16~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~5\);

-- Location: LCCOMB_X16_Y24_N12
\Div0|auto_generated|divider|divider|op_16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~6_combout\ = (\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[256]~229_combout\ & (!\Div0|auto_generated|divider|divider|op_16~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[256]~229_combout\ & ((\Div0|auto_generated|divider|divider|op_16~5\) # (GND))))) # (!\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[256]~229_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_16~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[256]~229_combout\ & (!\Div0|auto_generated|divider|divider|op_16~5\))))
-- \Div0|auto_generated|divider|divider|op_16~7\ = CARRY((\Add0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_16~5\) # (!\Div0|auto_generated|divider|divider|StageOut[256]~229_combout\))) # (!\Add0~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[256]~229_combout\ & !\Div0|auto_generated|divider|divider|op_16~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[256]~229_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~5\,
	combout => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~7\);

-- Location: LCCOMB_X16_Y24_N14
\Div0|auto_generated|divider|divider|op_16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~8_combout\ = ((\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[257]~228_combout\ $ (\Div0|auto_generated|divider|divider|op_16~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_16~9\ = CARRY((\Add0~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[257]~228_combout\ & !\Div0|auto_generated|divider|divider|op_16~7\)) # (!\Add0~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[257]~228_combout\) # (!\Div0|auto_generated|divider|divider|op_16~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[257]~228_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~7\,
	combout => \Div0|auto_generated|divider|divider|op_16~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~9\);

-- Location: LCCOMB_X16_Y24_N16
\Div0|auto_generated|divider|divider|op_16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~10_combout\ = (\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[258]~227_combout\ & (!\Div0|auto_generated|divider|divider|op_16~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[258]~227_combout\ & ((\Div0|auto_generated|divider|divider|op_16~9\) # (GND))))) # (!\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[258]~227_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_16~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[258]~227_combout\ & (!\Div0|auto_generated|divider|divider|op_16~9\))))
-- \Div0|auto_generated|divider|divider|op_16~11\ = CARRY((\Add0~8_combout\ & ((!\Div0|auto_generated|divider|divider|op_16~9\) # (!\Div0|auto_generated|divider|divider|StageOut[258]~227_combout\))) # (!\Add0~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[258]~227_combout\ & !\Div0|auto_generated|divider|divider|op_16~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[258]~227_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~9\,
	combout => \Div0|auto_generated|divider|divider|op_16~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~11\);

-- Location: LCCOMB_X16_Y24_N18
\Div0|auto_generated|divider|divider|op_16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[259]~226_combout\ $ (\Add0~10_combout\ $ (\Div0|auto_generated|divider|divider|op_16~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_16~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[259]~226_combout\ & ((!\Div0|auto_generated|divider|divider|op_16~11\) # (!\Add0~10_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[259]~226_combout\ & (!\Add0~10_combout\ & !\Div0|auto_generated|divider|divider|op_16~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[259]~226_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~11\,
	combout => \Div0|auto_generated|divider|divider|op_16~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~13\);

-- Location: LCCOMB_X16_Y24_N20
\Div0|auto_generated|divider|divider|op_16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~14_combout\ = (\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[260]~225_combout\ & (!\Div0|auto_generated|divider|divider|op_16~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[260]~225_combout\ & ((\Div0|auto_generated|divider|divider|op_16~13\) # (GND))))) # (!\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[260]~225_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_16~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[260]~225_combout\ & (!\Div0|auto_generated|divider|divider|op_16~13\))))
-- \Div0|auto_generated|divider|divider|op_16~15\ = CARRY((\Add0~12_combout\ & ((!\Div0|auto_generated|divider|divider|op_16~13\) # (!\Div0|auto_generated|divider|divider|StageOut[260]~225_combout\))) # (!\Add0~12_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[260]~225_combout\ & !\Div0|auto_generated|divider|divider|op_16~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[260]~225_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~13\,
	combout => \Div0|auto_generated|divider|divider|op_16~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~15\);

-- Location: LCCOMB_X16_Y24_N22
\Div0|auto_generated|divider|divider|op_16~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~16_combout\ = ((\Add0~14_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[261]~224_combout\ $ (\Div0|auto_generated|divider|divider|op_16~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_16~17\ = CARRY((\Add0~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[261]~224_combout\ & !\Div0|auto_generated|divider|divider|op_16~15\)) # (!\Add0~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[261]~224_combout\) # (!\Div0|auto_generated|divider|divider|op_16~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[261]~224_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~15\,
	combout => \Div0|auto_generated|divider|divider|op_16~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~17\);

-- Location: LCCOMB_X16_Y24_N24
\Div0|auto_generated|divider|divider|op_16~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[262]~223_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[262]~312_combout\ & !\Div0|auto_generated|divider|divider|op_16~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[262]~223_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[262]~312_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~17\,
	cout => \Div0|auto_generated|divider|divider|op_16~19_cout\);

-- Location: LCCOMB_X16_Y24_N26
\Div0|auto_generated|divider|divider|op_16~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~20_combout\ = \Div0|auto_generated|divider|divider|op_16~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_16~19_cout\,
	combout => \Div0|auto_generated|divider|divider|op_16~20_combout\);

-- Location: LCCOMB_X17_Y24_N10
\Div0|auto_generated|divider|divider|StageOut[273]~314\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[273]~314_combout\ = (\Div0|auto_generated|divider|divider|op_16~20_combout\ & ((\Div0|auto_generated|divider|divider|op_15~18_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[249]~218_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_15~18_combout\ & (\Div0|auto_generated|divider|divider|op_15~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~20_combout\,
	datab => \Div0|auto_generated|divider|divider|op_15~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[249]~218_combout\,
	datad => \Div0|auto_generated|divider|divider|op_15~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[273]~314_combout\);

-- Location: LCCOMB_X15_Y24_N20
\Div0|auto_generated|divider|divider|StageOut[273]~230\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[273]~230_combout\ = (\Div0|auto_generated|divider|divider|op_16~16_combout\ & !\Div0|auto_generated|divider|divider|op_16~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_16~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[273]~230_combout\);

-- Location: LCCOMB_X15_Y24_N14
\Div0|auto_generated|divider|divider|StageOut[272]~231\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[272]~231_combout\ = (\Div0|auto_generated|divider|divider|op_16~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[260]~225_combout\)) # (!\Div0|auto_generated|divider|divider|op_16~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_16~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[260]~225_combout\,
	datab => \Div0|auto_generated|divider|divider|op_16~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[272]~231_combout\);

-- Location: LCCOMB_X16_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[271]~232\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[271]~232_combout\ = (\Div0|auto_generated|divider|divider|op_16~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[259]~226_combout\)) # (!\Div0|auto_generated|divider|divider|op_16~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_16~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[259]~226_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[271]~232_combout\);

-- Location: LCCOMB_X16_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[270]~233\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[270]~233_combout\ = (\Div0|auto_generated|divider|divider|op_16~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[258]~227_combout\))) # (!\Div0|auto_generated|divider|divider|op_16~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_16~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_16~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[258]~227_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[270]~233_combout\);

-- Location: LCCOMB_X16_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[269]~234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[269]~234_combout\ = (\Div0|auto_generated|divider|divider|op_16~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[257]~228_combout\))) # (!\Div0|auto_generated|divider|divider|op_16~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_16~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[257]~228_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[269]~234_combout\);

-- Location: LCCOMB_X16_Y24_N4
\Div0|auto_generated|divider|divider|StageOut[268]~235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[268]~235_combout\ = (\Div0|auto_generated|divider|divider|op_16~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[256]~229_combout\))) # (!\Div0|auto_generated|divider|divider|op_16~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_16~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[256]~229_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[268]~235_combout\);

-- Location: LCCOMB_X16_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[267]~236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[267]~236_combout\ = (\Div0|auto_generated|divider|divider|op_16~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[255]~313_combout\))) # (!\Div0|auto_generated|divider|divider|op_16~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_16~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~4_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[255]~313_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[267]~236_combout\);

-- Location: LCCOMB_X17_Y24_N8
\Div0|auto_generated|divider|divider|StageOut[266]~315\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[266]~315_combout\ = (\Div0|auto_generated|divider|divider|op_16~20_combout\ & (((\Div0|auto_generated|divider|divider|op_15~18_combout\)) # (!\tempo[0]~input_o\))) # 
-- (!\Div0|auto_generated|divider|divider|op_16~20_combout\ & (((\Div0|auto_generated|divider|divider|op_16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|op_15~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[266]~315_combout\);

-- Location: LCCOMB_X15_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[265]~237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[265]~237_combout\ = (\tempo[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_16~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_16~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[265]~237_combout\);

-- Location: LCCOMB_X14_Y24_N0
\Div0|auto_generated|divider|divider|op_17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_17~1_cout\);

-- Location: LCCOMB_X14_Y24_N2
\Div0|auto_generated|divider|divider|op_17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~2_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[265]~237_combout\ & (\Div0|auto_generated|divider|divider|op_17~1_cout\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[265]~237_combout\ & (!\Div0|auto_generated|divider|divider|op_17~1_cout\)))) # (!\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[265]~237_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_17~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut[265]~237_combout\ & ((\Div0|auto_generated|divider|divider|op_17~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_17~3\ = CARRY((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|StageOut[265]~237_combout\ & !\Div0|auto_generated|divider|divider|op_17~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((!\Div0|auto_generated|divider|divider|op_17~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[265]~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[265]~237_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_17~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~3\);

-- Location: LCCOMB_X14_Y24_N4
\Div0|auto_generated|divider|divider|op_17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[266]~315_combout\ $ (\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|op_17~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_17~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[266]~315_combout\ & ((!\Div0|auto_generated|divider|divider|op_17~3\) # (!\Add0~2_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[266]~315_combout\ & (!\Add0~2_combout\ & !\Div0|auto_generated|divider|divider|op_17~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[266]~315_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~3\,
	combout => \Div0|auto_generated|divider|divider|op_17~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~5\);

-- Location: LCCOMB_X14_Y24_N6
\Div0|auto_generated|divider|divider|op_17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~6_combout\ = (\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[267]~236_combout\ & (!\Div0|auto_generated|divider|divider|op_17~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[267]~236_combout\ & ((\Div0|auto_generated|divider|divider|op_17~5\) # (GND))))) # (!\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[267]~236_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_17~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[267]~236_combout\ & (!\Div0|auto_generated|divider|divider|op_17~5\))))
-- \Div0|auto_generated|divider|divider|op_17~7\ = CARRY((\Add0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_17~5\) # (!\Div0|auto_generated|divider|divider|StageOut[267]~236_combout\))) # (!\Add0~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[267]~236_combout\ & !\Div0|auto_generated|divider|divider|op_17~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[267]~236_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~5\,
	combout => \Div0|auto_generated|divider|divider|op_17~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~7\);

-- Location: LCCOMB_X14_Y24_N8
\Div0|auto_generated|divider|divider|op_17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[268]~235_combout\ $ (\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|op_17~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_17~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[268]~235_combout\ & ((!\Div0|auto_generated|divider|divider|op_17~7\) # (!\Add0~6_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[268]~235_combout\ & (!\Add0~6_combout\ & !\Div0|auto_generated|divider|divider|op_17~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[268]~235_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~7\,
	combout => \Div0|auto_generated|divider|divider|op_17~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~9\);

-- Location: LCCOMB_X14_Y24_N10
\Div0|auto_generated|divider|divider|op_17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~10_combout\ = (\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[269]~234_combout\ & (!\Div0|auto_generated|divider|divider|op_17~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[269]~234_combout\ & ((\Div0|auto_generated|divider|divider|op_17~9\) # (GND))))) # (!\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[269]~234_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_17~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[269]~234_combout\ & (!\Div0|auto_generated|divider|divider|op_17~9\))))
-- \Div0|auto_generated|divider|divider|op_17~11\ = CARRY((\Add0~8_combout\ & ((!\Div0|auto_generated|divider|divider|op_17~9\) # (!\Div0|auto_generated|divider|divider|StageOut[269]~234_combout\))) # (!\Add0~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[269]~234_combout\ & !\Div0|auto_generated|divider|divider|op_17~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[269]~234_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~9\,
	combout => \Div0|auto_generated|divider|divider|op_17~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~11\);

-- Location: LCCOMB_X14_Y24_N12
\Div0|auto_generated|divider|divider|op_17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~12_combout\ = ((\Add0~10_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[270]~233_combout\ $ (\Div0|auto_generated|divider|divider|op_17~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_17~13\ = CARRY((\Add0~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[270]~233_combout\ & !\Div0|auto_generated|divider|divider|op_17~11\)) # (!\Add0~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[270]~233_combout\) # (!\Div0|auto_generated|divider|divider|op_17~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[270]~233_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~11\,
	combout => \Div0|auto_generated|divider|divider|op_17~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~13\);

-- Location: LCCOMB_X14_Y24_N14
\Div0|auto_generated|divider|divider|op_17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~14_combout\ = (\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[271]~232_combout\ & (!\Div0|auto_generated|divider|divider|op_17~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[271]~232_combout\ & ((\Div0|auto_generated|divider|divider|op_17~13\) # (GND))))) # (!\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[271]~232_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_17~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[271]~232_combout\ & (!\Div0|auto_generated|divider|divider|op_17~13\))))
-- \Div0|auto_generated|divider|divider|op_17~15\ = CARRY((\Add0~12_combout\ & ((!\Div0|auto_generated|divider|divider|op_17~13\) # (!\Div0|auto_generated|divider|divider|StageOut[271]~232_combout\))) # (!\Add0~12_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[271]~232_combout\ & !\Div0|auto_generated|divider|divider|op_17~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[271]~232_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~13\,
	combout => \Div0|auto_generated|divider|divider|op_17~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~15\);

-- Location: LCCOMB_X14_Y24_N16
\Div0|auto_generated|divider|divider|op_17~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~16_combout\ = ((\Add0~14_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[272]~231_combout\ $ (\Div0|auto_generated|divider|divider|op_17~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_17~17\ = CARRY((\Add0~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[272]~231_combout\ & !\Div0|auto_generated|divider|divider|op_17~15\)) # (!\Add0~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[272]~231_combout\) # (!\Div0|auto_generated|divider|divider|op_17~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[272]~231_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~15\,
	combout => \Div0|auto_generated|divider|divider|op_17~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~17\);

-- Location: LCCOMB_X14_Y24_N18
\Div0|auto_generated|divider|divider|op_17~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[273]~314_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[273]~230_combout\ & !\Div0|auto_generated|divider|divider|op_17~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[273]~314_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[273]~230_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~17\,
	cout => \Div0|auto_generated|divider|divider|op_17~19_cout\);

-- Location: LCCOMB_X14_Y24_N20
\Div0|auto_generated|divider|divider|op_17~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~20_combout\ = \Div0|auto_generated|divider|divider|op_17~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_17~19_cout\,
	combout => \Div0|auto_generated|divider|divider|op_17~20_combout\);

-- Location: LCCOMB_X15_Y24_N10
\Div0|auto_generated|divider|divider|StageOut[284]~316\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[284]~316_combout\ = (\Div0|auto_generated|divider|divider|op_17~20_combout\ & ((\Div0|auto_generated|divider|divider|op_16~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[260]~225_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_16~20_combout\ & ((\Div0|auto_generated|divider|divider|op_16~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[260]~225_combout\,
	datab => \Div0|auto_generated|divider|divider|op_17~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[284]~316_combout\);

-- Location: LCCOMB_X15_Y24_N22
\Div0|auto_generated|divider|divider|StageOut[284]~238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[284]~238_combout\ = (\Div0|auto_generated|divider|divider|op_17~16_combout\ & !\Div0|auto_generated|divider|divider|op_17~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_17~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[284]~238_combout\);

-- Location: LCCOMB_X14_Y24_N22
\Div0|auto_generated|divider|divider|StageOut[283]~239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[283]~239_combout\ = (\Div0|auto_generated|divider|divider|op_17~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[271]~232_combout\))) # (!\Div0|auto_generated|divider|divider|op_17~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_17~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_17~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_17~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[271]~232_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[283]~239_combout\);

-- Location: LCCOMB_X14_Y24_N24
\Div0|auto_generated|divider|divider|StageOut[282]~240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[282]~240_combout\ = (\Div0|auto_generated|divider|divider|op_17~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[270]~233_combout\))) # (!\Div0|auto_generated|divider|divider|op_17~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_17~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_17~12_combout\,
	datab => \Div0|auto_generated|divider|divider|op_17~20_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[270]~233_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[282]~240_combout\);

-- Location: LCCOMB_X14_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[281]~241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[281]~241_combout\ = (\Div0|auto_generated|divider|divider|op_17~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[269]~234_combout\))) # (!\Div0|auto_generated|divider|divider|op_17~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_17~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_17~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_17~20_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[269]~234_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[281]~241_combout\);

-- Location: LCCOMB_X14_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[280]~242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[280]~242_combout\ = (\Div0|auto_generated|divider|divider|op_17~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[268]~235_combout\)) # (!\Div0|auto_generated|divider|divider|op_17~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_17~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[268]~235_combout\,
	datab => \Div0|auto_generated|divider|divider|op_17~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_17~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[280]~242_combout\);

-- Location: LCCOMB_X14_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[279]~243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[279]~243_combout\ = (\Div0|auto_generated|divider|divider|op_17~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[267]~236_combout\))) # (!\Div0|auto_generated|divider|divider|op_17~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_17~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_17~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_17~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[267]~236_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[279]~243_combout\);

-- Location: LCCOMB_X15_Y24_N4
\Div0|auto_generated|divider|divider|StageOut[278]~244\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[278]~244_combout\ = (\Div0|auto_generated|divider|divider|op_17~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[266]~315_combout\))) # (!\Div0|auto_generated|divider|divider|op_17~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_17~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_17~4_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[266]~315_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[278]~244_combout\);

-- Location: LCCOMB_X15_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[277]~317\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[277]~317_combout\ = (\Div0|auto_generated|divider|divider|op_17~20_combout\ & (\tempo[0]~input_o\ & (!\Div0|auto_generated|divider|divider|op_16~20_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_17~20_combout\ & (((\Div0|auto_generated|divider|divider|op_17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|op_16~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_17~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[277]~317_combout\);

-- Location: LCCOMB_X15_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[276]~245\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[276]~245_combout\ = (\tempo[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_17~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_17~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[276]~245_combout\);

-- Location: LCCOMB_X15_Y25_N0
\Div0|auto_generated|divider|divider|op_18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_18~1_cout\);

-- Location: LCCOMB_X15_Y25_N2
\Div0|auto_generated|divider|divider|op_18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~2_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[276]~245_combout\ & (\Div0|auto_generated|divider|divider|op_18~1_cout\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[276]~245_combout\ & (!\Div0|auto_generated|divider|divider|op_18~1_cout\)))) # (!\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[276]~245_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_18~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut[276]~245_combout\ & ((\Div0|auto_generated|divider|divider|op_18~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_18~3\ = CARRY((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|StageOut[276]~245_combout\ & !\Div0|auto_generated|divider|divider|op_18~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((!\Div0|auto_generated|divider|divider|op_18~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[276]~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[276]~245_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_18~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_18~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_18~3\);

-- Location: LCCOMB_X15_Y25_N4
\Div0|auto_generated|divider|divider|op_18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~4_combout\ = ((\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[277]~317_combout\ $ (\Div0|auto_generated|divider|divider|op_18~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_18~5\ = CARRY((\Add0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[277]~317_combout\ & !\Div0|auto_generated|divider|divider|op_18~3\)) # (!\Add0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[277]~317_combout\) # (!\Div0|auto_generated|divider|divider|op_18~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[277]~317_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_18~3\,
	combout => \Div0|auto_generated|divider|divider|op_18~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_18~5\);

-- Location: LCCOMB_X15_Y25_N6
\Div0|auto_generated|divider|divider|op_18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~6_combout\ = (\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[278]~244_combout\ & (!\Div0|auto_generated|divider|divider|op_18~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[278]~244_combout\ & ((\Div0|auto_generated|divider|divider|op_18~5\) # (GND))))) # (!\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[278]~244_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_18~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[278]~244_combout\ & (!\Div0|auto_generated|divider|divider|op_18~5\))))
-- \Div0|auto_generated|divider|divider|op_18~7\ = CARRY((\Add0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_18~5\) # (!\Div0|auto_generated|divider|divider|StageOut[278]~244_combout\))) # (!\Add0~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[278]~244_combout\ & !\Div0|auto_generated|divider|divider|op_18~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[278]~244_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_18~5\,
	combout => \Div0|auto_generated|divider|divider|op_18~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_18~7\);

-- Location: LCCOMB_X15_Y25_N8
\Div0|auto_generated|divider|divider|op_18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~8_combout\ = ((\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[279]~243_combout\ $ (\Div0|auto_generated|divider|divider|op_18~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_18~9\ = CARRY((\Add0~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[279]~243_combout\ & !\Div0|auto_generated|divider|divider|op_18~7\)) # (!\Add0~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[279]~243_combout\) # (!\Div0|auto_generated|divider|divider|op_18~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[279]~243_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_18~7\,
	combout => \Div0|auto_generated|divider|divider|op_18~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_18~9\);

-- Location: LCCOMB_X15_Y25_N10
\Div0|auto_generated|divider|divider|op_18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[280]~242_combout\ & ((\Add0~8_combout\ & (!\Div0|auto_generated|divider|divider|op_18~9\)) # (!\Add0~8_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_18~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[280]~242_combout\ & ((\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|op_18~9\) # (GND))) # (!\Add0~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_18~9\))))
-- \Div0|auto_generated|divider|divider|op_18~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[280]~242_combout\ & (\Add0~8_combout\ & !\Div0|auto_generated|divider|divider|op_18~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[280]~242_combout\ & ((\Add0~8_combout\) # (!\Div0|auto_generated|divider|divider|op_18~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[280]~242_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_18~9\,
	combout => \Div0|auto_generated|divider|divider|op_18~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_18~11\);

-- Location: LCCOMB_X15_Y25_N12
\Div0|auto_generated|divider|divider|op_18~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~12_combout\ = ((\Add0~10_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[281]~241_combout\ $ (\Div0|auto_generated|divider|divider|op_18~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_18~13\ = CARRY((\Add0~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[281]~241_combout\ & !\Div0|auto_generated|divider|divider|op_18~11\)) # (!\Add0~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[281]~241_combout\) # (!\Div0|auto_generated|divider|divider|op_18~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[281]~241_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_18~11\,
	combout => \Div0|auto_generated|divider|divider|op_18~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_18~13\);

-- Location: LCCOMB_X15_Y25_N14
\Div0|auto_generated|divider|divider|op_18~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[282]~240_combout\ & ((\Add0~12_combout\ & (!\Div0|auto_generated|divider|divider|op_18~13\)) # (!\Add0~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_18~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[282]~240_combout\ & ((\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|op_18~13\) # (GND))) # (!\Add0~12_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_18~13\))))
-- \Div0|auto_generated|divider|divider|op_18~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[282]~240_combout\ & (\Add0~12_combout\ & !\Div0|auto_generated|divider|divider|op_18~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[282]~240_combout\ & ((\Add0~12_combout\) # (!\Div0|auto_generated|divider|divider|op_18~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[282]~240_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_18~13\,
	combout => \Div0|auto_generated|divider|divider|op_18~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_18~15\);

-- Location: LCCOMB_X15_Y25_N16
\Div0|auto_generated|divider|divider|op_18~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~16_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[283]~239_combout\ $ (\Add0~14_combout\ $ (\Div0|auto_generated|divider|divider|op_18~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_18~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[283]~239_combout\ & ((!\Div0|auto_generated|divider|divider|op_18~15\) # (!\Add0~14_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[283]~239_combout\ & (!\Add0~14_combout\ & !\Div0|auto_generated|divider|divider|op_18~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[283]~239_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_18~15\,
	combout => \Div0|auto_generated|divider|divider|op_18~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_18~17\);

-- Location: LCCOMB_X15_Y25_N18
\Div0|auto_generated|divider|divider|op_18~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[284]~316_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[284]~238_combout\ & !\Div0|auto_generated|divider|divider|op_18~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[284]~316_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[284]~238_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_18~17\,
	cout => \Div0|auto_generated|divider|divider|op_18~19_cout\);

-- Location: LCCOMB_X15_Y25_N20
\Div0|auto_generated|divider|divider|op_18~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~20_combout\ = \Div0|auto_generated|divider|divider|op_18~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_18~19_cout\,
	combout => \Div0|auto_generated|divider|divider|op_18~20_combout\);

-- Location: LCCOMB_X15_Y25_N26
\Div0|auto_generated|divider|divider|StageOut[295]~246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[295]~246_combout\ = (\Div0|auto_generated|divider|divider|op_18~16_combout\ & !\Div0|auto_generated|divider|divider|op_18~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_18~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_18~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[295]~246_combout\);

-- Location: LCCOMB_X15_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[295]~318\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[295]~318_combout\ = (\Div0|auto_generated|divider|divider|op_18~20_combout\ & ((\Div0|auto_generated|divider|divider|op_17~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[271]~232_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_17~20_combout\ & ((\Div0|auto_generated|divider|divider|op_17~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[271]~232_combout\,
	datab => \Div0|auto_generated|divider|divider|op_18~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_17~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[295]~318_combout\);

-- Location: LCCOMB_X15_Y24_N12
\Div0|auto_generated|divider|divider|StageOut[294]~247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[294]~247_combout\ = (\Div0|auto_generated|divider|divider|op_18~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[282]~240_combout\)) # (!\Div0|auto_generated|divider|divider|op_18~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_18~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_18~20_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[282]~240_combout\,
	datad => \Div0|auto_generated|divider|divider|op_18~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[294]~247_combout\);

-- Location: LCCOMB_X15_Y25_N28
\Div0|auto_generated|divider|divider|StageOut[293]~248\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[293]~248_combout\ = (\Div0|auto_generated|divider|divider|op_18~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[281]~241_combout\))) # (!\Div0|auto_generated|divider|divider|op_18~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_18~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_18~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[281]~241_combout\,
	datad => \Div0|auto_generated|divider|divider|op_18~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[293]~248_combout\);

-- Location: LCCOMB_X15_Y25_N30
\Div0|auto_generated|divider|divider|StageOut[292]~249\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[292]~249_combout\ = (\Div0|auto_generated|divider|divider|op_18~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[280]~242_combout\))) # (!\Div0|auto_generated|divider|divider|op_18~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_18~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_18~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[280]~242_combout\,
	datad => \Div0|auto_generated|divider|divider|op_18~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[292]~249_combout\);

-- Location: LCCOMB_X15_Y25_N24
\Div0|auto_generated|divider|divider|StageOut[291]~250\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[291]~250_combout\ = (\Div0|auto_generated|divider|divider|op_18~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[279]~243_combout\)) # (!\Div0|auto_generated|divider|divider|op_18~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_18~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[279]~243_combout\,
	datac => \Div0|auto_generated|divider|divider|op_18~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_18~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[291]~250_combout\);

-- Location: LCCOMB_X15_Y25_N22
\Div0|auto_generated|divider|divider|StageOut[290]~251\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[290]~251_combout\ = (\Div0|auto_generated|divider|divider|op_18~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[278]~244_combout\))) # (!\Div0|auto_generated|divider|divider|op_18~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_18~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_18~6_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[278]~244_combout\,
	datad => \Div0|auto_generated|divider|divider|op_18~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[290]~251_combout\);

-- Location: LCCOMB_X15_Y24_N18
\Div0|auto_generated|divider|divider|StageOut[289]~252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[289]~252_combout\ = (\Div0|auto_generated|divider|divider|op_18~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[277]~317_combout\)) # (!\Div0|auto_generated|divider|divider|op_18~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_18~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[277]~317_combout\,
	datac => \Div0|auto_generated|divider|divider|op_18~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_18~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[289]~252_combout\);

-- Location: LCCOMB_X15_Y24_N24
\Div0|auto_generated|divider|divider|StageOut[288]~319\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[288]~319_combout\ = (\Div0|auto_generated|divider|divider|op_18~20_combout\ & (\tempo[0]~input_o\ & (!\Div0|auto_generated|divider|divider|op_17~20_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_18~20_combout\ & (((\Div0|auto_generated|divider|divider|op_18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|op_17~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_18~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_18~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[288]~319_combout\);

-- Location: LCCOMB_X15_Y24_N16
\Div0|auto_generated|divider|divider|StageOut[287]~253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[287]~253_combout\ = (\tempo[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_18~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|op_18~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[287]~253_combout\);

-- Location: LCCOMB_X15_Y26_N8
\Div0|auto_generated|divider|divider|op_19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_19~1_cout\);

-- Location: LCCOMB_X15_Y26_N10
\Div0|auto_generated|divider|divider|op_19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~2_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[287]~253_combout\ & (\Div0|auto_generated|divider|divider|op_19~1_cout\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[287]~253_combout\ & (!\Div0|auto_generated|divider|divider|op_19~1_cout\)))) # (!\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[287]~253_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_19~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut[287]~253_combout\ & ((\Div0|auto_generated|divider|divider|op_19~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_19~3\ = CARRY((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|StageOut[287]~253_combout\ & !\Div0|auto_generated|divider|divider|op_19~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((!\Div0|auto_generated|divider|divider|op_19~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[287]~253_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[287]~253_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_19~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_19~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_19~3\);

-- Location: LCCOMB_X15_Y26_N12
\Div0|auto_generated|divider|divider|op_19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[288]~319_combout\ $ (\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|op_19~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_19~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[288]~319_combout\ & ((!\Div0|auto_generated|divider|divider|op_19~3\) # (!\Add0~2_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[288]~319_combout\ & (!\Add0~2_combout\ & !\Div0|auto_generated|divider|divider|op_19~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[288]~319_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_19~3\,
	combout => \Div0|auto_generated|divider|divider|op_19~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_19~5\);

-- Location: LCCOMB_X15_Y26_N14
\Div0|auto_generated|divider|divider|op_19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~6_combout\ = (\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[289]~252_combout\ & (!\Div0|auto_generated|divider|divider|op_19~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[289]~252_combout\ & ((\Div0|auto_generated|divider|divider|op_19~5\) # (GND))))) # (!\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[289]~252_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_19~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[289]~252_combout\ & (!\Div0|auto_generated|divider|divider|op_19~5\))))
-- \Div0|auto_generated|divider|divider|op_19~7\ = CARRY((\Add0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_19~5\) # (!\Div0|auto_generated|divider|divider|StageOut[289]~252_combout\))) # (!\Add0~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[289]~252_combout\ & !\Div0|auto_generated|divider|divider|op_19~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[289]~252_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_19~5\,
	combout => \Div0|auto_generated|divider|divider|op_19~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_19~7\);

-- Location: LCCOMB_X15_Y26_N16
\Div0|auto_generated|divider|divider|op_19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[290]~251_combout\ $ (\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|op_19~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_19~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[290]~251_combout\ & ((!\Div0|auto_generated|divider|divider|op_19~7\) # (!\Add0~6_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[290]~251_combout\ & (!\Add0~6_combout\ & !\Div0|auto_generated|divider|divider|op_19~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[290]~251_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_19~7\,
	combout => \Div0|auto_generated|divider|divider|op_19~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_19~9\);

-- Location: LCCOMB_X15_Y26_N18
\Div0|auto_generated|divider|divider|op_19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~10_combout\ = (\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[291]~250_combout\ & (!\Div0|auto_generated|divider|divider|op_19~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[291]~250_combout\ & ((\Div0|auto_generated|divider|divider|op_19~9\) # (GND))))) # (!\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[291]~250_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_19~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[291]~250_combout\ & (!\Div0|auto_generated|divider|divider|op_19~9\))))
-- \Div0|auto_generated|divider|divider|op_19~11\ = CARRY((\Add0~8_combout\ & ((!\Div0|auto_generated|divider|divider|op_19~9\) # (!\Div0|auto_generated|divider|divider|StageOut[291]~250_combout\))) # (!\Add0~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[291]~250_combout\ & !\Div0|auto_generated|divider|divider|op_19~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[291]~250_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_19~9\,
	combout => \Div0|auto_generated|divider|divider|op_19~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_19~11\);

-- Location: LCCOMB_X15_Y26_N20
\Div0|auto_generated|divider|divider|op_19~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~12_combout\ = ((\Add0~10_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[292]~249_combout\ $ (\Div0|auto_generated|divider|divider|op_19~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_19~13\ = CARRY((\Add0~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[292]~249_combout\ & !\Div0|auto_generated|divider|divider|op_19~11\)) # (!\Add0~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[292]~249_combout\) # (!\Div0|auto_generated|divider|divider|op_19~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[292]~249_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_19~11\,
	combout => \Div0|auto_generated|divider|divider|op_19~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_19~13\);

-- Location: LCCOMB_X15_Y26_N22
\Div0|auto_generated|divider|divider|op_19~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[293]~248_combout\ & ((\Add0~12_combout\ & (!\Div0|auto_generated|divider|divider|op_19~13\)) # (!\Add0~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_19~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[293]~248_combout\ & ((\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|op_19~13\) # (GND))) # (!\Add0~12_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_19~13\))))
-- \Div0|auto_generated|divider|divider|op_19~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[293]~248_combout\ & (\Add0~12_combout\ & !\Div0|auto_generated|divider|divider|op_19~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[293]~248_combout\ & ((\Add0~12_combout\) # (!\Div0|auto_generated|divider|divider|op_19~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[293]~248_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_19~13\,
	combout => \Div0|auto_generated|divider|divider|op_19~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_19~15\);

-- Location: LCCOMB_X15_Y26_N24
\Div0|auto_generated|divider|divider|op_19~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~16_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[294]~247_combout\ $ (\Add0~14_combout\ $ (\Div0|auto_generated|divider|divider|op_19~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_19~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[294]~247_combout\ & ((!\Div0|auto_generated|divider|divider|op_19~15\) # (!\Add0~14_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[294]~247_combout\ & (!\Add0~14_combout\ & !\Div0|auto_generated|divider|divider|op_19~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[294]~247_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_19~15\,
	combout => \Div0|auto_generated|divider|divider|op_19~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_19~17\);

-- Location: LCCOMB_X15_Y26_N26
\Div0|auto_generated|divider|divider|op_19~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[295]~246_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[295]~318_combout\ & !\Div0|auto_generated|divider|divider|op_19~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[295]~246_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[295]~318_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_19~17\,
	cout => \Div0|auto_generated|divider|divider|op_19~19_cout\);

-- Location: LCCOMB_X15_Y26_N28
\Div0|auto_generated|divider|divider|op_19~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~20_combout\ = \Div0|auto_generated|divider|divider|op_19~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_19~19_cout\,
	combout => \Div0|auto_generated|divider|divider|op_19~20_combout\);

-- Location: LCCOMB_X16_Y26_N24
\Div0|auto_generated|divider|divider|StageOut[306]~254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[306]~254_combout\ = (\Div0|auto_generated|divider|divider|op_19~16_combout\ & !\Div0|auto_generated|divider|divider|op_19~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_19~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_19~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[306]~254_combout\);

-- Location: LCCOMB_X15_Y24_N6
\Div0|auto_generated|divider|divider|StageOut[306]~320\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[306]~320_combout\ = (\Div0|auto_generated|divider|divider|op_19~20_combout\ & ((\Div0|auto_generated|divider|divider|op_18~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[282]~240_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_18~20_combout\ & (\Div0|auto_generated|divider|divider|op_18~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_18~20_combout\,
	datab => \Div0|auto_generated|divider|divider|op_18~14_combout\,
	datac => \Div0|auto_generated|divider|divider|op_19~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[282]~240_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[306]~320_combout\);

-- Location: LCCOMB_X16_Y26_N22
\Div0|auto_generated|divider|divider|StageOut[305]~255\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[305]~255_combout\ = (\Div0|auto_generated|divider|divider|op_19~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[293]~248_combout\))) # (!\Div0|auto_generated|divider|divider|op_19~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_19~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_19~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[293]~248_combout\,
	datad => \Div0|auto_generated|divider|divider|op_19~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[305]~255_combout\);

-- Location: LCCOMB_X15_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[304]~256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[304]~256_combout\ = (\Div0|auto_generated|divider|divider|op_19~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[292]~249_combout\))) # (!\Div0|auto_generated|divider|divider|op_19~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_19~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_19~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[292]~249_combout\,
	datad => \Div0|auto_generated|divider|divider|op_19~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[304]~256_combout\);

-- Location: LCCOMB_X15_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[303]~257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[303]~257_combout\ = (\Div0|auto_generated|divider|divider|op_19~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[291]~250_combout\)) # (!\Div0|auto_generated|divider|divider|op_19~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_19~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[291]~250_combout\,
	datac => \Div0|auto_generated|divider|divider|op_19~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_19~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[303]~257_combout\);

-- Location: LCCOMB_X15_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[302]~258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[302]~258_combout\ = (\Div0|auto_generated|divider|divider|op_19~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[290]~251_combout\)) # (!\Div0|auto_generated|divider|divider|op_19~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_19~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[290]~251_combout\,
	datab => \Div0|auto_generated|divider|divider|op_19~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_19~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[302]~258_combout\);

-- Location: LCCOMB_X15_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[301]~259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[301]~259_combout\ = (\Div0|auto_generated|divider|divider|op_19~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[289]~252_combout\)) # (!\Div0|auto_generated|divider|divider|op_19~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_19~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[289]~252_combout\,
	datac => \Div0|auto_generated|divider|divider|op_19~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_19~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[301]~259_combout\);

-- Location: LCCOMB_X15_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[300]~260\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[300]~260_combout\ = (\Div0|auto_generated|divider|divider|op_19~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[288]~319_combout\)) # (!\Div0|auto_generated|divider|divider|op_19~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[288]~319_combout\,
	datab => \Div0|auto_generated|divider|divider|op_19~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_19~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[300]~260_combout\);

-- Location: LCCOMB_X15_Y24_N8
\Div0|auto_generated|divider|divider|StageOut[299]~321\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[299]~321_combout\ = (\Div0|auto_generated|divider|divider|op_19~20_combout\ & (\tempo[0]~input_o\ & (!\Div0|auto_generated|divider|divider|op_18~20_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_19~20_combout\ & (((\Div0|auto_generated|divider|divider|op_19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|op_18~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_19~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_19~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[299]~321_combout\);

-- Location: LCCOMB_X16_Y25_N28
\Div0|auto_generated|divider|divider|StageOut[298]~261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[298]~261_combout\ = (\tempo[0]~input_o\ & !\Div0|auto_generated|divider|divider|op_19~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datac => \Div0|auto_generated|divider|divider|op_19~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[298]~261_combout\);

-- Location: LCCOMB_X16_Y25_N4
\Div0|auto_generated|divider|divider|op_20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_20~1_cout\);

-- Location: LCCOMB_X16_Y25_N6
\Div0|auto_generated|divider|divider|op_20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~2_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[298]~261_combout\ & (\Div0|auto_generated|divider|divider|op_20~1_cout\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[298]~261_combout\ & (!\Div0|auto_generated|divider|divider|op_20~1_cout\)))) # (!\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[298]~261_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_20~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut[298]~261_combout\ & ((\Div0|auto_generated|divider|divider|op_20~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_20~3\ = CARRY((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|StageOut[298]~261_combout\ & !\Div0|auto_generated|divider|divider|op_20~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((!\Div0|auto_generated|divider|divider|op_20~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[298]~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[298]~261_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_20~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_20~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_20~3\);

-- Location: LCCOMB_X16_Y25_N8
\Div0|auto_generated|divider|divider|op_20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[299]~321_combout\ $ (\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|op_20~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_20~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[299]~321_combout\ & ((!\Div0|auto_generated|divider|divider|op_20~3\) # (!\Add0~2_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[299]~321_combout\ & (!\Add0~2_combout\ & !\Div0|auto_generated|divider|divider|op_20~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[299]~321_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_20~3\,
	combout => \Div0|auto_generated|divider|divider|op_20~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_20~5\);

-- Location: LCCOMB_X16_Y25_N10
\Div0|auto_generated|divider|divider|op_20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[300]~260_combout\ & ((\Add0~4_combout\ & (!\Div0|auto_generated|divider|divider|op_20~5\)) # (!\Add0~4_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_20~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[300]~260_combout\ & ((\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|op_20~5\) # (GND))) # (!\Add0~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_20~5\))))
-- \Div0|auto_generated|divider|divider|op_20~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[300]~260_combout\ & (\Add0~4_combout\ & !\Div0|auto_generated|divider|divider|op_20~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[300]~260_combout\ & ((\Add0~4_combout\) # (!\Div0|auto_generated|divider|divider|op_20~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[300]~260_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_20~5\,
	combout => \Div0|auto_generated|divider|divider|op_20~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_20~7\);

-- Location: LCCOMB_X16_Y25_N12
\Div0|auto_generated|divider|divider|op_20~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[301]~259_combout\ $ (\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|op_20~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_20~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[301]~259_combout\ & ((!\Div0|auto_generated|divider|divider|op_20~7\) # (!\Add0~6_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[301]~259_combout\ & (!\Add0~6_combout\ & !\Div0|auto_generated|divider|divider|op_20~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[301]~259_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_20~7\,
	combout => \Div0|auto_generated|divider|divider|op_20~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_20~9\);

-- Location: LCCOMB_X16_Y25_N14
\Div0|auto_generated|divider|divider|op_20~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~10_combout\ = (\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[302]~258_combout\ & (!\Div0|auto_generated|divider|divider|op_20~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[302]~258_combout\ & ((\Div0|auto_generated|divider|divider|op_20~9\) # (GND))))) # (!\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[302]~258_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_20~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[302]~258_combout\ & (!\Div0|auto_generated|divider|divider|op_20~9\))))
-- \Div0|auto_generated|divider|divider|op_20~11\ = CARRY((\Add0~8_combout\ & ((!\Div0|auto_generated|divider|divider|op_20~9\) # (!\Div0|auto_generated|divider|divider|StageOut[302]~258_combout\))) # (!\Add0~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[302]~258_combout\ & !\Div0|auto_generated|divider|divider|op_20~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[302]~258_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_20~9\,
	combout => \Div0|auto_generated|divider|divider|op_20~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_20~11\);

-- Location: LCCOMB_X16_Y25_N16
\Div0|auto_generated|divider|divider|op_20~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[303]~257_combout\ $ (\Add0~10_combout\ $ (\Div0|auto_generated|divider|divider|op_20~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_20~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[303]~257_combout\ & ((!\Div0|auto_generated|divider|divider|op_20~11\) # (!\Add0~10_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[303]~257_combout\ & (!\Add0~10_combout\ & !\Div0|auto_generated|divider|divider|op_20~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[303]~257_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_20~11\,
	combout => \Div0|auto_generated|divider|divider|op_20~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_20~13\);

-- Location: LCCOMB_X16_Y25_N18
\Div0|auto_generated|divider|divider|op_20~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~14_combout\ = (\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[304]~256_combout\ & (!\Div0|auto_generated|divider|divider|op_20~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[304]~256_combout\ & ((\Div0|auto_generated|divider|divider|op_20~13\) # (GND))))) # (!\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[304]~256_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_20~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[304]~256_combout\ & (!\Div0|auto_generated|divider|divider|op_20~13\))))
-- \Div0|auto_generated|divider|divider|op_20~15\ = CARRY((\Add0~12_combout\ & ((!\Div0|auto_generated|divider|divider|op_20~13\) # (!\Div0|auto_generated|divider|divider|StageOut[304]~256_combout\))) # (!\Add0~12_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[304]~256_combout\ & !\Div0|auto_generated|divider|divider|op_20~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[304]~256_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_20~13\,
	combout => \Div0|auto_generated|divider|divider|op_20~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_20~15\);

-- Location: LCCOMB_X16_Y25_N20
\Div0|auto_generated|divider|divider|op_20~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~16_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[305]~255_combout\ $ (\Add0~14_combout\ $ (\Div0|auto_generated|divider|divider|op_20~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_20~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[305]~255_combout\ & ((!\Div0|auto_generated|divider|divider|op_20~15\) # (!\Add0~14_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[305]~255_combout\ & (!\Add0~14_combout\ & !\Div0|auto_generated|divider|divider|op_20~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[305]~255_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_20~15\,
	combout => \Div0|auto_generated|divider|divider|op_20~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_20~17\);

-- Location: LCCOMB_X16_Y25_N22
\Div0|auto_generated|divider|divider|op_20~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[306]~254_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[306]~320_combout\ & !\Div0|auto_generated|divider|divider|op_20~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[306]~254_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[306]~320_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_20~17\,
	cout => \Div0|auto_generated|divider|divider|op_20~19_cout\);

-- Location: LCCOMB_X16_Y25_N24
\Div0|auto_generated|divider|divider|op_20~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_20~20_combout\ = \Div0|auto_generated|divider|divider|op_20~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_20~19_cout\,
	combout => \Div0|auto_generated|divider|divider|op_20~20_combout\);

-- Location: LCCOMB_X16_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[317]~322\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[317]~322_combout\ = (\Div0|auto_generated|divider|divider|op_20~20_combout\ & ((\Div0|auto_generated|divider|divider|op_19~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[293]~248_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_19~20_combout\ & (\Div0|auto_generated|divider|divider|op_19~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_20~20_combout\,
	datab => \Div0|auto_generated|divider|divider|op_19~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[293]~248_combout\,
	datad => \Div0|auto_generated|divider|divider|op_19~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[317]~322_combout\);

-- Location: LCCOMB_X16_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[317]~262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[317]~262_combout\ = (\Div0|auto_generated|divider|divider|op_20~16_combout\ & !\Div0|auto_generated|divider|divider|op_20~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_20~16_combout\,
	datac => \Div0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[317]~262_combout\);

-- Location: LCCOMB_X16_Y26_N10
\Div0|auto_generated|divider|divider|StageOut[316]~263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[316]~263_combout\ = (\Div0|auto_generated|divider|divider|op_20~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[304]~256_combout\)) # (!\Div0|auto_generated|divider|divider|op_20~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_20~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[304]~256_combout\,
	datac => \Div0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_20~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[316]~263_combout\);

-- Location: LCCOMB_X16_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[315]~264\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[315]~264_combout\ = (\Div0|auto_generated|divider|divider|op_20~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[303]~257_combout\))) # (!\Div0|auto_generated|divider|divider|op_20~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_20~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_20~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[303]~257_combout\,
	datac => \Div0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[315]~264_combout\);

-- Location: LCCOMB_X16_Y25_N2
\Div0|auto_generated|divider|divider|StageOut[314]~265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[314]~265_combout\ = (\Div0|auto_generated|divider|divider|op_20~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[302]~258_combout\)) # (!\Div0|auto_generated|divider|divider|op_20~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_20~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[302]~258_combout\,
	datac => \Div0|auto_generated|divider|divider|op_20~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[314]~265_combout\);

-- Location: LCCOMB_X16_Y25_N26
\Div0|auto_generated|divider|divider|StageOut[313]~266\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[313]~266_combout\ = (\Div0|auto_generated|divider|divider|op_20~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[301]~259_combout\))) # (!\Div0|auto_generated|divider|divider|op_20~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_20~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_20~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[301]~259_combout\,
	datad => \Div0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[313]~266_combout\);

-- Location: LCCOMB_X16_Y25_N0
\Div0|auto_generated|divider|divider|StageOut[312]~267\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[312]~267_combout\ = (\Div0|auto_generated|divider|divider|op_20~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[300]~260_combout\))) # (!\Div0|auto_generated|divider|divider|op_20~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_20~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_20~6_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[300]~260_combout\,
	datad => \Div0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[312]~267_combout\);

-- Location: LCCOMB_X16_Y25_N30
\Div0|auto_generated|divider|divider|StageOut[311]~268\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[311]~268_combout\ = (\Div0|auto_generated|divider|divider|op_20~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[299]~321_combout\)) # (!\Div0|auto_generated|divider|divider|op_20~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[299]~321_combout\,
	datac => \Div0|auto_generated|divider|divider|op_20~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_20~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[311]~268_combout\);

-- Location: LCCOMB_X16_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[310]~323\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[310]~323_combout\ = (\Div0|auto_generated|divider|divider|op_20~20_combout\ & (\tempo[0]~input_o\ & (!\Div0|auto_generated|divider|divider|op_19~20_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_20~20_combout\ & (((\Div0|auto_generated|divider|divider|op_20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|op_19~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_20~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[310]~323_combout\);

-- Location: LCCOMB_X16_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[309]~269\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[309]~269_combout\ = (!\Div0|auto_generated|divider|divider|op_20~20_combout\ & \tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \tempo[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[309]~269_combout\);

-- Location: LCCOMB_X17_Y25_N8
\Div0|auto_generated|divider|divider|op_21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_21~1_cout\);

-- Location: LCCOMB_X17_Y25_N10
\Div0|auto_generated|divider|divider|op_21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[309]~269_combout\ & ((\tempo[1]~input_o\ & (\Div0|auto_generated|divider|divider|op_21~1_cout\ & VCC)) # (!\tempo[1]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|op_21~1_cout\)))) # (!\Div0|auto_generated|divider|divider|StageOut[309]~269_combout\ & ((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|op_21~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|op_21~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_21~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[309]~269_combout\ & (!\tempo[1]~input_o\ & !\Div0|auto_generated|divider|divider|op_21~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[309]~269_combout\ & ((!\Div0|auto_generated|divider|divider|op_21~1_cout\) # (!\tempo[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[309]~269_combout\,
	datab => \tempo[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_21~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_21~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_21~3\);

-- Location: LCCOMB_X17_Y25_N12
\Div0|auto_generated|divider|divider|op_21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~4_combout\ = ((\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[310]~323_combout\ $ (\Div0|auto_generated|divider|divider|op_21~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_21~5\ = CARRY((\Add0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[310]~323_combout\ & !\Div0|auto_generated|divider|divider|op_21~3\)) # (!\Add0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[310]~323_combout\) # (!\Div0|auto_generated|divider|divider|op_21~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[310]~323_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_21~3\,
	combout => \Div0|auto_generated|divider|divider|op_21~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_21~5\);

-- Location: LCCOMB_X17_Y25_N14
\Div0|auto_generated|divider|divider|op_21~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[311]~268_combout\ & ((\Add0~4_combout\ & (!\Div0|auto_generated|divider|divider|op_21~5\)) # (!\Add0~4_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_21~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[311]~268_combout\ & ((\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|op_21~5\) # (GND))) # (!\Add0~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_21~5\))))
-- \Div0|auto_generated|divider|divider|op_21~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[311]~268_combout\ & (\Add0~4_combout\ & !\Div0|auto_generated|divider|divider|op_21~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[311]~268_combout\ & ((\Add0~4_combout\) # (!\Div0|auto_generated|divider|divider|op_21~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[311]~268_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_21~5\,
	combout => \Div0|auto_generated|divider|divider|op_21~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_21~7\);

-- Location: LCCOMB_X17_Y25_N16
\Div0|auto_generated|divider|divider|op_21~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[312]~267_combout\ $ (\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|op_21~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_21~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[312]~267_combout\ & ((!\Div0|auto_generated|divider|divider|op_21~7\) # (!\Add0~6_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[312]~267_combout\ & (!\Add0~6_combout\ & !\Div0|auto_generated|divider|divider|op_21~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[312]~267_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_21~7\,
	combout => \Div0|auto_generated|divider|divider|op_21~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_21~9\);

-- Location: LCCOMB_X17_Y25_N18
\Div0|auto_generated|divider|divider|op_21~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~10_combout\ = (\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[313]~266_combout\ & (!\Div0|auto_generated|divider|divider|op_21~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[313]~266_combout\ & ((\Div0|auto_generated|divider|divider|op_21~9\) # (GND))))) # (!\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[313]~266_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_21~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[313]~266_combout\ & (!\Div0|auto_generated|divider|divider|op_21~9\))))
-- \Div0|auto_generated|divider|divider|op_21~11\ = CARRY((\Add0~8_combout\ & ((!\Div0|auto_generated|divider|divider|op_21~9\) # (!\Div0|auto_generated|divider|divider|StageOut[313]~266_combout\))) # (!\Add0~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[313]~266_combout\ & !\Div0|auto_generated|divider|divider|op_21~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[313]~266_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_21~9\,
	combout => \Div0|auto_generated|divider|divider|op_21~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_21~11\);

-- Location: LCCOMB_X17_Y25_N20
\Div0|auto_generated|divider|divider|op_21~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[314]~265_combout\ $ (\Add0~10_combout\ $ (\Div0|auto_generated|divider|divider|op_21~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_21~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[314]~265_combout\ & ((!\Div0|auto_generated|divider|divider|op_21~11\) # (!\Add0~10_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[314]~265_combout\ & (!\Add0~10_combout\ & !\Div0|auto_generated|divider|divider|op_21~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[314]~265_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_21~11\,
	combout => \Div0|auto_generated|divider|divider|op_21~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_21~13\);

-- Location: LCCOMB_X17_Y25_N22
\Div0|auto_generated|divider|divider|op_21~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~14_combout\ = (\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[315]~264_combout\ & (!\Div0|auto_generated|divider|divider|op_21~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[315]~264_combout\ & ((\Div0|auto_generated|divider|divider|op_21~13\) # (GND))))) # (!\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[315]~264_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_21~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[315]~264_combout\ & (!\Div0|auto_generated|divider|divider|op_21~13\))))
-- \Div0|auto_generated|divider|divider|op_21~15\ = CARRY((\Add0~12_combout\ & ((!\Div0|auto_generated|divider|divider|op_21~13\) # (!\Div0|auto_generated|divider|divider|StageOut[315]~264_combout\))) # (!\Add0~12_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[315]~264_combout\ & !\Div0|auto_generated|divider|divider|op_21~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[315]~264_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_21~13\,
	combout => \Div0|auto_generated|divider|divider|op_21~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_21~15\);

-- Location: LCCOMB_X17_Y25_N24
\Div0|auto_generated|divider|divider|op_21~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~16_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[316]~263_combout\ $ (\Add0~14_combout\ $ (\Div0|auto_generated|divider|divider|op_21~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_21~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[316]~263_combout\ & ((!\Div0|auto_generated|divider|divider|op_21~15\) # (!\Add0~14_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[316]~263_combout\ & (!\Add0~14_combout\ & !\Div0|auto_generated|divider|divider|op_21~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[316]~263_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_21~15\,
	combout => \Div0|auto_generated|divider|divider|op_21~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_21~17\);

-- Location: LCCOMB_X17_Y25_N26
\Div0|auto_generated|divider|divider|op_21~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[317]~322_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[317]~262_combout\ & !\Div0|auto_generated|divider|divider|op_21~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[317]~322_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[317]~262_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_21~17\,
	cout => \Div0|auto_generated|divider|divider|op_21~19_cout\);

-- Location: LCCOMB_X17_Y25_N28
\Div0|auto_generated|divider|divider|op_21~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_21~20_combout\ = \Div0|auto_generated|divider|divider|op_21~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_21~19_cout\,
	combout => \Div0|auto_generated|divider|divider|op_21~20_combout\);

-- Location: LCCOMB_X16_Y26_N12
\Div0|auto_generated|divider|divider|StageOut[328]~270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[328]~270_combout\ = (\Div0|auto_generated|divider|divider|op_21~16_combout\ & !\Div0|auto_generated|divider|divider|op_21~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_21~16_combout\,
	datac => \Div0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[328]~270_combout\);

-- Location: LCCOMB_X16_Y26_N18
\Div0|auto_generated|divider|divider|StageOut[328]~324\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[328]~324_combout\ = (\Div0|auto_generated|divider|divider|op_21~20_combout\ & ((\Div0|auto_generated|divider|divider|op_20~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[304]~256_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_20~20_combout\ & ((\Div0|auto_generated|divider|divider|op_20~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_20~20_combout\,
	datab => \Div0|auto_generated|divider|divider|op_21~20_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[304]~256_combout\,
	datad => \Div0|auto_generated|divider|divider|op_20~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[328]~324_combout\);

-- Location: LCCOMB_X27_Y25_N0
\Div0|auto_generated|divider|divider|StageOut[327]~271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[327]~271_combout\ = (\Div0|auto_generated|divider|divider|op_21~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[315]~264_combout\)) # (!\Div0|auto_generated|divider|divider|op_21~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_21~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_21~20_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[315]~264_combout\,
	datad => \Div0|auto_generated|divider|divider|op_21~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[327]~271_combout\);

-- Location: LCCOMB_X17_Y25_N4
\Div0|auto_generated|divider|divider|StageOut[326]~272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[326]~272_combout\ = (\Div0|auto_generated|divider|divider|op_21~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[314]~265_combout\)) # (!\Div0|auto_generated|divider|divider|op_21~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_21~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[314]~265_combout\,
	datab => \Div0|auto_generated|divider|divider|op_21~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[326]~272_combout\);

-- Location: LCCOMB_X17_Y25_N2
\Div0|auto_generated|divider|divider|StageOut[325]~273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[325]~273_combout\ = (\Div0|auto_generated|divider|divider|op_21~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[313]~266_combout\)) # (!\Div0|auto_generated|divider|divider|op_21~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_21~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[313]~266_combout\,
	datac => \Div0|auto_generated|divider|divider|op_21~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[325]~273_combout\);

-- Location: LCCOMB_X17_Y25_N0
\Div0|auto_generated|divider|divider|StageOut[324]~274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[324]~274_combout\ = (\Div0|auto_generated|divider|divider|op_21~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[312]~267_combout\))) # (!\Div0|auto_generated|divider|divider|op_21~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_21~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_21~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[312]~267_combout\,
	datad => \Div0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[324]~274_combout\);

-- Location: LCCOMB_X17_Y25_N30
\Div0|auto_generated|divider|divider|StageOut[323]~275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[323]~275_combout\ = (\Div0|auto_generated|divider|divider|op_21~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[311]~268_combout\)) # (!\Div0|auto_generated|divider|divider|op_21~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_21~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[311]~268_combout\,
	datac => \Div0|auto_generated|divider|divider|op_21~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[323]~275_combout\);

-- Location: LCCOMB_X17_Y25_N6
\Div0|auto_generated|divider|divider|StageOut[322]~276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[322]~276_combout\ = (\Div0|auto_generated|divider|divider|op_21~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[310]~323_combout\))) # (!\Div0|auto_generated|divider|divider|op_21~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_21~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_21~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[310]~323_combout\,
	datad => \Div0|auto_generated|divider|divider|op_21~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[322]~276_combout\);

-- Location: LCCOMB_X16_Y26_N16
\Div0|auto_generated|divider|divider|StageOut[321]~325\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[321]~325_combout\ = (\Div0|auto_generated|divider|divider|op_21~20_combout\ & (\tempo[0]~input_o\ & (!\Div0|auto_generated|divider|divider|op_20~20_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_21~20_combout\ & (((\Div0|auto_generated|divider|divider|op_21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|op_21~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_20~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_21~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[321]~325_combout\);

-- Location: LCCOMB_X16_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[320]~277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[320]~277_combout\ = (!\Div0|auto_generated|divider|divider|op_21~20_combout\ & \tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_21~20_combout\,
	datad => \tempo[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[320]~277_combout\);

-- Location: LCCOMB_X17_Y26_N10
\Div0|auto_generated|divider|divider|op_23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_23~1_cout\);

-- Location: LCCOMB_X17_Y26_N12
\Div0|auto_generated|divider|divider|op_23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~2_combout\ = (\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[320]~277_combout\ & (\Div0|auto_generated|divider|divider|op_23~1_cout\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[320]~277_combout\ & (!\Div0|auto_generated|divider|divider|op_23~1_cout\)))) # (!\tempo[1]~input_o\ & ((\Div0|auto_generated|divider|divider|StageOut[320]~277_combout\ & 
-- (!\Div0|auto_generated|divider|divider|op_23~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut[320]~277_combout\ & ((\Div0|auto_generated|divider|divider|op_23~1_cout\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_23~3\ = CARRY((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|StageOut[320]~277_combout\ & !\Div0|auto_generated|divider|divider|op_23~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((!\Div0|auto_generated|divider|divider|op_23~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[320]~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[320]~277_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_23~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_23~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_23~3\);

-- Location: LCCOMB_X17_Y26_N14
\Div0|auto_generated|divider|divider|op_23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[321]~325_combout\ $ (\Add0~2_combout\ $ (\Div0|auto_generated|divider|divider|op_23~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_23~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[321]~325_combout\ & ((!\Div0|auto_generated|divider|divider|op_23~3\) # (!\Add0~2_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[321]~325_combout\ & (!\Add0~2_combout\ & !\Div0|auto_generated|divider|divider|op_23~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[321]~325_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_23~3\,
	combout => \Div0|auto_generated|divider|divider|op_23~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_23~5\);

-- Location: LCCOMB_X17_Y26_N16
\Div0|auto_generated|divider|divider|op_23~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~6_combout\ = (\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[322]~276_combout\ & (!\Div0|auto_generated|divider|divider|op_23~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[322]~276_combout\ & ((\Div0|auto_generated|divider|divider|op_23~5\) # (GND))))) # (!\Add0~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[322]~276_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_23~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[322]~276_combout\ & (!\Div0|auto_generated|divider|divider|op_23~5\))))
-- \Div0|auto_generated|divider|divider|op_23~7\ = CARRY((\Add0~4_combout\ & ((!\Div0|auto_generated|divider|divider|op_23~5\) # (!\Div0|auto_generated|divider|divider|StageOut[322]~276_combout\))) # (!\Add0~4_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[322]~276_combout\ & !\Div0|auto_generated|divider|divider|op_23~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[322]~276_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_23~5\,
	combout => \Div0|auto_generated|divider|divider|op_23~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_23~7\);

-- Location: LCCOMB_X17_Y26_N18
\Div0|auto_generated|divider|divider|op_23~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[323]~275_combout\ $ (\Add0~6_combout\ $ (\Div0|auto_generated|divider|divider|op_23~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_23~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[323]~275_combout\ & ((!\Div0|auto_generated|divider|divider|op_23~7\) # (!\Add0~6_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[323]~275_combout\ & (!\Add0~6_combout\ & !\Div0|auto_generated|divider|divider|op_23~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[323]~275_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_23~7\,
	combout => \Div0|auto_generated|divider|divider|op_23~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_23~9\);

-- Location: LCCOMB_X17_Y26_N20
\Div0|auto_generated|divider|divider|op_23~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~10_combout\ = (\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[324]~274_combout\ & (!\Div0|auto_generated|divider|divider|op_23~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[324]~274_combout\ & ((\Div0|auto_generated|divider|divider|op_23~9\) # (GND))))) # (!\Add0~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[324]~274_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_23~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[324]~274_combout\ & (!\Div0|auto_generated|divider|divider|op_23~9\))))
-- \Div0|auto_generated|divider|divider|op_23~11\ = CARRY((\Add0~8_combout\ & ((!\Div0|auto_generated|divider|divider|op_23~9\) # (!\Div0|auto_generated|divider|divider|StageOut[324]~274_combout\))) # (!\Add0~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[324]~274_combout\ & !\Div0|auto_generated|divider|divider|op_23~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[324]~274_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_23~9\,
	combout => \Div0|auto_generated|divider|divider|op_23~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_23~11\);

-- Location: LCCOMB_X17_Y26_N22
\Div0|auto_generated|divider|divider|op_23~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[325]~273_combout\ $ (\Add0~10_combout\ $ (\Div0|auto_generated|divider|divider|op_23~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_23~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[325]~273_combout\ & ((!\Div0|auto_generated|divider|divider|op_23~11\) # (!\Add0~10_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[325]~273_combout\ & (!\Add0~10_combout\ & !\Div0|auto_generated|divider|divider|op_23~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[325]~273_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_23~11\,
	combout => \Div0|auto_generated|divider|divider|op_23~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_23~13\);

-- Location: LCCOMB_X17_Y26_N24
\Div0|auto_generated|divider|divider|op_23~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~14_combout\ = (\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[326]~272_combout\ & (!\Div0|auto_generated|divider|divider|op_23~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[326]~272_combout\ & ((\Div0|auto_generated|divider|divider|op_23~13\) # (GND))))) # (!\Add0~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[326]~272_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_23~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[326]~272_combout\ & (!\Div0|auto_generated|divider|divider|op_23~13\))))
-- \Div0|auto_generated|divider|divider|op_23~15\ = CARRY((\Add0~12_combout\ & ((!\Div0|auto_generated|divider|divider|op_23~13\) # (!\Div0|auto_generated|divider|divider|StageOut[326]~272_combout\))) # (!\Add0~12_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[326]~272_combout\ & !\Div0|auto_generated|divider|divider|op_23~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[326]~272_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_23~13\,
	combout => \Div0|auto_generated|divider|divider|op_23~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_23~15\);

-- Location: LCCOMB_X17_Y26_N26
\Div0|auto_generated|divider|divider|op_23~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~16_combout\ = ((\Add0~14_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[327]~271_combout\ $ (\Div0|auto_generated|divider|divider|op_23~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_23~17\ = CARRY((\Add0~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[327]~271_combout\ & !\Div0|auto_generated|divider|divider|op_23~15\)) # (!\Add0~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[327]~271_combout\) # (!\Div0|auto_generated|divider|divider|op_23~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[327]~271_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_23~15\,
	combout => \Div0|auto_generated|divider|divider|op_23~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_23~17\);

-- Location: LCCOMB_X17_Y26_N28
\Div0|auto_generated|divider|divider|op_23~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[328]~270_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[328]~324_combout\ & !\Div0|auto_generated|divider|divider|op_23~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[328]~270_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[328]~324_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_23~17\,
	cout => \Div0|auto_generated|divider|divider|op_23~19_cout\);

-- Location: LCCOMB_X17_Y26_N30
\Div0|auto_generated|divider|divider|op_23~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_23~20_combout\ = \Div0|auto_generated|divider|divider|op_23~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_23~19_cout\,
	combout => \Div0|auto_generated|divider|divider|op_23~20_combout\);

-- Location: LCCOMB_X19_Y26_N16
\Div0|auto_generated|divider|divider|StageOut[339]~278\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[339]~278_combout\ = (!\Div0|auto_generated|divider|divider|op_23~20_combout\ & \Div0|auto_generated|divider|divider|op_23~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_23~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_23~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[339]~278_combout\);

-- Location: LCCOMB_X20_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[339]~326\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[339]~326_combout\ = (\Div0|auto_generated|divider|divider|op_23~20_combout\ & ((\Div0|auto_generated|divider|divider|op_21~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[315]~264_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_21~20_combout\ & (\Div0|auto_generated|divider|divider|op_21~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_21~20_combout\,
	datab => \Div0|auto_generated|divider|divider|op_21~14_combout\,
	datac => \Div0|auto_generated|divider|divider|op_23~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[315]~264_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[339]~326_combout\);

-- Location: LCCOMB_X17_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[338]~279\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[338]~279_combout\ = (\Div0|auto_generated|divider|divider|op_23~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[326]~272_combout\)) # (!\Div0|auto_generated|divider|divider|op_23~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_23~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[326]~272_combout\,
	datac => \Div0|auto_generated|divider|divider|op_23~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_23~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[338]~279_combout\);

-- Location: LCCOMB_X17_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[337]~280\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[337]~280_combout\ = (\Div0|auto_generated|divider|divider|op_23~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[325]~273_combout\))) # (!\Div0|auto_generated|divider|divider|op_23~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_23~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_23~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_23~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[325]~273_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[337]~280_combout\);

-- Location: LCCOMB_X17_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[336]~281\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[336]~281_combout\ = (\Div0|auto_generated|divider|divider|op_23~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[324]~274_combout\)) # (!\Div0|auto_generated|divider|divider|op_23~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_23~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[324]~274_combout\,
	datac => \Div0|auto_generated|divider|divider|op_23~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_23~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[336]~281_combout\);

-- Location: LCCOMB_X17_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[335]~282\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[335]~282_combout\ = (\Div0|auto_generated|divider|divider|op_23~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[323]~275_combout\)) # (!\Div0|auto_generated|divider|divider|op_23~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_23~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[323]~275_combout\,
	datac => \Div0|auto_generated|divider|divider|op_23~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_23~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[335]~282_combout\);

-- Location: LCCOMB_X17_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[334]~283\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[334]~283_combout\ = (\Div0|auto_generated|divider|divider|op_23~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[322]~276_combout\)) # (!\Div0|auto_generated|divider|divider|op_23~20_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_23~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[322]~276_combout\,
	datac => \Div0|auto_generated|divider|divider|op_23~20_combout\,
	datad => \Div0|auto_generated|divider|divider|op_23~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[334]~283_combout\);

-- Location: LCCOMB_X16_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[333]~284\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[333]~284_combout\ = (\Div0|auto_generated|divider|divider|op_23~20_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[321]~325_combout\))) # (!\Div0|auto_generated|divider|divider|op_23~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_23~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_23~4_combout\,
	datac => \Div0|auto_generated|divider|divider|op_23~20_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[321]~325_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[333]~284_combout\);

-- Location: LCCOMB_X16_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[332]~327\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[332]~327_combout\ = (\Div0|auto_generated|divider|divider|op_23~20_combout\ & (!\Div0|auto_generated|divider|divider|op_21~20_combout\ & ((\tempo[0]~input_o\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_23~20_combout\ & (((\Div0|auto_generated|divider|divider|op_23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_23~20_combout\,
	datab => \Div0|auto_generated|divider|divider|op_21~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_23~2_combout\,
	datad => \tempo[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[332]~327_combout\);

-- Location: LCCOMB_X19_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[331]~285\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[331]~285_combout\ = (!\Div0|auto_generated|divider|divider|op_23~20_combout\ & \tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_23~20_combout\,
	datac => \tempo[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[331]~285_combout\);

-- Location: LCCOMB_X20_Y26_N10
\Div0|auto_generated|divider|divider|op_24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~1_cout\ = CARRY(!\tempo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_24~1_cout\);

-- Location: LCCOMB_X20_Y26_N12
\Div0|auto_generated|divider|divider|op_24~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~3_cout\ = CARRY((\tempo[1]~input_o\ & (!\Div0|auto_generated|divider|divider|StageOut[331]~285_combout\ & !\Div0|auto_generated|divider|divider|op_24~1_cout\)) # (!\tempo[1]~input_o\ & 
-- ((!\Div0|auto_generated|divider|divider|op_24~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[331]~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|StageOut[331]~285_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_24~1_cout\,
	cout => \Div0|auto_generated|divider|divider|op_24~3_cout\);

-- Location: LCCOMB_X20_Y26_N14
\Div0|auto_generated|divider|divider|op_24~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~5_cout\ = CARRY((\Add0~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[332]~327_combout\ & !\Div0|auto_generated|divider|divider|op_24~3_cout\)) # (!\Add0~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[332]~327_combout\) # (!\Div0|auto_generated|divider|divider|op_24~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[332]~327_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_24~3_cout\,
	cout => \Div0|auto_generated|divider|divider|op_24~5_cout\);

-- Location: LCCOMB_X20_Y26_N16
\Div0|auto_generated|divider|divider|op_24~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~7_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[333]~284_combout\ & (\Add0~4_combout\ & !\Div0|auto_generated|divider|divider|op_24~5_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[333]~284_combout\ & ((\Add0~4_combout\) # (!\Div0|auto_generated|divider|divider|op_24~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[333]~284_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_24~5_cout\,
	cout => \Div0|auto_generated|divider|divider|op_24~7_cout\);

-- Location: LCCOMB_X20_Y26_N18
\Div0|auto_generated|divider|divider|op_24~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~9_cout\ = CARRY((\Add0~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[334]~283_combout\ & !\Div0|auto_generated|divider|divider|op_24~7_cout\)) # (!\Add0~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[334]~283_combout\) # (!\Div0|auto_generated|divider|divider|op_24~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[334]~283_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_24~7_cout\,
	cout => \Div0|auto_generated|divider|divider|op_24~9_cout\);

-- Location: LCCOMB_X20_Y26_N20
\Div0|auto_generated|divider|divider|op_24~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~11_cout\ = CARRY((\Add0~8_combout\ & ((!\Div0|auto_generated|divider|divider|op_24~9_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[335]~282_combout\))) # (!\Add0~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[335]~282_combout\ & !\Div0|auto_generated|divider|divider|op_24~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[335]~282_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_24~9_cout\,
	cout => \Div0|auto_generated|divider|divider|op_24~11_cout\);

-- Location: LCCOMB_X20_Y26_N22
\Div0|auto_generated|divider|divider|op_24~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[336]~281_combout\ & ((!\Div0|auto_generated|divider|divider|op_24~11_cout\) # (!\Add0~10_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[336]~281_combout\ & (!\Add0~10_combout\ & !\Div0|auto_generated|divider|divider|op_24~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[336]~281_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_24~11_cout\,
	cout => \Div0|auto_generated|divider|divider|op_24~13_cout\);

-- Location: LCCOMB_X20_Y26_N24
\Div0|auto_generated|divider|divider|op_24~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~15_cout\ = CARRY((\Add0~12_combout\ & ((!\Div0|auto_generated|divider|divider|op_24~13_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[337]~280_combout\))) # (!\Add0~12_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[337]~280_combout\ & !\Div0|auto_generated|divider|divider|op_24~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[337]~280_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_24~13_cout\,
	cout => \Div0|auto_generated|divider|divider|op_24~15_cout\);

-- Location: LCCOMB_X20_Y26_N26
\Div0|auto_generated|divider|divider|op_24~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[338]~279_combout\ & ((!\Div0|auto_generated|divider|divider|op_24~15_cout\) # (!\Add0~14_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[338]~279_combout\ & (!\Add0~14_combout\ & !\Div0|auto_generated|divider|divider|op_24~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[338]~279_combout\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_24~15_cout\,
	cout => \Div0|auto_generated|divider|divider|op_24~17_cout\);

-- Location: LCCOMB_X20_Y26_N28
\Div0|auto_generated|divider|divider|op_24~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~19_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[339]~278_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[339]~326_combout\ & !\Div0|auto_generated|divider|divider|op_24~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[339]~278_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[339]~326_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_24~17_cout\,
	cout => \Div0|auto_generated|divider|divider|op_24~19_cout\);

-- Location: LCCOMB_X20_Y26_N30
\Div0|auto_generated|divider|divider|op_24~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_24~20_combout\ = \Div0|auto_generated|divider|divider|op_24~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_24~19_cout\,
	combout => \Div0|auto_generated|divider|divider|op_24~20_combout\);

-- Location: LCCOMB_X26_Y25_N6
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_cout\ = CARRY((!ctr(0) & !\Div0|auto_generated|divider|divider|op_24~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(0),
	datab => \Div0|auto_generated|divider|divider|op_24~20_combout\,
	datad => VCC,
	cout => \LessThan0~4_cout\);

-- Location: LCCOMB_X26_Y25_N8
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_cout\ = CARRY((\Div0|auto_generated|divider|divider|op_23~20_combout\ & ((ctr(1)) # (!\LessThan0~4_cout\))) # (!\Div0|auto_generated|divider|divider|op_23~20_combout\ & (ctr(1) & !\LessThan0~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_23~20_combout\,
	datab => ctr(1),
	datad => VCC,
	cin => \LessThan0~4_cout\,
	cout => \LessThan0~6_cout\);

-- Location: LCCOMB_X26_Y25_N10
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_cout\ = CARRY((\Div0|auto_generated|divider|divider|op_21~20_combout\ & (!ctr(2) & !\LessThan0~6_cout\)) # (!\Div0|auto_generated|divider|divider|op_21~20_combout\ & ((!\LessThan0~6_cout\) # (!ctr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_21~20_combout\,
	datab => ctr(2),
	datad => VCC,
	cin => \LessThan0~6_cout\,
	cout => \LessThan0~8_cout\);

-- Location: LCCOMB_X26_Y25_N12
\LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~10_cout\ = CARRY((ctr(3) & ((\Div0|auto_generated|divider|divider|op_20~20_combout\) # (!\LessThan0~8_cout\))) # (!ctr(3) & (\Div0|auto_generated|divider|divider|op_20~20_combout\ & !\LessThan0~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(3),
	datab => \Div0|auto_generated|divider|divider|op_20~20_combout\,
	datad => VCC,
	cin => \LessThan0~8_cout\,
	cout => \LessThan0~10_cout\);

-- Location: LCCOMB_X26_Y25_N14
\LessThan0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~12_cout\ = CARRY((\Div0|auto_generated|divider|divider|op_19~20_combout\ & (!ctr(4) & !\LessThan0~10_cout\)) # (!\Div0|auto_generated|divider|divider|op_19~20_combout\ & ((!\LessThan0~10_cout\) # (!ctr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_19~20_combout\,
	datab => ctr(4),
	datad => VCC,
	cin => \LessThan0~10_cout\,
	cout => \LessThan0~12_cout\);

-- Location: LCCOMB_X26_Y25_N16
\LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~14_cout\ = CARRY((\Div0|auto_generated|divider|divider|op_18~20_combout\ & ((ctr(5)) # (!\LessThan0~12_cout\))) # (!\Div0|auto_generated|divider|divider|op_18~20_combout\ & (ctr(5) & !\LessThan0~12_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_18~20_combout\,
	datab => ctr(5),
	datad => VCC,
	cin => \LessThan0~12_cout\,
	cout => \LessThan0~14_cout\);

-- Location: LCCOMB_X26_Y25_N18
\LessThan0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~16_cout\ = CARRY((\Div0|auto_generated|divider|divider|op_17~20_combout\ & (!ctr(6) & !\LessThan0~14_cout\)) # (!\Div0|auto_generated|divider|divider|op_17~20_combout\ & ((!\LessThan0~14_cout\) # (!ctr(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_17~20_combout\,
	datab => ctr(6),
	datad => VCC,
	cin => \LessThan0~14_cout\,
	cout => \LessThan0~16_cout\);

-- Location: LCCOMB_X26_Y25_N20
\LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~18_cout\ = CARRY((\Div0|auto_generated|divider|divider|op_16~20_combout\ & ((ctr(7)) # (!\LessThan0~16_cout\))) # (!\Div0|auto_generated|divider|divider|op_16~20_combout\ & (ctr(7) & !\LessThan0~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~20_combout\,
	datab => ctr(7),
	datad => VCC,
	cin => \LessThan0~16_cout\,
	cout => \LessThan0~18_cout\);

-- Location: LCCOMB_X26_Y25_N22
\LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~20_cout\ = CARRY((\Div0|auto_generated|divider|divider|op_15~18_combout\ & (!ctr(8) & !\LessThan0~18_cout\)) # (!\Div0|auto_generated|divider|divider|op_15~18_combout\ & ((!\LessThan0~18_cout\) # (!ctr(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_15~18_combout\,
	datab => ctr(8),
	datad => VCC,
	cin => \LessThan0~18_cout\,
	cout => \LessThan0~20_cout\);

-- Location: LCCOMB_X26_Y25_N24
\LessThan0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~22_cout\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & ((ctr(9)) # (!\LessThan0~20_cout\))) # (!\Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\ & (ctr(9) & 
-- !\LessThan0~20_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_22_result_int[11]~18_combout\,
	datab => ctr(9),
	datad => VCC,
	cin => \LessThan0~20_cout\,
	cout => \LessThan0~22_cout\);

-- Location: LCCOMB_X26_Y25_N26
\LessThan0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~24_cout\ = CARRY((ctr(10) & (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\ & !\LessThan0~22_cout\)) # (!ctr(10) & ((!\LessThan0~22_cout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(10),
	datab => \Div0|auto_generated|divider|divider|add_sub_21_result_int[11]~18_combout\,
	datad => VCC,
	cin => \LessThan0~22_cout\,
	cout => \LessThan0~24_cout\);

-- Location: LCCOMB_X26_Y25_N28
\LessThan0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~26_cout\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & ((ctr(11)) # (!\LessThan0~24_cout\))) # (!\Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\ & (ctr(11) & 
-- !\LessThan0~24_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_20_result_int[11]~18_combout\,
	datab => ctr(11),
	datad => VCC,
	cin => \LessThan0~24_cout\,
	cout => \LessThan0~26_cout\);

-- Location: LCCOMB_X26_Y25_N30
\LessThan0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~28_cout\ = CARRY((ctr(12) & (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\ & !\LessThan0~26_cout\)) # (!ctr(12) & ((!\LessThan0~26_cout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(12),
	datab => \Div0|auto_generated|divider|divider|add_sub_19_result_int[11]~20_combout\,
	datad => VCC,
	cin => \LessThan0~26_cout\,
	cout => \LessThan0~28_cout\);

-- Location: LCCOMB_X26_Y24_N0
\LessThan0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~30_cout\ = CARRY((\Div0|auto_generated|divider|divider|op_9~18_combout\ & ((ctr(13)) # (!\LessThan0~28_cout\))) # (!\Div0|auto_generated|divider|divider|op_9~18_combout\ & (ctr(13) & !\LessThan0~28_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~18_combout\,
	datab => ctr(13),
	datad => VCC,
	cin => \LessThan0~28_cout\,
	cout => \LessThan0~30_cout\);

-- Location: LCCOMB_X26_Y24_N2
\LessThan0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~32_cout\ = CARRY((ctr(14) & (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\ & !\LessThan0~30_cout\)) # (!ctr(14) & ((!\LessThan0~30_cout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(14),
	datab => \Div0|auto_generated|divider|divider|add_sub_17_result_int[11]~20_combout\,
	datad => VCC,
	cin => \LessThan0~30_cout\,
	cout => \LessThan0~32_cout\);

-- Location: LCCOMB_X26_Y24_N4
\LessThan0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~34_cout\ = CARRY((ctr(15) & ((\Div0|auto_generated|divider|divider|op_7~20_combout\) # (!\LessThan0~32_cout\))) # (!ctr(15) & (\Div0|auto_generated|divider|divider|op_7~20_combout\ & !\LessThan0~32_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(15),
	datab => \Div0|auto_generated|divider|divider|op_7~20_combout\,
	datad => VCC,
	cin => \LessThan0~32_cout\,
	cout => \LessThan0~34_cout\);

-- Location: LCCOMB_X26_Y24_N6
\LessThan0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~36_cout\ = CARRY((ctr(16) & (!\Div0|auto_generated|divider|divider|op_6~20_combout\ & !\LessThan0~34_cout\)) # (!ctr(16) & ((!\LessThan0~34_cout\) # (!\Div0|auto_generated|divider|divider|op_6~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(16),
	datab => \Div0|auto_generated|divider|divider|op_6~20_combout\,
	datad => VCC,
	cin => \LessThan0~34_cout\,
	cout => \LessThan0~36_cout\);

-- Location: LCCOMB_X26_Y24_N8
\LessThan0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~38_cout\ = CARRY((\Div0|auto_generated|divider|divider|op_5~20_combout\ & ((ctr(17)) # (!\LessThan0~36_cout\))) # (!\Div0|auto_generated|divider|divider|op_5~20_combout\ & (ctr(17) & !\LessThan0~36_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~20_combout\,
	datab => ctr(17),
	datad => VCC,
	cin => \LessThan0~36_cout\,
	cout => \LessThan0~38_cout\);

-- Location: LCCOMB_X26_Y24_N10
\LessThan0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~40_cout\ = CARRY((\Div0|auto_generated|divider|divider|op_4~20_combout\ & (!ctr(18) & !\LessThan0~38_cout\)) # (!\Div0|auto_generated|divider|divider|op_4~20_combout\ & ((!\LessThan0~38_cout\) # (!ctr(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_4~20_combout\,
	datab => ctr(18),
	datad => VCC,
	cin => \LessThan0~38_cout\,
	cout => \LessThan0~40_cout\);

-- Location: LCCOMB_X26_Y24_N12
\LessThan0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~42_cout\ = CARRY((\Div0|auto_generated|divider|divider|op_3~18_combout\ & ((ctr(19)) # (!\LessThan0~40_cout\))) # (!\Div0|auto_generated|divider|divider|op_3~18_combout\ & (ctr(19) & !\LessThan0~40_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	datab => ctr(19),
	datad => VCC,
	cin => \LessThan0~40_cout\,
	cout => \LessThan0~42_cout\);

-- Location: LCCOMB_X26_Y24_N14
\LessThan0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~44_cout\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & (!ctr(20) & !\LessThan0~42_cout\)) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ & ((!\LessThan0~42_cout\) # 
-- (!ctr(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	datab => ctr(20),
	datad => VCC,
	cin => \LessThan0~42_cout\,
	cout => \LessThan0~44_cout\);

-- Location: LCCOMB_X26_Y24_N16
\LessThan0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~46_cout\ = CARRY((\Div0|auto_generated|divider|divider|op_1~18_combout\ & ((ctr(21)) # (!\LessThan0~44_cout\))) # (!\Div0|auto_generated|divider|divider|op_1~18_combout\ & (ctr(21) & !\LessThan0~44_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_1~18_combout\,
	datab => ctr(21),
	datad => VCC,
	cin => \LessThan0~44_cout\,
	cout => \LessThan0~46_cout\);

-- Location: LCCOMB_X26_Y24_N18
\LessThan0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~48_cout\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (!ctr(22) & !\LessThan0~46_cout\)) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((!\LessThan0~46_cout\) # 
-- (!ctr(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => ctr(22),
	datad => VCC,
	cin => \LessThan0~46_cout\,
	cout => \LessThan0~48_cout\);

-- Location: LCCOMB_X26_Y24_N20
\LessThan0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~50_cout\ = CARRY((ctr(23) & ((\Div0|auto_generated|divider|divider|selnose\(264)) # (!\LessThan0~48_cout\))) # (!ctr(23) & (\Div0|auto_generated|divider|divider|selnose\(264) & !\LessThan0~48_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ctr(23),
	datab => \Div0|auto_generated|divider|divider|selnose\(264),
	datad => VCC,
	cin => \LessThan0~48_cout\,
	cout => \LessThan0~50_cout\);

-- Location: LCCOMB_X26_Y24_N22
\LessThan0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~52_cout\ = CARRY((\Div0|auto_generated|divider|divider|selnose\(231) & (!ctr(24) & !\LessThan0~50_cout\)) # (!\Div0|auto_generated|divider|divider|selnose\(231) & ((!\LessThan0~50_cout\) # (!ctr(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(231),
	datab => ctr(24),
	datad => VCC,
	cin => \LessThan0~50_cout\,
	cout => \LessThan0~52_cout\);

-- Location: LCCOMB_X26_Y24_N24
\LessThan0~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~53_combout\ = (\Div0|auto_generated|divider|divider|selnose\(198) & (\LessThan0~52_cout\ & !ctr(25))) # (!\Div0|auto_generated|divider|divider|selnose\(198) & ((\LessThan0~52_cout\) # (!ctr(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(198),
	datad => ctr(25),
	cin => \LessThan0~52_cout\,
	combout => \LessThan0~53_combout\);

-- Location: LCCOMB_X26_Y24_N30
\clock_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_out~0_combout\ = \clock_out~reg0_q\ $ (((!\LessThan0~56_combout\ & (!\LessThan0~2_combout\ & !\LessThan0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~56_combout\,
	datab => \LessThan0~2_combout\,
	datac => \clock_out~reg0_q\,
	datad => \LessThan0~53_combout\,
	combout => \clock_out~0_combout\);

-- Location: FF_X26_Y24_N31
\clock_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_in~inputclkctrl_outclk\,
	d => \clock_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_out~reg0_q\);

ww_clock_out <= \clock_out~output_o\;
END structure;


