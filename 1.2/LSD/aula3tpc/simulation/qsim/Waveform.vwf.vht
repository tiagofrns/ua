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
-- Generated on "03/12/2024 10:24:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula3TPC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula3TPC_vhd_vec_tst IS
END Aula3TPC_vhd_vec_tst;
ARCHITECTURE Aula3TPC_arch OF Aula3TPC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bcd0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL bcd1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Aula3TPC
	PORT (
	bcd0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	bcd1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	s : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula3TPC
	PORT MAP (
-- list connections between master ports and signals
	bcd0 => bcd0,
	bcd1 => bcd1,
	s => s
	);
-- s[3]
t_prcs_s_3: PROCESS
BEGIN
	s(3) <= '0';
	WAIT FOR 320000 ps;
	s(3) <= '1';
	WAIT FOR 320000 ps;
	s(3) <= '0';
	WAIT FOR 320000 ps;
	s(3) <= '1';
WAIT;
END PROCESS t_prcs_s_3;
-- s[2]
t_prcs_s_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		s(2) <= '0';
		WAIT FOR 160000 ps;
		s(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	s(2) <= '0';
WAIT;
END PROCESS t_prcs_s_2;
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		s(1) <= '0';
		WAIT FOR 80000 ps;
		s(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	s(1) <= '0';
WAIT;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		s(0) <= '0';
		WAIT FOR 40000 ps;
		s(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	s(0) <= '0';
WAIT;
END PROCESS t_prcs_s_0;
END Aula3TPC_arch;
