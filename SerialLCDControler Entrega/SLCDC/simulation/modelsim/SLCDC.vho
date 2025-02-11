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

-- DATE "05/26/2023 18:02:09"

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

ENTITY 	SLCDC IS
    PORT (
	not_SS : IN std_logic;
	SCLK : IN std_logic;
	SDX : IN std_logic;
	MCLK : IN std_logic;
	E : BUFFER std_logic;
	rst : IN std_logic;
	Dout : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END SLCDC;

-- Design Ports Information
-- E	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDX	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- not_SS	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SLCDC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_not_SS : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_SDX : std_logic;
SIGNAL ww_MCLK : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Dout : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \Dout[0]~output_o\ : std_logic;
SIGNAL \Dout[1]~output_o\ : std_logic;
SIGNAL \Dout[2]~output_o\ : std_logic;
SIGNAL \Dout[3]~output_o\ : std_logic;
SIGNAL \Dout[4]~output_o\ : std_logic;
SIGNAL \SCLK~input_o\ : std_logic;
SIGNAL \MCLK~input_o\ : std_logic;
SIGNAL \MCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \UDispatcher|Selector2~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \UDispatcher|CurrentState.STATE_DONE~q\ : std_logic;
SIGNAL \USerialReceiver|UCounter|FF0|Q~0_combout\ : std_logic;
SIGNAL \not_SS~input_o\ : std_logic;
SIGNAL \USerialReceiver|USerialControl|Selector0~0_combout\ : std_logic;
SIGNAL \USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~feeder_combout\ : std_logic;
SIGNAL \USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\ : std_logic;
SIGNAL \USerialReceiver|UCounter|FF0|Q~q\ : std_logic;
SIGNAL \USerialReceiver|UCounter|FF1|Q~0_combout\ : std_logic;
SIGNAL \USerialReceiver|UCounter|FF1|Q~q\ : std_logic;
SIGNAL \USerialReceiver|UCounter|FF2|Q~0_combout\ : std_logic;
SIGNAL \USerialReceiver|UCounter|FF2|Q~q\ : std_logic;
SIGNAL \USerialReceiver|USerialControl|Selector1~0_combout\ : std_logic;
SIGNAL \USerialReceiver|USerialControl|Selector1~1_combout\ : std_logic;
SIGNAL \USerialReceiver|USerialControl|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \USerialReceiver|USerialControl|Selector2~0_combout\ : std_logic;
SIGNAL \USerialReceiver|USerialControl|Selector2~1_combout\ : std_logic;
SIGNAL \USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\ : std_logic;
SIGNAL \UDispatcher|Selector1~0_combout\ : std_logic;
SIGNAL \UDispatcher|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \UDispatcher|Selector0~0_combout\ : std_logic;
SIGNAL \UDispatcher|CurrentState.STATE_DATA~q\ : std_logic;
SIGNAL \SDX~input_o\ : std_logic;
SIGNAL \USerialReceiver|UshiftReg5|FF0|Q~feeder_combout\ : std_logic;
SIGNAL \USerialReceiver|UshiftReg5|FF0|Q~q\ : std_logic;
SIGNAL \USerialReceiver|UshiftReg5|FF1|Q~feeder_combout\ : std_logic;
SIGNAL \USerialReceiver|UshiftReg5|FF1|Q~q\ : std_logic;
SIGNAL \USerialReceiver|UshiftReg5|FF2|Q~feeder_combout\ : std_logic;
SIGNAL \USerialReceiver|UshiftReg5|FF2|Q~q\ : std_logic;
SIGNAL \USerialReceiver|UshiftReg5|FF3|Q~feeder_combout\ : std_logic;
SIGNAL \USerialReceiver|UshiftReg5|FF3|Q~q\ : std_logic;
SIGNAL \USerialReceiver|UshiftReg5|FF4|Q~feeder_combout\ : std_logic;
SIGNAL \USerialReceiver|UshiftReg5|FF4|Q~q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_not_SS <= not_SS;
ww_SCLK <= SCLK;
ww_SDX <= SDX;
ww_MCLK <= MCLK;
E <= ww_E;
ww_rst <= rst;
Dout <= ww_Dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\MCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MCLK~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
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

-- Location: IOOBUF_X49_Y54_N9
\E~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDispatcher|CurrentState.STATE_DATA~q\,
	devoe => ww_devoe,
	o => \E~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\Dout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USerialReceiver|UshiftReg5|FF0|Q~q\,
	devoe => ww_devoe,
	o => \Dout[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\Dout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USerialReceiver|UshiftReg5|FF1|Q~q\,
	devoe => ww_devoe,
	o => \Dout[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\Dout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USerialReceiver|UshiftReg5|FF2|Q~q\,
	devoe => ww_devoe,
	o => \Dout[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\Dout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USerialReceiver|UshiftReg5|FF3|Q~q\,
	devoe => ww_devoe,
	o => \Dout[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\Dout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USerialReceiver|UshiftReg5|FF4|Q~q\,
	devoe => ww_devoe,
	o => \Dout[4]~output_o\);

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X50_Y53_N22
\UDispatcher|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDispatcher|Selector2~0_combout\ = (\UDispatcher|CurrentState.STATE_DATA~q\) # ((\USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\ & \UDispatcher|CurrentState.STATE_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\,
	datac => \UDispatcher|CurrentState.STATE_DONE~q\,
	datad => \UDispatcher|CurrentState.STATE_DATA~q\,
	combout => \UDispatcher|Selector2~0_combout\);

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

-- Location: FF_X50_Y53_N23
\UDispatcher|CurrentState.STATE_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~input_o\,
	d => \UDispatcher|Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDispatcher|CurrentState.STATE_DONE~q\);

-- Location: LCCOMB_X50_Y53_N14
\USerialReceiver|UCounter|FF0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|UCounter|FF0|Q~0_combout\ = !\USerialReceiver|UCounter|FF0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \USerialReceiver|UCounter|FF0|Q~q\,
	combout => \USerialReceiver|UCounter|FF0|Q~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
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

-- Location: LCCOMB_X50_Y53_N2
\USerialReceiver|USerialControl|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|USerialControl|Selector0~0_combout\ = (\not_SS~input_o\ & (\USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\ & ((!\USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\) # 
-- (!\UDispatcher|CurrentState.STATE_DONE~q\)))) # (!\not_SS~input_o\ & (((!\USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\)) # (!\UDispatcher|CurrentState.STATE_DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_SS~input_o\,
	datab => \UDispatcher|CurrentState.STATE_DONE~q\,
	datac => \USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\,
	datad => \USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\,
	combout => \USerialReceiver|USerialControl|Selector0~0_combout\);

-- Location: LCCOMB_X50_Y53_N4
\USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~feeder_combout\ = \USerialReceiver|USerialControl|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \USerialReceiver|USerialControl|Selector0~0_combout\,
	combout => \USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~feeder_combout\);

