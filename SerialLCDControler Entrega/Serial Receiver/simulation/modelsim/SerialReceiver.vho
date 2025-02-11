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

-- DATE "05/02/2023 11:47:08"

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

ENTITY 	SerialReceiver IS
    PORT (
	SDX : IN std_logic;
	SCLK : IN std_logic;
	MCLK : IN std_logic;
	not_SS : IN std_logic;
	accept : IN std_logic;
	D : BUFFER std_logic_vector(4 DOWNTO 0);
	reset : IN std_logic;
	DXval : BUFFER std_logic
	);
END SerialReceiver;

-- Design Ports Information
-- D[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DXval	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDX	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accept	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- not_SS	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SerialReceiver IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SDX : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_MCLK : std_logic;
SIGNAL ww_not_SS : std_logic;
SIGNAL ww_accept : std_logic;
SIGNAL ww_D : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_DXval : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \D[0]~output_o\ : std_logic;
SIGNAL \D[1]~output_o\ : std_logic;
SIGNAL \D[2]~output_o\ : std_logic;
SIGNAL \D[3]~output_o\ : std_logic;
SIGNAL \D[4]~output_o\ : std_logic;
SIGNAL \DXval~output_o\ : std_logic;
SIGNAL \SCLK~input_o\ : std_logic;
SIGNAL \SCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SDX~input_o\ : std_logic;
SIGNAL \UshiftReg5|FF0|Q~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \UCounter|FF0|Q~0_combout\ : std_logic;
SIGNAL \MCLK~input_o\ : std_logic;
SIGNAL \MCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \accept~input_o\ : std_logic;
SIGNAL \not_SS~input_o\ : std_logic;
SIGNAL \UCounter|FF2|Q~0_combout\ : std_logic;
SIGNAL \UCounter|FF2|Q~q\ : std_logic;
SIGNAL \USerialControl|Selector1~1_combout\ : std_logic;
SIGNAL \USerialControl|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \USerialControl|Selector2~0_combout\ : std_logic;
SIGNAL \USerialControl|Selector2~1_combout\ : std_logic;
SIGNAL \USerialControl|CurrentState.STATE_ACCEPTED~q\ : std_logic;
SIGNAL \USerialControl|Selector0~0_combout\ : std_logic;
SIGNAL \USerialControl|CurrentState.STATE_RECEIVING~feeder_combout\ : std_logic;
SIGNAL \USerialControl|CurrentState.STATE_RECEIVING~q\ : std_logic;
SIGNAL \UCounter|FF0|Q~q\ : std_logic;
SIGNAL \UCounter|FF1|Q~0_combout\ : std_logic;
SIGNAL \UCounter|FF1|Q~q\ : std_logic;
SIGNAL \USerialControl|Selector1~0_combout\ : std_logic;
SIGNAL \UshiftReg5|FF0|Q~q\ : std_logic;
SIGNAL \UshiftReg5|FF1|Q~feeder_combout\ : std_logic;
SIGNAL \UshiftReg5|FF1|Q~q\ : std_logic;
SIGNAL \UshiftReg5|FF2|Q~feeder_combout\ : std_logic;
SIGNAL \UshiftReg5|FF2|Q~q\ : std_logic;
SIGNAL \UshiftReg5|FF3|Q~feeder_combout\ : std_logic;
SIGNAL \UshiftReg5|FF3|Q~q\ : std_logic;
SIGNAL \UshiftReg5|FF4|Q~feeder_combout\ : std_logic;
SIGNAL \UshiftReg5|FF4|Q~q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SDX <= SDX;
ww_SCLK <= SCLK;
ww_MCLK <= MCLK;
ww_not_SS <= not_SS;
ww_accept <= accept;
D <= ww_D;
ww_reset <= reset;
DXval <= ww_DXval;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\MCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MCLK~input_o\);

\SCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCLK~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X31_Y39_N23
\D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UshiftReg5|FF0|Q~q\,
	devoe => ww_devoe,
	o => \D[0]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UshiftReg5|FF1|Q~q\,
	devoe => ww_devoe,
	o => \D[1]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UshiftReg5|FF2|Q~q\,
	devoe => ww_devoe,
	o => \D[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UshiftReg5|FF3|Q~q\,
	devoe => ww_devoe,
	o => \D[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UshiftReg5|FF4|Q~q\,
	devoe => ww_devoe,
	o => \D[4]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\DXval~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USerialControl|CurrentState.STATE_ACCEPTED~q\,
	devoe => ww_devoe,
	o => \DXval~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\SCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCLK,
	o => \SCLK~input_o\);

-- Location: CLKCTRL_G3
\SCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SCLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y39_N1
\SDX~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDX,
	o => \SDX~input_o\);

