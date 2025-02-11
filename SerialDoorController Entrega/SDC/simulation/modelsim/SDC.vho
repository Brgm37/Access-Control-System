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

-- DATE "05/30/2023 09:12:05"

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

ENTITY 	SDC IS
    PORT (
	not_SS : IN std_logic;
	SCLK : IN std_logic;
	SDX : IN std_logic;
	MCLK : IN std_logic;
	busy : BUFFER std_logic;
	Sclose : IN std_logic;
	Sopen : IN std_logic;
	Psensor : IN std_logic;
	OnOff : BUFFER std_logic;
	rst : IN std_logic;
	Dout : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END SDC;

-- Design Ports Information
-- busy	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OnOff	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[0]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sopen	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sclose	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Psensor	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- not_SS	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDX	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SDC IS
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
SIGNAL ww_busy : std_logic;
SIGNAL ww_Sclose : std_logic;
SIGNAL ww_Sopen : std_logic;
SIGNAL ww_Psensor : std_logic;
SIGNAL ww_OnOff : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Dout : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \busy~output_o\ : std_logic;
SIGNAL \OnOff~output_o\ : std_logic;
SIGNAL \Dout[0]~output_o\ : std_logic;
SIGNAL \Dout[1]~output_o\ : std_logic;
SIGNAL \Dout[2]~output_o\ : std_logic;
SIGNAL \Dout[3]~output_o\ : std_logic;
SIGNAL \Dout[4]~output_o\ : std_logic;
SIGNAL \MCLK~input_o\ : std_logic;
SIGNAL \MCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Sopen~input_o\ : std_logic;
SIGNAL \Sclose~input_o\ : std_logic;
SIGNAL \SCLK~input_o\ : std_logic;
SIGNAL \SCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SDX~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \USerialReceiver|counter1|FF0|Q~0_combout\ : std_logic;
SIGNAL \not_SS~input_o\ : std_logic;
SIGNAL \USerialReceiver|serialControl1|Selector0~0_combout\ : std_logic;
SIGNAL \USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~feeder_combout\ : std_logic;
SIGNAL \USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\ : std_logic;
SIGNAL \USerialReceiver|counter1|FF0|Q~q\ : std_logic;
SIGNAL \USerialReceiver|counter1|FF1|Q~0_combout\ : std_logic;
SIGNAL \USerialReceiver|counter1|FF1|Q~q\ : std_logic;
SIGNAL \USerialReceiver|counter1|FF2|Q~0_combout\ : std_logic;
SIGNAL \USerialReceiver|counter1|FF2|Q~q\ : std_logic;
SIGNAL \USerialReceiver|serialControl1|Selector1~1_combout\ : std_logic;
SIGNAL \USerialReceiver|serialControl1|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \USerialReceiver|serialControl1|Selector1~0_combout\ : std_logic;
SIGNAL \USerialReceiver|shiftReg51|FF0|Q~q\ : std_logic;
SIGNAL \UDispatcher|Selector1~1_combout\ : std_logic;
SIGNAL \UDispatcher|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \UDispatcher|Selector2~1_combout\ : std_logic;
SIGNAL \Psensor~input_o\ : std_logic;
SIGNAL \UDispatcher|Selector3~0_combout\ : std_logic;
SIGNAL \UDispatcher|Selector3~1_combout\ : std_logic;
SIGNAL \UDispatcher|CurrentState.STATE_SENSOR~q\ : std_logic;
SIGNAL \UDispatcher|Selector4~0_combout\ : std_logic;
SIGNAL \UDispatcher|CurrentState.STATE_SENSOR_OPEN~q\ : std_logic;
SIGNAL \UDispatcher|Selector2~0_combout\ : std_logic;
SIGNAL \UDispatcher|Selector2~2_combout\ : std_logic;
SIGNAL \UDispatcher|CurrentState.STATE_CLOSE~q\ : std_logic;
SIGNAL \UDispatcher|Selector0~0_combout\ : std_logic;
SIGNAL \UDispatcher|Selector0~1_combout\ : std_logic;
SIGNAL \UDispatcher|CurrentState.STATE_OPEN~q\ : std_logic;
SIGNAL \UDispatcher|Selector1~0_combout\ : std_logic;
SIGNAL \USerialReceiver|serialControl1|Selector2~0_combout\ : std_logic;
SIGNAL \USerialReceiver|serialControl1|Selector2~1_combout\ : std_logic;
SIGNAL \USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\ : std_logic;
SIGNAL \UDispatcher|OnOff~0_combout\ : std_logic;
SIGNAL \USerialReceiver|shiftReg51|FF1|Q~feeder_combout\ : std_logic;
SIGNAL \USerialReceiver|shiftReg51|FF1|Q~q\ : std_logic;
SIGNAL \USerialReceiver|shiftReg51|FF2|Q~feeder_combout\ : std_logic;
SIGNAL \USerialReceiver|shiftReg51|FF2|Q~q\ : std_logic;
SIGNAL \USerialReceiver|shiftReg51|FF3|Q~feeder_combout\ : std_logic;
SIGNAL \USerialReceiver|shiftReg51|FF3|Q~q\ : std_logic;
SIGNAL \USerialReceiver|shiftReg51|FF4|Q~feeder_combout\ : std_logic;
SIGNAL \USerialReceiver|shiftReg51|FF4|Q~q\ : std_logic;
SIGNAL \UDispatcher|Dout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \UDispatcher|ALT_INV_OnOff~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

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
busy <= ww_busy;
ww_Sclose <= Sclose;
ww_Sopen <= Sopen;
ww_Psensor <= Psensor;
OnOff <= ww_OnOff;
ww_rst <= rst;
Dout <= ww_Dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\MCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MCLK~input_o\);

\SCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCLK~input_o\);
\UDispatcher|ALT_INV_OnOff~0_combout\ <= NOT \UDispatcher|OnOff~0_combout\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N12
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

-- Location: IOOBUF_X74_Y54_N9
\busy~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\,
	devoe => ww_devoe,
	o => \busy~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\OnOff~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDispatcher|ALT_INV_OnOff~0_combout\,
	devoe => ww_devoe,
	o => \OnOff~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\Dout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDispatcher|Dout\(0),
	devoe => ww_devoe,
	o => \Dout[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\Dout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USerialReceiver|shiftReg51|FF1|Q~q\,
	devoe => ww_devoe,
	o => \Dout[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\Dout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USerialReceiver|shiftReg51|FF2|Q~q\,
	devoe => ww_devoe,
	o => \Dout[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\Dout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USerialReceiver|shiftReg51|FF3|Q~q\,
	devoe => ww_devoe,
	o => \Dout[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\Dout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USerialReceiver|shiftReg51|FF4|Q~q\,
	devoe => ww_devoe,
	o => \Dout[4]~output_o\);

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

-- Location: IOIBUF_X74_Y54_N1
\Sopen~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sopen,
	o => \Sopen~input_o\);

-- Location: IOIBUF_X71_Y54_N29
\Sclose~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sclose,
	o => \Sclose~input_o\);

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

-- Location: IOIBUF_X74_Y54_N15
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

-- Location: IOIBUF_X0_Y23_N15
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

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X75_Y51_N20
\USerialReceiver|counter1|FF0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|counter1|FF0|Q~0_combout\ = !\USerialReceiver|counter1|FF0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \USerialReceiver|counter1|FF0|Q~q\,
	combout => \USerialReceiver|counter1|FF0|Q~0_combout\);

-- Location: IOIBUF_X78_Y49_N8
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

