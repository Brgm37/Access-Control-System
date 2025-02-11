-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "03/21/2023 10:34:18"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	KeyDecoder IS
    PORT (
	Kact : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	Kval : OUT std_logic;
	K : OUT std_logic_vector(3 DOWNTO 0);
	Ln : IN std_logic_vector(3 DOWNTO 0);
	Cl : OUT std_logic_vector(2 DOWNTO 0)
	);
END KeyDecoder;

-- Design Ports Information
-- Kval	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cl[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cl[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cl[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kact	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KeyDecoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Kact : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Kval : std_logic;
SIGNAL ww_K : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Ln : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cl : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Kval~output_o\ : std_logic;
SIGNAL \K[0]~output_o\ : std_logic;
SIGNAL \K[1]~output_o\ : std_logic;
SIGNAL \K[2]~output_o\ : std_logic;
SIGNAL \K[3]~output_o\ : std_logic;
SIGNAL \Cl[0]~output_o\ : std_logic;
SIGNAL \Cl[1]~output_o\ : std_logic;
SIGNAL \Cl[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Kact~input_o\ : std_logic;
SIGNAL \Ln[2]~input_o\ : std_logic;
SIGNAL \Ln[3]~input_o\ : std_logic;
SIGNAL \UKeyScan|UCounter|FF0|Q~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \UKeyScan|UCounter|FF0|Q~q\ : std_logic;
SIGNAL \UKeyScan|UCounter|FF1|Q~0_combout\ : std_logic;
SIGNAL \UKeyScan|UCounter|FF1|Q~q\ : std_logic;
SIGNAL \Ln[1]~input_o\ : std_logic;
SIGNAL \Ln[0]~input_o\ : std_logic;
SIGNAL \UKeyScan|UMux|M~0_combout\ : std_logic;
SIGNAL \UKeyScan|UMux|M~1_combout\ : std_logic;
SIGNAL \UKeyControl|Selector0~0_combout\ : std_logic;
SIGNAL \UKeyControl|CurrentState.STATE_SCANNING~q\ : std_logic;
SIGNAL \UKeyControl|Selector1~0_combout\ : std_logic;
SIGNAL \UKeyControl|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \UKeyScan|UCounter|FF2|Q~0_combout\ : std_logic;
SIGNAL \UKeyScan|UCounter|FF2|Q~1_combout\ : std_logic;
SIGNAL \UKeyScan|UCounter|FF2|Q~q\ : std_logic;
SIGNAL \UKeyScan|UCounter|FF3|Q~0_combout\ : std_logic;
SIGNAL \UKeyScan|UCounter|FF3|Q~1_combout\ : std_logic;
SIGNAL \UKeyScan|UCounter|FF3|Q~q\ : std_logic;
SIGNAL \UKeyScan|UDEC|I0~combout\ : std_logic;
SIGNAL \UKeyScan|UDEC|I1~combout\ : std_logic;
SIGNAL \UKeyScan|UDEC|I2~combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \UKeyScan|UDEC|ALT_INV_I2~combout\ : std_logic;
SIGNAL \UKeyScan|UDEC|ALT_INV_I1~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Kact <= Kact;
ww_clk <= clk;
ww_rst <= rst;
Kval <= ww_Kval;
K <= ww_K;
ww_Ln <= Ln;
Cl <= ww_Cl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\UKeyScan|UDEC|ALT_INV_I2~combout\ <= NOT \UKeyScan|UDEC|I2~combout\;
\UKeyScan|UDEC|ALT_INV_I1~combout\ <= NOT \UKeyScan|UDEC|I1~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y0_N2
\Kval~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UKeyControl|CurrentState.STATE_WAITING~q\,
	devoe => ww_devoe,
	o => \Kval~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\K[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UKeyScan|UCounter|FF0|Q~q\,
	devoe => ww_devoe,
	o => \K[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\K[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UKeyScan|UCounter|FF1|Q~q\,
	devoe => ww_devoe,
	o => \K[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\K[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UKeyScan|UCounter|FF2|Q~q\,
	devoe => ww_devoe,
	o => \K[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\K[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UKeyScan|UCounter|FF3|Q~q\,
	devoe => ww_devoe,
	o => \K[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Cl[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UKeyScan|UDEC|I0~combout\,
	devoe => ww_devoe,
	o => \Cl[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\Cl[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UKeyScan|UDEC|ALT_INV_I1~combout\,
	devoe => ww_devoe,
	o => \Cl[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\Cl[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UKeyScan|UDEC|ALT_INV_I2~combout\,
	devoe => ww_devoe,
	o => \Cl[2]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\Kact~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kact,
	o => \Kact~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\Ln[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ln(2),
	o => \Ln[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\Ln[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ln(3),
	o => \Ln[3]~input_o\);

-- Location: LCCOMB_X46_Y4_N2
\UKeyScan|UCounter|FF0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyScan|UCounter|FF0|Q~0_combout\ = \UKeyScan|UCounter|FF0|Q~q\ $ (((!\UKeyControl|CurrentState.STATE_SCANNING~q\ & \UKeyScan|UMux|M~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyControl|CurrentState.STATE_SCANNING~q\,
	datac => \UKeyScan|UCounter|FF0|Q~q\,
	datad => \UKeyScan|UMux|M~1_combout\,
	combout => \UKeyScan|UCounter|FF0|Q~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X46_Y4_N3
\UKeyScan|UCounter|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyScan|UCounter|FF0|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyScan|UCounter|FF0|Q~q\);

-- Location: LCCOMB_X46_Y4_N4
\UKeyScan|UCounter|FF1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyScan|UCounter|FF1|Q~0_combout\ = \UKeyScan|UCounter|FF1|Q~q\ $ (((\UKeyScan|UCounter|FF0|Q~q\ & (!\UKeyControl|CurrentState.STATE_SCANNING~q\ & \UKeyScan|UMux|M~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyScan|UCounter|FF0|Q~q\,
	datab => \UKeyControl|CurrentState.STATE_SCANNING~q\,
	datac => \UKeyScan|UCounter|FF1|Q~q\,
	datad => \UKeyScan|UMux|M~1_combout\,
	combout => \UKeyScan|UCounter|FF1|Q~0_combout\);

-- Location: FF_X46_Y4_N5
\UKeyScan|UCounter|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyScan|UCounter|FF1|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyScan|UCounter|FF1|Q~q\);

-- Location: IOIBUF_X51_Y0_N22
\Ln[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ln(1),
	o => \Ln[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\Ln[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ln(0),
	o => \Ln[0]~input_o\);

-- Location: LCCOMB_X46_Y4_N10
\UKeyScan|UMux|M~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyScan|UMux|M~0_combout\ = (\UKeyScan|UCounter|FF1|Q~q\ & (((\UKeyScan|UCounter|FF0|Q~q\)))) # (!\UKeyScan|UCounter|FF1|Q~q\ & ((\UKeyScan|UCounter|FF0|Q~q\ & (\Ln[1]~input_o\)) # (!\UKeyScan|UCounter|FF0|Q~q\ & ((\Ln[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ln[1]~input_o\,
	datab => \Ln[0]~input_o\,
	datac => \UKeyScan|UCounter|FF1|Q~q\,
	datad => \UKeyScan|UCounter|FF0|Q~q\,
	combout => \UKeyScan|UMux|M~0_combout\);

-- Location: LCCOMB_X46_Y4_N0
\UKeyScan|UMux|M~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyScan|UMux|M~1_combout\ = (\UKeyScan|UCounter|FF1|Q~q\ & ((\UKeyScan|UMux|M~0_combout\ & ((\Ln[3]~input_o\))) # (!\UKeyScan|UMux|M~0_combout\ & (\Ln[2]~input_o\)))) # (!\UKeyScan|UCounter|FF1|Q~q\ & (((\UKeyScan|UMux|M~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ln[2]~input_o\,
	datab => \Ln[3]~input_o\,
	datac => \UKeyScan|UCounter|FF1|Q~q\,
	datad => \UKeyScan|UMux|M~0_combout\,
	combout => \UKeyScan|UMux|M~1_combout\);

-- Location: LCCOMB_X46_Y4_N28
\UKeyControl|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyControl|Selector0~0_combout\ = (\UKeyControl|CurrentState.STATE_WAITING~q\) # (!\UKeyScan|UMux|M~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyControl|CurrentState.STATE_WAITING~q\,
	datad => \UKeyScan|UMux|M~1_combout\,
	combout => \UKeyControl|Selector0~0_combout\);

-- Location: FF_X46_Y4_N29
\UKeyControl|CurrentState.STATE_SCANNING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyControl|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyControl|CurrentState.STATE_SCANNING~q\);

-- Location: LCCOMB_X46_Y4_N12
\UKeyControl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyControl|Selector1~0_combout\ = (\Kact~input_o\ & (!\UKeyControl|CurrentState.STATE_SCANNING~q\ & ((!\UKeyScan|UMux|M~1_combout\)))) # (!\Kact~input_o\ & ((\UKeyControl|CurrentState.STATE_WAITING~q\) # ((!\UKeyControl|CurrentState.STATE_SCANNING~q\ & 
-- !\UKeyScan|UMux|M~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Kact~input_o\,
	datab => \UKeyControl|CurrentState.STATE_SCANNING~q\,
	datac => \UKeyControl|CurrentState.STATE_WAITING~q\,
	datad => \UKeyScan|UMux|M~1_combout\,
	combout => \UKeyControl|Selector1~0_combout\);

-- Location: FF_X46_Y4_N13
\UKeyControl|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyControl|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyControl|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X46_Y4_N6
\UKeyScan|UCounter|FF2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyScan|UCounter|FF2|Q~0_combout\ = (\UKeyScan|UCounter|FF0|Q~q\ & (!\UKeyControl|CurrentState.STATE_SCANNING~q\ & (\UKeyScan|UCounter|FF1|Q~q\ & \UKeyScan|UMux|M~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyScan|UCounter|FF0|Q~q\,
	datab => \UKeyControl|CurrentState.STATE_SCANNING~q\,
	datac => \UKeyScan|UCounter|FF1|Q~q\,
	datad => \UKeyScan|UMux|M~1_combout\,
	combout => \UKeyScan|UCounter|FF2|Q~0_combout\);

-- Location: LCCOMB_X46_Y4_N30
\UKeyScan|UCounter|FF2|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyScan|UCounter|FF2|Q~1_combout\ = \UKeyScan|UCounter|FF2|Q~q\ $ (\UKeyScan|UCounter|FF2|Q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UKeyScan|UCounter|FF2|Q~q\,
	datad => \UKeyScan|UCounter|FF2|Q~0_combout\,
	combout => \UKeyScan|UCounter|FF2|Q~1_combout\);

-- Location: FF_X46_Y4_N31
\UKeyScan|UCounter|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyScan|UCounter|FF2|Q~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyScan|UCounter|FF2|Q~q\);

-- Location: LCCOMB_X46_Y4_N8
\UKeyScan|UCounter|FF3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyScan|UCounter|FF3|Q~0_combout\ = ((\UKeyControl|CurrentState.STATE_SCANNING~q\) # (!\UKeyScan|UCounter|FF0|Q~q\)) # (!\UKeyScan|UCounter|FF1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyScan|UCounter|FF1|Q~q\,
	datac => \UKeyScan|UCounter|FF0|Q~q\,
	datad => \UKeyControl|CurrentState.STATE_SCANNING~q\,
	combout => \UKeyScan|UCounter|FF3|Q~0_combout\);

-- Location: LCCOMB_X46_Y4_N16
\UKeyScan|UCounter|FF3|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyScan|UCounter|FF3|Q~1_combout\ = \UKeyScan|UCounter|FF3|Q~q\ $ (((\UKeyScan|UCounter|FF2|Q~q\ & (!\UKeyScan|UCounter|FF3|Q~0_combout\ & \UKeyScan|UMux|M~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyScan|UCounter|FF2|Q~q\,
	datab => \UKeyScan|UCounter|FF3|Q~0_combout\,
	datac => \UKeyScan|UCounter|FF3|Q~q\,
	datad => \UKeyScan|UMux|M~1_combout\,
	combout => \UKeyScan|UCounter|FF3|Q~1_combout\);

-- Location: FF_X46_Y4_N17
\UKeyScan|UCounter|FF3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyScan|UCounter|FF3|Q~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyScan|UCounter|FF3|Q~q\);

-- Location: LCCOMB_X46_Y4_N26
\UKeyScan|UDEC|I0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyScan|UDEC|I0~combout\ = (\UKeyScan|UCounter|FF2|Q~q\) # (\UKeyScan|UCounter|FF3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UKeyScan|UCounter|FF2|Q~q\,
	datad => \UKeyScan|UCounter|FF3|Q~q\,
	combout => \UKeyScan|UDEC|I0~combout\);

-- Location: LCCOMB_X46_Y4_N24
\UKeyScan|UDEC|I1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyScan|UDEC|I1~combout\ = (\UKeyScan|UCounter|FF2|Q~q\ & !\UKeyScan|UCounter|FF3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UKeyScan|UCounter|FF2|Q~q\,
	datad => \UKeyScan|UCounter|FF3|Q~q\,
	combout => \UKeyScan|UDEC|I1~combout\);

-- Location: LCCOMB_X46_Y4_N18
\UKeyScan|UDEC|I2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyScan|UDEC|I2~combout\ = (!\UKeyScan|UCounter|FF2|Q~q\ & \UKeyScan|UCounter|FF3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UKeyScan|UCounter|FF2|Q~q\,
	datad => \UKeyScan|UCounter|FF3|Q~q\,
	combout => \UKeyScan|UDEC|I2~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Kval <= \Kval~output_o\;

ww_K(0) <= \K[0]~output_o\;

ww_K(1) <= \K[1]~output_o\;

ww_K(2) <= \K[2]~output_o\;

ww_K(3) <= \K[3]~output_o\;

ww_Cl(0) <= \Cl[0]~output_o\;

ww_Cl(1) <= \Cl[1]~output_o\;

ww_Cl(2) <= \Cl[2]~output_o\;
END structure;


