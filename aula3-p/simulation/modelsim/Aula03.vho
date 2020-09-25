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

-- DATE "09/09/2020 07:48:58"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula03 IS
    PORT (
	CLOCK_50 : IN std_logic;
	FPGA_RESET_N : IN std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	PTS_CTRL : INOUT std_logic_vector(13 DOWNTO 0)
	);
END Aula03;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PTS_CTRL[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTS_CTRL[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTS_CTRL[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTS_CTRL[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTS_CTRL[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTS_CTRL[5]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTS_CTRL[6]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTS_CTRL[7]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTS_CTRL[8]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTS_CTRL[9]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTS_CTRL[10]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTS_CTRL[11]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTS_CTRL[12]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTS_CTRL[13]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Aula03 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \PTS_CTRL[0]~input_o\ : std_logic;
SIGNAL \PTS_CTRL[1]~input_o\ : std_logic;
SIGNAL \PTS_CTRL[2]~input_o\ : std_logic;
SIGNAL \PTS_CTRL[3]~input_o\ : std_logic;
SIGNAL \PTS_CTRL[4]~input_o\ : std_logic;
SIGNAL \PTS_CTRL[5]~input_o\ : std_logic;
SIGNAL \PTS_CTRL[6]~input_o\ : std_logic;
SIGNAL \PTS_CTRL[7]~input_o\ : std_logic;
SIGNAL \PTS_CTRL[8]~input_o\ : std_logic;
SIGNAL \PTS_CTRL[9]~input_o\ : std_logic;
SIGNAL \PTS_CTRL[10]~input_o\ : std_logic;
SIGNAL \PTS_CTRL[11]~input_o\ : std_logic;
SIGNAL \PTS_CTRL[12]~input_o\ : std_logic;
SIGNAL \PTS_CTRL[13]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \detectorCLK|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorCLK|saidaQ~q\ : std_logic;
SIGNAL \detectorCLK|saida~combout\ : std_logic;
SIGNAL \maqEstados|memoria1|memROM~0_combout\ : std_logic;
SIGNAL \maqEstados|memoria1|memROM~1_combout\ : std_logic;
SIGNAL \maqEstados|regA|DOUT[0]~0_combout\ : std_logic;
SIGNAL \maqEstados|regA|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \maqEstados|memoria1|memROM~2_combout\ : std_logic;
SIGNAL \maqEstados|regA|DOUT[0]~_wirecell_combout\ : std_logic;
SIGNAL \detectorRSTA|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorRSTA|saidaQ~q\ : std_logic;
SIGNAL \detectorRSTA|saida~combout\ : std_logic;
SIGNAL \regB|DOUT[0]~0_combout\ : std_logic;
SIGNAL \detectorRSTB|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorRSTB|saidaQ~q\ : std_logic;
SIGNAL \detectorRSTB|saida~combout\ : std_logic;
SIGNAL \ULA|Add0~34_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \maqEstados|regA|DOUT[1]~_wirecell_combout\ : std_logic;
SIGNAL \regB|DOUT[1]~1_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \regB|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \maqEstados|regA|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \maqEstados|regA|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \maqEstados|memoria1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \detectorCLK|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \detectorRSTA|ALT_INV_saida~combout\ : std_logic;
SIGNAL \detectorRSTA|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \maqEstados|memoria1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \detectorRSTB|ALT_INV_saida~combout\ : std_logic;
SIGNAL \detectorRSTB|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \maqEstados|regA|ALT_INV_DOUT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \regB|ALT_INV_DOUT\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \regA|ALT_INV_DOUT\ : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_FPGA_RESET_N <= FPGA_RESET_N;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\maqEstados|regA|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \maqEstados|regA|DOUT[0]~DUPLICATE_q\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\maqEstados|memoria1|ALT_INV_memROM~2_combout\ <= NOT \maqEstados|memoria1|memROM~2_combout\;
\detectorCLK|ALT_INV_saidaQ~q\ <= NOT \detectorCLK|saidaQ~q\;
\detectorRSTA|ALT_INV_saida~combout\ <= NOT \detectorRSTA|saida~combout\;
\detectorRSTA|ALT_INV_saidaQ~q\ <= NOT \detectorRSTA|saidaQ~q\;
\maqEstados|memoria1|ALT_INV_memROM~1_combout\ <= NOT \maqEstados|memoria1|memROM~1_combout\;
\detectorRSTB|ALT_INV_saida~combout\ <= NOT \detectorRSTB|saida~combout\;
\detectorRSTB|ALT_INV_saidaQ~q\ <= NOT \detectorRSTB|saidaQ~q\;
\maqEstados|regA|ALT_INV_DOUT\(0) <= NOT \maqEstados|regA|DOUT\(0);
\regB|ALT_INV_DOUT\(6) <= NOT \regB|DOUT\(6);
\regB|ALT_INV_DOUT\(1) <= NOT \regB|DOUT\(1);
\regB|ALT_INV_DOUT\(0) <= NOT \regB|DOUT\(0);
\maqEstados|regA|ALT_INV_DOUT\(1) <= NOT \maqEstados|regA|DOUT\(1);
\regA|ALT_INV_DOUT\(6) <= NOT \regA|DOUT\(6);
\regA|ALT_INV_DOUT\(1) <= NOT \regA|DOUT\(1);
\regA|ALT_INV_DOUT\(0) <= NOT \regA|DOUT\(0);

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \maqEstados|regA|ALT_INV_DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X54_Y19_N5
\PTS_CTRL[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \maqEstados|regA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => PTS_CTRL(0));

-- Location: IOOBUF_X10_Y0_N59
\PTS_CTRL[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \maqEstados|regA|ALT_INV_DOUT\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => PTS_CTRL(1));

-- Location: IOOBUF_X14_Y0_N53
\PTS_CTRL[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => PTS_CTRL(2));

-- Location: IOOBUF_X16_Y0_N76
\PTS_CTRL[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => PTS_CTRL(3));

-- Location: IOOBUF_X10_Y0_N42
\PTS_CTRL[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => PTS_CTRL(4));

-- Location: IOOBUF_X48_Y0_N59
\PTS_CTRL[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => PTS_CTRL(5));

-- Location: IOOBUF_X10_Y0_N93
\PTS_CTRL[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \maqEstados|memoria1|memROM~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => PTS_CTRL(6));

-- Location: IOOBUF_X54_Y14_N79
\PTS_CTRL[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => PTS_CTRL(7));

-- Location: IOOBUF_X10_Y0_N76
\PTS_CTRL[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \maqEstados|regA|ALT_INV_DOUT\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => PTS_CTRL(8));

-- Location: IOOBUF_X12_Y0_N2
\PTS_CTRL[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \maqEstados|memoria1|memROM~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => PTS_CTRL(9));

-- Location: IOOBUF_X11_Y0_N2
\PTS_CTRL[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \maqEstados|memoria1|ALT_INV_memROM~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => PTS_CTRL(10));

-- Location: IOOBUF_X12_Y0_N19
\PTS_CTRL[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \maqEstados|memoria1|memROM~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => PTS_CTRL(11));

-- Location: IOOBUF_X11_Y0_N36
\PTS_CTRL[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \maqEstados|memoria1|ALT_INV_memROM~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => PTS_CTRL(12));

-- Location: IOOBUF_X14_Y45_N19
\PTS_CTRL[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => PTS_CTRL(13));

-- Location: IOIBUF_X54_Y16_N55
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X7_Y19_N12
\detectorCLK|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorCLK|saidaQ~0_combout\ = ( !\FPGA_RESET_N~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_FPGA_RESET_N~input_o\,
	combout => \detectorCLK|saidaQ~0_combout\);

-- Location: FF_X7_Y19_N26
\detectorCLK|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \detectorCLK|saidaQ~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorCLK|saidaQ~q\);

-- Location: LABCELL_X7_Y19_N57
\detectorCLK|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorCLK|saida~combout\ = LCELL(( \detectorCLK|saidaQ~q\ & ( \FPGA_RESET_N~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_FPGA_RESET_N~input_o\,
	dataf => \detectorCLK|ALT_INV_saidaQ~q\,
	combout => \detectorCLK|saida~combout\);

-- Location: LABCELL_X7_Y19_N21
\maqEstados|memoria1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maqEstados|memoria1|memROM~0_combout\ = ( \maqEstados|regA|DOUT[0]~DUPLICATE_q\ & ( !\maqEstados|regA|DOUT\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \maqEstados|regA|ALT_INV_DOUT\(1),
	dataf => \maqEstados|regA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \maqEstados|memoria1|memROM~0_combout\);

-- Location: FF_X7_Y19_N14
\maqEstados|regA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorCLK|saida~combout\,
	asdata => \maqEstados|memoria1|memROM~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maqEstados|regA|DOUT\(1));

-- Location: LABCELL_X7_Y19_N45
\maqEstados|memoria1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \maqEstados|memoria1|memROM~1_combout\ = (\maqEstados|regA|DOUT[0]~DUPLICATE_q\) # (\maqEstados|regA|DOUT\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maqEstados|regA|ALT_INV_DOUT\(1),
	datab => \maqEstados|regA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \maqEstados|memoria1|memROM~1_combout\);

-- Location: LABCELL_X7_Y19_N39
\maqEstados|regA|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maqEstados|regA|DOUT[0]~0_combout\ = ( !\maqEstados|memoria1|memROM~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \maqEstados|memoria1|ALT_INV_memROM~1_combout\,
	combout => \maqEstados|regA|DOUT[0]~0_combout\);

-- Location: FF_X7_Y19_N40
\maqEstados|regA|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorCLK|saida~combout\,
	d => \maqEstados|regA|DOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maqEstados|regA|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X7_Y19_N41
\maqEstados|regA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorCLK|saida~combout\,
	d => \maqEstados|regA|DOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maqEstados|regA|DOUT\(0));

-- Location: LABCELL_X7_Y19_N24
\maqEstados|memoria1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \maqEstados|memoria1|memROM~2_combout\ = ( \maqEstados|regA|DOUT\(1) & ( !\maqEstados|regA|DOUT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \maqEstados|regA|ALT_INV_DOUT\(0),
	dataf => \maqEstados|regA|ALT_INV_DOUT\(1),
	combout => \maqEstados|memoria1|memROM~2_combout\);

-- Location: LABCELL_X6_Y19_N18
\maqEstados|regA|DOUT[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \maqEstados|regA|DOUT[0]~_wirecell_combout\ = ( !\maqEstados|regA|DOUT[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \maqEstados|regA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \maqEstados|regA|DOUT[0]~_wirecell_combout\);

-- Location: LABCELL_X7_Y19_N42
\detectorRSTA|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorRSTA|saidaQ~0_combout\ = ( !\maqEstados|memoria1|memROM~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \maqEstados|memoria1|ALT_INV_memROM~2_combout\,
	combout => \detectorRSTA|saidaQ~0_combout\);

-- Location: FF_X7_Y19_N44
\detectorRSTA|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \detectorRSTA|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorRSTA|saidaQ~q\);

-- Location: LABCELL_X6_Y19_N12
\detectorRSTA|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorRSTA|saida~combout\ = ( \maqEstados|regA|DOUT\(1) & ( !\maqEstados|regA|DOUT[0]~DUPLICATE_q\ & ( \detectorRSTA|saidaQ~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \detectorRSTA|ALT_INV_saidaQ~q\,
	datae => \maqEstados|regA|ALT_INV_DOUT\(1),
	dataf => \maqEstados|regA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \detectorRSTA|saida~combout\);

-- Location: FF_X6_Y19_N19
\regA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorCLK|saida~combout\,
	d => \maqEstados|regA|DOUT[0]~_wirecell_combout\,
	clrn => \detectorRSTA|ALT_INV_saida~combout\,
	ena => \maqEstados|memoria1|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|DOUT\(0));

-- Location: LABCELL_X7_Y19_N48
\regB|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regB|DOUT[0]~0_combout\ = ( !\maqEstados|regA|DOUT[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \maqEstados|regA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \regB|DOUT[0]~0_combout\);

-- Location: LABCELL_X7_Y19_N27
\detectorRSTB|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorRSTB|saidaQ~0_combout\ = !\maqEstados|memoria1|memROM~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \maqEstados|memoria1|ALT_INV_memROM~2_combout\,
	combout => \detectorRSTB|saidaQ~0_combout\);

-- Location: FF_X7_Y19_N29
\detectorRSTB|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \detectorRSTB|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorRSTB|saidaQ~q\);

-- Location: LABCELL_X7_Y19_N33
\detectorRSTB|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorRSTB|saida~combout\ = ( !\maqEstados|regA|DOUT\(0) & ( (\detectorRSTB|saidaQ~q\ & \maqEstados|regA|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \detectorRSTB|ALT_INV_saidaQ~q\,
	datac => \maqEstados|regA|ALT_INV_DOUT\(1),
	dataf => \maqEstados|regA|ALT_INV_DOUT\(0),
	combout => \detectorRSTB|saida~combout\);

-- Location: FF_X7_Y19_N49
\regB|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorCLK|saida~combout\,
	d => \regB|DOUT[0]~0_combout\,
	clrn => \detectorRSTB|ALT_INV_saida~combout\,
	ena => \maqEstados|memoria1|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regB|DOUT\(0));

-- Location: LABCELL_X6_Y19_N30
\ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~34_cout\ = CARRY(( \maqEstados|regA|DOUT\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maqEstados|regA|ALT_INV_DOUT\(1),
	cin => GND,
	cout => \ULA|Add0~34_cout\);

-- Location: LABCELL_X6_Y19_N33
\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( \regA|DOUT\(0) ) + ( !\maqEstados|regA|DOUT\(1) $ (!\regB|DOUT\(0)) ) + ( \ULA|Add0~34_cout\ ))
-- \ULA|Add0~2\ = CARRY(( \regA|DOUT\(0) ) + ( !\maqEstados|regA|DOUT\(1) $ (!\regB|DOUT\(0)) ) + ( \ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maqEstados|regA|ALT_INV_DOUT\(1),
	datac => \regA|ALT_INV_DOUT\(0),
	dataf => \regB|ALT_INV_DOUT\(0),
	cin => \ULA|Add0~34_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

-- Location: LABCELL_X6_Y19_N21
\maqEstados|regA|DOUT[1]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \maqEstados|regA|DOUT[1]~_wirecell_combout\ = !\maqEstados|regA|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maqEstados|regA|ALT_INV_DOUT\(1),
	combout => \maqEstados|regA|DOUT[1]~_wirecell_combout\);

-- Location: FF_X6_Y19_N23
\regA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorCLK|saida~combout\,
	d => \maqEstados|regA|DOUT[1]~_wirecell_combout\,
	clrn => \detectorRSTA|ALT_INV_saida~combout\,
	ena => \maqEstados|memoria1|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|DOUT\(1));

-- Location: LABCELL_X7_Y19_N30
\regB|DOUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \regB|DOUT[1]~1_combout\ = !\maqEstados|regA|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \maqEstados|regA|ALT_INV_DOUT\(1),
	combout => \regB|DOUT[1]~1_combout\);

-- Location: FF_X7_Y19_N32
\regB|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorCLK|saida~combout\,
	d => \regB|DOUT[1]~1_combout\,
	clrn => \detectorRSTB|ALT_INV_saida~combout\,
	ena => \maqEstados|memoria1|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regB|DOUT\(1));

-- Location: LABCELL_X6_Y19_N36
\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( \regA|DOUT\(1) ) + ( !\maqEstados|regA|DOUT\(1) $ (!\regB|DOUT\(1)) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( \regA|DOUT\(1) ) + ( !\maqEstados|regA|DOUT\(1) $ (!\regB|DOUT\(1)) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maqEstados|regA|ALT_INV_DOUT\(1),
	datac => \regA|ALT_INV_DOUT\(1),
	dataf => \regB|ALT_INV_DOUT\(1),
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

-- Location: LABCELL_X6_Y19_N39
\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( \maqEstados|regA|DOUT\(1) ) + ( GND ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( \maqEstados|regA|DOUT\(1) ) + ( GND ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maqEstados|regA|ALT_INV_DOUT\(1),
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

-- Location: LABCELL_X6_Y19_N42
\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( \maqEstados|regA|DOUT\(1) ) + ( GND ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( \maqEstados|regA|DOUT\(1) ) + ( GND ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maqEstados|regA|ALT_INV_DOUT\(1),
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

-- Location: LABCELL_X6_Y19_N45
\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( \maqEstados|regA|DOUT\(1) ) + ( GND ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( \maqEstados|regA|DOUT\(1) ) + ( GND ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maqEstados|regA|ALT_INV_DOUT\(1),
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

-- Location: LABCELL_X6_Y19_N48
\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( \maqEstados|regA|DOUT\(1) ) + ( GND ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( \maqEstados|regA|DOUT\(1) ) + ( GND ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maqEstados|regA|ALT_INV_DOUT\(1),
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

-- Location: FF_X6_Y19_N53
\regA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorCLK|saida~combout\,
	asdata => \maqEstados|memoria1|memROM~0_combout\,
	clrn => \detectorRSTA|ALT_INV_saida~combout\,
	sload => VCC,
	ena => \maqEstados|memoria1|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regA|DOUT\(6));

-- Location: FF_X7_Y19_N35
\regB|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorCLK|saida~combout\,
	asdata => \maqEstados|memoria1|memROM~0_combout\,
	clrn => \detectorRSTB|ALT_INV_saida~combout\,
	sload => VCC,
	ena => \maqEstados|memoria1|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regB|DOUT\(6));

-- Location: LABCELL_X6_Y19_N51
\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( \regA|DOUT\(6) ) + ( !\maqEstados|regA|DOUT\(1) $ (!\regB|DOUT\(6)) ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( \regA|DOUT\(6) ) + ( !\maqEstados|regA|DOUT\(1) $ (!\regB|DOUT\(6)) ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maqEstados|regA|ALT_INV_DOUT\(1),
	datad => \regA|ALT_INV_DOUT\(6),
	dataf => \regB|ALT_INV_DOUT\(6),
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

-- Location: LABCELL_X6_Y19_N54
\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( \maqEstados|regA|DOUT\(1) ) + ( GND ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \maqEstados|regA|ALT_INV_DOUT\(1),
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\);

-- Location: IOIBUF_X54_Y19_N4
\PTS_CTRL[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PTS_CTRL(0),
	o => \PTS_CTRL[0]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\PTS_CTRL[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PTS_CTRL(1),
	o => \PTS_CTRL[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\PTS_CTRL[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PTS_CTRL(2),
	o => \PTS_CTRL[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N75
\PTS_CTRL[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PTS_CTRL(3),
	o => \PTS_CTRL[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\PTS_CTRL[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PTS_CTRL(4),
	o => \PTS_CTRL[4]~input_o\);

-- Location: IOIBUF_X48_Y0_N58
\PTS_CTRL[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PTS_CTRL(5),
	o => \PTS_CTRL[5]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\PTS_CTRL[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PTS_CTRL(6),
	o => \PTS_CTRL[6]~input_o\);

-- Location: IOIBUF_X54_Y14_N78
\PTS_CTRL[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PTS_CTRL(7),
	o => \PTS_CTRL[7]~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\PTS_CTRL[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PTS_CTRL(8),
	o => \PTS_CTRL[8]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\PTS_CTRL[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PTS_CTRL(9),
	o => \PTS_CTRL[9]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\PTS_CTRL[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PTS_CTRL(10),
	o => \PTS_CTRL[10]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\PTS_CTRL[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PTS_CTRL(11),
	o => \PTS_CTRL[11]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\PTS_CTRL[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PTS_CTRL(12),
	o => \PTS_CTRL[12]~input_o\);

-- Location: IOIBUF_X14_Y45_N18
\PTS_CTRL[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PTS_CTRL(13),
	o => \PTS_CTRL[13]~input_o\);

-- Location: LABCELL_X40_Y2_N0
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