-- Location: LCCOMB_X75_Y51_N16
\USerialReceiver|serialControl1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|serialControl1|Selector0~0_combout\ = (\not_SS~input_o\ & (\USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\ & ((\UDispatcher|Selector1~0_combout\) # (!\USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\)))) # 
-- (!\not_SS~input_o\ & ((\UDispatcher|Selector1~0_combout\) # ((!\USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \not_SS~input_o\,
	datab => \UDispatcher|Selector1~0_combout\,
	datac => \USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\,
	datad => \USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\,
	combout => \USerialReceiver|serialControl1|Selector0~0_combout\);

-- Location: LCCOMB_X75_Y51_N14
\USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~feeder_combout\ = \USerialReceiver|serialControl1|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \USerialReceiver|serialControl1|Selector0~0_combout\,
	combout => \USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~feeder_combout\);

-- Location: FF_X75_Y51_N15
\USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\);

-- Location: FF_X75_Y51_N21
\USerialReceiver|counter1|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \USerialReceiver|counter1|FF0|Q~0_combout\,
	clrn => \USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|counter1|FF0|Q~q\);

-- Location: LCCOMB_X75_Y51_N28
\USerialReceiver|counter1|FF1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|counter1|FF1|Q~0_combout\ = \USerialReceiver|counter1|FF0|Q~q\ $ (\USerialReceiver|counter1|FF1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USerialReceiver|counter1|FF0|Q~q\,
	datac => \USerialReceiver|counter1|FF1|Q~q\,
	combout => \USerialReceiver|counter1|FF1|Q~0_combout\);

-- Location: FF_X75_Y51_N29
\USerialReceiver|counter1|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \USerialReceiver|counter1|FF1|Q~0_combout\,
	clrn => \USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|counter1|FF1|Q~q\);

-- Location: LCCOMB_X75_Y51_N30
\USerialReceiver|counter1|FF2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|counter1|FF2|Q~0_combout\ = \USerialReceiver|counter1|FF2|Q~q\ $ (((\USerialReceiver|counter1|FF0|Q~q\ & \USerialReceiver|counter1|FF1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USerialReceiver|counter1|FF0|Q~q\,
	datac => \USerialReceiver|counter1|FF2|Q~q\,
	datad => \USerialReceiver|counter1|FF1|Q~q\,
	combout => \USerialReceiver|counter1|FF2|Q~0_combout\);

-- Location: FF_X75_Y51_N31
\USerialReceiver|counter1|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \USerialReceiver|counter1|FF2|Q~0_combout\,
	clrn => \USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|counter1|FF2|Q~q\);

-- Location: LCCOMB_X75_Y51_N2
\USerialReceiver|serialControl1|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|serialControl1|Selector1~1_combout\ = (\USerialReceiver|serialControl1|Selector1~0_combout\) # ((!\not_SS~input_o\ & !\USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \not_SS~input_o\,
	datac => \USerialReceiver|serialControl1|Selector1~0_combout\,
	datad => \USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\,
	combout => \USerialReceiver|serialControl1|Selector1~1_combout\);

-- Location: FF_X75_Y51_N3
\USerialReceiver|serialControl1|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \USerialReceiver|serialControl1|Selector1~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|serialControl1|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X75_Y51_N8
\USerialReceiver|serialControl1|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|serialControl1|Selector1~0_combout\ = (\USerialReceiver|serialControl1|CurrentState.STATE_WAITING~q\ & ((\USerialReceiver|counter1|FF1|Q~q\) # ((!\USerialReceiver|counter1|FF2|Q~q\) # (!\USerialReceiver|counter1|FF0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USerialReceiver|counter1|FF1|Q~q\,
	datab => \USerialReceiver|counter1|FF0|Q~q\,
	datac => \USerialReceiver|counter1|FF2|Q~q\,
	datad => \USerialReceiver|serialControl1|CurrentState.STATE_WAITING~q\,
	combout => \USerialReceiver|serialControl1|Selector1~0_combout\);

-- Location: FF_X74_Y51_N9
\USerialReceiver|shiftReg51|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	asdata => \SDX~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \USerialReceiver|serialControl1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|shiftReg51|FF0|Q~q\);