-- Location: FF_X50_Y53_N5
\USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\);

-- Location: FF_X50_Y53_N15
\USerialReceiver|UCounter|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~input_o\,
	d => \USerialReceiver|UCounter|FF0|Q~0_combout\,
	clrn => \USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|UCounter|FF0|Q~q\);

-- Location: LCCOMB_X50_Y53_N20
\USerialReceiver|UCounter|FF1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|UCounter|FF1|Q~0_combout\ = \USerialReceiver|UCounter|FF0|Q~q\ $ (\USerialReceiver|UCounter|FF1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \USerialReceiver|UCounter|FF0|Q~q\,
	datac => \USerialReceiver|UCounter|FF1|Q~q\,
	combout => \USerialReceiver|UCounter|FF1|Q~0_combout\);

-- Location: FF_X50_Y53_N21
\USerialReceiver|UCounter|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~input_o\,
	d => \USerialReceiver|UCounter|FF1|Q~0_combout\,
	clrn => \USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|UCounter|FF1|Q~q\);

-- Location: LCCOMB_X50_Y53_N28
\USerialReceiver|UCounter|FF2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|UCounter|FF2|Q~0_combout\ = \USerialReceiver|UCounter|FF2|Q~q\ $ (((\USerialReceiver|UCounter|FF0|Q~q\ & \USerialReceiver|UCounter|FF1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \USerialReceiver|UCounter|FF0|Q~q\,
	datac => \USerialReceiver|UCounter|FF2|Q~q\,
	datad => \USerialReceiver|UCounter|FF1|Q~q\,
	combout => \USerialReceiver|UCounter|FF2|Q~0_combout\);

-- Location: FF_X50_Y53_N29
\USerialReceiver|UCounter|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~input_o\,
	d => \USerialReceiver|UCounter|FF2|Q~0_combout\,
	clrn => \USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|UCounter|FF2|Q~q\);

-- Location: LCCOMB_X50_Y53_N6
\USerialReceiver|USerialControl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|USerialControl|Selector1~0_combout\ = (\USerialReceiver|USerialControl|CurrentState.STATE_WAITING~q\ & (((\USerialReceiver|UCounter|FF1|Q~q\) # (!\USerialReceiver|UCounter|FF2|Q~q\)) # (!\USerialReceiver|UCounter|FF0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USerialReceiver|UCounter|FF0|Q~q\,
	datab => \USerialReceiver|UCounter|FF1|Q~q\,
	datac => \USerialReceiver|UCounter|FF2|Q~q\,
	datad => \USerialReceiver|USerialControl|CurrentState.STATE_WAITING~q\,
	combout => \USerialReceiver|USerialControl|Selector1~0_combout\);

-- Location: LCCOMB_X50_Y53_N18
\USerialReceiver|USerialControl|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|USerialControl|Selector1~1_combout\ = (\USerialReceiver|USerialControl|Selector1~0_combout\) # ((!\USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\ & !\not_SS~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USerialReceiver|USerialControl|Selector1~0_combout\,
	datac => \USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\,
	datad => \not_SS~input_o\,
	combout => \USerialReceiver|USerialControl|Selector1~1_combout\);

-- Location: FF_X50_Y53_N19
\USerialReceiver|USerialControl|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \USerialReceiver|USerialControl|Selector1~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|USerialControl|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X50_Y53_N12
\USerialReceiver|USerialControl|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|USerialControl|Selector2~0_combout\ = (\USerialReceiver|UCounter|FF0|Q~q\ & (!\USerialReceiver|UCounter|FF1|Q~q\ & (\USerialReceiver|UCounter|FF2|Q~q\ & \USerialReceiver|USerialControl|CurrentState.STATE_WAITING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USerialReceiver|UCounter|FF0|Q~q\,
	datab => \USerialReceiver|UCounter|FF1|Q~q\,
	datac => \USerialReceiver|UCounter|FF2|Q~q\,
	datad => \USerialReceiver|USerialControl|CurrentState.STATE_WAITING~q\,
	combout => \USerialReceiver|USerialControl|Selector2~0_combout\);

-- Location: LCCOMB_X50_Y53_N10
\USerialReceiver|USerialControl|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|USerialControl|Selector2~1_combout\ = (\USerialReceiver|USerialControl|Selector2~0_combout\) # ((!\UDispatcher|CurrentState.STATE_DONE~q\ & \USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UDispatcher|CurrentState.STATE_DONE~q\,
	datac => \USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\,
	datad => \USerialReceiver|USerialControl|Selector2~0_combout\,
	combout => \USerialReceiver|USerialControl|Selector2~1_combout\);

-- Location: FF_X50_Y53_N11
\USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \USerialReceiver|USerialControl|Selector2~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\);

-- Location: LCCOMB_X50_Y53_N8
\UDispatcher|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDispatcher|Selector1~0_combout\ = (\UDispatcher|CurrentState.STATE_DATA~q\) # (\USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UDispatcher|CurrentState.STATE_DATA~q\,
	datad => \USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\,
	combout => \UDispatcher|Selector1~0_combout\);

-- Location: FF_X50_Y53_N9
\UDispatcher|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~input_o\,
	d => \UDispatcher|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDispatcher|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X50_Y53_N16
\UDispatcher|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDispatcher|Selector0~0_combout\ = (!\UDispatcher|CurrentState.STATE_WAITING~q\ & \USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UDispatcher|CurrentState.STATE_WAITING~q\,
	datad => \USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\,
	combout => \UDispatcher|Selector0~0_combout\);

-- Location: FF_X50_Y53_N17
\UDispatcher|CurrentState.STATE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~input_o\,
	d => \UDispatcher|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDispatcher|CurrentState.STATE_DATA~q\);

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: LCCOMB_X51_Y53_N0
\USerialReceiver|UshiftReg5|FF0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|UshiftReg5|FF0|Q~feeder_combout\ = \SDX~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDX~input_o\,
	combout => \USerialReceiver|UshiftReg5|FF0|Q~feeder_combout\);

