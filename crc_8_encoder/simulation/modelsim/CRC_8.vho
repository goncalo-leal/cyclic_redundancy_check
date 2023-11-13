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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/13/2023 14:38:07"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CRC_8 IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	r : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END CRC_8;

-- Design Ports Information
-- r[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[5]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[7]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CRC_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \xor_a6_1_4_2|y~combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \xor_r0|y~combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \xor_a13_0_5_3|y~combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \xor_r1|y~0_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \xor_r1|y~combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \xor_r2|y~0_combout\ : std_logic;
SIGNAL \xor_r2|y~combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \xor_r3|y~0_combout\ : std_logic;
SIGNAL \xor_r3|y~combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \xor_r4|y~0_combout\ : std_logic;
SIGNAL \xor_r4|y~combout\ : std_logic;
SIGNAL \xor_r6|y~0_combout\ : std_logic;
SIGNAL \xor_r5|y~combout\ : std_logic;
SIGNAL \xor_r6|y~combout\ : std_logic;
SIGNAL \xor_r7|y~combout\ : std_logic;
SIGNAL \ALT_INV_a[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \xor_r6|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xor_r4|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xor_r3|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xor_r2|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xor_r1|ALT_INV_y~0_combout\ : std_logic;
SIGNAL \xor_a13_0_5_3|ALT_INV_y~combout\ : std_logic;
SIGNAL \xor_a6_1_4_2|ALT_INV_y~combout\ : std_logic;

BEGIN

ww_a <= a;
r <= ww_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_a[12]~input_o\ <= NOT \a[12]~input_o\;
\ALT_INV_a[11]~input_o\ <= NOT \a[11]~input_o\;
\ALT_INV_a[10]~input_o\ <= NOT \a[10]~input_o\;
\ALT_INV_a[15]~input_o\ <= NOT \a[15]~input_o\;
\ALT_INV_a[5]~input_o\ <= NOT \a[5]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_a[9]~input_o\ <= NOT \a[9]~input_o\;
\ALT_INV_a[7]~input_o\ <= NOT \a[7]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_a[6]~input_o\ <= NOT \a[6]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_a[14]~input_o\ <= NOT \a[14]~input_o\;
\ALT_INV_a[8]~input_o\ <= NOT \a[8]~input_o\;
\ALT_INV_a[13]~input_o\ <= NOT \a[13]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\xor_r6|ALT_INV_y~0_combout\ <= NOT \xor_r6|y~0_combout\;
\xor_r4|ALT_INV_y~0_combout\ <= NOT \xor_r4|y~0_combout\;
\xor_r3|ALT_INV_y~0_combout\ <= NOT \xor_r3|y~0_combout\;
\xor_r2|ALT_INV_y~0_combout\ <= NOT \xor_r2|y~0_combout\;
\xor_r1|ALT_INV_y~0_combout\ <= NOT \xor_r1|y~0_combout\;
\xor_a13_0_5_3|ALT_INV_y~combout\ <= NOT \xor_a13_0_5_3|y~combout\;
\xor_a6_1_4_2|ALT_INV_y~combout\ <= NOT \xor_a6_1_4_2|y~combout\;

-- Location: IOOBUF_X89_Y4_N96
\r[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r0|y~combout\,
	devoe => ww_devoe,
	o => ww_r(0));

-- Location: IOOBUF_X89_Y6_N5
\r[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r1|y~combout\,
	devoe => ww_devoe,
	o => ww_r(1));

-- Location: IOOBUF_X72_Y0_N19
\r[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r2|y~combout\,
	devoe => ww_devoe,
	o => ww_r(2));

-- Location: IOOBUF_X89_Y9_N22
\r[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r3|y~combout\,
	devoe => ww_devoe,
	o => ww_r(3));

-- Location: IOOBUF_X72_Y0_N2
\r[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r4|y~combout\,
	devoe => ww_devoe,
	o => ww_r(4));

-- Location: IOOBUF_X89_Y4_N45
\r[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r5|y~combout\,
	devoe => ww_devoe,
	o => ww_r(5));

-- Location: IOOBUF_X89_Y4_N62
\r[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r6|y~combout\,
	devoe => ww_devoe,
	o => ww_r(6));

-- Location: IOOBUF_X72_Y0_N53
\r[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \xor_r7|y~combout\,
	devoe => ww_devoe,
	o => ww_r(7));

-- Location: IOIBUF_X89_Y6_N55
\a[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\a[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\a[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LABCELL_X88_Y8_N0
\xor_a6_1_4_2|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_a6_1_4_2|y~combout\ = ( \a[2]~input_o\ & ( !\a[4]~input_o\ $ (!\a[6]~input_o\ $ (!\a[1]~input_o\)) ) ) # ( !\a[2]~input_o\ & ( !\a[4]~input_o\ $ (!\a[6]~input_o\ $ (\a[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100101101001011001101001011010011001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[4]~input_o\,
	datab => \ALT_INV_a[6]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datae => \ALT_INV_a[2]~input_o\,
	combout => \xor_a6_1_4_2|y~combout\);

-- Location: IOIBUF_X89_Y9_N55
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LABCELL_X88_Y8_N9
\xor_r0|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_r0|y~combout\ = ( \xor_a6_1_4_2|y~combout\ & ( \a[0]~input_o\ & ( !\a[8]~input_o\ $ (!\a[14]~input_o\ $ (\a[13]~input_o\)) ) ) ) # ( !\xor_a6_1_4_2|y~combout\ & ( \a[0]~input_o\ & ( !\a[8]~input_o\ $ (!\a[14]~input_o\ $ (!\a[13]~input_o\)) ) ) ) # ( 
-- \xor_a6_1_4_2|y~combout\ & ( !\a[0]~input_o\ & ( !\a[8]~input_o\ $ (!\a[14]~input_o\ $ (!\a[13]~input_o\)) ) ) ) # ( !\xor_a6_1_4_2|y~combout\ & ( !\a[0]~input_o\ & ( !\a[8]~input_o\ $ (!\a[14]~input_o\ $ (\a[13]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100101101001011010010110100101100110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[8]~input_o\,
	datab => \ALT_INV_a[14]~input_o\,
	datac => \ALT_INV_a[13]~input_o\,
	datae => \xor_a6_1_4_2|ALT_INV_y~combout\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \xor_r0|y~combout\);

-- Location: IOIBUF_X89_Y8_N4
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LABCELL_X88_Y8_N12
\xor_a13_0_5_3|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_a13_0_5_3|y~combout\ = ( \a[5]~input_o\ & ( !\a[13]~input_o\ $ (!\a[3]~input_o\ $ (!\a[0]~input_o\)) ) ) # ( !\a[5]~input_o\ & ( !\a[13]~input_o\ $ (!\a[3]~input_o\ $ (\a[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[13]~input_o\,
	datac => \ALT_INV_a[3]~input_o\,
	datad => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_a[5]~input_o\,
	combout => \xor_a13_0_5_3|y~combout\);

-- Location: IOIBUF_X89_Y35_N78
\a[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LABCELL_X88_Y8_N15
\xor_r1|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_r1|y~0_combout\ = ( \a[15]~input_o\ & ( !\a[4]~input_o\ $ (!\a[6]~input_o\ $ (!\a[8]~input_o\)) ) ) # ( !\a[15]~input_o\ & ( !\a[4]~input_o\ $ (!\a[6]~input_o\ $ (\a[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[4]~input_o\,
	datac => \ALT_INV_a[6]~input_o\,
	datad => \ALT_INV_a[8]~input_o\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \xor_r1|y~0_combout\);

-- Location: IOIBUF_X89_Y6_N21
\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\a[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: LABCELL_X88_Y8_N21
\xor_r1|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_r1|y~combout\ = ( \a[9]~input_o\ & ( !\xor_a13_0_5_3|y~combout\ $ (!\xor_r1|y~0_combout\ $ (!\a[7]~input_o\)) ) ) # ( !\a[9]~input_o\ & ( !\xor_a13_0_5_3|y~combout\ $ (!\xor_r1|y~0_combout\ $ (\a[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \xor_a13_0_5_3|ALT_INV_y~combout\,
	datac => \xor_r1|ALT_INV_y~0_combout\,
	datad => \ALT_INV_a[7]~input_o\,
	dataf => \ALT_INV_a[9]~input_o\,
	combout => \xor_r1|y~combout\);

-- Location: IOIBUF_X89_Y8_N55
\a[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LABCELL_X88_Y8_N54
\xor_r2|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_r2|y~0_combout\ = ( \a[5]~input_o\ & ( !\a[2]~input_o\ $ (\a[10]~input_o\) ) ) # ( !\a[5]~input_o\ & ( !\a[2]~input_o\ $ (!\a[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[2]~input_o\,
	datad => \ALT_INV_a[10]~input_o\,
	dataf => \ALT_INV_a[5]~input_o\,
	combout => \xor_r2|y~0_combout\);

-- Location: LABCELL_X88_Y8_N57
\xor_r2|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_r2|y~combout\ = ( \a[0]~input_o\ & ( !\a[9]~input_o\ $ (!\a[13]~input_o\ $ (!\a[7]~input_o\ $ (\xor_r2|y~0_combout\))) ) ) # ( !\a[0]~input_o\ & ( !\a[9]~input_o\ $ (!\a[13]~input_o\ $ (!\a[7]~input_o\ $ (!\xor_r2|y~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[9]~input_o\,
	datab => \ALT_INV_a[13]~input_o\,
	datac => \ALT_INV_a[7]~input_o\,
	datad => \xor_r2|ALT_INV_y~0_combout\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \xor_r2|y~combout\);