-- Location: LCCOMB_X74_Y51_N10
\UDispatcher|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDispatcher|Selector1~1_combout\ = (\UDispatcher|Selector1~0_combout\ & ((\UDispatcher|CurrentState.STATE_WAITING~q\) # (\USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDispatcher|Selector1~0_combout\,
	datac => \UDispatcher|CurrentState.STATE_WAITING~q\,
	datad => \USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\,
	combout => \UDispatcher|Selector1~1_combout\);

-- Location: FF_X74_Y51_N11
\UDispatcher|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \UDispatcher|Selector1~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDispatcher|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X74_Y51_N26
\UDispatcher|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDispatcher|Selector2~1_combout\ = (!\USerialReceiver|shiftReg51|FF0|Q~q\ & !\UDispatcher|CurrentState.STATE_WAITING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \USerialReceiver|shiftReg51|FF0|Q~q\,
	datad => \UDispatcher|CurrentState.STATE_WAITING~q\,
	combout => \UDispatcher|Selector2~1_combout\);

-- Location: IOIBUF_X74_Y54_N22
\Psensor~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Psensor,
	o => \Psensor~input_o\);

-- Location: LCCOMB_X74_Y51_N14
\UDispatcher|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDispatcher|Selector3~0_combout\ = (\Sopen~input_o\ & (!\Sclose~input_o\ & (\UDispatcher|CurrentState.STATE_CLOSE~q\))) # (!\Sopen~input_o\ & ((\UDispatcher|CurrentState.STATE_SENSOR~q\) # ((!\Sclose~input_o\ & 
-- \UDispatcher|CurrentState.STATE_CLOSE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sopen~input_o\,
	datab => \Sclose~input_o\,
	datac => \UDispatcher|CurrentState.STATE_CLOSE~q\,
	datad => \UDispatcher|CurrentState.STATE_SENSOR~q\,
	combout => \UDispatcher|Selector3~0_combout\);

-- Location: LCCOMB_X74_Y51_N16
\UDispatcher|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDispatcher|Selector3~1_combout\ = (\UDispatcher|Selector3~0_combout\ & \Psensor~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UDispatcher|Selector3~0_combout\,
	datac => \Psensor~input_o\,
	combout => \UDispatcher|Selector3~1_combout\);

-- Location: FF_X74_Y51_N17
\UDispatcher|CurrentState.STATE_SENSOR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \UDispatcher|Selector3~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDispatcher|CurrentState.STATE_SENSOR~q\);

-- Location: LCCOMB_X74_Y51_N28
\UDispatcher|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDispatcher|Selector4~0_combout\ = (\Psensor~input_o\ & ((\UDispatcher|CurrentState.STATE_SENSOR_OPEN~q\) # ((\Sopen~input_o\ & \UDispatcher|CurrentState.STATE_SENSOR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sopen~input_o\,
	datab => \Psensor~input_o\,
	datac => \UDispatcher|CurrentState.STATE_SENSOR_OPEN~q\,
	datad => \UDispatcher|CurrentState.STATE_SENSOR~q\,
	combout => \UDispatcher|Selector4~0_combout\);

-- Location: FF_X74_Y51_N29
\UDispatcher|CurrentState.STATE_SENSOR_OPEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \UDispatcher|Selector4~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDispatcher|CurrentState.STATE_SENSOR_OPEN~q\);

-- Location: LCCOMB_X74_Y51_N12
\UDispatcher|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDispatcher|Selector2~0_combout\ = (\UDispatcher|CurrentState.STATE_SENSOR~q\) # ((\UDispatcher|CurrentState.STATE_SENSOR_OPEN~q\) # ((\UDispatcher|CurrentState.STATE_CLOSE~q\ & !\Sclose~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDispatcher|CurrentState.STATE_CLOSE~q\,
	datab => \UDispatcher|CurrentState.STATE_SENSOR~q\,
	datac => \Sclose~input_o\,
	datad => \UDispatcher|CurrentState.STATE_SENSOR_OPEN~q\,
	combout => \UDispatcher|Selector2~0_combout\);