-- Location: LCCOMB_X31_Y38_N28
\UshiftReg5|FF0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UshiftReg5|FF0|Q~feeder_combout\ = \SDX~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDX~input_o\,
	combout => \UshiftReg5|FF0|Q~feeder_combout\);

-- Location: IOIBUF_X0_Y23_N15
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X30_Y38_N16
\UCounter|FF0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UCounter|FF0|Q~0_combout\ = !\UCounter|FF0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCounter|FF0|Q~q\,
	combout => \UCounter|FF0|Q~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
\MCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCLK,
	o => \MCLK~input_o\);

-- Location: CLKCTRL_G4
\MCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MCLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X29_Y39_N15
\accept~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accept,
	o => \accept~input_o\);

-- Location: IOIBUF_X31_Y39_N15
\not_SS~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_not_SS,
	o => \not_SS~input_o\);

-- Location: LCCOMB_X30_Y38_N6
\UCounter|FF2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UCounter|FF2|Q~0_combout\ = \UCounter|FF2|Q~q\ $ (((\UCounter|FF1|Q~q\ & \UCounter|FF0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCounter|FF1|Q~q\,
	datac => \UCounter|FF2|Q~q\,
	datad => \UCounter|FF0|Q~q\,
	combout => \UCounter|FF2|Q~0_combout\);

-- Location: FF_X30_Y38_N7
\UCounter|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \UCounter|FF2|Q~0_combout\,
	clrn => \USerialControl|CurrentState.STATE_RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCounter|FF2|Q~q\);

-- Location: LCCOMB_X31_Y38_N18
\USerialControl|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialControl|Selector1~1_combout\ = (\USerialControl|Selector1~0_combout\) # ((!\USerialControl|CurrentState.STATE_RECEIVING~q\ & !\not_SS~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \USerialControl|CurrentState.STATE_RECEIVING~q\,
	datac => \not_SS~input_o\,
	datad => \USerialControl|Selector1~0_combout\,
	combout => \USerialControl|Selector1~1_combout\);

-- Location: FF_X31_Y38_N19
\USerialControl|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \USerialControl|Selector1~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialControl|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X30_Y38_N28
\USerialControl|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialControl|Selector2~0_combout\ = (!\UCounter|FF1|Q~q\ & (\UCounter|FF0|Q~q\ & (\UCounter|FF2|Q~q\ & \USerialControl|CurrentState.STATE_WAITING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCounter|FF1|Q~q\,
	datab => \UCounter|FF0|Q~q\,
	datac => \UCounter|FF2|Q~q\,
	datad => \USerialControl|CurrentState.STATE_WAITING~q\,
	combout => \USerialControl|Selector2~0_combout\);

-- Location: LCCOMB_X30_Y38_N20
\USerialControl|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialControl|Selector2~1_combout\ = (\USerialControl|Selector2~0_combout\) # ((!\accept~input_o\ & \USerialControl|CurrentState.STATE_ACCEPTED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accept~input_o\,
	datac => \USerialControl|CurrentState.STATE_ACCEPTED~q\,
	datad => \USerialControl|Selector2~0_combout\,
	combout => \USerialControl|Selector2~1_combout\);

-- Location: FF_X30_Y38_N21
\USerialControl|CurrentState.STATE_ACCEPTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \USerialControl|Selector2~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialControl|CurrentState.STATE_ACCEPTED~q\);