-- Location: IOIBUF_X89_Y4_N78
\a[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: LABCELL_X88_Y8_N33
\xor_r3|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_r3|y~0_combout\ = ( \a[3]~input_o\ & ( !\a[10]~input_o\ $ (\a[11]~input_o\) ) ) # ( !\a[3]~input_o\ & ( !\a[10]~input_o\ $ (!\a[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[10]~input_o\,
	datad => \ALT_INV_a[11]~input_o\,
	dataf => \ALT_INV_a[3]~input_o\,
	combout => \xor_r3|y~0_combout\);

-- Location: LABCELL_X88_Y8_N30
\xor_r3|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_r3|y~combout\ = ( \a[14]~input_o\ & ( !\a[1]~input_o\ $ (!\a[6]~input_o\ $ (!\xor_r3|y~0_combout\ $ (\a[8]~input_o\))) ) ) # ( !\a[14]~input_o\ & ( !\a[1]~input_o\ $ (!\a[6]~input_o\ $ (!\xor_r3|y~0_combout\ $ (!\a[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_a[6]~input_o\,
	datac => \xor_r3|ALT_INV_y~0_combout\,
	datad => \ALT_INV_a[8]~input_o\,
	dataf => \ALT_INV_a[14]~input_o\,
	combout => \xor_r3|y~combout\);