-- Location: LCCOMB_X74_Y51_N4
\UDispatcher|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDispatcher|Selector2~2_combout\ = (\UDispatcher|Selector2~1_combout\ & ((\USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\) # ((!\Psensor~input_o\ & \UDispatcher|Selector2~0_combout\)))) # (!\UDispatcher|Selector2~1_combout\ & 
-- (((!\Psensor~input_o\ & \UDispatcher|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDispatcher|Selector2~1_combout\,
	datab => \USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\,
	datac => \Psensor~input_o\,
	datad => \UDispatcher|Selector2~0_combout\,
	combout => \UDispatcher|Selector2~2_combout\);

-- Location: FF_X74_Y51_N5
\UDispatcher|CurrentState.STATE_CLOSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \UDispatcher|Selector2~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDispatcher|CurrentState.STATE_CLOSE~q\);

-- Location: LCCOMB_X74_Y51_N24
\UDispatcher|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDispatcher|Selector0~0_combout\ = (!\UDispatcher|CurrentState.STATE_WAITING~q\ & \USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDispatcher|CurrentState.STATE_WAITING~q\,
	datad => \USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\,
	combout => \UDispatcher|Selector0~0_combout\);

-- Location: LCCOMB_X74_Y51_N18
\UDispatcher|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDispatcher|Selector0~1_combout\ = (\Sopen~input_o\ & (\USerialReceiver|shiftReg51|FF0|Q~q\ & ((\UDispatcher|Selector0~0_combout\)))) # (!\Sopen~input_o\ & ((\UDispatcher|CurrentState.STATE_OPEN~q\) # ((\USerialReceiver|shiftReg51|FF0|Q~q\ & 
-- \UDispatcher|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sopen~input_o\,
	datab => \USerialReceiver|shiftReg51|FF0|Q~q\,
	datac => \UDispatcher|CurrentState.STATE_OPEN~q\,
	datad => \UDispatcher|Selector0~0_combout\,
	combout => \UDispatcher|Selector0~1_combout\);

-- Location: FF_X74_Y51_N19
\UDispatcher|CurrentState.STATE_OPEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \UDispatcher|Selector0~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDispatcher|CurrentState.STATE_OPEN~q\);

-- Location: LCCOMB_X74_Y51_N6
\UDispatcher|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDispatcher|Selector1~0_combout\ = (\Sopen~input_o\ & (!\UDispatcher|CurrentState.STATE_OPEN~q\ & ((!\UDispatcher|CurrentState.STATE_CLOSE~q\) # (!\Sclose~input_o\)))) # (!\Sopen~input_o\ & (((!\UDispatcher|CurrentState.STATE_CLOSE~q\)) # 
-- (!\Sclose~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sopen~input_o\,
	datab => \Sclose~input_o\,
	datac => \UDispatcher|CurrentState.STATE_CLOSE~q\,
	datad => \UDispatcher|CurrentState.STATE_OPEN~q\,
	combout => \UDispatcher|Selector1~0_combout\);

-- Location: LCCOMB_X75_Y51_N10
\USerialReceiver|serialControl1|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|serialControl1|Selector2~0_combout\ = (\USerialReceiver|counter1|FF0|Q~q\ & (\USerialReceiver|counter1|FF2|Q~q\ & (!\USerialReceiver|counter1|FF1|Q~q\ & \USerialReceiver|serialControl1|CurrentState.STATE_WAITING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USerialReceiver|counter1|FF0|Q~q\,
	datab => \USerialReceiver|counter1|FF2|Q~q\,
	datac => \USerialReceiver|counter1|FF1|Q~q\,
	datad => \USerialReceiver|serialControl1|CurrentState.STATE_WAITING~q\,
	combout => \USerialReceiver|serialControl1|Selector2~0_combout\);

-- Location: LCCOMB_X75_Y51_N24
\USerialReceiver|serialControl1|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|serialControl1|Selector2~1_combout\ = (\USerialReceiver|serialControl1|Selector2~0_combout\) # ((\UDispatcher|Selector1~0_combout\ & \USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UDispatcher|Selector1~0_combout\,
	datac => \USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\,
	datad => \USerialReceiver|serialControl1|Selector2~0_combout\,
	combout => \USerialReceiver|serialControl1|Selector2~1_combout\);

-- Location: FF_X75_Y51_N25
\USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \USerialReceiver|serialControl1|Selector2~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\);

-- Location: LCCOMB_X74_Y51_N8
\UDispatcher|OnOff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDispatcher|OnOff~0_combout\ = (\UDispatcher|CurrentState.STATE_SENSOR_OPEN~q\) # (!\UDispatcher|CurrentState.STATE_WAITING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDispatcher|CurrentState.STATE_WAITING~q\,
	datad => \UDispatcher|CurrentState.STATE_SENSOR_OPEN~q\,
	combout => \UDispatcher|OnOff~0_combout\);

-- Location: LCCOMB_X74_Y51_N30
\UDispatcher|Dout[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDispatcher|Dout\(0) = (\UDispatcher|CurrentState.STATE_OPEN~q\) # (\UDispatcher|CurrentState.STATE_SENSOR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UDispatcher|CurrentState.STATE_OPEN~q\,
	datad => \UDispatcher|CurrentState.STATE_SENSOR~q\,
	combout => \UDispatcher|Dout\(0));

-- Location: LCCOMB_X74_Y51_N0
\USerialReceiver|shiftReg51|FF1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|shiftReg51|FF1|Q~feeder_combout\ = \USerialReceiver|shiftReg51|FF0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \USerialReceiver|shiftReg51|FF0|Q~q\,
	combout => \USerialReceiver|shiftReg51|FF1|Q~feeder_combout\);

-- Location: FF_X74_Y51_N1
\USerialReceiver|shiftReg51|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \USerialReceiver|shiftReg51|FF1|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \USerialReceiver|serialControl1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|shiftReg51|FF1|Q~q\);

-- Location: LCCOMB_X74_Y51_N2
\USerialReceiver|shiftReg51|FF2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|shiftReg51|FF2|Q~feeder_combout\ = \USerialReceiver|shiftReg51|FF1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \USerialReceiver|shiftReg51|FF1|Q~q\,
	combout => \USerialReceiver|shiftReg51|FF2|Q~feeder_combout\);