-- Location: FF_X51_Y53_N1
\USerialReceiver|UshiftReg5|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~input_o\,
	d => \USerialReceiver|UshiftReg5|FF0|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USerialReceiver|USerialControl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|UshiftReg5|FF0|Q~q\);

-- Location: LCCOMB_X51_Y53_N2
\USerialReceiver|UshiftReg5|FF1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|UshiftReg5|FF1|Q~feeder_combout\ = \USerialReceiver|UshiftReg5|FF0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \USerialReceiver|UshiftReg5|FF0|Q~q\,
	combout => \USerialReceiver|UshiftReg5|FF1|Q~feeder_combout\);

-- Location: FF_X51_Y53_N3
\USerialReceiver|UshiftReg5|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~input_o\,
	d => \USerialReceiver|UshiftReg5|FF1|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USerialReceiver|USerialControl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|UshiftReg5|FF1|Q~q\);

-- Location: LCCOMB_X51_Y53_N16
\USerialReceiver|UshiftReg5|FF2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|UshiftReg5|FF2|Q~feeder_combout\ = \USerialReceiver|UshiftReg5|FF1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \USerialReceiver|UshiftReg5|FF1|Q~q\,
	combout => \USerialReceiver|UshiftReg5|FF2|Q~feeder_combout\);

