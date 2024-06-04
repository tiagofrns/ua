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

-- DATE "03/20/2024 18:41:18"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FreqDivider IS
    PORT (
	clkIn : IN std_logic;
	k : IN std_logic_vector(31 DOWNTO 0);
	clkOut : OUT std_logic
	);
END FreqDivider;

ARCHITECTURE structure OF FreqDivider IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkIn : std_logic;
SIGNAL ww_k : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clkOut : std_logic;
SIGNAL \clkOut~output_o\ : std_logic;
SIGNAL \clkIn~input_o\ : std_logic;
SIGNAL \s_counter[0]~32_combout\ : std_logic;
SIGNAL \k[0]~input_o\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \k[1]~input_o\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \s_counter[0]~33\ : std_logic;
SIGNAL \s_counter[1]~35_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \k[2]~input_o\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \k[3]~input_o\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \s_counter[1]~36\ : std_logic;
SIGNAL \s_counter[2]~37_combout\ : std_logic;
SIGNAL \s_counter[2]~38\ : std_logic;
SIGNAL \s_counter[3]~39_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \k[4]~input_o\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \k[5]~input_o\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \s_counter[3]~40\ : std_logic;
SIGNAL \s_counter[4]~41_combout\ : std_logic;
SIGNAL \s_counter[4]~42\ : std_logic;
SIGNAL \s_counter[5]~43_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \k[6]~input_o\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \k[7]~input_o\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \s_counter[5]~44\ : std_logic;
SIGNAL \s_counter[6]~45_combout\ : std_logic;
SIGNAL \s_counter[6]~46\ : std_logic;
SIGNAL \s_counter[7]~47_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \k[8]~input_o\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \k[9]~input_o\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \s_counter[7]~48\ : std_logic;
SIGNAL \s_counter[8]~49_combout\ : std_logic;
SIGNAL \s_counter[8]~50\ : std_logic;
SIGNAL \s_counter[9]~51_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \k[10]~input_o\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \k[11]~input_o\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \s_counter[9]~52\ : std_logic;
SIGNAL \s_counter[10]~53_combout\ : std_logic;
SIGNAL \s_counter[10]~54\ : std_logic;
SIGNAL \s_counter[11]~55_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \k[12]~input_o\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \k[13]~input_o\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \s_counter[11]~56\ : std_logic;
SIGNAL \s_counter[12]~57_combout\ : std_logic;
SIGNAL \s_counter[12]~58\ : std_logic;
SIGNAL \s_counter[13]~59_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \k[14]~input_o\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \k[15]~input_o\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \s_counter[13]~60\ : std_logic;
SIGNAL \s_counter[14]~61_combout\ : std_logic;
SIGNAL \s_counter[14]~62\ : std_logic;
SIGNAL \s_counter[15]~63_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \k[16]~input_o\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \k[17]~input_o\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \s_counter[15]~64\ : std_logic;
SIGNAL \s_counter[16]~65_combout\ : std_logic;
SIGNAL \s_counter[16]~66\ : std_logic;
SIGNAL \s_counter[17]~67_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \k[18]~input_o\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \k[19]~input_o\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \s_counter[17]~68\ : std_logic;
SIGNAL \s_counter[18]~69_combout\ : std_logic;
SIGNAL \s_counter[18]~70\ : std_logic;
SIGNAL \s_counter[19]~71_combout\ : std_logic;
SIGNAL \Equal1~11_combout\ : std_logic;
SIGNAL \k[20]~input_o\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \k[21]~input_o\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \s_counter[19]~72\ : std_logic;
SIGNAL \s_counter[20]~73_combout\ : std_logic;
SIGNAL \s_counter[20]~74\ : std_logic;
SIGNAL \s_counter[21]~75_combout\ : std_logic;
SIGNAL \Equal1~12_combout\ : std_logic;
SIGNAL \k[22]~input_o\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \k[23]~input_o\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \s_counter[21]~76\ : std_logic;
SIGNAL \s_counter[22]~77_combout\ : std_logic;
SIGNAL \s_counter[22]~78\ : std_logic;
SIGNAL \s_counter[23]~79_combout\ : std_logic;
SIGNAL \Equal1~13_combout\ : std_logic;
SIGNAL \Equal1~14_combout\ : std_logic;
SIGNAL \k[24]~input_o\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \k[25]~input_o\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \s_counter[23]~80\ : std_logic;
SIGNAL \s_counter[24]~81_combout\ : std_logic;
SIGNAL \s_counter[24]~82\ : std_logic;
SIGNAL \s_counter[25]~83_combout\ : std_logic;
SIGNAL \Equal1~15_combout\ : std_logic;
SIGNAL \k[26]~input_o\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \k[27]~input_o\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \s_counter[25]~84\ : std_logic;
SIGNAL \s_counter[26]~85_combout\ : std_logic;
SIGNAL \s_counter[26]~86\ : std_logic;
SIGNAL \s_counter[27]~87_combout\ : std_logic;
SIGNAL \Equal1~16_combout\ : std_logic;
SIGNAL \k[28]~input_o\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \k[29]~input_o\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \s_counter[27]~88\ : std_logic;
SIGNAL \s_counter[28]~89_combout\ : std_logic;
SIGNAL \s_counter[28]~90\ : std_logic;
SIGNAL \s_counter[29]~91_combout\ : std_logic;
SIGNAL \Equal1~17_combout\ : std_logic;
SIGNAL \k[30]~input_o\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \k[31]~input_o\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \s_counter[29]~92\ : std_logic;
SIGNAL \s_counter[30]~93_combout\ : std_logic;
SIGNAL \s_counter[30]~94\ : std_logic;
SIGNAL \s_counter[31]~95_combout\ : std_logic;
SIGNAL \Equal1~18_combout\ : std_logic;
SIGNAL \Equal1~19_combout\ : std_logic;
SIGNAL \Equal1~20_combout\ : std_logic;
SIGNAL \s_counter~34_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Equal0~16_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Equal0~17_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Equal0~18_combout\ : std_logic;
SIGNAL \Equal0~19_combout\ : std_logic;
SIGNAL \Equal0~20_combout\ : std_logic;
SIGNAL \clkOut~0_combout\ : std_logic;
SIGNAL \clkOut~reg0_q\ : std_logic;
SIGNAL s_counter : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clkIn <= clkIn;
ww_k <= k;
clkOut <= ww_clkOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clkOut~reg0_q\,
	devoe => ww_devoe,
	o => \clkOut~output_o\);

\clkIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkIn,
	o => \clkIn~input_o\);

\s_counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[0]~32_combout\ = s_counter(0) $ (VCC)
-- \s_counter[0]~33\ = CARRY(s_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(0),
	datad => VCC,
	combout => \s_counter[0]~32_combout\,
	cout => \s_counter[0]~33\);

