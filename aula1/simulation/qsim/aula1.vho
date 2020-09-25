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

-- DATE "08/25/2020 20:41:09"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	aula1 IS
    PORT (
	x : IN std_logic_vector(3 DOWNTO 0);
	y : IN std_logic_vector(3 DOWNTO 0);
	saida : OUT std_logic_vector(3 DOWNTO 0)
	);
END aula1;

-- Design Ports Information
-- x[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF aula1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(3 DOWNTO 0);
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \subtrator2x3y|Add0~1_sumout\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \somador3y|Add0~0_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \subtrator2x3y|Add0~2\ : std_logic;
SIGNAL \subtrator2x3y|Add0~5_sumout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \somador3y|Add0~1_combout\ : std_logic;
SIGNAL \subtrator2x3y|Add0~6\ : std_logic;
SIGNAL \subtrator2x3y|Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_x[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[0]~input_o\ : std_logic;
SIGNAL \somador3y|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \somador3y|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \subtrator2x3y|ALT_INV_Add0~9_sumout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_x[2]~input_o\ <= NOT \x[2]~input_o\;
\ALT_INV_y[3]~input_o\ <= NOT \y[3]~input_o\;
\ALT_INV_x[1]~input_o\ <= NOT \x[1]~input_o\;
\ALT_INV_y[2]~input_o\ <= NOT \y[2]~input_o\;
\ALT_INV_x[0]~input_o\ <= NOT \x[0]~input_o\;
\ALT_INV_y[1]~input_o\ <= NOT \y[1]~input_o\;
\ALT_INV_y[0]~input_o\ <= NOT \y[0]~input_o\;
\somador3y|ALT_INV_Add0~1_combout\ <= NOT \somador3y|Add0~1_combout\;
\somador3y|ALT_INV_Add0~0_combout\ <= NOT \somador3y|Add0~0_combout\;
\subtrator2x3y|ALT_INV_Add0~9_sumout\ <= NOT \subtrator2x3y|Add0~9_sumout\;

-- Location: IOOBUF_X54_Y15_N56
\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_y[0]~input_o\,
	devoe => ww_devoe,
	o => ww_saida(0));

-- Location: IOOBUF_X54_Y14_N45
\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \subtrator2x3y|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_saida(1));

-- Location: IOOBUF_X54_Y16_N5
\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \subtrator2x3y|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_saida(2));

-- Location: IOOBUF_X54_Y16_N39
\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \subtrator2x3y|ALT_INV_Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_saida(3));

-- Location: IOIBUF_X54_Y15_N38
\y[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X54_Y17_N4
\y[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X54_Y17_N21
\x[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LABCELL_X53_Y16_N30
\subtrator2x3y|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \subtrator2x3y|Add0~1_sumout\ = SUM(( !\y[1]~input_o\ $ (\y[0]~input_o\) ) + ( \x[0]~input_o\ ) + ( !VCC ))
-- \subtrator2x3y|Add0~2\ = CARRY(( !\y[1]~input_o\ $ (\y[0]~input_o\) ) + ( \x[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_y[1]~input_o\,
	datac => \ALT_INV_y[0]~input_o\,
	dataf => \ALT_INV_x[0]~input_o\,
	cin => GND,
	sumout => \subtrator2x3y|Add0~1_sumout\,
	cout => \subtrator2x3y|Add0~2\);

-- Location: IOIBUF_X54_Y18_N61
\y[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LABCELL_X53_Y16_N3
\somador3y|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador3y|Add0~0_combout\ = ( \y[2]~input_o\ & ( (!\y[1]~input_o\) # (\y[0]~input_o\) ) ) # ( !\y[2]~input_o\ & ( (!\y[0]~input_o\ & \y[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[0]~input_o\,
	datab => \ALT_INV_y[1]~input_o\,
	dataf => \ALT_INV_y[2]~input_o\,
	combout => \somador3y|Add0~0_combout\);

-- Location: IOIBUF_X54_Y16_N55
\x[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: LABCELL_X53_Y16_N33
\subtrator2x3y|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \subtrator2x3y|Add0~5_sumout\ = SUM(( \x[1]~input_o\ ) + ( !\somador3y|Add0~0_combout\ ) + ( \subtrator2x3y|Add0~2\ ))
-- \subtrator2x3y|Add0~6\ = CARRY(( \x[1]~input_o\ ) + ( !\somador3y|Add0~0_combout\ ) + ( \subtrator2x3y|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \somador3y|ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_x[1]~input_o\,
	cin => \subtrator2x3y|Add0~2\,
	sumout => \subtrator2x3y|Add0~5_sumout\,
	cout => \subtrator2x3y|Add0~6\);

-- Location: IOIBUF_X54_Y18_N95
\x[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X54_Y16_N21
\y[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LABCELL_X53_Y16_N0
\somador3y|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somador3y|Add0~1_combout\ = ( \y[2]~input_o\ & ( !\y[1]~input_o\ $ (\y[3]~input_o\) ) ) # ( !\y[2]~input_o\ & ( !\y[3]~input_o\ $ (((!\y[0]~input_o\) # (!\y[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[0]~input_o\,
	datab => \ALT_INV_y[1]~input_o\,
	datac => \ALT_INV_y[3]~input_o\,
	dataf => \ALT_INV_y[2]~input_o\,
	combout => \somador3y|Add0~1_combout\);

-- Location: LABCELL_X53_Y16_N36
\subtrator2x3y|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \subtrator2x3y|Add0~9_sumout\ = SUM(( !\somador3y|Add0~1_combout\ ) + ( \x[2]~input_o\ ) + ( \subtrator2x3y|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[2]~input_o\,
	datac => \somador3y|ALT_INV_Add0~1_combout\,
	cin => \subtrator2x3y|Add0~6\,
	sumout => \subtrator2x3y|Add0~9_sumout\);

-- Location: IOIBUF_X54_Y19_N4
\x[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: LABCELL_X16_Y34_N3
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