-- Location: IOIBUF_X89_Y9_N4
\a[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LABCELL_X88_Y8_N39
\xor_r4|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_r4|y~0_combout\ = ( \a[12]~input_o\ & ( !\a[15]~input_o\ $ (\a[11]~input_o\) ) ) # ( !\a[12]~input_o\ & ( !\a[15]~input_o\ $ (!\a[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[15]~input_o\,
	datad => \ALT_INV_a[11]~input_o\,
	dataf => \ALT_INV_a[12]~input_o\,
	combout => \xor_r4|y~0_combout\);

-- Location: LABCELL_X88_Y8_N36
\xor_r4|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_r4|y~combout\ = ( \a[9]~input_o\ & ( !\a[2]~input_o\ $ (!\xor_r4|y~0_combout\ $ (!\a[4]~input_o\ $ (\a[7]~input_o\))) ) ) # ( !\a[9]~input_o\ & ( !\a[2]~input_o\ $ (!\xor_r4|y~0_combout\ $ (!\a[4]~input_o\ $ (!\a[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[2]~input_o\,
	datab => \xor_r4|ALT_INV_y~0_combout\,
	datac => \ALT_INV_a[4]~input_o\,
	datad => \ALT_INV_a[7]~input_o\,
	dataf => \ALT_INV_a[9]~input_o\,
	combout => \xor_r4|y~combout\);