-- Location: FF_X74_Y51_N3
\USerialReceiver|shiftReg51|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \USerialReceiver|shiftReg51|FF2|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \USerialReceiver|serialControl1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|shiftReg51|FF2|Q~q\);

-- Location: LCCOMB_X74_Y51_N20
\USerialReceiver|shiftReg51|FF3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|shiftReg51|FF3|Q~feeder_combout\ = \USerialReceiver|shiftReg51|FF2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \USerialReceiver|shiftReg51|FF2|Q~q\,
	combout => \USerialReceiver|shiftReg51|FF3|Q~feeder_combout\);

-- Location: FF_X74_Y51_N21
\USerialReceiver|shiftReg51|FF3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \USerialReceiver|shiftReg51|FF3|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \USerialReceiver|serialControl1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|shiftReg51|FF3|Q~q\);

-- Location: LCCOMB_X74_Y51_N22
\USerialReceiver|shiftReg51|FF4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USerialReceiver|shiftReg51|FF4|Q~feeder_combout\ = \USerialReceiver|shiftReg51|FF3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \USerialReceiver|shiftReg51|FF3|Q~q\,
	combout => \USerialReceiver|shiftReg51|FF4|Q~feeder_combout\);

-- Location: FF_X74_Y51_N23
\USerialReceiver|shiftReg51|FF4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \USerialReceiver|shiftReg51|FF4|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \USerialReceiver|serialControl1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USerialReceiver|shiftReg51|FF4|Q~q\);

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

ww_busy <= \busy~output_o\;

ww_OnOff <= \OnOff~output_o\;

ww_Dout(0) <= \Dout[0]~output_o\;

ww_Dout(1) <= \Dout[1]~output_o\;

ww_Dout(2) <= \Dout[2]~output_o\;

ww_Dout(3) <= \Dout[3]~output_o\;

ww_Dout(4) <= \Dout[4]~output_o\;
END structure;


