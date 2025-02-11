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

-- DATE "06/02/2023 10:15:44"

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

ENTITY 	OutputBuffer IS
    PORT (
	load : IN std_logic;
	D : IN std_logic_vector(3 DOWNTO 0);
	ACK : IN std_logic;
	OBfree : BUFFER std_logic;
	Dval : BUFFER std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	Q : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END OutputBuffer;

-- Design Ports Information
-- OBfree	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dval	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACK	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF OutputBuffer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ACK : std_logic;
SIGNAL ww_OBfree : std_logic;
SIGNAL ww_Dval : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \UBufferControl|CurrentState.STATE_WR~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \OBfree~output_o\ : std_logic;
SIGNAL \Dval~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ACK~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \UBufferControl|NextState.STATE_PULSING~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \UBufferControl|CurrentState.STATE_PULSING~q\ : std_logic;
SIGNAL \UBufferControl|Selector0~0_combout\ : std_logic;
SIGNAL \UBufferControl|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \UBufferControl|NextState.STATE_WR~0_combout\ : std_logic;
SIGNAL \UBufferControl|CurrentState.STATE_WR~q\ : std_logic;
SIGNAL \UBufferControl|CurrentState.STATE_CLK_ZERO~feeder_combout\ : std_logic;
SIGNAL \UBufferControl|CurrentState.STATE_CLK_ZERO~q\ : std_logic;
SIGNAL \UBufferControl|Selector1~0_combout\ : std_logic;
SIGNAL \UBufferControl|CurrentState.STATE_RECEIVING~q\ : std_logic;
SIGNAL \UBufferControl|OBfree~0_combout\ : std_logic;
SIGNAL \UBufferControl|CurrentState.STATE_WR~clkctrl_outclk\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \UOutputRegister|U0FFD|Q~feeder_combout\ : std_logic;
SIGNAL \UOutputRegister|U0FFD|Q~q\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \UOutputRegister|U1FFD|Q~feeder_combout\ : std_logic;
SIGNAL \UOutputRegister|U1FFD|Q~q\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \UOutputRegister|U2FFD|Q~feeder_combout\ : std_logic;
SIGNAL \UOutputRegister|U2FFD|Q~q\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \UOutputRegister|U3FFD|Q~feeder_combout\ : std_logic;
SIGNAL \UOutputRegister|U3FFD|Q~q\ : std_logic;
SIGNAL \UBufferControl|ALT_INV_OBfree~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_load <= load;
ww_D <= D;
ww_ACK <= ACK;
OBfree <= ww_OBfree;
Dval <= ww_Dval;
ww_clk <= clk;
ww_rst <= rst;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\UBufferControl|CurrentState.STATE_WR~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \UBufferControl|CurrentState.STATE_WR~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\UBufferControl|ALT_INV_OBfree~0_combout\ <= NOT \UBufferControl|OBfree~0_combout\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
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

-- Location: IOOBUF_X0_Y37_N9
\OBfree~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UBufferControl|ALT_INV_OBfree~0_combout\,
	devoe => ww_devoe,
	o => \OBfree~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\Dval~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UBufferControl|OBfree~0_combout\,
	devoe => ww_devoe,
	o => \Dval~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UOutputRegister|U0FFD|Q~q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UOutputRegister|U1FFD|Q~q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UOutputRegister|U2FFD|Q~q\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UOutputRegister|U3FFD|Q~q\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
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

-- Location: IOIBUF_X0_Y37_N22
\ACK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ACK,
	o => \ACK~input_o\);

-- Location: IOIBUF_X0_Y37_N1
\load~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: LCCOMB_X1_Y38_N28
\UBufferControl|NextState.STATE_PULSING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UBufferControl|NextState.STATE_PULSING~0_combout\ = (\ACK~input_o\ & ((\UBufferControl|CurrentState.STATE_PULSING~q\) # (\UBufferControl|CurrentState.STATE_RECEIVING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACK~input_o\,
	datac => \UBufferControl|CurrentState.STATE_PULSING~q\,
	datad => \UBufferControl|CurrentState.STATE_RECEIVING~q\,
	combout => \UBufferControl|NextState.STATE_PULSING~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G1
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

-- Location: FF_X1_Y38_N29
\UBufferControl|CurrentState.STATE_PULSING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UBufferControl|NextState.STATE_PULSING~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UBufferControl|CurrentState.STATE_PULSING~q\);

-- Location: LCCOMB_X1_Y38_N16
\UBufferControl|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UBufferControl|Selector0~0_combout\ = (\ACK~input_o\ & ((\load~input_o\) # ((\UBufferControl|CurrentState.STATE_WAITING~q\)))) # (!\ACK~input_o\ & (!\UBufferControl|CurrentState.STATE_PULSING~q\ & ((\load~input_o\) # 
-- (\UBufferControl|CurrentState.STATE_WAITING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACK~input_o\,
	datab => \load~input_o\,
	datac => \UBufferControl|CurrentState.STATE_WAITING~q\,
	datad => \UBufferControl|CurrentState.STATE_PULSING~q\,
	combout => \UBufferControl|Selector0~0_combout\);

-- Location: FF_X1_Y38_N17
\UBufferControl|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UBufferControl|Selector0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UBufferControl|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X1_Y38_N26
\UBufferControl|NextState.STATE_WR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UBufferControl|NextState.STATE_WR~0_combout\ = (\load~input_o\ & !\UBufferControl|CurrentState.STATE_WAITING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \load~input_o\,
	datad => \UBufferControl|CurrentState.STATE_WAITING~q\,
	combout => \UBufferControl|NextState.STATE_WR~0_combout\);

-- Location: FF_X1_Y38_N27
\UBufferControl|CurrentState.STATE_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UBufferControl|NextState.STATE_WR~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UBufferControl|CurrentState.STATE_WR~q\);

-- Location: LCCOMB_X1_Y38_N24
\UBufferControl|CurrentState.STATE_CLK_ZERO~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UBufferControl|CurrentState.STATE_CLK_ZERO~feeder_combout\ = \UBufferControl|CurrentState.STATE_WR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UBufferControl|CurrentState.STATE_WR~q\,
	combout => \UBufferControl|CurrentState.STATE_CLK_ZERO~feeder_combout\);

-- Location: FF_X1_Y38_N25
\UBufferControl|CurrentState.STATE_CLK_ZERO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UBufferControl|CurrentState.STATE_CLK_ZERO~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UBufferControl|CurrentState.STATE_CLK_ZERO~q\);

