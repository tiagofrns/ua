-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "04/09/2024 10:27:07"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	anopassado IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(2 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(6 DOWNTO 0)
	);
END anopassado;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF anopassado IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|pulse~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst2|s_cnt[0]~26_combout\ : std_logic;
SIGNAL \inst2|s_cnt[3]~28_combout\ : std_logic;
SIGNAL \inst2|s_cnt[0]~27\ : std_logic;
SIGNAL \inst2|s_cnt[1]~29_combout\ : std_logic;
SIGNAL \inst2|s_cnt[1]~30\ : std_logic;
SIGNAL \inst2|s_cnt[2]~31_combout\ : std_logic;
SIGNAL \inst2|s_cnt[2]~32\ : std_logic;
SIGNAL \inst2|s_cnt[3]~33_combout\ : std_logic;
SIGNAL \inst2|s_cnt[3]~34\ : std_logic;
SIGNAL \inst2|s_cnt[4]~35_combout\ : std_logic;
SIGNAL \inst2|s_cnt[4]~36\ : std_logic;
SIGNAL \inst2|s_cnt[5]~37_combout\ : std_logic;
SIGNAL \inst2|s_cnt[5]~38\ : std_logic;
SIGNAL \inst2|s_cnt[6]~39_combout\ : std_logic;
SIGNAL \inst2|s_cnt[6]~40\ : std_logic;
SIGNAL \inst2|s_cnt[7]~41_combout\ : std_logic;
SIGNAL \inst2|s_cnt[7]~42\ : std_logic;
SIGNAL \inst2|s_cnt[8]~43_combout\ : std_logic;
SIGNAL \inst2|s_cnt[8]~44\ : std_logic;
SIGNAL \inst2|s_cnt[9]~45_combout\ : std_logic;
SIGNAL \inst2|s_cnt[9]~46\ : std_logic;
SIGNAL \inst2|s_cnt[10]~47_combout\ : std_logic;
SIGNAL \inst2|s_cnt[10]~48\ : std_logic;
SIGNAL \inst2|s_cnt[11]~49_combout\ : std_logic;
SIGNAL \inst2|s_cnt[11]~50\ : std_logic;
SIGNAL \inst2|s_cnt[12]~51_combout\ : std_logic;
SIGNAL \inst2|s_cnt[12]~52\ : std_logic;
SIGNAL \inst2|s_cnt[13]~53_combout\ : std_logic;
SIGNAL \inst2|s_cnt[13]~54\ : std_logic;
SIGNAL \inst2|s_cnt[14]~55_combout\ : std_logic;
SIGNAL \inst2|s_cnt[14]~56\ : std_logic;
SIGNAL \inst2|s_cnt[15]~57_combout\ : std_logic;
SIGNAL \inst2|s_cnt[15]~58\ : std_logic;
SIGNAL \inst2|s_cnt[16]~59_combout\ : std_logic;
SIGNAL \inst2|s_cnt[16]~60\ : std_logic;
SIGNAL \inst2|s_cnt[17]~61_combout\ : std_logic;
SIGNAL \inst2|s_cnt[17]~62\ : std_logic;
SIGNAL \inst2|s_cnt[18]~63_combout\ : std_logic;
SIGNAL \inst2|s_cnt[18]~64\ : std_logic;
SIGNAL \inst2|s_cnt[19]~65_combout\ : std_logic;
SIGNAL \inst2|s_cnt[19]~66\ : std_logic;
SIGNAL \inst2|s_cnt[20]~67_combout\ : std_logic;
SIGNAL \inst2|s_cnt[20]~68\ : std_logic;
SIGNAL \inst2|s_cnt[21]~69_combout\ : std_logic;
SIGNAL \inst2|s_cnt[21]~70\ : std_logic;
SIGNAL \inst2|s_cnt[22]~71_combout\ : std_logic;
SIGNAL \inst2|s_cnt[22]~72\ : std_logic;
SIGNAL \inst2|s_cnt[23]~73_combout\ : std_logic;
SIGNAL \inst2|s_cnt[23]~74\ : std_logic;
SIGNAL \inst2|s_cnt[24]~75_combout\ : std_logic;
SIGNAL \inst2|s_cnt[24]~76\ : std_logic;
SIGNAL \inst2|s_cnt[25]~77_combout\ : std_logic;
SIGNAL \inst2|Equal0~7_combout\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|Equal0~8_combout\ : std_logic;
SIGNAL \inst2|pulse~0_combout\ : std_logic;
SIGNAL \inst2|pulse~q\ : std_logic;
SIGNAL \inst2|pulse~clkctrl_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst1|s_count~9_combout\ : std_logic;
SIGNAL \inst1|s_count[1]~4_cout\ : std_logic;
SIGNAL \inst1|s_count[1]~5_combout\ : std_logic;
SIGNAL \inst1|s_count[1]~6\ : std_logic;
SIGNAL \inst1|s_count[2]~7_combout\ : std_logic;
SIGNAL \inst1|s_count[2]~8\ : std_logic;
SIGNAL \inst1|s_count[3]~10_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~2_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|decOut_n[6]~17_combout\ : std_logic;
SIGNAL \inst|decOut_n~7_combout\ : std_logic;
SIGNAL \inst|decOut_n~8_combout\ : std_logic;
SIGNAL \inst|decOut_n~9_combout\ : std_logic;
SIGNAL \inst|decOut_n~10_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~5_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~18_combout\ : std_logic;
SIGNAL \inst|decOut_n~11_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~6_combout\ : std_logic;
SIGNAL \inst|decOut_n~12_combout\ : std_logic;
SIGNAL \inst|decOut_n~13_combout\ : std_logic;
SIGNAL \inst|decOut_n~14_combout\ : std_logic;
SIGNAL \inst|decOut_n~15_combout\ : std_logic;
SIGNAL \inst|decOut_n~16_combout\ : std_logic;
SIGNAL \inst3|s_counter[0]~25_combout\ : std_logic;
SIGNAL \inst3|s_counter[16]~58\ : std_logic;
SIGNAL \inst3|s_counter[17]~59_combout\ : std_logic;
SIGNAL \inst3|s_counter[17]~60\ : std_logic;
SIGNAL \inst3|s_counter[18]~61_combout\ : std_logic;
SIGNAL \inst3|s_counter[18]~62\ : std_logic;
SIGNAL \inst3|s_counter[19]~63_combout\ : std_logic;
SIGNAL \inst3|s_counter[19]~64\ : std_logic;
SIGNAL \inst3|s_counter[20]~65_combout\ : std_logic;
SIGNAL \inst3|s_counter[20]~66\ : std_logic;
SIGNAL \inst3|s_counter[21]~67_combout\ : std_logic;
SIGNAL \inst3|s_counter[21]~68\ : std_logic;
SIGNAL \inst3|s_counter[22]~69_combout\ : std_logic;
SIGNAL \inst3|s_counter[22]~70\ : std_logic;
SIGNAL \inst3|s_counter[23]~71_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|s_counter[23]~72\ : std_logic;
SIGNAL \inst3|s_counter[24]~73_combout\ : std_logic;
SIGNAL \inst3|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|LessThan1~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|LessThan0~5_combout\ : std_logic;
SIGNAL \inst3|LessThan0~6_combout\ : std_logic;
SIGNAL \inst3|s_counter[0]~26\ : std_logic;
SIGNAL \inst3|s_counter[1]~27_combout\ : std_logic;
SIGNAL \inst3|s_counter[1]~28\ : std_logic;
SIGNAL \inst3|s_counter[2]~29_combout\ : std_logic;
SIGNAL \inst3|s_counter[2]~30\ : std_logic;
SIGNAL \inst3|s_counter[3]~31_combout\ : std_logic;
SIGNAL \inst3|s_counter[3]~32\ : std_logic;
SIGNAL \inst3|s_counter[4]~33_combout\ : std_logic;
SIGNAL \inst3|s_counter[4]~34\ : std_logic;
SIGNAL \inst3|s_counter[5]~35_combout\ : std_logic;
SIGNAL \inst3|s_counter[5]~36\ : std_logic;
SIGNAL \inst3|s_counter[6]~37_combout\ : std_logic;
SIGNAL \inst3|s_counter[6]~38\ : std_logic;
SIGNAL \inst3|s_counter[7]~39_combout\ : std_logic;
SIGNAL \inst3|s_counter[7]~40\ : std_logic;
SIGNAL \inst3|s_counter[8]~41_combout\ : std_logic;
SIGNAL \inst3|s_counter[8]~42\ : std_logic;
SIGNAL \inst3|s_counter[9]~43_combout\ : std_logic;
SIGNAL \inst3|s_counter[9]~44\ : std_logic;
SIGNAL \inst3|s_counter[10]~45_combout\ : std_logic;
SIGNAL \inst3|s_counter[10]~46\ : std_logic;
SIGNAL \inst3|s_counter[11]~47_combout\ : std_logic;
SIGNAL \inst3|s_counter[11]~48\ : std_logic;
SIGNAL \inst3|s_counter[12]~49_combout\ : std_logic;
SIGNAL \inst3|s_counter[12]~50\ : std_logic;
SIGNAL \inst3|s_counter[13]~51_combout\ : std_logic;
SIGNAL \inst3|s_counter[13]~52\ : std_logic;
SIGNAL \inst3|s_counter[14]~53_combout\ : std_logic;
SIGNAL \inst3|s_counter[14]~54\ : std_logic;
SIGNAL \inst3|s_counter[15]~55_combout\ : std_logic;
SIGNAL \inst3|s_counter[15]~56\ : std_logic;
SIGNAL \inst3|s_counter[16]~57_combout\ : std_logic;
SIGNAL \inst3|LessThan1~1_combout\ : std_logic;
SIGNAL \inst3|LessThan1~3_combout\ : std_logic;
SIGNAL \inst3|LessThan1~4_combout\ : std_logic;
SIGNAL \inst3|LessThan1~5_combout\ : std_logic;
SIGNAL \inst3|LessThan1~6_combout\ : std_logic;
SIGNAL \inst1|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|s_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst3|s_counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst3|ALT_INV_LessThan1~6_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst2|pulse~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|pulse~q\);
\inst3|ALT_INV_LessThan1~6_combout\ <= NOT \inst3|LessThan1~6_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[6]~17_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n~8_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n~10_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[3]~18_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n~12_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n~14_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n~16_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_LessThan1~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_LessThan1~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_LessThan1~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_LessThan1~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_LessThan1~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_LessThan1~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_LessThan1~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X113_Y28_N6
\inst2|s_cnt[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[0]~26_combout\ = \inst2|s_cnt\(0) $ (VCC)
-- \inst2|s_cnt[0]~27\ = CARRY(\inst2|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(0),
	datad => VCC,
	combout => \inst2|s_cnt[0]~26_combout\,
	cout => \inst2|s_cnt[0]~27\);

-- Location: LCCOMB_X113_Y27_N30
\inst2|s_cnt[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[3]~28_combout\ = (\SW[0]~input_o\) # (!\inst2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \inst2|Equal0~8_combout\,
	combout => \inst2|s_cnt[3]~28_combout\);

-- Location: FF_X113_Y28_N7
\inst2|s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[0]~26_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(0));