-- Location: LCCOMB_X30_Y38_N24
\USerialControl|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialControl|Selector0~0_combout\ = (\accept~input_o\ & (!\USerialControl|CurrentState.STATE_ACCEPTED~q\ & ((\USerialControl|CurrentState.STATE_RECEIVING~q\) # (!\not_SS~input_o\)))) # (!\accept~input_o\ & 
-- (((\USerialControl|CurrentState.STATE_RECEIVING~q\)) # (!\not_SS~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accept~input_o\,
	datab => \not_SS~input_o\,
	datac => \USerialControl|CurrentState.STATE_RECEIVING~q\,
	datad => \USerialControl|CurrentState.STATE_ACCEPTED~q\,
	combout => \USerialControl|Selector0~0_combout\);

-- Location: LCCOMB_X30_Y38_N22
\USerialControl|CurrentState.STATE_RECEIVING~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialControl|CurrentState.STATE_RECEIVING~feeder_combout\ = \USerialControl|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \USerialControl|Selector0~0_combout\,
	combout => \USerialControl|CurrentState.STATE_RECEIVING~feeder_combout\);

-- Location: FF_X30_Y38_N23
\USerialControl|CurrentState.STATE_RECEIVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \USerialControl|CurrentState.STATE_RECEIVING~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialControl|CurrentState.STATE_RECEIVING~q\);

-- Location: FF_X30_Y38_N17
\UCounter|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \UCounter|FF0|Q~0_combout\,
	clrn => \USerialControl|CurrentState.STATE_RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCounter|FF0|Q~q\);

-- Location: LCCOMB_X30_Y38_N26
\UCounter|FF1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UCounter|FF1|Q~0_combout\ = \UCounter|FF1|Q~q\ $ (\UCounter|FF0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCounter|FF1|Q~q\,
	datad => \UCounter|FF0|Q~q\,
	combout => \UCounter|FF1|Q~0_combout\);

-- Location: FF_X30_Y38_N27
\UCounter|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \UCounter|FF1|Q~0_combout\,
	clrn => \USerialControl|CurrentState.STATE_RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCounter|FF1|Q~q\);

-- Location: LCCOMB_X31_Y38_N24
\USerialControl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialControl|Selector1~0_combout\ = (\USerialControl|CurrentState.STATE_WAITING~q\ & ((\UCounter|FF1|Q~q\) # ((!\UCounter|FF0|Q~q\) # (!\UCounter|FF2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCounter|FF1|Q~q\,
	datab => \UCounter|FF2|Q~q\,
	datac => \UCounter|FF0|Q~q\,
	datad => \USerialControl|CurrentState.STATE_WAITING~q\,
	combout => \USerialControl|Selector1~0_combout\);

-- Location: FF_X31_Y38_N29
\UshiftReg5|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \UshiftReg5|FF0|Q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \USerialControl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UshiftReg5|FF0|Q~q\);

-- Location: LCCOMB_X31_Y38_N26
\UshiftReg5|FF1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UshiftReg5|FF1|Q~feeder_combout\ = \UshiftReg5|FF0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UshiftReg5|FF0|Q~q\,
	combout => \UshiftReg5|FF1|Q~feeder_combout\);

-- Location: FF_X31_Y38_N27
\UshiftReg5|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \UshiftReg5|FF1|Q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \USerialControl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UshiftReg5|FF1|Q~q\);

-- Location: LCCOMB_X31_Y38_N16
\UshiftReg5|FF2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UshiftReg5|FF2|Q~feeder_combout\ = \UshiftReg5|FF1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UshiftReg5|FF1|Q~q\,
	combout => \UshiftReg5|FF2|Q~feeder_combout\);

-- Location: FF_X31_Y38_N17
\UshiftReg5|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \UshiftReg5|FF2|Q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \USerialControl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UshiftReg5|FF2|Q~q\);

-- Location: LCCOMB_X31_Y38_N22
\UshiftReg5|FF3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UshiftReg5|FF3|Q~feeder_combout\ = \UshiftReg5|FF2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UshiftReg5|FF2|Q~q\,
	combout => \UshiftReg5|FF3|Q~feeder_combout\);

-- Location: FF_X31_Y38_N23
\UshiftReg5|FF3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \UshiftReg5|FF3|Q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \USerialControl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UshiftReg5|FF3|Q~q\);

-- Location: LCCOMB_X31_Y38_N20
\UshiftReg5|FF4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UshiftReg5|FF4|Q~feeder_combout\ = \UshiftReg5|FF3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UshiftReg5|FF3|Q~q\,
	combout => \UshiftReg5|FF4|Q~feeder_combout\);

-- Location: FF_X31_Y38_N21
\UshiftReg5|FF4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \UshiftReg5|FF4|Q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \USerialControl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UshiftReg5|FF4|Q~q\);

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

ww_D(0) <= \D[0]~output_o\;

ww_D(1) <= \D[1]~output_o\;

ww_D(2) <= \D[2]~output_o\;

ww_D(3) <= \D[3]~output_o\;

ww_D(4) <= \D[4]~output_o\;

ww_DXval <= \DXval~output_o\;
END structure;


