-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- Generated on "11/10/2023 12:27:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CRC_8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CRC_8_vhd_vec_tst IS
END CRC_8_vhd_vec_tst;
ARCHITECTURE CRC_8_arch OF CRC_8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL x0 : STD_LOGIC;
SIGNAL x1 : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT CRC_8
	PORT (
	x0 : IN STD_LOGIC;
	x1 : IN STD_LOGIC;
	y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CRC_8
	PORT MAP (
-- list connections between master ports and signals
	x0 => x0,
	x1 => x1,
	y => y
	);

-- x0
t_prcs_x0: PROCESS
BEGIN
	x0 <= '0';
	WAIT FOR 2000000 ps;
	x0 <= '1';
	WAIT FOR 2000000 ps;
	x0 <= '0';
WAIT;
END PROCESS t_prcs_x0;

-- x1
t_prcs_x1: PROCESS
BEGIN
	x1 <= '0';
	WAIT FOR 3000000 ps;
	x1 <= '1';
	WAIT FOR 1000000 ps;
	x1 <= '0';
	WAIT FOR 1000000 ps;
	x1 <= '1';
	WAIT FOR 1000000 ps;
	x1 <= '0';
WAIT;
END PROCESS t_prcs_x1;
END CRC_8_arch;