-- Location: LCCOMB_X113_Y28_N8
\inst2|s_cnt[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[1]~29_combout\ = (\inst2|s_cnt\(1) & (!\inst2|s_cnt[0]~27\)) # (!\inst2|s_cnt\(1) & ((\inst2|s_cnt[0]~27\) # (GND)))
-- \inst2|s_cnt[1]~30\ = CARRY((!\inst2|s_cnt[0]~27\) # (!\inst2|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(1),
	datad => VCC,
	cin => \inst2|s_cnt[0]~27\,
	combout => \inst2|s_cnt[1]~29_combout\,
	cout => \inst2|s_cnt[1]~30\);

-- Location: FF_X113_Y28_N9
\inst2|s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[1]~29_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(1));

-- Location: LCCOMB_X113_Y28_N10
\inst2|s_cnt[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[2]~31_combout\ = (\inst2|s_cnt\(2) & (\inst2|s_cnt[1]~30\ $ (GND))) # (!\inst2|s_cnt\(2) & (!\inst2|s_cnt[1]~30\ & VCC))
-- \inst2|s_cnt[2]~32\ = CARRY((\inst2|s_cnt\(2) & !\inst2|s_cnt[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(2),
	datad => VCC,
	cin => \inst2|s_cnt[1]~30\,
	combout => \inst2|s_cnt[2]~31_combout\,
	cout => \inst2|s_cnt[2]~32\);

-- Location: FF_X113_Y28_N11
\inst2|s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[2]~31_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(2));

-- Location: LCCOMB_X113_Y28_N12
\inst2|s_cnt[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[3]~33_combout\ = (\inst2|s_cnt\(3) & (!\inst2|s_cnt[2]~32\)) # (!\inst2|s_cnt\(3) & ((\inst2|s_cnt[2]~32\) # (GND)))
-- \inst2|s_cnt[3]~34\ = CARRY((!\inst2|s_cnt[2]~32\) # (!\inst2|s_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(3),
	datad => VCC,
	cin => \inst2|s_cnt[2]~32\,
	combout => \inst2|s_cnt[3]~33_combout\,
	cout => \inst2|s_cnt[3]~34\);

-- Location: FF_X113_Y28_N13
\inst2|s_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[3]~33_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(3));

-- Location: LCCOMB_X113_Y28_N14
\inst2|s_cnt[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[4]~35_combout\ = (\inst2|s_cnt\(4) & (\inst2|s_cnt[3]~34\ $ (GND))) # (!\inst2|s_cnt\(4) & (!\inst2|s_cnt[3]~34\ & VCC))
-- \inst2|s_cnt[4]~36\ = CARRY((\inst2|s_cnt\(4) & !\inst2|s_cnt[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(4),
	datad => VCC,
	cin => \inst2|s_cnt[3]~34\,
	combout => \inst2|s_cnt[4]~35_combout\,
	cout => \inst2|s_cnt[4]~36\);

-- Location: FF_X113_Y28_N15
\inst2|s_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[4]~35_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(4));

-- Location: LCCOMB_X113_Y28_N16
\inst2|s_cnt[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[5]~37_combout\ = (\inst2|s_cnt\(5) & (!\inst2|s_cnt[4]~36\)) # (!\inst2|s_cnt\(5) & ((\inst2|s_cnt[4]~36\) # (GND)))
-- \inst2|s_cnt[5]~38\ = CARRY((!\inst2|s_cnt[4]~36\) # (!\inst2|s_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(5),
	datad => VCC,
	cin => \inst2|s_cnt[4]~36\,
	combout => \inst2|s_cnt[5]~37_combout\,
	cout => \inst2|s_cnt[5]~38\);

-- Location: FF_X113_Y28_N17
\inst2|s_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[5]~37_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(5));

-- Location: LCCOMB_X113_Y28_N18
\inst2|s_cnt[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[6]~39_combout\ = (\inst2|s_cnt\(6) & (\inst2|s_cnt[5]~38\ $ (GND))) # (!\inst2|s_cnt\(6) & (!\inst2|s_cnt[5]~38\ & VCC))
-- \inst2|s_cnt[6]~40\ = CARRY((\inst2|s_cnt\(6) & !\inst2|s_cnt[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(6),
	datad => VCC,
	cin => \inst2|s_cnt[5]~38\,
	combout => \inst2|s_cnt[6]~39_combout\,
	cout => \inst2|s_cnt[6]~40\);

-- Location: FF_X113_Y28_N19
\inst2|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[6]~39_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(6));

-- Location: LCCOMB_X113_Y28_N20
\inst2|s_cnt[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[7]~41_combout\ = (\inst2|s_cnt\(7) & (!\inst2|s_cnt[6]~40\)) # (!\inst2|s_cnt\(7) & ((\inst2|s_cnt[6]~40\) # (GND)))
-- \inst2|s_cnt[7]~42\ = CARRY((!\inst2|s_cnt[6]~40\) # (!\inst2|s_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(7),
	datad => VCC,
	cin => \inst2|s_cnt[6]~40\,
	combout => \inst2|s_cnt[7]~41_combout\,
	cout => \inst2|s_cnt[7]~42\);

-- Location: FF_X113_Y28_N21
\inst2|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[7]~41_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(7));

-- Location: LCCOMB_X113_Y28_N22
\inst2|s_cnt[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[8]~43_combout\ = (\inst2|s_cnt\(8) & (\inst2|s_cnt[7]~42\ $ (GND))) # (!\inst2|s_cnt\(8) & (!\inst2|s_cnt[7]~42\ & VCC))
-- \inst2|s_cnt[8]~44\ = CARRY((\inst2|s_cnt\(8) & !\inst2|s_cnt[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(8),
	datad => VCC,
	cin => \inst2|s_cnt[7]~42\,
	combout => \inst2|s_cnt[8]~43_combout\,
	cout => \inst2|s_cnt[8]~44\);

-- Location: FF_X113_Y28_N23
\inst2|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[8]~43_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(8));

-- Location: LCCOMB_X113_Y28_N24
\inst2|s_cnt[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[9]~45_combout\ = (\inst2|s_cnt\(9) & (!\inst2|s_cnt[8]~44\)) # (!\inst2|s_cnt\(9) & ((\inst2|s_cnt[8]~44\) # (GND)))
-- \inst2|s_cnt[9]~46\ = CARRY((!\inst2|s_cnt[8]~44\) # (!\inst2|s_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(9),
	datad => VCC,
	cin => \inst2|s_cnt[8]~44\,
	combout => \inst2|s_cnt[9]~45_combout\,
	cout => \inst2|s_cnt[9]~46\);

-- Location: FF_X113_Y28_N25
\inst2|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[9]~45_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(9));

-- Location: LCCOMB_X113_Y28_N26
\inst2|s_cnt[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[10]~47_combout\ = (\inst2|s_cnt\(10) & (\inst2|s_cnt[9]~46\ $ (GND))) # (!\inst2|s_cnt\(10) & (!\inst2|s_cnt[9]~46\ & VCC))
-- \inst2|s_cnt[10]~48\ = CARRY((\inst2|s_cnt\(10) & !\inst2|s_cnt[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(10),
	datad => VCC,
	cin => \inst2|s_cnt[9]~46\,
	combout => \inst2|s_cnt[10]~47_combout\,
	cout => \inst2|s_cnt[10]~48\);

-- Location: FF_X113_Y28_N27
\inst2|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[10]~47_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(10));

-- Location: LCCOMB_X113_Y28_N28
\inst2|s_cnt[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[11]~49_combout\ = (\inst2|s_cnt\(11) & (!\inst2|s_cnt[10]~48\)) # (!\inst2|s_cnt\(11) & ((\inst2|s_cnt[10]~48\) # (GND)))
-- \inst2|s_cnt[11]~50\ = CARRY((!\inst2|s_cnt[10]~48\) # (!\inst2|s_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(11),
	datad => VCC,
	cin => \inst2|s_cnt[10]~48\,
	combout => \inst2|s_cnt[11]~49_combout\,
	cout => \inst2|s_cnt[11]~50\);

-- Location: FF_X113_Y28_N29
\inst2|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[11]~49_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(11));

-- Location: LCCOMB_X113_Y28_N30
\inst2|s_cnt[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[12]~51_combout\ = (\inst2|s_cnt\(12) & (\inst2|s_cnt[11]~50\ $ (GND))) # (!\inst2|s_cnt\(12) & (!\inst2|s_cnt[11]~50\ & VCC))
-- \inst2|s_cnt[12]~52\ = CARRY((\inst2|s_cnt\(12) & !\inst2|s_cnt[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(12),
	datad => VCC,
	cin => \inst2|s_cnt[11]~50\,
	combout => \inst2|s_cnt[12]~51_combout\,
	cout => \inst2|s_cnt[12]~52\);

-- Location: FF_X114_Y27_N29
\inst2|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst2|s_cnt[12]~51_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(12));

-- Location: LCCOMB_X113_Y27_N0
\inst2|s_cnt[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[13]~53_combout\ = (\inst2|s_cnt\(13) & (!\inst2|s_cnt[12]~52\)) # (!\inst2|s_cnt\(13) & ((\inst2|s_cnt[12]~52\) # (GND)))
-- \inst2|s_cnt[13]~54\ = CARRY((!\inst2|s_cnt[12]~52\) # (!\inst2|s_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(13),
	datad => VCC,
	cin => \inst2|s_cnt[12]~52\,
	combout => \inst2|s_cnt[13]~53_combout\,
	cout => \inst2|s_cnt[13]~54\);

-- Location: FF_X113_Y27_N1
\inst2|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[13]~53_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(13));

-- Location: LCCOMB_X113_Y27_N2
\inst2|s_cnt[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[14]~55_combout\ = (\inst2|s_cnt\(14) & (\inst2|s_cnt[13]~54\ $ (GND))) # (!\inst2|s_cnt\(14) & (!\inst2|s_cnt[13]~54\ & VCC))
-- \inst2|s_cnt[14]~56\ = CARRY((\inst2|s_cnt\(14) & !\inst2|s_cnt[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(14),
	datad => VCC,
	cin => \inst2|s_cnt[13]~54\,
	combout => \inst2|s_cnt[14]~55_combout\,
	cout => \inst2|s_cnt[14]~56\);

-- Location: FF_X113_Y27_N3
\inst2|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[14]~55_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(14));

-- Location: LCCOMB_X113_Y27_N4
\inst2|s_cnt[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[15]~57_combout\ = (\inst2|s_cnt\(15) & (!\inst2|s_cnt[14]~56\)) # (!\inst2|s_cnt\(15) & ((\inst2|s_cnt[14]~56\) # (GND)))
-- \inst2|s_cnt[15]~58\ = CARRY((!\inst2|s_cnt[14]~56\) # (!\inst2|s_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(15),
	datad => VCC,
	cin => \inst2|s_cnt[14]~56\,
	combout => \inst2|s_cnt[15]~57_combout\,
	cout => \inst2|s_cnt[15]~58\);

-- Location: FF_X113_Y27_N5
\inst2|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[15]~57_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(15));

-- Location: LCCOMB_X113_Y27_N6
\inst2|s_cnt[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[16]~59_combout\ = (\inst2|s_cnt\(16) & (\inst2|s_cnt[15]~58\ $ (GND))) # (!\inst2|s_cnt\(16) & (!\inst2|s_cnt[15]~58\ & VCC))
-- \inst2|s_cnt[16]~60\ = CARRY((\inst2|s_cnt\(16) & !\inst2|s_cnt[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(16),
	datad => VCC,
	cin => \inst2|s_cnt[15]~58\,
	combout => \inst2|s_cnt[16]~59_combout\,
	cout => \inst2|s_cnt[16]~60\);

-- Location: FF_X113_Y27_N7
\inst2|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[16]~59_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(16));

-- Location: LCCOMB_X113_Y27_N8
\inst2|s_cnt[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[17]~61_combout\ = (\inst2|s_cnt\(17) & (!\inst2|s_cnt[16]~60\)) # (!\inst2|s_cnt\(17) & ((\inst2|s_cnt[16]~60\) # (GND)))
-- \inst2|s_cnt[17]~62\ = CARRY((!\inst2|s_cnt[16]~60\) # (!\inst2|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(17),
	datad => VCC,
	cin => \inst2|s_cnt[16]~60\,
	combout => \inst2|s_cnt[17]~61_combout\,
	cout => \inst2|s_cnt[17]~62\);

-- Location: FF_X113_Y27_N9
\inst2|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[17]~61_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(17));

-- Location: LCCOMB_X113_Y27_N10
\inst2|s_cnt[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[18]~63_combout\ = (\inst2|s_cnt\(18) & (\inst2|s_cnt[17]~62\ $ (GND))) # (!\inst2|s_cnt\(18) & (!\inst2|s_cnt[17]~62\ & VCC))
-- \inst2|s_cnt[18]~64\ = CARRY((\inst2|s_cnt\(18) & !\inst2|s_cnt[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(18),
	datad => VCC,
	cin => \inst2|s_cnt[17]~62\,
	combout => \inst2|s_cnt[18]~63_combout\,
	cout => \inst2|s_cnt[18]~64\);

-- Location: FF_X113_Y27_N11
\inst2|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[18]~63_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(18));

-- Location: LCCOMB_X113_Y27_N12
\inst2|s_cnt[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[19]~65_combout\ = (\inst2|s_cnt\(19) & (!\inst2|s_cnt[18]~64\)) # (!\inst2|s_cnt\(19) & ((\inst2|s_cnt[18]~64\) # (GND)))
-- \inst2|s_cnt[19]~66\ = CARRY((!\inst2|s_cnt[18]~64\) # (!\inst2|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(19),
	datad => VCC,
	cin => \inst2|s_cnt[18]~64\,
	combout => \inst2|s_cnt[19]~65_combout\,
	cout => \inst2|s_cnt[19]~66\);

-- Location: FF_X113_Y27_N13
\inst2|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[19]~65_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(19));

-- Location: LCCOMB_X113_Y27_N14
\inst2|s_cnt[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[20]~67_combout\ = (\inst2|s_cnt\(20) & (\inst2|s_cnt[19]~66\ $ (GND))) # (!\inst2|s_cnt\(20) & (!\inst2|s_cnt[19]~66\ & VCC))
-- \inst2|s_cnt[20]~68\ = CARRY((\inst2|s_cnt\(20) & !\inst2|s_cnt[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(20),
	datad => VCC,
	cin => \inst2|s_cnt[19]~66\,
	combout => \inst2|s_cnt[20]~67_combout\,
	cout => \inst2|s_cnt[20]~68\);

-- Location: FF_X113_Y27_N15
\inst2|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[20]~67_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(20));

-- Location: LCCOMB_X113_Y27_N16
\inst2|s_cnt[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[21]~69_combout\ = (\inst2|s_cnt\(21) & (!\inst2|s_cnt[20]~68\)) # (!\inst2|s_cnt\(21) & ((\inst2|s_cnt[20]~68\) # (GND)))
-- \inst2|s_cnt[21]~70\ = CARRY((!\inst2|s_cnt[20]~68\) # (!\inst2|s_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(21),
	datad => VCC,
	cin => \inst2|s_cnt[20]~68\,
	combout => \inst2|s_cnt[21]~69_combout\,
	cout => \inst2|s_cnt[21]~70\);

-- Location: FF_X113_Y27_N17
\inst2|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[21]~69_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(21));

-- Location: LCCOMB_X113_Y27_N18
\inst2|s_cnt[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[22]~71_combout\ = (\inst2|s_cnt\(22) & (\inst2|s_cnt[21]~70\ $ (GND))) # (!\inst2|s_cnt\(22) & (!\inst2|s_cnt[21]~70\ & VCC))
-- \inst2|s_cnt[22]~72\ = CARRY((\inst2|s_cnt\(22) & !\inst2|s_cnt[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(22),
	datad => VCC,
	cin => \inst2|s_cnt[21]~70\,
	combout => \inst2|s_cnt[22]~71_combout\,
	cout => \inst2|s_cnt[22]~72\);

-- Location: FF_X113_Y27_N19
\inst2|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[22]~71_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(22));

-- Location: LCCOMB_X113_Y27_N20
\inst2|s_cnt[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[23]~73_combout\ = (\inst2|s_cnt\(23) & (!\inst2|s_cnt[22]~72\)) # (!\inst2|s_cnt\(23) & ((\inst2|s_cnt[22]~72\) # (GND)))
-- \inst2|s_cnt[23]~74\ = CARRY((!\inst2|s_cnt[22]~72\) # (!\inst2|s_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(23),
	datad => VCC,
	cin => \inst2|s_cnt[22]~72\,
	combout => \inst2|s_cnt[23]~73_combout\,
	cout => \inst2|s_cnt[23]~74\);

-- Location: FF_X113_Y27_N21
\inst2|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[23]~73_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(23));

-- Location: LCCOMB_X113_Y27_N22
\inst2|s_cnt[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[24]~75_combout\ = (\inst2|s_cnt\(24) & (\inst2|s_cnt[23]~74\ $ (GND))) # (!\inst2|s_cnt\(24) & (!\inst2|s_cnt[23]~74\ & VCC))
-- \inst2|s_cnt[24]~76\ = CARRY((\inst2|s_cnt\(24) & !\inst2|s_cnt[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(24),
	datad => VCC,
	cin => \inst2|s_cnt[23]~74\,
	combout => \inst2|s_cnt[24]~75_combout\,
	cout => \inst2|s_cnt[24]~76\);

-- Location: FF_X113_Y27_N23
\inst2|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[24]~75_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(24));

-- Location: LCCOMB_X113_Y27_N24
\inst2|s_cnt[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_cnt[25]~77_combout\ = \inst2|s_cnt[24]~76\ $ (\inst2|s_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_cnt\(25),
	cin => \inst2|s_cnt[24]~76\,
	combout => \inst2|s_cnt[25]~77_combout\);

-- Location: FF_X113_Y27_N25
\inst2|s_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_cnt[25]~77_combout\,
	sclr => \inst2|s_cnt[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_cnt\(25));

-- Location: LCCOMB_X112_Y27_N12
\inst2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~7_combout\ = (\inst2|s_cnt\(24)) # (!\inst2|s_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_cnt\(24),
	datad => \inst2|s_cnt\(25),
	combout => \inst2|Equal0~7_combout\);

-- Location: LCCOMB_X112_Y27_N6
\inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (((!\inst2|s_cnt\(21)) # (!\inst2|s_cnt\(20))) # (!\inst2|s_cnt\(22))) # (!\inst2|s_cnt\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(23),
	datab => \inst2|s_cnt\(22),
	datac => \inst2|s_cnt\(20),
	datad => \inst2|s_cnt\(21),
	combout => \inst2|Equal0~6_combout\);

-- Location: LCCOMB_X113_Y28_N0
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|s_cnt\(8)) # ((\inst2|s_cnt\(9)) # ((\inst2|s_cnt\(10)) # (\inst2|s_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(8),
	datab => \inst2|s_cnt\(9),
	datac => \inst2|s_cnt\(10),
	datad => \inst2|s_cnt\(11),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X113_Y28_N4
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (((!\inst2|s_cnt\(3)) # (!\inst2|s_cnt\(0))) # (!\inst2|s_cnt\(1))) # (!\inst2|s_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(2),
	datab => \inst2|s_cnt\(1),
	datac => \inst2|s_cnt\(0),
	datad => \inst2|s_cnt\(3),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X114_Y27_N0
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (((!\inst2|s_cnt\(14)) # (!\inst2|s_cnt\(15))) # (!\inst2|s_cnt\(12))) # (!\inst2|s_cnt\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(13),
	datab => \inst2|s_cnt\(12),
	datac => \inst2|s_cnt\(15),
	datad => \inst2|s_cnt\(14),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X113_Y28_N2
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (((\inst2|s_cnt\(7)) # (!\inst2|s_cnt\(4))) # (!\inst2|s_cnt\(5))) # (!\inst2|s_cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(6),
	datab => \inst2|s_cnt\(5),
	datac => \inst2|s_cnt\(4),
	datad => \inst2|s_cnt\(7),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X113_Y27_N26
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~2_combout\) # ((\inst2|Equal0~0_combout\) # ((\inst2|Equal0~3_combout\) # (\inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Equal0~3_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X112_Y27_N16
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (\inst2|s_cnt\(16)) # ((\inst2|s_cnt\(18)) # ((!\inst2|s_cnt\(17)) # (!\inst2|s_cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_cnt\(16),
	datab => \inst2|s_cnt\(18),
	datac => \inst2|s_cnt\(19),
	datad => \inst2|s_cnt\(17),
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X113_Y27_N28
\inst2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~8_combout\ = (\inst2|Equal0~7_combout\) # ((\inst2|Equal0~6_combout\) # ((\inst2|Equal0~4_combout\) # (\inst2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~7_combout\,
	datab => \inst2|Equal0~6_combout\,
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|Equal0~8_combout\);

-- Location: LCCOMB_X114_Y27_N30
\inst2|pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|pulse~0_combout\ = (!\SW[0]~input_o\ & !\inst2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \inst2|Equal0~8_combout\,
	combout => \inst2|pulse~0_combout\);

-- Location: FF_X114_Y27_N31
\inst2|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pulse~q\);

-- Location: CLKCTRL_G9
\inst2|pulse~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|pulse~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|pulse~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X113_Y53_N12
\inst1|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_count~9_combout\ = (!\SW[0]~input_o\ & !\inst1|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \inst1|s_count\(0),
	combout => \inst1|s_count~9_combout\);

-- Location: FF_X113_Y53_N13
\inst1|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pulse~clkctrl_outclk\,
	d => \inst1|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_count\(0));

-- Location: LCCOMB_X113_Y53_N18
\inst1|s_count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_count[1]~4_cout\ = CARRY(\inst1|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(0),
	datad => VCC,
	cout => \inst1|s_count[1]~4_cout\);

-- Location: LCCOMB_X113_Y53_N20
\inst1|s_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_count[1]~5_combout\ = (\SW[2]~input_o\ & ((\inst1|s_count\(1) & (!\inst1|s_count[1]~4_cout\)) # (!\inst1|s_count\(1) & ((\inst1|s_count[1]~4_cout\) # (GND))))) # (!\SW[2]~input_o\ & ((\inst1|s_count\(1) & (\inst1|s_count[1]~4_cout\ & VCC)) # 
-- (!\inst1|s_count\(1) & (!\inst1|s_count[1]~4_cout\))))
-- \inst1|s_count[1]~6\ = CARRY((\SW[2]~input_o\ & ((!\inst1|s_count[1]~4_cout\) # (!\inst1|s_count\(1)))) # (!\SW[2]~input_o\ & (!\inst1|s_count\(1) & !\inst1|s_count[1]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst1|s_count\(1),
	datad => VCC,
	cin => \inst1|s_count[1]~4_cout\,
	combout => \inst1|s_count[1]~5_combout\,
	cout => \inst1|s_count[1]~6\);

-- Location: FF_X113_Y53_N21
\inst1|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pulse~clkctrl_outclk\,
	d => \inst1|s_count[1]~5_combout\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_count\(1));

-- Location: LCCOMB_X113_Y53_N22
\inst1|s_count[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_count[2]~7_combout\ = ((\inst1|s_count\(2) $ (\SW[2]~input_o\ $ (\inst1|s_count[1]~6\)))) # (GND)
-- \inst1|s_count[2]~8\ = CARRY((\inst1|s_count\(2) & ((!\inst1|s_count[1]~6\) # (!\SW[2]~input_o\))) # (!\inst1|s_count\(2) & (!\SW[2]~input_o\ & !\inst1|s_count[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(2),
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst1|s_count[1]~6\,
	combout => \inst1|s_count[2]~7_combout\,
	cout => \inst1|s_count[2]~8\);

-- Location: FF_X113_Y53_N23
\inst1|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pulse~clkctrl_outclk\,
	d => \inst1|s_count[2]~7_combout\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_count\(2));

-- Location: LCCOMB_X113_Y53_N24
\inst1|s_count[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|s_count[3]~10_combout\ = \SW[2]~input_o\ $ (\inst1|s_count[2]~8\ $ (!\inst1|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datad => \inst1|s_count\(3),
	cin => \inst1|s_count[2]~8\,
	combout => \inst1|s_count[3]~10_combout\);

-- Location: FF_X113_Y53_N25
\inst1|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|pulse~clkctrl_outclk\,
	d => \inst1|s_count[3]~10_combout\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|s_count\(3));

-- Location: LCCOMB_X113_Y53_N16
\inst|decOut_n[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~2_combout\ = (\inst1|s_count\(0) & (!\inst1|s_count\(3) & (\inst1|s_count\(1) $ (!\inst1|s_count\(2))))) # (!\inst1|s_count\(0) & (!\inst1|s_count\(1) & (\inst1|s_count\(2) $ (!\inst1|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(1),
	datab => \inst1|s_count\(0),
	datac => \inst1|s_count\(2),
	datad => \inst1|s_count\(3),
	combout => \inst|decOut_n[6]~2_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X114_Y53_N8
\inst|decOut_n[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~17_combout\ = (\inst|decOut_n[6]~2_combout\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|decOut_n[6]~2_combout\,
	datad => \SW[1]~input_o\,
	combout => \inst|decOut_n[6]~17_combout\);

-- Location: LCCOMB_X113_Y53_N28
\inst|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~7_combout\ = (\inst1|s_count\(1) & (!\inst1|s_count\(3) & ((\inst1|s_count\(0)) # (!\inst1|s_count\(2))))) # (!\inst1|s_count\(1) & (\inst1|s_count\(0) & (\inst1|s_count\(2) $ (!\inst1|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(1),
	datab => \inst1|s_count\(0),
	datac => \inst1|s_count\(2),
	datad => \inst1|s_count\(3),
	combout => \inst|decOut_n~7_combout\);

-- Location: LCCOMB_X114_Y53_N4
\inst|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~8_combout\ = (\inst|decOut_n~7_combout\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n~7_combout\,
	datad => \SW[1]~input_o\,
	combout => \inst|decOut_n~8_combout\);

-- Location: LCCOMB_X113_Y53_N14
\inst|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~9_combout\ = (\inst1|s_count\(1) & (\inst1|s_count\(0) & ((!\inst1|s_count\(3))))) # (!\inst1|s_count\(1) & ((\inst1|s_count\(2) & ((!\inst1|s_count\(3)))) # (!\inst1|s_count\(2) & (\inst1|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(1),
	datab => \inst1|s_count\(0),
	datac => \inst1|s_count\(2),
	datad => \inst1|s_count\(3),
	combout => \inst|decOut_n~9_combout\);

-- Location: LCCOMB_X114_Y53_N10
\inst|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~10_combout\ = (\inst|decOut_n~9_combout\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n~9_combout\,
	datad => \SW[1]~input_o\,
	combout => \inst|decOut_n~10_combout\);

-- Location: LCCOMB_X113_Y53_N6
\inst|decOut_n[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~5_combout\ = (\inst1|s_count\(1) & ((\inst1|s_count\(0) & (\inst1|s_count\(2))) # (!\inst1|s_count\(0) & (!\inst1|s_count\(2) & \inst1|s_count\(3))))) # (!\inst1|s_count\(1) & (!\inst1|s_count\(3) & (\inst1|s_count\(0) $ 
-- (\inst1|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(1),
	datab => \inst1|s_count\(0),
	datac => \inst1|s_count\(2),
	datad => \inst1|s_count\(3),
	combout => \inst|decOut_n[3]~5_combout\);

-- Location: LCCOMB_X114_Y53_N14
\inst|decOut_n[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~18_combout\ = (\inst|decOut_n[3]~5_combout\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|decOut_n[3]~5_combout\,
	datad => \SW[1]~input_o\,
	combout => \inst|decOut_n[3]~18_combout\);

-- Location: LCCOMB_X113_Y53_N0
\inst|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~11_combout\ = (\inst1|s_count\(2) & (\inst1|s_count\(3) & ((\inst1|s_count\(1)) # (!\inst1|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(1),
	datab => \inst1|s_count\(0),
	datac => \inst1|s_count\(2),
	datad => \inst1|s_count\(3),
	combout => \inst|decOut_n~11_combout\);

-- Location: LCCOMB_X113_Y53_N26
\inst|decOut_n[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~6_combout\ = (!\inst1|s_count\(0) & (!\inst1|s_count\(2) & !\inst1|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|s_count\(0),
	datac => \inst1|s_count\(2),
	datad => \inst1|s_count\(3),
	combout => \inst|decOut_n[3]~6_combout\);

-- Location: LCCOMB_X113_Y53_N10
\inst|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~12_combout\ = (\inst|decOut_n~11_combout\) # (((\inst1|s_count\(1) & \inst|decOut_n[3]~6_combout\)) # (!\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(1),
	datab => \inst|decOut_n~11_combout\,
	datac => \inst|decOut_n[3]~6_combout\,
	datad => \SW[1]~input_o\,
	combout => \inst|decOut_n~12_combout\);

-- Location: LCCOMB_X113_Y53_N8
\inst|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~13_combout\ = (\inst1|s_count\(2) & (!\inst1|s_count\(3) & (\inst1|s_count\(1) $ (\inst1|s_count\(0))))) # (!\inst1|s_count\(2) & (\inst1|s_count\(1) & (\inst1|s_count\(0) & \inst1|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(1),
	datab => \inst1|s_count\(0),
	datac => \inst1|s_count\(2),
	datad => \inst1|s_count\(3),
	combout => \inst|decOut_n~13_combout\);

-- Location: LCCOMB_X113_Y53_N30
\inst|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~14_combout\ = (\inst|decOut_n~11_combout\) # ((\inst|decOut_n~13_combout\) # (!\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n~11_combout\,
	datac => \inst|decOut_n~13_combout\,
	datad => \SW[1]~input_o\,
	combout => \inst|decOut_n~14_combout\);

-- Location: LCCOMB_X113_Y53_N4
\inst|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~15_combout\ = (\inst1|s_count\(2) & (!\inst1|s_count\(1) & (\inst1|s_count\(0) $ (!\inst1|s_count\(3))))) # (!\inst1|s_count\(2) & (\inst1|s_count\(0) & (\inst1|s_count\(1) $ (!\inst1|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|s_count\(1),
	datab => \inst1|s_count\(0),
	datac => \inst1|s_count\(2),
	datad => \inst1|s_count\(3),
	combout => \inst|decOut_n~15_combout\);

-- Location: LCCOMB_X113_Y53_N2
\inst|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~16_combout\ = (\inst|decOut_n~15_combout\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|decOut_n~15_combout\,
	datad => \SW[1]~input_o\,
	combout => \inst|decOut_n~16_combout\);

-- Location: LCCOMB_X82_Y18_N8
\inst3|s_counter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[0]~25_combout\ = \inst3|s_counter\(0) $ (VCC)
-- \inst3|s_counter[0]~26\ = CARRY(\inst3|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(0),
	datad => VCC,
	combout => \inst3|s_counter[0]~25_combout\,
	cout => \inst3|s_counter[0]~26\);

-- Location: LCCOMB_X82_Y17_N8
\inst3|s_counter[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[16]~57_combout\ = (\inst3|s_counter\(16) & (\inst3|s_counter[15]~56\ $ (GND))) # (!\inst3|s_counter\(16) & (!\inst3|s_counter[15]~56\ & VCC))
-- \inst3|s_counter[16]~58\ = CARRY((\inst3|s_counter\(16) & !\inst3|s_counter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(16),
	datad => VCC,
	cin => \inst3|s_counter[15]~56\,
	combout => \inst3|s_counter[16]~57_combout\,
	cout => \inst3|s_counter[16]~58\);

-- Location: LCCOMB_X82_Y17_N10
\inst3|s_counter[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[17]~59_combout\ = (\inst3|s_counter\(17) & (!\inst3|s_counter[16]~58\)) # (!\inst3|s_counter\(17) & ((\inst3|s_counter[16]~58\) # (GND)))
-- \inst3|s_counter[17]~60\ = CARRY((!\inst3|s_counter[16]~58\) # (!\inst3|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(17),
	datad => VCC,
	cin => \inst3|s_counter[16]~58\,
	combout => \inst3|s_counter[17]~59_combout\,
	cout => \inst3|s_counter[17]~60\);

-- Location: FF_X82_Y17_N11
\inst3|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[17]~59_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(17));

-- Location: LCCOMB_X82_Y17_N12
\inst3|s_counter[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[18]~61_combout\ = (\inst3|s_counter\(18) & (\inst3|s_counter[17]~60\ $ (GND))) # (!\inst3|s_counter\(18) & (!\inst3|s_counter[17]~60\ & VCC))
-- \inst3|s_counter[18]~62\ = CARRY((\inst3|s_counter\(18) & !\inst3|s_counter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(18),
	datad => VCC,
	cin => \inst3|s_counter[17]~60\,
	combout => \inst3|s_counter[18]~61_combout\,
	cout => \inst3|s_counter[18]~62\);

-- Location: FF_X82_Y17_N13
\inst3|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[18]~61_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(18));

-- Location: LCCOMB_X82_Y17_N14
\inst3|s_counter[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[19]~63_combout\ = (\inst3|s_counter\(19) & (!\inst3|s_counter[18]~62\)) # (!\inst3|s_counter\(19) & ((\inst3|s_counter[18]~62\) # (GND)))
-- \inst3|s_counter[19]~64\ = CARRY((!\inst3|s_counter[18]~62\) # (!\inst3|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(19),
	datad => VCC,
	cin => \inst3|s_counter[18]~62\,
	combout => \inst3|s_counter[19]~63_combout\,
	cout => \inst3|s_counter[19]~64\);

-- Location: FF_X82_Y17_N15
\inst3|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[19]~63_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(19));

-- Location: LCCOMB_X82_Y17_N16
\inst3|s_counter[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[20]~65_combout\ = (\inst3|s_counter\(20) & (\inst3|s_counter[19]~64\ $ (GND))) # (!\inst3|s_counter\(20) & (!\inst3|s_counter[19]~64\ & VCC))
-- \inst3|s_counter[20]~66\ = CARRY((\inst3|s_counter\(20) & !\inst3|s_counter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(20),
	datad => VCC,
	cin => \inst3|s_counter[19]~64\,
	combout => \inst3|s_counter[20]~65_combout\,
	cout => \inst3|s_counter[20]~66\);

-- Location: FF_X82_Y17_N17
\inst3|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[20]~65_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(20));

-- Location: LCCOMB_X82_Y17_N18
\inst3|s_counter[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[21]~67_combout\ = (\inst3|s_counter\(21) & (!\inst3|s_counter[20]~66\)) # (!\inst3|s_counter\(21) & ((\inst3|s_counter[20]~66\) # (GND)))
-- \inst3|s_counter[21]~68\ = CARRY((!\inst3|s_counter[20]~66\) # (!\inst3|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(21),
	datad => VCC,
	cin => \inst3|s_counter[20]~66\,
	combout => \inst3|s_counter[21]~67_combout\,
	cout => \inst3|s_counter[21]~68\);

-- Location: FF_X82_Y17_N19
\inst3|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[21]~67_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(21));

-- Location: LCCOMB_X82_Y17_N20
\inst3|s_counter[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[22]~69_combout\ = (\inst3|s_counter\(22) & (\inst3|s_counter[21]~68\ $ (GND))) # (!\inst3|s_counter\(22) & (!\inst3|s_counter[21]~68\ & VCC))
-- \inst3|s_counter[22]~70\ = CARRY((\inst3|s_counter\(22) & !\inst3|s_counter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(22),
	datad => VCC,
	cin => \inst3|s_counter[21]~68\,
	combout => \inst3|s_counter[22]~69_combout\,
	cout => \inst3|s_counter[22]~70\);

-- Location: FF_X82_Y17_N21
\inst3|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[22]~69_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(22));

-- Location: LCCOMB_X82_Y17_N22
\inst3|s_counter[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[23]~71_combout\ = (\inst3|s_counter\(23) & (!\inst3|s_counter[22]~70\)) # (!\inst3|s_counter\(23) & ((\inst3|s_counter[22]~70\) # (GND)))
-- \inst3|s_counter[23]~72\ = CARRY((!\inst3|s_counter[22]~70\) # (!\inst3|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(23),
	datad => VCC,
	cin => \inst3|s_counter[22]~70\,
	combout => \inst3|s_counter[23]~71_combout\,
	cout => \inst3|s_counter[23]~72\);

-- Location: FF_X82_Y17_N23
\inst3|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[23]~71_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(23));

-- Location: LCCOMB_X82_Y17_N26
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = ((!\inst3|s_counter\(16) & !\inst3|s_counter\(17))) # (!\inst3|s_counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(22),
	datac => \inst3|s_counter\(16),
	datad => \inst3|s_counter\(17),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X82_Y17_N24
\inst3|s_counter[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[24]~73_combout\ = \inst3|s_counter[23]~72\ $ (!\inst3|s_counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|s_counter\(24),
	cin => \inst3|s_counter[23]~72\,
	combout => \inst3|s_counter[24]~73_combout\);

-- Location: FF_X82_Y17_N25
\inst3|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[24]~73_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(24));

-- Location: LCCOMB_X82_Y17_N30
\inst3|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~0_combout\ = (\inst3|s_counter\(18) & (\inst3|s_counter\(21) & (\inst3|s_counter\(19) & \inst3|s_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(18),
	datab => \inst3|s_counter\(21),
	datac => \inst3|s_counter\(19),
	datad => \inst3|s_counter\(20),
	combout => \inst3|LessThan1~0_combout\);

-- Location: LCCOMB_X82_Y18_N4
\inst3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_combout\ = (((!\inst3|s_counter\(13)) # (!\inst3|s_counter\(14))) # (!\inst3|s_counter\(12))) # (!\inst3|s_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(11),
	datab => \inst3|s_counter\(12),
	datac => \inst3|s_counter\(14),
	datad => \inst3|s_counter\(13),
	combout => \inst3|LessThan0~3_combout\);

-- Location: LCCOMB_X83_Y18_N8
\inst3|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~2_combout\ = (!\inst3|s_counter\(9) & (!\inst3|s_counter\(6) & (!\inst3|s_counter\(8) & !\inst3|s_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(9),
	datab => \inst3|s_counter\(6),
	datac => \inst3|s_counter\(8),
	datad => \inst3|s_counter\(7),
	combout => \inst3|LessThan1~2_combout\);

-- Location: LCCOMB_X83_Y18_N28
\inst3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = (((!\inst3|s_counter\(0)) # (!\inst3|s_counter\(1))) # (!\inst3|s_counter\(5))) # (!\inst3|s_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(2),
	datab => \inst3|s_counter\(5),
	datac => \inst3|s_counter\(1),
	datad => \inst3|s_counter\(0),
	combout => \inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X83_Y18_N26
\inst3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = ((\inst3|LessThan0~1_combout\) # (!\inst3|s_counter\(4))) # (!\inst3|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(3),
	datac => \inst3|s_counter\(4),
	datad => \inst3|LessThan0~1_combout\,
	combout => \inst3|LessThan0~2_combout\);

-- Location: LCCOMB_X82_Y18_N6
\inst3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~4_combout\ = (\inst3|LessThan0~3_combout\) # ((!\inst3|s_counter\(10) & (\inst3|LessThan1~2_combout\ & \inst3|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(10),
	datab => \inst3|LessThan0~3_combout\,
	datac => \inst3|LessThan1~2_combout\,
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|LessThan0~4_combout\);

-- Location: LCCOMB_X82_Y18_N0
\inst3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_combout\ = (\inst3|LessThan1~0_combout\ & ((\inst3|s_counter\(17)) # ((\inst3|s_counter\(15)) # (!\inst3|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan1~0_combout\,
	datab => \inst3|s_counter\(17),
	datac => \inst3|s_counter\(15),
	datad => \inst3|LessThan0~4_combout\,
	combout => \inst3|LessThan0~5_combout\);

-- Location: LCCOMB_X82_Y18_N2
\inst3|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~6_combout\ = (\inst3|s_counter\(24) & ((\inst3|s_counter\(23)) # ((!\inst3|LessThan0~0_combout\ & \inst3|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(23),
	datab => \inst3|LessThan0~0_combout\,
	datac => \inst3|s_counter\(24),
	datad => \inst3|LessThan0~5_combout\,
	combout => \inst3|LessThan0~6_combout\);

-- Location: FF_X82_Y18_N9
\inst3|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[0]~25_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(0));

-- Location: LCCOMB_X82_Y18_N10
\inst3|s_counter[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[1]~27_combout\ = (\inst3|s_counter\(1) & (!\inst3|s_counter[0]~26\)) # (!\inst3|s_counter\(1) & ((\inst3|s_counter[0]~26\) # (GND)))
-- \inst3|s_counter[1]~28\ = CARRY((!\inst3|s_counter[0]~26\) # (!\inst3|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(1),
	datad => VCC,
	cin => \inst3|s_counter[0]~26\,
	combout => \inst3|s_counter[1]~27_combout\,
	cout => \inst3|s_counter[1]~28\);

-- Location: FF_X82_Y18_N11
\inst3|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[1]~27_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(1));

-- Location: LCCOMB_X82_Y18_N12
\inst3|s_counter[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[2]~29_combout\ = (\inst3|s_counter\(2) & (\inst3|s_counter[1]~28\ $ (GND))) # (!\inst3|s_counter\(2) & (!\inst3|s_counter[1]~28\ & VCC))
-- \inst3|s_counter[2]~30\ = CARRY((\inst3|s_counter\(2) & !\inst3|s_counter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(2),
	datad => VCC,
	cin => \inst3|s_counter[1]~28\,
	combout => \inst3|s_counter[2]~29_combout\,
	cout => \inst3|s_counter[2]~30\);

-- Location: FF_X82_Y18_N13
\inst3|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[2]~29_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(2));

-- Location: LCCOMB_X82_Y18_N14
\inst3|s_counter[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[3]~31_combout\ = (\inst3|s_counter\(3) & (!\inst3|s_counter[2]~30\)) # (!\inst3|s_counter\(3) & ((\inst3|s_counter[2]~30\) # (GND)))
-- \inst3|s_counter[3]~32\ = CARRY((!\inst3|s_counter[2]~30\) # (!\inst3|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(3),
	datad => VCC,
	cin => \inst3|s_counter[2]~30\,
	combout => \inst3|s_counter[3]~31_combout\,
	cout => \inst3|s_counter[3]~32\);

-- Location: FF_X82_Y18_N15
\inst3|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[3]~31_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(3));

-- Location: LCCOMB_X82_Y18_N16
\inst3|s_counter[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[4]~33_combout\ = (\inst3|s_counter\(4) & (\inst3|s_counter[3]~32\ $ (GND))) # (!\inst3|s_counter\(4) & (!\inst3|s_counter[3]~32\ & VCC))
-- \inst3|s_counter[4]~34\ = CARRY((\inst3|s_counter\(4) & !\inst3|s_counter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(4),
	datad => VCC,
	cin => \inst3|s_counter[3]~32\,
	combout => \inst3|s_counter[4]~33_combout\,
	cout => \inst3|s_counter[4]~34\);

-- Location: FF_X82_Y18_N17
\inst3|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[4]~33_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(4));

-- Location: LCCOMB_X82_Y18_N18
\inst3|s_counter[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[5]~35_combout\ = (\inst3|s_counter\(5) & (!\inst3|s_counter[4]~34\)) # (!\inst3|s_counter\(5) & ((\inst3|s_counter[4]~34\) # (GND)))
-- \inst3|s_counter[5]~36\ = CARRY((!\inst3|s_counter[4]~34\) # (!\inst3|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(5),
	datad => VCC,
	cin => \inst3|s_counter[4]~34\,
	combout => \inst3|s_counter[5]~35_combout\,
	cout => \inst3|s_counter[5]~36\);

-- Location: FF_X82_Y18_N19
\inst3|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[5]~35_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(5));

-- Location: LCCOMB_X82_Y18_N20
\inst3|s_counter[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[6]~37_combout\ = (\inst3|s_counter\(6) & (\inst3|s_counter[5]~36\ $ (GND))) # (!\inst3|s_counter\(6) & (!\inst3|s_counter[5]~36\ & VCC))
-- \inst3|s_counter[6]~38\ = CARRY((\inst3|s_counter\(6) & !\inst3|s_counter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(6),
	datad => VCC,
	cin => \inst3|s_counter[5]~36\,
	combout => \inst3|s_counter[6]~37_combout\,
	cout => \inst3|s_counter[6]~38\);

-- Location: FF_X82_Y18_N21
\inst3|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[6]~37_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(6));

-- Location: LCCOMB_X82_Y18_N22
\inst3|s_counter[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[7]~39_combout\ = (\inst3|s_counter\(7) & (!\inst3|s_counter[6]~38\)) # (!\inst3|s_counter\(7) & ((\inst3|s_counter[6]~38\) # (GND)))
-- \inst3|s_counter[7]~40\ = CARRY((!\inst3|s_counter[6]~38\) # (!\inst3|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(7),
	datad => VCC,
	cin => \inst3|s_counter[6]~38\,
	combout => \inst3|s_counter[7]~39_combout\,
	cout => \inst3|s_counter[7]~40\);

-- Location: FF_X82_Y18_N23
\inst3|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[7]~39_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(7));

-- Location: LCCOMB_X82_Y18_N24
\inst3|s_counter[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[8]~41_combout\ = (\inst3|s_counter\(8) & (\inst3|s_counter[7]~40\ $ (GND))) # (!\inst3|s_counter\(8) & (!\inst3|s_counter[7]~40\ & VCC))
-- \inst3|s_counter[8]~42\ = CARRY((\inst3|s_counter\(8) & !\inst3|s_counter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(8),
	datad => VCC,
	cin => \inst3|s_counter[7]~40\,
	combout => \inst3|s_counter[8]~41_combout\,
	cout => \inst3|s_counter[8]~42\);

-- Location: FF_X82_Y18_N25
\inst3|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[8]~41_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(8));

-- Location: LCCOMB_X82_Y18_N26
\inst3|s_counter[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[9]~43_combout\ = (\inst3|s_counter\(9) & (!\inst3|s_counter[8]~42\)) # (!\inst3|s_counter\(9) & ((\inst3|s_counter[8]~42\) # (GND)))
-- \inst3|s_counter[9]~44\ = CARRY((!\inst3|s_counter[8]~42\) # (!\inst3|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(9),
	datad => VCC,
	cin => \inst3|s_counter[8]~42\,
	combout => \inst3|s_counter[9]~43_combout\,
	cout => \inst3|s_counter[9]~44\);

-- Location: FF_X82_Y18_N27
\inst3|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[9]~43_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(9));

-- Location: LCCOMB_X82_Y18_N28
\inst3|s_counter[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[10]~45_combout\ = (\inst3|s_counter\(10) & (\inst3|s_counter[9]~44\ $ (GND))) # (!\inst3|s_counter\(10) & (!\inst3|s_counter[9]~44\ & VCC))
-- \inst3|s_counter[10]~46\ = CARRY((\inst3|s_counter\(10) & !\inst3|s_counter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(10),
	datad => VCC,
	cin => \inst3|s_counter[9]~44\,
	combout => \inst3|s_counter[10]~45_combout\,
	cout => \inst3|s_counter[10]~46\);

-- Location: FF_X82_Y18_N29
\inst3|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[10]~45_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(10));

-- Location: LCCOMB_X82_Y18_N30
\inst3|s_counter[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[11]~47_combout\ = (\inst3|s_counter\(11) & (!\inst3|s_counter[10]~46\)) # (!\inst3|s_counter\(11) & ((\inst3|s_counter[10]~46\) # (GND)))
-- \inst3|s_counter[11]~48\ = CARRY((!\inst3|s_counter[10]~46\) # (!\inst3|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(11),
	datad => VCC,
	cin => \inst3|s_counter[10]~46\,
	combout => \inst3|s_counter[11]~47_combout\,
	cout => \inst3|s_counter[11]~48\);

-- Location: FF_X82_Y18_N31
\inst3|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[11]~47_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(11));

-- Location: LCCOMB_X82_Y17_N0
\inst3|s_counter[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[12]~49_combout\ = (\inst3|s_counter\(12) & (\inst3|s_counter[11]~48\ $ (GND))) # (!\inst3|s_counter\(12) & (!\inst3|s_counter[11]~48\ & VCC))
-- \inst3|s_counter[12]~50\ = CARRY((\inst3|s_counter\(12) & !\inst3|s_counter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(12),
	datad => VCC,
	cin => \inst3|s_counter[11]~48\,
	combout => \inst3|s_counter[12]~49_combout\,
	cout => \inst3|s_counter[12]~50\);

-- Location: FF_X81_Y18_N31
\inst3|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_counter[12]~49_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(12));

-- Location: LCCOMB_X82_Y17_N2
\inst3|s_counter[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[13]~51_combout\ = (\inst3|s_counter\(13) & (!\inst3|s_counter[12]~50\)) # (!\inst3|s_counter\(13) & ((\inst3|s_counter[12]~50\) # (GND)))
-- \inst3|s_counter[13]~52\ = CARRY((!\inst3|s_counter[12]~50\) # (!\inst3|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(13),
	datad => VCC,
	cin => \inst3|s_counter[12]~50\,
	combout => \inst3|s_counter[13]~51_combout\,
	cout => \inst3|s_counter[13]~52\);

-- Location: FF_X81_Y18_N29
\inst3|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_counter[13]~51_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(13));

-- Location: LCCOMB_X82_Y17_N4
\inst3|s_counter[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[14]~53_combout\ = (\inst3|s_counter\(14) & (\inst3|s_counter[13]~52\ $ (GND))) # (!\inst3|s_counter\(14) & (!\inst3|s_counter[13]~52\ & VCC))
-- \inst3|s_counter[14]~54\ = CARRY((\inst3|s_counter\(14) & !\inst3|s_counter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(14),
	datad => VCC,
	cin => \inst3|s_counter[13]~52\,
	combout => \inst3|s_counter[14]~53_combout\,
	cout => \inst3|s_counter[14]~54\);

-- Location: FF_X81_Y18_N17
\inst3|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_counter[14]~53_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(14));

-- Location: LCCOMB_X82_Y17_N6
\inst3|s_counter[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_counter[15]~55_combout\ = (\inst3|s_counter\(15) & (!\inst3|s_counter[14]~54\)) # (!\inst3|s_counter\(15) & ((\inst3|s_counter[14]~54\) # (GND)))
-- \inst3|s_counter[15]~56\ = CARRY((!\inst3|s_counter[14]~54\) # (!\inst3|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(15),
	datad => VCC,
	cin => \inst3|s_counter[14]~54\,
	combout => \inst3|s_counter[15]~55_combout\,
	cout => \inst3|s_counter[15]~56\);

-- Location: FF_X82_Y17_N7
\inst3|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[15]~55_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(15));

-- Location: FF_X82_Y17_N9
\inst3|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_counter[16]~57_combout\,
	sclr => \inst3|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_counter\(16));

-- Location: LCCOMB_X81_Y18_N26
\inst3|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~1_combout\ = (((!\inst3|s_counter\(13)) # (!\inst3|s_counter\(11))) # (!\inst3|s_counter\(10))) # (!\inst3|s_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(12),
	datab => \inst3|s_counter\(10),
	datac => \inst3|s_counter\(11),
	datad => \inst3|s_counter\(13),
	combout => \inst3|LessThan1~1_combout\);

-- Location: LCCOMB_X83_Y18_N30
\inst3|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~3_combout\ = (\inst3|LessThan1~1_combout\) # ((!\inst3|s_counter\(5) & \inst3|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_counter\(5),
	datac => \inst3|LessThan1~1_combout\,
	datad => \inst3|LessThan1~2_combout\,
	combout => \inst3|LessThan1~3_combout\);

-- Location: LCCOMB_X83_Y17_N28
\inst3|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~4_combout\ = (\inst3|s_counter\(15) & ((\inst3|s_counter\(14)) # (!\inst3|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(14),
	datac => \inst3|s_counter\(15),
	datad => \inst3|LessThan1~3_combout\,
	combout => \inst3|LessThan1~4_combout\);

-- Location: LCCOMB_X83_Y17_N6
\inst3|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~5_combout\ = (\inst3|LessThan1~0_combout\ & (\inst3|s_counter\(17) & ((\inst3|s_counter\(16)) # (\inst3|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_counter\(16),
	datab => \inst3|LessThan1~4_combout\,
	datac => \inst3|LessThan1~0_combout\,
	datad => \inst3|s_counter\(17),
	combout => \inst3|LessThan1~5_combout\);

-- Location: LCCOMB_X82_Y17_N28
\inst3|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~6_combout\ = (!\inst3|s_counter\(24) & (((!\inst3|LessThan1~5_combout\ & !\inst3|s_counter\(22))) # (!\inst3|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan1~5_combout\,
	datab => \inst3|s_counter\(24),
	datac => \inst3|s_counter\(23),
	datad => \inst3|s_counter\(22),
	combout => \inst3|LessThan1~6_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


