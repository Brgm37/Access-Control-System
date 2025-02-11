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

-- DATE "03/07/2023 12:09:18"

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

ENTITY 	KeyScan IS
    PORT (
	Clk : IN std_logic;
	Kscan : IN std_logic;
	Ln : IN std_logic_vector(3 DOWNTO 0);
	rst : IN std_logic;
	Cl : OUT std_logic_vector(2 DOWNTO 0);
	K : OUT std_logic_vector(3 DOWNTO 0);
	Kpress : OUT std_logic
	);
END KeyScan;

-- Design Ports Information
-- Cl[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cl[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cl[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[0]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[2]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kpress	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Kscan	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF KeyScan IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Kscan : std_logic;
SIGNAL ww_Ln : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rst : std_logic;
SIGNAL ww_Cl : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_K : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Kpress : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Cl[0]~output_o\ : std_logic;
SIGNAL \Cl[1]~output_o\ : std_logic;
SIGNAL \Cl[2]~output_o\ : std_logic;
SIGNAL \K[0]~output_o\ : std_logic;
SIGNAL \K[1]~output_o\ : std_logic;
SIGNAL \K[2]~output_o\ : std_logic;
SIGNAL \K[3]~output_o\ : std_logic;
SIGNAL \Kpress~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Kscan~input_o\ : std_logic;
SIGNAL \UCounter|FF0|Q~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \UCounter|FF0|Q~q\ : std_logic;
SIGNAL \UCounter|FF1|Q~0_combout\ : std_logic;
SIGNAL \UCounter|FF1|Q~q\ : std_logic;
SIGNAL \UCounter|FF2|Q~0_combout\ : std_logic;
SIGNAL \UCounter|FF2|Q~q\ : std_logic;
SIGNAL \UCounter|FF3|Q~0_combout\ : std_logic;
SIGNAL \UCounter|FF3|Q~1_combout\ : std_logic;
SIGNAL \UCounter|FF3|Q~q\ : std_logic;
SIGNAL \UDEC|I0~combout\ : std_logic;
SIGNAL \UDEC|I1~combout\ : std_logic;
SIGNAL \UDEC|I2~combout\ : std_logic;
SIGNAL \Ln[3]~input_o\ : std_logic;
SIGNAL \Ln[1]~input_o\ : std_logic;
SIGNAL \Ln[0]~input_o\ : std_logic;
SIGNAL \UMux|M~0_combout\ : std_logic;
SIGNAL \Ln[2]~input_o\ : std_logic;
SIGNAL \UMux|M~1_combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \UMux|ALT_INV_M~1_combout\ : std_logic;
SIGNAL \UDEC|ALT_INV_I2~combout\ : std_logic;
SIGNAL \UDEC|ALT_INV_I1~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk <= Clk;
ww_Kscan <= Kscan;
ww_Ln <= Ln;
ww_rst <= rst;
Cl <= ww_Cl;
K <= ww_K;
Kpress <= ww_Kpress;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\UMux|ALT_INV_M~1_combout\ <= NOT \UMux|M~1_combout\;
\UDEC|ALT_INV_I2~combout\ <= NOT \UDEC|I2~combout\;
\UDEC|ALT_INV_I1~combout\ <= NOT \UDEC|I1~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
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

-- Location: IOOBUF_X38_Y0_N9
\Cl[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDEC|I0~combout\,
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
	i => \UDEC|ALT_INV_I1~combout\,
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
	i => \UDEC|ALT_INV_I2~combout\,
	devoe => ww_devoe,
	o => \Cl[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\K[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCounter|FF0|Q~q\,
	devoe => ww_devoe,
	o => \K[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\K[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCounter|FF1|Q~q\,
	devoe => ww_devoe,
	o => \K[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\K[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCounter|FF2|Q~q\,
	devoe => ww_devoe,
	o => \K[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\K[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UCounter|FF3|Q~q\,
	devoe => ww_devoe,
	o => \K[3]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\Kpress~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UMux|ALT_INV_M~1_combout\,
	devoe => ww_devoe,
	o => \Kpress~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G19
\Clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X38_Y0_N1
\Kscan~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Kscan,
	o => \Kscan~input_o\);

-- Location: LCCOMB_X38_Y1_N26
\UCounter|FF0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UCounter|FF0|Q~0_combout\ = \UCounter|FF0|Q~q\ $ (\Kscan~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCounter|FF0|Q~q\,
	datad => \Kscan~input_o\,
	combout => \UCounter|FF0|Q~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
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

-- Location: CLKCTRL_G18
\rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X38_Y1_N27
\UCounter|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \UCounter|FF0|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCounter|FF0|Q~q\);

-- Location: LCCOMB_X38_Y1_N8
\UCounter|FF1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UCounter|FF1|Q~0_combout\ = \UCounter|FF1|Q~q\ $ (((\Kscan~input_o\ & \UCounter|FF0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Kscan~input_o\,
	datac => \UCounter|FF1|Q~q\,
	datad => \UCounter|FF0|Q~q\,
	combout => \UCounter|FF1|Q~0_combout\);

-- Location: FF_X38_Y1_N9
\UCounter|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \UCounter|FF1|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCounter|FF1|Q~q\);

-- Location: LCCOMB_X38_Y1_N16
\UCounter|FF2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UCounter|FF2|Q~0_combout\ = \UCounter|FF2|Q~q\ $ (((\Kscan~input_o\ & (\UCounter|FF1|Q~q\ & \UCounter|FF0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Kscan~input_o\,
	datab => \UCounter|FF1|Q~q\,
	datac => \UCounter|FF2|Q~q\,
	datad => \UCounter|FF0|Q~q\,
	combout => \UCounter|FF2|Q~0_combout\);

-- Location: FF_X38_Y1_N17
\UCounter|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \UCounter|FF2|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCounter|FF2|Q~q\);

-- Location: LCCOMB_X38_Y1_N6
\UCounter|FF3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UCounter|FF3|Q~0_combout\ = (\UCounter|FF0|Q~q\ & (\Kscan~input_o\ & (\UCounter|FF1|Q~q\ & \UCounter|FF2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCounter|FF0|Q~q\,
	datab => \Kscan~input_o\,
	datac => \UCounter|FF1|Q~q\,
	datad => \UCounter|FF2|Q~q\,
	combout => \UCounter|FF3|Q~0_combout\);

-- Location: LCCOMB_X38_Y1_N14
\UCounter|FF3|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UCounter|FF3|Q~1_combout\ = \UCounter|FF3|Q~q\ $ (\UCounter|FF3|Q~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCounter|FF3|Q~q\,
	datad => \UCounter|FF3|Q~0_combout\,
	combout => \UCounter|FF3|Q~1_combout\);

-- Location: FF_X38_Y1_N15
\UCounter|FF3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \UCounter|FF3|Q~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCounter|FF3|Q~q\);

-- Location: LCCOMB_X38_Y1_N20
\UDEC|I0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDEC|I0~combout\ = (\UCounter|FF3|Q~q\) # (\UCounter|FF2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCounter|FF3|Q~q\,
	datad => \UCounter|FF2|Q~q\,
	combout => \UDEC|I0~combout\);

-- Location: LCCOMB_X38_Y1_N22
\UDEC|I1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDEC|I1~combout\ = (!\UCounter|FF3|Q~q\ & \UCounter|FF2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCounter|FF3|Q~q\,
	datad => \UCounter|FF2|Q~q\,
	combout => \UDEC|I1~combout\);

-- Location: LCCOMB_X38_Y1_N28
\UDEC|I2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDEC|I2~combout\ = (\UCounter|FF3|Q~q\ & !\UCounter|FF2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCounter|FF3|Q~q\,
	datad => \UCounter|FF2|Q~q\,
	combout => \UDEC|I2~combout\);

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

-- Location: LCCOMB_X38_Y1_N30
\UMux|M~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMux|M~0_combout\ = (\UCounter|FF0|Q~q\ & ((\Ln[1]~input_o\) # ((\UCounter|FF1|Q~q\)))) # (!\UCounter|FF0|Q~q\ & (((\Ln[0]~input_o\ & !\UCounter|FF1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ln[1]~input_o\,
	datab => \Ln[0]~input_o\,
	datac => \UCounter|FF0|Q~q\,
	datad => \UCounter|FF1|Q~q\,
	combout => \UMux|M~0_combout\);

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

-- Location: LCCOMB_X38_Y1_N12
\UMux|M~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UMux|M~1_combout\ = (\UMux|M~0_combout\ & ((\Ln[3]~input_o\) # ((!\UCounter|FF1|Q~q\)))) # (!\UMux|M~0_combout\ & (((\Ln[2]~input_o\ & \UCounter|FF1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ln[3]~input_o\,
	datab => \UMux|M~0_combout\,
	datac => \Ln[2]~input_o\,
	datad => \UCounter|FF1|Q~q\,
	combout => \UMux|M~1_combout\);

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

ww_Cl(0) <= \Cl[0]~output_o\;

ww_Cl(1) <= \Cl[1]~output_o\;

ww_Cl(2) <= \Cl[2]~output_o\;

ww_K(0) <= \K[0]~output_o\;

ww_K(1) <= \K[1]~output_o\;

ww_K(2) <= \K[2]~output_o\;

ww_K(3) <= \K[3]~output_o\;

ww_Kpress <= \Kpress~output_o\;
END structure;