\k[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(0),
	o => \k[0]~input_o\);

\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \k[0]~input_o\ $ (VCC)
-- \Add2~1\ = CARRY(\k[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[0]~input_o\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

\k[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(1),
	o => \k[1]~input_o\);

\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\k[1]~input_o\ & (\Add2~1\ & VCC)) # (!\k[1]~input_o\ & (!\Add2~1\))
-- \Add2~3\ = CARRY((!\k[1]~input_o\ & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[1]~input_o\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

\s_counter[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[1]~35_combout\ = (s_counter(1) & (!\s_counter[0]~33\)) # (!s_counter(1) & ((\s_counter[0]~33\) # (GND)))
-- \s_counter[1]~36\ = CARRY((!\s_counter[0]~33\) # (!s_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(1),
	datad => VCC,
	cin => \s_counter[0]~33\,
	combout => \s_counter[1]~35_combout\,
	cout => \s_counter[1]~36\);

\s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[1]~35_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(1));

\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Add2~0_combout\ & (s_counter(0) & (\Add2~2_combout\ $ (!s_counter(1))))) # (!\Add2~0_combout\ & (!s_counter(0) & (\Add2~2_combout\ $ (!s_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add2~2_combout\,
	datac => s_counter(1),
	datad => s_counter(0),
	combout => \Equal1~0_combout\);

\k[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(2),
	o => \k[2]~input_o\);

\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\k[2]~input_o\ & ((GND) # (!\Add2~3\))) # (!\k[2]~input_o\ & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((\k[2]~input_o\) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

\k[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(3),
	o => \k[3]~input_o\);

\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\k[3]~input_o\ & (\Add2~5\ & VCC)) # (!\k[3]~input_o\ & (!\Add2~5\))
-- \Add2~7\ = CARRY((!\k[3]~input_o\ & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[3]~input_o\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

\s_counter[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[2]~37_combout\ = (s_counter(2) & (\s_counter[1]~36\ $ (GND))) # (!s_counter(2) & (!\s_counter[1]~36\ & VCC))
-- \s_counter[2]~38\ = CARRY((s_counter(2) & !\s_counter[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(2),
	datad => VCC,
	cin => \s_counter[1]~36\,
	combout => \s_counter[2]~37_combout\,
	cout => \s_counter[2]~38\);

\s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[2]~37_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(2));

\s_counter[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[3]~39_combout\ = (s_counter(3) & (!\s_counter[2]~38\)) # (!s_counter(3) & ((\s_counter[2]~38\) # (GND)))
-- \s_counter[3]~40\ = CARRY((!\s_counter[2]~38\) # (!s_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(3),
	datad => VCC,
	cin => \s_counter[2]~38\,
	combout => \s_counter[3]~39_combout\,
	cout => \s_counter[3]~40\);

\s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[3]~39_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(3));

\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Add2~4_combout\ & (s_counter(2) & (\Add2~6_combout\ $ (!s_counter(3))))) # (!\Add2~4_combout\ & (!s_counter(2) & (\Add2~6_combout\ $ (!s_counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~6_combout\,
	datac => s_counter(3),
	datad => s_counter(2),
	combout => \Equal1~1_combout\);

\k[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(4),
	o => \k[4]~input_o\);

\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\k[4]~input_o\ & ((GND) # (!\Add2~7\))) # (!\k[4]~input_o\ & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((\k[4]~input_o\) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[4]~input_o\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

\k[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(5),
	o => \k[5]~input_o\);

\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\k[5]~input_o\ & (\Add2~9\ & VCC)) # (!\k[5]~input_o\ & (!\Add2~9\))
-- \Add2~11\ = CARRY((!\k[5]~input_o\ & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[5]~input_o\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

\s_counter[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[4]~41_combout\ = (s_counter(4) & (\s_counter[3]~40\ $ (GND))) # (!s_counter(4) & (!\s_counter[3]~40\ & VCC))
-- \s_counter[4]~42\ = CARRY((s_counter(4) & !\s_counter[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(4),
	datad => VCC,
	cin => \s_counter[3]~40\,
	combout => \s_counter[4]~41_combout\,
	cout => \s_counter[4]~42\);

\s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[4]~41_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(4));

\s_counter[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[5]~43_combout\ = (s_counter(5) & (!\s_counter[4]~42\)) # (!s_counter(5) & ((\s_counter[4]~42\) # (GND)))
-- \s_counter[5]~44\ = CARRY((!\s_counter[4]~42\) # (!s_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(5),
	datad => VCC,
	cin => \s_counter[4]~42\,
	combout => \s_counter[5]~43_combout\,
	cout => \s_counter[5]~44\);

\s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[5]~43_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(5));

\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Add2~8_combout\ & (s_counter(4) & (\Add2~10_combout\ $ (!s_counter(5))))) # (!\Add2~8_combout\ & (!s_counter(4) & (\Add2~10_combout\ $ (!s_counter(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~10_combout\,
	datac => s_counter(5),
	datad => s_counter(4),
	combout => \Equal1~2_combout\);

\k[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(6),
	o => \k[6]~input_o\);

\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\k[6]~input_o\ & ((GND) # (!\Add2~11\))) # (!\k[6]~input_o\ & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((\k[6]~input_o\) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[6]~input_o\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

\k[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(7),
	o => \k[7]~input_o\);

\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\k[7]~input_o\ & (\Add2~13\ & VCC)) # (!\k[7]~input_o\ & (!\Add2~13\))
-- \Add2~15\ = CARRY((!\k[7]~input_o\ & !\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[7]~input_o\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

\s_counter[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[6]~45_combout\ = (s_counter(6) & (\s_counter[5]~44\ $ (GND))) # (!s_counter(6) & (!\s_counter[5]~44\ & VCC))
-- \s_counter[6]~46\ = CARRY((s_counter(6) & !\s_counter[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(6),
	datad => VCC,
	cin => \s_counter[5]~44\,
	combout => \s_counter[6]~45_combout\,
	cout => \s_counter[6]~46\);

\s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[6]~45_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(6));

\s_counter[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[7]~47_combout\ = (s_counter(7) & (!\s_counter[6]~46\)) # (!s_counter(7) & ((\s_counter[6]~46\) # (GND)))
-- \s_counter[7]~48\ = CARRY((!\s_counter[6]~46\) # (!s_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(7),
	datad => VCC,
	cin => \s_counter[6]~46\,
	combout => \s_counter[7]~47_combout\,
	cout => \s_counter[7]~48\);

\s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[7]~47_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(7));

\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\Add2~12_combout\ & (s_counter(6) & (\Add2~14_combout\ $ (!s_counter(7))))) # (!\Add2~12_combout\ & (!s_counter(6) & (\Add2~14_combout\ $ (!s_counter(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add2~14_combout\,
	datac => s_counter(7),
	datad => s_counter(6),
	combout => \Equal1~3_combout\);

\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\ & (\Equal1~1_combout\ & (\Equal1~2_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

\k[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(8),
	o => \k[8]~input_o\);

\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\k[8]~input_o\ & ((GND) # (!\Add2~15\))) # (!\k[8]~input_o\ & (\Add2~15\ $ (GND)))
-- \Add2~17\ = CARRY((\k[8]~input_o\) # (!\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[8]~input_o\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

\k[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(9),
	o => \k[9]~input_o\);

\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\k[9]~input_o\ & (\Add2~17\ & VCC)) # (!\k[9]~input_o\ & (!\Add2~17\))
-- \Add2~19\ = CARRY((!\k[9]~input_o\ & !\Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[9]~input_o\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

\s_counter[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[8]~49_combout\ = (s_counter(8) & (\s_counter[7]~48\ $ (GND))) # (!s_counter(8) & (!\s_counter[7]~48\ & VCC))
-- \s_counter[8]~50\ = CARRY((s_counter(8) & !\s_counter[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(8),
	datad => VCC,
	cin => \s_counter[7]~48\,
	combout => \s_counter[8]~49_combout\,
	cout => \s_counter[8]~50\);

\s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[8]~49_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(8));

\s_counter[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[9]~51_combout\ = (s_counter(9) & (!\s_counter[8]~50\)) # (!s_counter(9) & ((\s_counter[8]~50\) # (GND)))
-- \s_counter[9]~52\ = CARRY((!\s_counter[8]~50\) # (!s_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(9),
	datad => VCC,
	cin => \s_counter[8]~50\,
	combout => \s_counter[9]~51_combout\,
	cout => \s_counter[9]~52\);

\s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[9]~51_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(9));

\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (\Add2~16_combout\ & (s_counter(8) & (\Add2~18_combout\ $ (!s_counter(9))))) # (!\Add2~16_combout\ & (!s_counter(8) & (\Add2~18_combout\ $ (!s_counter(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Add2~18_combout\,
	datac => s_counter(9),
	datad => s_counter(8),
	combout => \Equal1~5_combout\);

\k[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(10),
	o => \k[10]~input_o\);

\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\k[10]~input_o\ & ((GND) # (!\Add2~19\))) # (!\k[10]~input_o\ & (\Add2~19\ $ (GND)))
-- \Add2~21\ = CARRY((\k[10]~input_o\) # (!\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[10]~input_o\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

\k[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(11),
	o => \k[11]~input_o\);

\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\k[11]~input_o\ & (\Add2~21\ & VCC)) # (!\k[11]~input_o\ & (!\Add2~21\))
-- \Add2~23\ = CARRY((!\k[11]~input_o\ & !\Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[11]~input_o\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

\s_counter[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[10]~53_combout\ = (s_counter(10) & (\s_counter[9]~52\ $ (GND))) # (!s_counter(10) & (!\s_counter[9]~52\ & VCC))
-- \s_counter[10]~54\ = CARRY((s_counter(10) & !\s_counter[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(10),
	datad => VCC,
	cin => \s_counter[9]~52\,
	combout => \s_counter[10]~53_combout\,
	cout => \s_counter[10]~54\);

\s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[10]~53_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(10));

\s_counter[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[11]~55_combout\ = (s_counter(11) & (!\s_counter[10]~54\)) # (!s_counter(11) & ((\s_counter[10]~54\) # (GND)))
-- \s_counter[11]~56\ = CARRY((!\s_counter[10]~54\) # (!s_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(11),
	datad => VCC,
	cin => \s_counter[10]~54\,
	combout => \s_counter[11]~55_combout\,
	cout => \s_counter[11]~56\);

\s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[11]~55_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(11));

\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\Add2~20_combout\ & (s_counter(10) & (\Add2~22_combout\ $ (!s_counter(11))))) # (!\Add2~20_combout\ & (!s_counter(10) & (\Add2~22_combout\ $ (!s_counter(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \Add2~22_combout\,
	datac => s_counter(11),
	datad => s_counter(10),
	combout => \Equal1~6_combout\);

\k[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(12),
	o => \k[12]~input_o\);

\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\k[12]~input_o\ & ((GND) # (!\Add2~23\))) # (!\k[12]~input_o\ & (\Add2~23\ $ (GND)))
-- \Add2~25\ = CARRY((\k[12]~input_o\) # (!\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[12]~input_o\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

\k[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(13),
	o => \k[13]~input_o\);

\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\k[13]~input_o\ & (\Add2~25\ & VCC)) # (!\k[13]~input_o\ & (!\Add2~25\))
-- \Add2~27\ = CARRY((!\k[13]~input_o\ & !\Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[13]~input_o\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

\s_counter[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[12]~57_combout\ = (s_counter(12) & (\s_counter[11]~56\ $ (GND))) # (!s_counter(12) & (!\s_counter[11]~56\ & VCC))
-- \s_counter[12]~58\ = CARRY((s_counter(12) & !\s_counter[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(12),
	datad => VCC,
	cin => \s_counter[11]~56\,
	combout => \s_counter[12]~57_combout\,
	cout => \s_counter[12]~58\);

\s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[12]~57_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(12));

\s_counter[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[13]~59_combout\ = (s_counter(13) & (!\s_counter[12]~58\)) # (!s_counter(13) & ((\s_counter[12]~58\) # (GND)))
-- \s_counter[13]~60\ = CARRY((!\s_counter[12]~58\) # (!s_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(13),
	datad => VCC,
	cin => \s_counter[12]~58\,
	combout => \s_counter[13]~59_combout\,
	cout => \s_counter[13]~60\);

\s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[13]~59_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(13));

\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (\Add2~24_combout\ & (s_counter(12) & (\Add2~26_combout\ $ (!s_counter(13))))) # (!\Add2~24_combout\ & (!s_counter(12) & (\Add2~26_combout\ $ (!s_counter(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \Add2~26_combout\,
	datac => s_counter(13),
	datad => s_counter(12),
	combout => \Equal1~7_combout\);

\k[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(14),
	o => \k[14]~input_o\);

\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\k[14]~input_o\ & ((GND) # (!\Add2~27\))) # (!\k[14]~input_o\ & (\Add2~27\ $ (GND)))
-- \Add2~29\ = CARRY((\k[14]~input_o\) # (!\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[14]~input_o\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

\k[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(15),
	o => \k[15]~input_o\);

\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\k[15]~input_o\ & (\Add2~29\ & VCC)) # (!\k[15]~input_o\ & (!\Add2~29\))
-- \Add2~31\ = CARRY((!\k[15]~input_o\ & !\Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[15]~input_o\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

\s_counter[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[14]~61_combout\ = (s_counter(14) & (\s_counter[13]~60\ $ (GND))) # (!s_counter(14) & (!\s_counter[13]~60\ & VCC))
-- \s_counter[14]~62\ = CARRY((s_counter(14) & !\s_counter[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(14),
	datad => VCC,
	cin => \s_counter[13]~60\,
	combout => \s_counter[14]~61_combout\,
	cout => \s_counter[14]~62\);

\s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[14]~61_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(14));

\s_counter[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[15]~63_combout\ = (s_counter(15) & (!\s_counter[14]~62\)) # (!s_counter(15) & ((\s_counter[14]~62\) # (GND)))
-- \s_counter[15]~64\ = CARRY((!\s_counter[14]~62\) # (!s_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(15),
	datad => VCC,
	cin => \s_counter[14]~62\,
	combout => \s_counter[15]~63_combout\,
	cout => \s_counter[15]~64\);

\s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[15]~63_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(15));

\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (\Add2~28_combout\ & (s_counter(14) & (\Add2~30_combout\ $ (!s_counter(15))))) # (!\Add2~28_combout\ & (!s_counter(14) & (\Add2~30_combout\ $ (!s_counter(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~28_combout\,
	datab => \Add2~30_combout\,
	datac => s_counter(15),
	datad => s_counter(14),
	combout => \Equal1~8_combout\);

\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~5_combout\ & (\Equal1~6_combout\ & (\Equal1~7_combout\ & \Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Equal1~6_combout\,
	datac => \Equal1~7_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal1~9_combout\);

\k[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(16),
	o => \k[16]~input_o\);

\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\k[16]~input_o\ & ((GND) # (!\Add2~31\))) # (!\k[16]~input_o\ & (\Add2~31\ $ (GND)))
-- \Add2~33\ = CARRY((\k[16]~input_o\) # (!\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[16]~input_o\,
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

\k[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(17),
	o => \k[17]~input_o\);

\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\k[17]~input_o\ & (\Add2~33\ & VCC)) # (!\k[17]~input_o\ & (!\Add2~33\))
-- \Add2~35\ = CARRY((!\k[17]~input_o\ & !\Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[17]~input_o\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

\s_counter[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[16]~65_combout\ = (s_counter(16) & (\s_counter[15]~64\ $ (GND))) # (!s_counter(16) & (!\s_counter[15]~64\ & VCC))
-- \s_counter[16]~66\ = CARRY((s_counter(16) & !\s_counter[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(16),
	datad => VCC,
	cin => \s_counter[15]~64\,
	combout => \s_counter[16]~65_combout\,
	cout => \s_counter[16]~66\);

\s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[16]~65_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(16));

\s_counter[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[17]~67_combout\ = (s_counter(17) & (!\s_counter[16]~66\)) # (!s_counter(17) & ((\s_counter[16]~66\) # (GND)))
-- \s_counter[17]~68\ = CARRY((!\s_counter[16]~66\) # (!s_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(17),
	datad => VCC,
	cin => \s_counter[16]~66\,
	combout => \s_counter[17]~67_combout\,
	cout => \s_counter[17]~68\);

\s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[17]~67_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(17));

\Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Add2~32_combout\ & (s_counter(16) & (\Add2~34_combout\ $ (!s_counter(17))))) # (!\Add2~32_combout\ & (!s_counter(16) & (\Add2~34_combout\ $ (!s_counter(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => \Add2~34_combout\,
	datac => s_counter(17),
	datad => s_counter(16),
	combout => \Equal1~10_combout\);

\k[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(18),
	o => \k[18]~input_o\);

\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (\k[18]~input_o\ & ((GND) # (!\Add2~35\))) # (!\k[18]~input_o\ & (\Add2~35\ $ (GND)))
-- \Add2~37\ = CARRY((\k[18]~input_o\) # (!\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[18]~input_o\,
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

\k[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(19),
	o => \k[19]~input_o\);

\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (\k[19]~input_o\ & (\Add2~37\ & VCC)) # (!\k[19]~input_o\ & (!\Add2~37\))
-- \Add2~39\ = CARRY((!\k[19]~input_o\ & !\Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[19]~input_o\,
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

\s_counter[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[18]~69_combout\ = (s_counter(18) & (\s_counter[17]~68\ $ (GND))) # (!s_counter(18) & (!\s_counter[17]~68\ & VCC))
-- \s_counter[18]~70\ = CARRY((s_counter(18) & !\s_counter[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(18),
	datad => VCC,
	cin => \s_counter[17]~68\,
	combout => \s_counter[18]~69_combout\,
	cout => \s_counter[18]~70\);

\s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[18]~69_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(18));

\s_counter[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[19]~71_combout\ = (s_counter(19) & (!\s_counter[18]~70\)) # (!s_counter(19) & ((\s_counter[18]~70\) # (GND)))
-- \s_counter[19]~72\ = CARRY((!\s_counter[18]~70\) # (!s_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(19),
	datad => VCC,
	cin => \s_counter[18]~70\,
	combout => \s_counter[19]~71_combout\,
	cout => \s_counter[19]~72\);

\s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[19]~71_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(19));

\Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~11_combout\ = (\Add2~36_combout\ & (s_counter(18) & (\Add2~38_combout\ $ (!s_counter(19))))) # (!\Add2~36_combout\ & (!s_counter(18) & (\Add2~38_combout\ $ (!s_counter(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~36_combout\,
	datab => \Add2~38_combout\,
	datac => s_counter(19),
	datad => s_counter(18),
	combout => \Equal1~11_combout\);

\k[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(20),
	o => \k[20]~input_o\);

\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (\k[20]~input_o\ & ((GND) # (!\Add2~39\))) # (!\k[20]~input_o\ & (\Add2~39\ $ (GND)))
-- \Add2~41\ = CARRY((\k[20]~input_o\) # (!\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[20]~input_o\,
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

\k[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(21),
	o => \k[21]~input_o\);

\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\k[21]~input_o\ & (\Add2~41\ & VCC)) # (!\k[21]~input_o\ & (!\Add2~41\))
-- \Add2~43\ = CARRY((!\k[21]~input_o\ & !\Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[21]~input_o\,
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

\s_counter[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[20]~73_combout\ = (s_counter(20) & (\s_counter[19]~72\ $ (GND))) # (!s_counter(20) & (!\s_counter[19]~72\ & VCC))
-- \s_counter[20]~74\ = CARRY((s_counter(20) & !\s_counter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(20),
	datad => VCC,
	cin => \s_counter[19]~72\,
	combout => \s_counter[20]~73_combout\,
	cout => \s_counter[20]~74\);

\s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[20]~73_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(20));

\s_counter[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[21]~75_combout\ = (s_counter(21) & (!\s_counter[20]~74\)) # (!s_counter(21) & ((\s_counter[20]~74\) # (GND)))
-- \s_counter[21]~76\ = CARRY((!\s_counter[20]~74\) # (!s_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(21),
	datad => VCC,
	cin => \s_counter[20]~74\,
	combout => \s_counter[21]~75_combout\,
	cout => \s_counter[21]~76\);

\s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[21]~75_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(21));

\Equal1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~12_combout\ = (\Add2~40_combout\ & (s_counter(20) & (\Add2~42_combout\ $ (!s_counter(21))))) # (!\Add2~40_combout\ & (!s_counter(20) & (\Add2~42_combout\ $ (!s_counter(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~40_combout\,
	datab => \Add2~42_combout\,
	datac => s_counter(21),
	datad => s_counter(20),
	combout => \Equal1~12_combout\);

\k[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(22),
	o => \k[22]~input_o\);

\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (\k[22]~input_o\ & ((GND) # (!\Add2~43\))) # (!\k[22]~input_o\ & (\Add2~43\ $ (GND)))
-- \Add2~45\ = CARRY((\k[22]~input_o\) # (!\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[22]~input_o\,
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

\k[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(23),
	o => \k[23]~input_o\);

\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (\k[23]~input_o\ & (\Add2~45\ & VCC)) # (!\k[23]~input_o\ & (!\Add2~45\))
-- \Add2~47\ = CARRY((!\k[23]~input_o\ & !\Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[23]~input_o\,
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

\s_counter[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[22]~77_combout\ = (s_counter(22) & (\s_counter[21]~76\ $ (GND))) # (!s_counter(22) & (!\s_counter[21]~76\ & VCC))
-- \s_counter[22]~78\ = CARRY((s_counter(22) & !\s_counter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(22),
	datad => VCC,
	cin => \s_counter[21]~76\,
	combout => \s_counter[22]~77_combout\,
	cout => \s_counter[22]~78\);

\s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[22]~77_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(22));

\s_counter[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[23]~79_combout\ = (s_counter(23) & (!\s_counter[22]~78\)) # (!s_counter(23) & ((\s_counter[22]~78\) # (GND)))
-- \s_counter[23]~80\ = CARRY((!\s_counter[22]~78\) # (!s_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(23),
	datad => VCC,
	cin => \s_counter[22]~78\,
	combout => \s_counter[23]~79_combout\,
	cout => \s_counter[23]~80\);

\s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[23]~79_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(23));

\Equal1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~13_combout\ = (\Add2~44_combout\ & (s_counter(22) & (\Add2~46_combout\ $ (!s_counter(23))))) # (!\Add2~44_combout\ & (!s_counter(22) & (\Add2~46_combout\ $ (!s_counter(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~44_combout\,
	datab => \Add2~46_combout\,
	datac => s_counter(23),
	datad => s_counter(22),
	combout => \Equal1~13_combout\);

\Equal1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~14_combout\ = (\Equal1~10_combout\ & (\Equal1~11_combout\ & (\Equal1~12_combout\ & \Equal1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \Equal1~11_combout\,
	datac => \Equal1~12_combout\,
	datad => \Equal1~13_combout\,
	combout => \Equal1~14_combout\);

\k[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(24),
	o => \k[24]~input_o\);

\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (\k[24]~input_o\ & ((GND) # (!\Add2~47\))) # (!\k[24]~input_o\ & (\Add2~47\ $ (GND)))
-- \Add2~49\ = CARRY((\k[24]~input_o\) # (!\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[24]~input_o\,
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

\k[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(25),
	o => \k[25]~input_o\);

\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (\k[25]~input_o\ & (\Add2~49\ & VCC)) # (!\k[25]~input_o\ & (!\Add2~49\))
-- \Add2~51\ = CARRY((!\k[25]~input_o\ & !\Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[25]~input_o\,
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

\s_counter[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[24]~81_combout\ = (s_counter(24) & (\s_counter[23]~80\ $ (GND))) # (!s_counter(24) & (!\s_counter[23]~80\ & VCC))
-- \s_counter[24]~82\ = CARRY((s_counter(24) & !\s_counter[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(24),
	datad => VCC,
	cin => \s_counter[23]~80\,
	combout => \s_counter[24]~81_combout\,
	cout => \s_counter[24]~82\);

\s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[24]~81_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(24));

\s_counter[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[25]~83_combout\ = (s_counter(25) & (!\s_counter[24]~82\)) # (!s_counter(25) & ((\s_counter[24]~82\) # (GND)))
-- \s_counter[25]~84\ = CARRY((!\s_counter[24]~82\) # (!s_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(25),
	datad => VCC,
	cin => \s_counter[24]~82\,
	combout => \s_counter[25]~83_combout\,
	cout => \s_counter[25]~84\);

\s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[25]~83_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(25));

\Equal1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~15_combout\ = (\Add2~48_combout\ & (s_counter(24) & (\Add2~50_combout\ $ (!s_counter(25))))) # (!\Add2~48_combout\ & (!s_counter(24) & (\Add2~50_combout\ $ (!s_counter(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~48_combout\,
	datab => \Add2~50_combout\,
	datac => s_counter(25),
	datad => s_counter(24),
	combout => \Equal1~15_combout\);

\k[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(26),
	o => \k[26]~input_o\);

\Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (\k[26]~input_o\ & ((GND) # (!\Add2~51\))) # (!\k[26]~input_o\ & (\Add2~51\ $ (GND)))
-- \Add2~53\ = CARRY((\k[26]~input_o\) # (!\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[26]~input_o\,
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

\k[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(27),
	o => \k[27]~input_o\);

\Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (\k[27]~input_o\ & (\Add2~53\ & VCC)) # (!\k[27]~input_o\ & (!\Add2~53\))
-- \Add2~55\ = CARRY((!\k[27]~input_o\ & !\Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[27]~input_o\,
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

\s_counter[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[26]~85_combout\ = (s_counter(26) & (\s_counter[25]~84\ $ (GND))) # (!s_counter(26) & (!\s_counter[25]~84\ & VCC))
-- \s_counter[26]~86\ = CARRY((s_counter(26) & !\s_counter[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(26),
	datad => VCC,
	cin => \s_counter[25]~84\,
	combout => \s_counter[26]~85_combout\,
	cout => \s_counter[26]~86\);

\s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[26]~85_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(26));

\s_counter[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[27]~87_combout\ = (s_counter(27) & (!\s_counter[26]~86\)) # (!s_counter(27) & ((\s_counter[26]~86\) # (GND)))
-- \s_counter[27]~88\ = CARRY((!\s_counter[26]~86\) # (!s_counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(27),
	datad => VCC,
	cin => \s_counter[26]~86\,
	combout => \s_counter[27]~87_combout\,
	cout => \s_counter[27]~88\);

\s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[27]~87_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(27));

\Equal1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~16_combout\ = (\Add2~52_combout\ & (s_counter(26) & (\Add2~54_combout\ $ (!s_counter(27))))) # (!\Add2~52_combout\ & (!s_counter(26) & (\Add2~54_combout\ $ (!s_counter(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~52_combout\,
	datab => \Add2~54_combout\,
	datac => s_counter(27),
	datad => s_counter(26),
	combout => \Equal1~16_combout\);

\k[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(28),
	o => \k[28]~input_o\);

\Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (\k[28]~input_o\ & ((GND) # (!\Add2~55\))) # (!\k[28]~input_o\ & (\Add2~55\ $ (GND)))
-- \Add2~57\ = CARRY((\k[28]~input_o\) # (!\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[28]~input_o\,
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

\k[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(29),
	o => \k[29]~input_o\);

\Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (\k[29]~input_o\ & (\Add2~57\ & VCC)) # (!\k[29]~input_o\ & (!\Add2~57\))
-- \Add2~59\ = CARRY((!\k[29]~input_o\ & !\Add2~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[29]~input_o\,
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

\s_counter[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[28]~89_combout\ = (s_counter(28) & (\s_counter[27]~88\ $ (GND))) # (!s_counter(28) & (!\s_counter[27]~88\ & VCC))
-- \s_counter[28]~90\ = CARRY((s_counter(28) & !\s_counter[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(28),
	datad => VCC,
	cin => \s_counter[27]~88\,
	combout => \s_counter[28]~89_combout\,
	cout => \s_counter[28]~90\);

\s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[28]~89_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(28));

\s_counter[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[29]~91_combout\ = (s_counter(29) & (!\s_counter[28]~90\)) # (!s_counter(29) & ((\s_counter[28]~90\) # (GND)))
-- \s_counter[29]~92\ = CARRY((!\s_counter[28]~90\) # (!s_counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(29),
	datad => VCC,
	cin => \s_counter[28]~90\,
	combout => \s_counter[29]~91_combout\,
	cout => \s_counter[29]~92\);

\s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[29]~91_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(29));

\Equal1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~17_combout\ = (\Add2~56_combout\ & (s_counter(28) & (\Add2~58_combout\ $ (!s_counter(29))))) # (!\Add2~56_combout\ & (!s_counter(28) & (\Add2~58_combout\ $ (!s_counter(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~56_combout\,
	datab => \Add2~58_combout\,
	datac => s_counter(29),
	datad => s_counter(28),
	combout => \Equal1~17_combout\);

\k[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(30),
	o => \k[30]~input_o\);

\Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (\k[30]~input_o\ & ((GND) # (!\Add2~59\))) # (!\k[30]~input_o\ & (\Add2~59\ $ (GND)))
-- \Add2~61\ = CARRY((\k[30]~input_o\) # (!\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[30]~input_o\,
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

\k[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(31),
	o => \k[31]~input_o\);

\Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = \k[31]~input_o\ $ (!\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[31]~input_o\,
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

\s_counter[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[30]~93_combout\ = (s_counter(30) & (\s_counter[29]~92\ $ (GND))) # (!s_counter(30) & (!\s_counter[29]~92\ & VCC))
-- \s_counter[30]~94\ = CARRY((s_counter(30) & !\s_counter[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(30),
	datad => VCC,
	cin => \s_counter[29]~92\,
	combout => \s_counter[30]~93_combout\,
	cout => \s_counter[30]~94\);

\s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[30]~93_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(30));

\s_counter[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[31]~95_combout\ = s_counter(31) $ (\s_counter[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(31),
	cin => \s_counter[30]~94\,
	combout => \s_counter[31]~95_combout\);

\s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[31]~95_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(31));

\Equal1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~18_combout\ = (\Add2~60_combout\ & (s_counter(30) & (\Add2~62_combout\ $ (!s_counter(31))))) # (!\Add2~60_combout\ & (!s_counter(30) & (\Add2~62_combout\ $ (!s_counter(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~60_combout\,
	datab => \Add2~62_combout\,
	datac => s_counter(31),
	datad => s_counter(30),
	combout => \Equal1~18_combout\);

\Equal1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~19_combout\ = (\Equal1~15_combout\ & (\Equal1~16_combout\ & (\Equal1~17_combout\ & \Equal1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~15_combout\,
	datab => \Equal1~16_combout\,
	datac => \Equal1~17_combout\,
	datad => \Equal1~18_combout\,
	combout => \Equal1~19_combout\);

\Equal1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~20_combout\ = (\Equal1~4_combout\ & (\Equal1~9_combout\ & (\Equal1~14_combout\ & \Equal1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal1~9_combout\,
	datac => \Equal1~14_combout\,
	datad => \Equal1~19_combout\,
	combout => \Equal1~20_combout\);

\s_counter~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~34_combout\ = (\Equal1~20_combout\ & !\Equal0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~20_combout\,
	datad => \Equal0~20_combout\,
	combout => \s_counter~34_combout\);

\s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[0]~32_combout\,
	sclr => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(0));

\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \k[1]~input_o\ $ (VCC)
-- \Add1~1\ = CARRY(\k[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \k[1]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\k[2]~input_o\ & (\Add1~1\ & VCC)) # (!\k[2]~input_o\ & (!\Add1~1\))
-- \Add1~3\ = CARRY((!\k[2]~input_o\ & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[2]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (s_counter(0) & (\Add1~0_combout\ & (s_counter(1) $ (!\Add1~2_combout\)))) # (!s_counter(0) & (!\Add1~0_combout\ & (s_counter(1) $ (!\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(0),
	datab => s_counter(1),
	datac => \Add1~2_combout\,
	datad => \Add1~0_combout\,
	combout => \Equal0~0_combout\);

\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\k[3]~input_o\ & ((GND) # (!\Add1~3\))) # (!\k[3]~input_o\ & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((\k[3]~input_o\) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[3]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\k[4]~input_o\ & (\Add1~5\ & VCC)) # (!\k[4]~input_o\ & (!\Add1~5\))
-- \Add1~7\ = CARRY((!\k[4]~input_o\ & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[4]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (s_counter(2) & (\Add1~4_combout\ & (s_counter(3) $ (!\Add1~6_combout\)))) # (!s_counter(2) & (!\Add1~4_combout\ & (s_counter(3) $ (!\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(2),
	datab => s_counter(3),
	datac => \Add1~6_combout\,
	datad => \Add1~4_combout\,
	combout => \Equal0~1_combout\);

\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\k[5]~input_o\ & ((GND) # (!\Add1~7\))) # (!\k[5]~input_o\ & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((\k[5]~input_o\) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[5]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\k[6]~input_o\ & (\Add1~9\ & VCC)) # (!\k[6]~input_o\ & (!\Add1~9\))
-- \Add1~11\ = CARRY((!\k[6]~input_o\ & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[6]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (s_counter(4) & (\Add1~8_combout\ & (s_counter(5) $ (!\Add1~10_combout\)))) # (!s_counter(4) & (!\Add1~8_combout\ & (s_counter(5) $ (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(4),
	datab => s_counter(5),
	datac => \Add1~10_combout\,
	datad => \Add1~8_combout\,
	combout => \Equal0~2_combout\);

\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\k[7]~input_o\ & ((GND) # (!\Add1~11\))) # (!\k[7]~input_o\ & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((\k[7]~input_o\) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[7]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\k[8]~input_o\ & (\Add1~13\ & VCC)) # (!\k[8]~input_o\ & (!\Add1~13\))
-- \Add1~15\ = CARRY((!\k[8]~input_o\ & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[8]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (s_counter(6) & (\Add1~12_combout\ & (s_counter(7) $ (!\Add1~14_combout\)))) # (!s_counter(6) & (!\Add1~12_combout\ & (s_counter(7) $ (!\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(6),
	datab => s_counter(7),
	datac => \Add1~14_combout\,
	datad => \Add1~12_combout\,
	combout => \Equal0~3_combout\);

\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\k[9]~input_o\ & ((GND) # (!\Add1~15\))) # (!\k[9]~input_o\ & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((\k[9]~input_o\) # (!\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[9]~input_o\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\k[10]~input_o\ & (\Add1~17\ & VCC)) # (!\k[10]~input_o\ & (!\Add1~17\))
-- \Add1~19\ = CARRY((!\k[10]~input_o\ & !\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[10]~input_o\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (s_counter(8) & (\Add1~16_combout\ & (s_counter(9) $ (!\Add1~18_combout\)))) # (!s_counter(8) & (!\Add1~16_combout\ & (s_counter(9) $ (!\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(8),
	datab => s_counter(9),
	datac => \Add1~18_combout\,
	datad => \Add1~16_combout\,
	combout => \Equal0~5_combout\);

\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\k[11]~input_o\ & ((GND) # (!\Add1~19\))) # (!\k[11]~input_o\ & (\Add1~19\ $ (GND)))
-- \Add1~21\ = CARRY((\k[11]~input_o\) # (!\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[11]~input_o\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\k[12]~input_o\ & (\Add1~21\ & VCC)) # (!\k[12]~input_o\ & (!\Add1~21\))
-- \Add1~23\ = CARRY((!\k[12]~input_o\ & !\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[12]~input_o\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (s_counter(10) & (\Add1~20_combout\ & (s_counter(11) $ (!\Add1~22_combout\)))) # (!s_counter(10) & (!\Add1~20_combout\ & (s_counter(11) $ (!\Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(10),
	datab => s_counter(11),
	datac => \Add1~22_combout\,
	datad => \Add1~20_combout\,
	combout => \Equal0~6_combout\);

\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\k[13]~input_o\ & ((GND) # (!\Add1~23\))) # (!\k[13]~input_o\ & (\Add1~23\ $ (GND)))
-- \Add1~25\ = CARRY((\k[13]~input_o\) # (!\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[13]~input_o\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\k[14]~input_o\ & (\Add1~25\ & VCC)) # (!\k[14]~input_o\ & (!\Add1~25\))
-- \Add1~27\ = CARRY((!\k[14]~input_o\ & !\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[14]~input_o\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (s_counter(12) & (\Add1~24_combout\ & (s_counter(13) $ (!\Add1~26_combout\)))) # (!s_counter(12) & (!\Add1~24_combout\ & (s_counter(13) $ (!\Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(12),
	datab => s_counter(13),
	datac => \Add1~26_combout\,
	datad => \Add1~24_combout\,
	combout => \Equal0~7_combout\);

\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\k[15]~input_o\ & ((GND) # (!\Add1~27\))) # (!\k[15]~input_o\ & (\Add1~27\ $ (GND)))
-- \Add1~29\ = CARRY((\k[15]~input_o\) # (!\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[15]~input_o\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\k[16]~input_o\ & (\Add1~29\ & VCC)) # (!\k[16]~input_o\ & (!\Add1~29\))
-- \Add1~31\ = CARRY((!\k[16]~input_o\ & !\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[16]~input_o\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (s_counter(14) & (\Add1~28_combout\ & (s_counter(15) $ (!\Add1~30_combout\)))) # (!s_counter(14) & (!\Add1~28_combout\ & (s_counter(15) $ (!\Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(14),
	datab => s_counter(15),
	datac => \Add1~30_combout\,
	datad => \Add1~28_combout\,
	combout => \Equal0~8_combout\);

\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (\Equal0~7_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\k[17]~input_o\ & ((GND) # (!\Add1~31\))) # (!\k[17]~input_o\ & (\Add1~31\ $ (GND)))
-- \Add1~33\ = CARRY((\k[17]~input_o\) # (!\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[17]~input_o\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\k[18]~input_o\ & (\Add1~33\ & VCC)) # (!\k[18]~input_o\ & (!\Add1~33\))
-- \Add1~35\ = CARRY((!\k[18]~input_o\ & !\Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[18]~input_o\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (s_counter(16) & (\Add1~32_combout\ & (s_counter(17) $ (!\Add1~34_combout\)))) # (!s_counter(16) & (!\Add1~32_combout\ & (s_counter(17) $ (!\Add1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(16),
	datab => s_counter(17),
	datac => \Add1~34_combout\,
	datad => \Add1~32_combout\,
	combout => \Equal0~10_combout\);

\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (\k[19]~input_o\ & ((GND) # (!\Add1~35\))) # (!\k[19]~input_o\ & (\Add1~35\ $ (GND)))
-- \Add1~37\ = CARRY((\k[19]~input_o\) # (!\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[19]~input_o\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\k[20]~input_o\ & (\Add1~37\ & VCC)) # (!\k[20]~input_o\ & (!\Add1~37\))
-- \Add1~39\ = CARRY((!\k[20]~input_o\ & !\Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[20]~input_o\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (s_counter(18) & (\Add1~36_combout\ & (s_counter(19) $ (!\Add1~38_combout\)))) # (!s_counter(18) & (!\Add1~36_combout\ & (s_counter(19) $ (!\Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(18),
	datab => s_counter(19),
	datac => \Add1~38_combout\,
	datad => \Add1~36_combout\,
	combout => \Equal0~11_combout\);

\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (\k[21]~input_o\ & ((GND) # (!\Add1~39\))) # (!\k[21]~input_o\ & (\Add1~39\ $ (GND)))
-- \Add1~41\ = CARRY((\k[21]~input_o\) # (!\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[21]~input_o\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\k[22]~input_o\ & (\Add1~41\ & VCC)) # (!\k[22]~input_o\ & (!\Add1~41\))
-- \Add1~43\ = CARRY((!\k[22]~input_o\ & !\Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[22]~input_o\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

\Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (s_counter(20) & (\Add1~40_combout\ & (s_counter(21) $ (!\Add1~42_combout\)))) # (!s_counter(20) & (!\Add1~40_combout\ & (s_counter(21) $ (!\Add1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(20),
	datab => s_counter(21),
	datac => \Add1~42_combout\,
	datad => \Add1~40_combout\,
	combout => \Equal0~12_combout\);

\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\k[23]~input_o\ & ((GND) # (!\Add1~43\))) # (!\k[23]~input_o\ & (\Add1~43\ $ (GND)))
-- \Add1~45\ = CARRY((\k[23]~input_o\) # (!\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[23]~input_o\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\k[24]~input_o\ & (\Add1~45\ & VCC)) # (!\k[24]~input_o\ & (!\Add1~45\))
-- \Add1~47\ = CARRY((!\k[24]~input_o\ & !\Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[24]~input_o\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

\Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (s_counter(22) & (\Add1~44_combout\ & (s_counter(23) $ (!\Add1~46_combout\)))) # (!s_counter(22) & (!\Add1~44_combout\ & (s_counter(23) $ (!\Add1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(22),
	datab => s_counter(23),
	datac => \Add1~46_combout\,
	datad => \Add1~44_combout\,
	combout => \Equal0~13_combout\);

\Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = (\Equal0~10_combout\ & (\Equal0~11_combout\ & (\Equal0~12_combout\ & \Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Equal0~11_combout\,
	datac => \Equal0~12_combout\,
	datad => \Equal0~13_combout\,
	combout => \Equal0~14_combout\);

\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (\k[25]~input_o\ & ((GND) # (!\Add1~47\))) # (!\k[25]~input_o\ & (\Add1~47\ $ (GND)))
-- \Add1~49\ = CARRY((\k[25]~input_o\) # (!\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[25]~input_o\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\k[26]~input_o\ & (\Add1~49\ & VCC)) # (!\k[26]~input_o\ & (!\Add1~49\))
-- \Add1~51\ = CARRY((!\k[26]~input_o\ & !\Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[26]~input_o\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

\Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = (s_counter(24) & (\Add1~48_combout\ & (s_counter(25) $ (!\Add1~50_combout\)))) # (!s_counter(24) & (!\Add1~48_combout\ & (s_counter(25) $ (!\Add1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(24),
	datab => s_counter(25),
	datac => \Add1~50_combout\,
	datad => \Add1~48_combout\,
	combout => \Equal0~15_combout\);

\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (\k[27]~input_o\ & ((GND) # (!\Add1~51\))) # (!\k[27]~input_o\ & (\Add1~51\ $ (GND)))
-- \Add1~53\ = CARRY((\k[27]~input_o\) # (!\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[27]~input_o\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\k[28]~input_o\ & (\Add1~53\ & VCC)) # (!\k[28]~input_o\ & (!\Add1~53\))
-- \Add1~55\ = CARRY((!\k[28]~input_o\ & !\Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[28]~input_o\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

\Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = (s_counter(26) & (\Add1~52_combout\ & (s_counter(27) $ (!\Add1~54_combout\)))) # (!s_counter(26) & (!\Add1~52_combout\ & (s_counter(27) $ (!\Add1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(26),
	datab => s_counter(27),
	datac => \Add1~54_combout\,
	datad => \Add1~52_combout\,
	combout => \Equal0~16_combout\);

\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (\k[29]~input_o\ & ((GND) # (!\Add1~55\))) # (!\k[29]~input_o\ & (\Add1~55\ $ (GND)))
-- \Add1~57\ = CARRY((\k[29]~input_o\) # (!\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[29]~input_o\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\k[30]~input_o\ & (\Add1~57\ & VCC)) # (!\k[30]~input_o\ & (!\Add1~57\))
-- \Add1~59\ = CARRY((!\k[30]~input_o\ & !\Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[30]~input_o\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

\Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~17_combout\ = (s_counter(28) & (\Add1~56_combout\ & (s_counter(29) $ (!\Add1~58_combout\)))) # (!s_counter(28) & (!\Add1~56_combout\ & (s_counter(29) $ (!\Add1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(28),
	datab => s_counter(29),
	datac => \Add1~58_combout\,
	datad => \Add1~56_combout\,
	combout => \Equal0~17_combout\);

\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (\k[31]~input_o\ & ((GND) # (!\Add1~59\))) # (!\k[31]~input_o\ & (\Add1~59\ $ (GND)))
-- \Add1~61\ = CARRY((\k[31]~input_o\) # (!\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \k[31]~input_o\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = !\Add1~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

\Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~18_combout\ = (s_counter(30) & (\Add1~60_combout\ & (s_counter(31) $ (!\Add1~62_combout\)))) # (!s_counter(30) & (!\Add1~60_combout\ & (s_counter(31) $ (!\Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(30),
	datab => s_counter(31),
	datac => \Add1~62_combout\,
	datad => \Add1~60_combout\,
	combout => \Equal0~18_combout\);

\Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~19_combout\ = (\Equal0~15_combout\ & (\Equal0~16_combout\ & (\Equal0~17_combout\ & \Equal0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~15_combout\,
	datab => \Equal0~16_combout\,
	datac => \Equal0~17_combout\,
	datad => \Equal0~18_combout\,
	combout => \Equal0~19_combout\);

\Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~20_combout\ = (\Equal0~4_combout\ & (\Equal0~9_combout\ & (\Equal0~14_combout\ & \Equal0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~14_combout\,
	datad => \Equal0~19_combout\,
	combout => \Equal0~20_combout\);

\clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkOut~0_combout\ = (\Equal0~20_combout\) # ((\clkOut~reg0_q\ & !\Equal1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~20_combout\,
	datab => \clkOut~reg0_q\,
	datad => \Equal1~20_combout\,
	combout => \clkOut~0_combout\);

\clkOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkOut~reg0_q\);

ww_clkOut <= \clkOut~output_o\;
END structure;


