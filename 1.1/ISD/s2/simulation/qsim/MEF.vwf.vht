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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/18/2023 17:04:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DEF
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DEF_vhd_vec_tst IS
END DEF_vhd_vec_tst;
ARCHITECTURE DEF_arch OF DEF_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RESET_H : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT DEF
	PORT (
	CLK : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	RESET_H : IN STD_LOGIC;
	Y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DEF
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	Q => Q,
	RESET_H => RESET_H,
	Y => Y
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RESET_H
t_prcs_RESET_H: PROCESS
BEGIN
	RESET_H <= '0';
	WAIT FOR 40000 ps;
	RESET_H <= '1';
	WAIT FOR 60000 ps;
	RESET_H <= '0';
WAIT;
END PROCESS t_prcs_RESET_H;
END DEF_arch;