-- Location: LABCELL_X88_Y8_N42
\xor_r6|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_r6|y~0_combout\ = ( \a[2]~input_o\ & ( \a[5]~input_o\ & ( !\a[3]~input_o\ $ (!\a[6]~input_o\ $ (!\a[4]~input_o\ $ (!\a[1]~input_o\))) ) ) ) # ( !\a[2]~input_o\ & ( \a[5]~input_o\ & ( !\a[3]~input_o\ $ (!\a[6]~input_o\ $ (!\a[4]~input_o\ $ 
-- (\a[1]~input_o\))) ) ) ) # ( \a[2]~input_o\ & ( !\a[5]~input_o\ & ( !\a[3]~input_o\ $ (!\a[6]~input_o\ $ (!\a[4]~input_o\ $ (\a[1]~input_o\))) ) ) ) # ( !\a[2]~input_o\ & ( !\a[5]~input_o\ & ( !\a[3]~input_o\ $ (!\a[6]~input_o\ $ (!\a[4]~input_o\ $ 
-- (!\a[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[3]~input_o\,
	datab => \ALT_INV_a[6]~input_o\,
	datac => \ALT_INV_a[4]~input_o\,
	datad => \ALT_INV_a[1]~input_o\,
	datae => \ALT_INV_a[2]~input_o\,
	dataf => \ALT_INV_a[5]~input_o\,
	combout => \xor_r6|y~0_combout\);

-- Location: LABCELL_X88_Y8_N51
\xor_r5|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_r5|y~combout\ = ( \a[10]~input_o\ & ( \a[0]~input_o\ & ( !\a[12]~input_o\ $ (!\a[14]~input_o\ $ (\xor_r6|y~0_combout\)) ) ) ) # ( !\a[10]~input_o\ & ( \a[0]~input_o\ & ( !\a[12]~input_o\ $ (!\a[14]~input_o\ $ (!\xor_r6|y~0_combout\)) ) ) ) # ( 
-- \a[10]~input_o\ & ( !\a[0]~input_o\ & ( !\a[12]~input_o\ $ (!\a[14]~input_o\ $ (!\xor_r6|y~0_combout\)) ) ) ) # ( !\a[10]~input_o\ & ( !\a[0]~input_o\ & ( !\a[12]~input_o\ $ (!\a[14]~input_o\ $ (\xor_r6|y~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100101101001011010010110100101100110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[12]~input_o\,
	datab => \ALT_INV_a[14]~input_o\,
	datac => \xor_r6|ALT_INV_y~0_combout\,
	datae => \ALT_INV_a[10]~input_o\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \xor_r5|y~combout\);

-- Location: LABCELL_X88_Y8_N24
\xor_r6|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_r6|y~combout\ = ( \a[13]~input_o\ & ( \a[15]~input_o\ & ( !\xor_r6|y~0_combout\ $ (!\a[11]~input_o\ $ (\a[7]~input_o\)) ) ) ) # ( !\a[13]~input_o\ & ( \a[15]~input_o\ & ( !\xor_r6|y~0_combout\ $ (!\a[11]~input_o\ $ (!\a[7]~input_o\)) ) ) ) # ( 
-- \a[13]~input_o\ & ( !\a[15]~input_o\ & ( !\xor_r6|y~0_combout\ $ (!\a[11]~input_o\ $ (!\a[7]~input_o\)) ) ) ) # ( !\a[13]~input_o\ & ( !\a[15]~input_o\ & ( !\xor_r6|y~0_combout\ $ (!\a[11]~input_o\ $ (\a[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011110000110011110011000011001111000011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \xor_r6|ALT_INV_y~0_combout\,
	datac => \ALT_INV_a[11]~input_o\,
	datad => \ALT_INV_a[7]~input_o\,
	datae => \ALT_INV_a[13]~input_o\,
	dataf => \ALT_INV_a[15]~input_o\,
	combout => \xor_r6|y~combout\);

-- Location: LABCELL_X88_Y8_N18
\xor_r7|y\ : cyclonev_lcell_comb
-- Equation(s):
-- \xor_r7|y~combout\ = ( \a[12]~input_o\ & ( !\xor_a13_0_5_3|y~combout\ $ (!\a[1]~input_o\ $ (!\a[7]~input_o\)) ) ) # ( !\a[12]~input_o\ & ( !\xor_a13_0_5_3|y~combout\ $ (!\a[1]~input_o\ $ (\a[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \xor_a13_0_5_3|ALT_INV_y~combout\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_a[7]~input_o\,
	dataf => \ALT_INV_a[12]~input_o\,
	combout => \xor_r7|y~combout\);

-- Location: LABCELL_X64_Y78_N0
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


