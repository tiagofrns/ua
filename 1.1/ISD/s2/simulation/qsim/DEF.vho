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

-- DATE "12/18/2023 17:04:31"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	DEF IS
    PORT (
	Y : OUT std_logic;
	Q : OUT std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	RESET_H : IN std_logic
	);
END DEF;

ARCHITECTURE structure OF DEF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_Q : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET_H : std_logic;
SIGNAL \Y~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \RESET_H~input_o\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst14~q\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst13~q\ : std_logic;
SIGNAL \inst19~0_combout\ : std_logic;
SIGNAL \inst12~q\ : std_logic;
SIGNAL \inst23~0_combout\ : std_logic;
SIGNAL \inst15~combout\ : std_logic;
SIGNAL \inst16~combout\ : std_logic;
SIGNAL \inst17~0_combout\ : std_logic;

BEGIN

Y <= ww_Y;
Q <= ww_Q;
ww_CLK <= CLK;
ww_RESET_H <= RESET_H;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Y~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23~0_combout\,
	devoe => ww_devoe,
	o => \Y~output_o\);

\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~combout\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~combout\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17~0_combout\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

\RESET_H~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET_H,
	o => \RESET_H~input_o\);

\inst11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = ((!\inst12~q\ & !\inst14~q\)) # (!\RESET_H~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_H~input_o\,
	datab => \inst12~q\,
	datac => \inst14~q\,
	combout => \inst11~0_combout\);

inst14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14~q\);

\inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\RESET_H~input_o\ & (!\inst12~q\ & (\inst13~q\ $ (\inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_H~input_o\,
	datab => \inst13~q\,
	datac => \inst14~q\,
	datad => \inst12~q\,
	combout => \inst10~0_combout\);

inst13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13~q\);

\inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19~0_combout\ = (\RESET_H~input_o\ & (\inst13~q\ & (\inst14~q\ & !\inst12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_H~input_o\,
	datab => \inst13~q\,
	datac => \inst14~q\,
	datad => \inst12~q\,
	combout => \inst19~0_combout\);

inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~q\);

\inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23~0_combout\ = ((!\inst13~q\ & ((!\inst14~q\) # (!\inst12~q\)))) # (!\RESET_H~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datab => \inst14~q\,
	datac => \inst13~q\,
	datad => \RESET_H~input_o\,
	combout => \inst23~0_combout\);

inst15 : cycloneive_lcell_comb
-- Equation(s):
-- \inst15~combout\ = (\RESET_H~input_o\ & \inst12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_H~input_o\,
	datab => \inst12~q\,
	combout => \inst15~combout\);

inst16 : cycloneive_lcell_comb
-- Equation(s):
-- \inst16~combout\ = (\RESET_H~input_o\ & \inst13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_H~input_o\,
	datab => \inst13~q\,
	combout => \inst16~combout\);

\inst17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17~0_combout\ = (\RESET_H~input_o\ & \inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_H~input_o\,
	datab => \inst14~q\,
	combout => \inst17~0_combout\);

ww_Y <= \Y~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;
END structure;