-- Location: FF_X51_Y53_N17
\USerialReceiver|UshiftReg5|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~input_o\,
	d => \USerialReceiver|UshiftReg5|FF2|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USerialReceiver|USerialControl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|UshiftReg5|FF2|Q~q\);

-- Location: LCCOMB_X51_Y53_N18
\USerialReceiver|UshiftReg5|FF3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|UshiftReg5|FF3|Q~feeder_combout\ = \USerialReceiver|UshiftReg5|FF2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \USerialReceiver|UshiftReg5|FF2|Q~q\,
	combout => \USerialReceiver|UshiftReg5|FF3|Q~feeder_combout\);

-- Location: FF_X51_Y53_N19
\USerialReceiver|UshiftReg5|FF3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~input_o\,
	d => \USerialReceiver|UshiftReg5|FF3|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USerialReceiver|USerialControl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|UshiftReg5|FF3|Q~q\);

-- Location: LCCOMB_X51_Y53_N24
\USerialReceiver|UshiftReg5|FF4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|UshiftReg5|FF4|Q~feeder_combout\ = \USerialReceiver|UshiftReg5|FF3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \USerialReceiver|UshiftReg5|FF3|Q~q\,
	combout => \USerialReceiver|UshiftReg5|FF4|Q~feeder_combout\);

-- Location: FF_X51_Y53_N25
\USerialReceiver|UshiftReg5|FF4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~input_o\,
	d => \USerialReceiver|UshiftReg5|FF4|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USerialReceiver|USerialControl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|UshiftReg5|FF4|Q~q\);

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

ww_E <= \E~output_o\;

ww_Dout(0) <= \Dout[0]~output_o\;

ww_Dout(1) <= \Dout[1]~output_o\;

ww_Dout(2) <= \Dout[2]~output_o\;

ww_Dout(3) <= \Dout[3]~output_o\;

ww_Dout(4) <= \Dout[4]~output_o\;
END structure;


