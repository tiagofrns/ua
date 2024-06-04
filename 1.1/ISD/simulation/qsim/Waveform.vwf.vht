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
-- Generated on "11/06/2023 17:19:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Test2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Test2_vhd_vec_tst IS
END Test2_vhd_vec_tst;
ARCHITECTURE Test2_arch OF Test2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL pin_name1 : STD_LOGIC;
SIGNAL pin_name2 : STD_LOGIC;
SIGNAL pin_name3 : STD_LOGIC;
COMPONENT Test2
	PORT (
	pin_name1 : IN STD_LOGIC;
	pin_name2 : IN STD_LOGIC;
	pin_name3 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Test2
	PORT MAP (
-- list connections between master ports and signals
	pin_name1 => pin_name1,
	pin_name2 => pin_name2,
	pin_name3 => pin_name3
	);

-- pin_name1
t_prcs_pin_name1: PROCESS
BEGIN
	pin_name1 <= '1';
	WAIT FOR 170000 ps;
	pin_name1 <= '0';
	WAIT FOR 40000 ps;
	pin_name1 <= '1';
	WAIT FOR 130000 ps;
	pin_name1 <= '0';
WAIT;
END PROCESS t_prcs_pin_name1;

-- pin_name2
t_prcs_pin_name2: PROCESS
BEGIN
	pin_name2 <= '1';
	WAIT FOR 170000 ps;
	pin_name2 <= '0';
WAIT;
END PROCESS t_prcs_pin_name2;
END Test2_arch;