-- Location: LCCOMB_X1_Y38_N20
\UBufferControl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UBufferControl|Selector1~0_combout\ = (\UBufferControl|CurrentState.STATE_CLK_ZERO~q\) # ((!\ACK~input_o\ & \UBufferControl|CurrentState.STATE_RECEIVING~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACK~input_o\,
	datac => \UBufferControl|CurrentState.STATE_RECEIVING~q\,
	datad => \UBufferControl|CurrentState.STATE_CLK_ZERO~q\,
	combout => \UBufferControl|Selector1~0_combout\);

-- Location: FF_X1_Y38_N21
\UBufferControl|CurrentState.STATE_RECEIVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UBufferControl|Selector1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UBufferControl|CurrentState.STATE_RECEIVING~q\);

-- Location: LCCOMB_X1_Y38_N30
\UBufferControl|OBfree~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UBufferControl|OBfree~0_combout\ = (\UBufferControl|CurrentState.STATE_RECEIVING~q\) # (\UBufferControl|CurrentState.STATE_PULSING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UBufferControl|CurrentState.STATE_RECEIVING~q\,
	datad => \UBufferControl|CurrentState.STATE_PULSING~q\,
	combout => \UBufferControl|OBfree~0_combout\);

-- Location: CLKCTRL_G4
\UBufferControl|CurrentState.STATE_WR~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UBufferControl|CurrentState.STATE_WR~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UBufferControl|CurrentState.STATE_WR~clkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N1
\D[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LCCOMB_X16_Y1_N0
\UOutputRegister|U0FFD|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UOutputRegister|U0FFD|Q~feeder_combout\ = \D[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[0]~input_o\,
	combout => \UOutputRegister|U0FFD|Q~feeder_combout\);

-- Location: FF_X16_Y1_N1
\UOutputRegister|U0FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UBufferControl|CurrentState.STATE_WR~clkctrl_outclk\,
	d => \UOutputRegister|U0FFD|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UOutputRegister|U0FFD|Q~q\);

-- Location: IOIBUF_X0_Y12_N15
\D[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X1_Y12_N16
\UOutputRegister|U1FFD|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UOutputRegister|U1FFD|Q~feeder_combout\ = \D[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[1]~input_o\,
	combout => \UOutputRegister|U1FFD|Q~feeder_combout\);

-- Location: FF_X1_Y12_N17
\UOutputRegister|U1FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UBufferControl|CurrentState.STATE_WR~clkctrl_outclk\,
	d => \UOutputRegister|U1FFD|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UOutputRegister|U1FFD|Q~q\);

-- Location: IOIBUF_X78_Y33_N22
\D[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LCCOMB_X77_Y33_N16
\UOutputRegister|U2FFD|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UOutputRegister|U2FFD|Q~feeder_combout\ = \D[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[2]~input_o\,
	combout => \UOutputRegister|U2FFD|Q~feeder_combout\);

-- Location: FF_X77_Y33_N17
\UOutputRegister|U2FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UBufferControl|CurrentState.STATE_WR~clkctrl_outclk\,
	d => \UOutputRegister|U2FFD|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UOutputRegister|U2FFD|Q~q\);

-- Location: IOIBUF_X0_Y12_N22
\D[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LCCOMB_X1_Y12_N14
\UOutputRegister|U3FFD|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UOutputRegister|U3FFD|Q~feeder_combout\ = \D[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[3]~input_o\,
	combout => \UOutputRegister|U3FFD|Q~feeder_combout\);

-- Location: FF_X1_Y12_N15
\UOutputRegister|U3FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UBufferControl|CurrentState.STATE_WR~clkctrl_outclk\,
	d => \UOutputRegister|U3FFD|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UOutputRegister|U3FFD|Q~q\);

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

ww_OBfree <= \OBfree~output_o\;

ww_Dval <= \Dval~output_o\;

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;
END structure;


