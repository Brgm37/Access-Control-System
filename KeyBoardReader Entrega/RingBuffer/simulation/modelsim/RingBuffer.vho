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

-- DATE "06/18/2023 13:24:44"

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

ENTITY 	ringBuffer IS
    PORT (
	D : IN std_logic_vector(3 DOWNTO 0);
	Q : BUFFER std_logic_vector(3 DOWNTO 0);
	CTS : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	DAV : IN std_logic;
	Wreg : BUFFER std_logic;
	DAC : BUFFER std_logic
	);
END ringBuffer;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Wreg	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAC	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAV	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CTS	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ringBuffer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CTS : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_DAV : std_logic;
SIGNAL ww_Wreg : std_logic;
SIGNAL ww_DAC : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~13clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~12clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~15clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~14clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Wreg~output_o\ : std_logic;
SIGNAL \DAC~output_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \CTS~input_o\ : std_logic;
SIGNAL \UmemoryAdressControl|URegisto3|U0FFD|Q~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \DAV~input_o\ : std_logic;
SIGNAL \URingBufferControl|Selector2~0_combout\ : std_logic;
SIGNAL \URingBufferControl|CurrentState.STATE_DAC~q\ : std_logic;
SIGNAL \URingBufferControl|NextState.STATE_INCPUT~0_combout\ : std_logic;
SIGNAL \URingBufferControl|CurrentState.STATE_INCPUT~q\ : std_logic;
SIGNAL \UmemoryAdressControl|sOr~0_combout\ : std_logic;
SIGNAL \UmemoryAdressControl|URegisto3|U0FFD|Q~q\ : std_logic;
SIGNAL \UmemoryAdressControl|UAddSub3|UAdder3|FA1|HA1|S~0_combout\ : std_logic;
SIGNAL \UmemoryAdressControl|URegisto3|U1FFD|Q~q\ : std_logic;
SIGNAL \UmemoryAdressControl|UAddSub3|UAdder3|FA2|CO~0_combout\ : std_logic;
SIGNAL \UmemoryAdressControl|UAddSub3|UAdder3|FA3|HA1|S~0_combout\ : std_logic;
SIGNAL \UmemoryAdressControl|URegisto3|U3FFD|Q~q\ : std_logic;
SIGNAL \URingBufferControl|GenerateNextState~0_combout\ : std_logic;
SIGNAL \URingBufferControl|Selector0~1_combout\ : std_logic;
SIGNAL \URingBufferControl|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \URingBufferControl|Selector0~0_combout\ : std_logic;
SIGNAL \URingBufferControl|NextState.STATE_NOTPUTGET~2_combout\ : std_logic;
SIGNAL \URingBufferControl|CurrentState.STATE_NOTPUTGET~q\ : std_logic;
SIGNAL \URingBufferControl|Selector1~0_combout\ : std_logic;
SIGNAL \URingBufferControl|CurrentState.STATE_RE~q\ : std_logic;
SIGNAL \URingBufferControl|NextState.STATE_INCGET~0_combout\ : std_logic;
SIGNAL \URingBufferControl|CurrentState.STATE_INCGET~feeder_combout\ : std_logic;
SIGNAL \URingBufferControl|CurrentState.STATE_INCGET~q\ : std_logic;
SIGNAL \UmemoryAdressControl|UAddSub3|UAdder3|FA2|HA1|S~combout\ : std_logic;
SIGNAL \UmemoryAdressControl|URegisto3|U2FFD|Q~q\ : std_logic;
SIGNAL \UmemoryAdressControl|full~0_combout\ : std_logic;
SIGNAL \URingBufferControl|NextState.STATE_PUTNOTGET~0_combout\ : std_logic;
SIGNAL \URingBufferControl|CurrentState.STATE_PUTNOTGET~q\ : std_logic;
SIGNAL \URingBufferControl|CurrentState.STATE_WR~q\ : std_logic;
SIGNAL \UmemoryAdressControl|UIDXPUT|FF0|Q~0_combout\ : std_logic;
SIGNAL \UmemoryAdressControl|UIDXPUT|FF0|Q~q\ : std_logic;
SIGNAL \UmemoryAdressControl|UIDXPUT|FF1|Q~0_combout\ : std_logic;
SIGNAL \UmemoryAdressControl|UIDXPUT|FF1|Q~q\ : std_logic;
SIGNAL \UmemoryAdressControl|UIDXPUT|FF2|Q~0_combout\ : std_logic;
SIGNAL \UmemoryAdressControl|UIDXPUT|FF2|Q~q\ : std_logic;
SIGNAL \rtl~12_combout\ : std_logic;
SIGNAL \rtl~12clkctrl_outclk\ : std_logic;
SIGNAL \Uram|ram~8_combout\ : std_logic;
SIGNAL \rtl~15_combout\ : std_logic;
SIGNAL \rtl~15clkctrl_outclk\ : std_logic;
SIGNAL \Uram|ram~12_combout\ : std_logic;
SIGNAL \UmemoryAdressControl|UIDXGET|FF0|Q~0_combout\ : std_logic;
SIGNAL \UmemoryAdressControl|UIDXGET|FF0|Q~q\ : std_logic;
SIGNAL \UmemoryAdressControl|UIDXGET|FF1|Q~0_combout\ : std_logic;
SIGNAL \UmemoryAdressControl|UIDXGET|FF1|Q~q\ : std_logic;
SIGNAL \UmemoryAdressControl|Umux21|M[1]~1_combout\ : std_logic;
SIGNAL \rtl~14_combout\ : std_logic;
SIGNAL \rtl~14clkctrl_outclk\ : std_logic;
SIGNAL \Uram|ram~0_combout\ : std_logic;
SIGNAL \rtl~13_combout\ : std_logic;
SIGNAL \rtl~13clkctrl_outclk\ : std_logic;
SIGNAL \Uram|ram~4_combout\ : std_logic;
SIGNAL \UmemoryAdressControl|Umux21|M[0]~0_combout\ : std_logic;
SIGNAL \Uram|ram~34_combout\ : std_logic;
SIGNAL \Uram|ram~35_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \rtl~8clkctrl_outclk\ : std_logic;
SIGNAL \Uram|ram~20_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \rtl~11clkctrl_outclk\ : std_logic;
SIGNAL \Uram|ram~28_combout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \rtl~10clkctrl_outclk\ : std_logic;
SIGNAL \Uram|ram~16_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \rtl~9clkctrl_outclk\ : std_logic;
SIGNAL \Uram|ram~24_combout\ : std_logic;
SIGNAL \Uram|ram~32_combout\ : std_logic;
SIGNAL \Uram|ram~33_combout\ : std_logic;
SIGNAL \UmemoryAdressControl|UIDXGET|FF2|Q~0_combout\ : std_logic;
SIGNAL \UmemoryAdressControl|UIDXGET|FF2|Q~q\ : std_logic;
SIGNAL \UmemoryAdressControl|Umux21|M[2]~2_combout\ : std_logic;
SIGNAL \Uram|ram~36_combout\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \Uram|ram~21_combout\ : std_logic;
SIGNAL \Uram|ram~29_combout\ : std_logic;
SIGNAL \Uram|ram~25_combout\ : std_logic;
SIGNAL \Uram|ram~17_combout\ : std_logic;
SIGNAL \Uram|ram~37_combout\ : std_logic;
SIGNAL \Uram|ram~38_combout\ : std_logic;
SIGNAL \Uram|ram~13_combout\ : std_logic;
SIGNAL \Uram|ram~1_combout\ : std_logic;
SIGNAL \Uram|ram~5_combout\ : std_logic;
SIGNAL \Uram|ram~39_combout\ : std_logic;
SIGNAL \Uram|ram~9_combout\ : std_logic;
SIGNAL \Uram|ram~40_combout\ : std_logic;
SIGNAL \Uram|ram~41_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \Uram|ram~22_combout\ : std_logic;
SIGNAL \Uram|ram~26_combout\ : std_logic;
SIGNAL \Uram|ram~18_combout\ : std_logic;
SIGNAL \Uram|ram~42_combout\ : std_logic;
SIGNAL \Uram|ram~30_combout\ : std_logic;
SIGNAL \Uram|ram~43_combout\ : std_logic;
SIGNAL \Uram|ram~10_combout\ : std_logic;
SIGNAL \Uram|ram~2_combout\ : std_logic;
SIGNAL \Uram|ram~6_combout\ : std_logic;
SIGNAL \Uram|ram~44_combout\ : std_logic;
SIGNAL \Uram|ram~14_combout\ : std_logic;
SIGNAL \Uram|ram~45_combout\ : std_logic;
SIGNAL \Uram|ram~46_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \Uram|ram~23_combout\ : std_logic;
SIGNAL \Uram|ram~19_combout\ : std_logic;
SIGNAL \Uram|ram~27_combout\ : std_logic;
SIGNAL \Uram|ram~47_combout\ : std_logic;
SIGNAL \Uram|ram~31_combout\ : std_logic;
SIGNAL \Uram|ram~48_combout\ : std_logic;
SIGNAL \Uram|ram~11_combout\ : std_logic;
SIGNAL \Uram|ram~3_combout\ : std_logic;
SIGNAL \Uram|ram~7_combout\ : std_logic;
SIGNAL \Uram|ram~49_combout\ : std_logic;
SIGNAL \Uram|ram~15_combout\ : std_logic;
SIGNAL \Uram|ram~50_combout\ : std_logic;
SIGNAL \Uram|ram~51_combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_D <= D;
Q <= ww_Q;
ww_CTS <= CTS;
ww_clk <= clk;
ww_rst <= rst;
ww_DAV <= DAV;
Wreg <= ww_Wreg;
DAC <= ww_DAC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rtl~13clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~13_combout\);

\rtl~11clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~11_combout\);

\rtl~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~10_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rtl~12clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~12_combout\);

\rtl~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~9_combout\);

\rtl~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~8_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\rtl~15clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~15_combout\);

\rtl~14clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~14_combout\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
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

-- Location: IOOBUF_X31_Y39_N16
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Uram|ram~36_combout\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Uram|ram~41_combout\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Uram|ram~46_combout\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Uram|ram~51_combout\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\Wreg~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \URingBufferControl|CurrentState.STATE_RE~q\,
	devoe => ww_devoe,
	o => \Wreg~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\DAC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \URingBufferControl|CurrentState.STATE_DAC~q\,
	devoe => ww_devoe,
	o => \DAC~output_o\);

-- Location: IOIBUF_X36_Y39_N15
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

-- Location: IOIBUF_X36_Y39_N29
\CTS~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CTS,
	o => \CTS~input_o\);

-- Location: LCCOMB_X46_Y39_N4
\UmemoryAdressControl|URegisto3|U0FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|URegisto3|U0FFD|Q~0_combout\ = !\UmemoryAdressControl|URegisto3|U0FFD|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UmemoryAdressControl|URegisto3|U0FFD|Q~q\,
	combout => \UmemoryAdressControl|URegisto3|U0FFD|Q~0_combout\);

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

-- Location: IOIBUF_X34_Y39_N8
\DAV~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DAV,
	o => \DAV~input_o\);

-- Location: LCCOMB_X46_Y39_N24
\URingBufferControl|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \URingBufferControl|Selector2~0_combout\ = (\URingBufferControl|CurrentState.STATE_WR~q\) # ((\DAV~input_o\ & \URingBufferControl|CurrentState.STATE_DAC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DAV~input_o\,
	datac => \URingBufferControl|CurrentState.STATE_WR~q\,
	datad => \URingBufferControl|CurrentState.STATE_DAC~q\,
	combout => \URingBufferControl|Selector2~0_combout\);

-- Location: FF_X46_Y39_N1
\URingBufferControl|CurrentState.STATE_DAC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \URingBufferControl|Selector2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \URingBufferControl|CurrentState.STATE_DAC~q\);

-- Location: LCCOMB_X46_Y39_N26
\URingBufferControl|NextState.STATE_INCPUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \URingBufferControl|NextState.STATE_INCPUT~0_combout\ = (!\DAV~input_o\ & \URingBufferControl|CurrentState.STATE_DAC~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DAV~input_o\,
	datac => \URingBufferControl|CurrentState.STATE_DAC~q\,
	combout => \URingBufferControl|NextState.STATE_INCPUT~0_combout\);

-- Location: FF_X46_Y39_N27
\URingBufferControl|CurrentState.STATE_INCPUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \URingBufferControl|NextState.STATE_INCPUT~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \URingBufferControl|CurrentState.STATE_INCPUT~q\);

-- Location: LCCOMB_X46_Y39_N0
\UmemoryAdressControl|sOr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|sOr~0_combout\ = (\URingBufferControl|CurrentState.STATE_INCPUT~q\) # (\URingBufferControl|CurrentState.STATE_INCGET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \URingBufferControl|CurrentState.STATE_INCPUT~q\,
	datad => \URingBufferControl|CurrentState.STATE_INCGET~q\,
	combout => \UmemoryAdressControl|sOr~0_combout\);

-- Location: FF_X46_Y39_N5
\UmemoryAdressControl|URegisto3|U0FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UmemoryAdressControl|URegisto3|U0FFD|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \UmemoryAdressControl|sOr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UmemoryAdressControl|URegisto3|U0FFD|Q~q\);

-- Location: LCCOMB_X46_Y39_N6
\UmemoryAdressControl|UAddSub3|UAdder3|FA1|HA1|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|UAddSub3|UAdder3|FA1|HA1|S~0_combout\ = \UmemoryAdressControl|URegisto3|U0FFD|Q~q\ $ (\UmemoryAdressControl|URegisto3|U1FFD|Q~q\ $ (\URingBufferControl|CurrentState.STATE_INCGET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UmemoryAdressControl|URegisto3|U0FFD|Q~q\,
	datac => \UmemoryAdressControl|URegisto3|U1FFD|Q~q\,
	datad => \URingBufferControl|CurrentState.STATE_INCGET~q\,
	combout => \UmemoryAdressControl|UAddSub3|UAdder3|FA1|HA1|S~0_combout\);

-- Location: FF_X46_Y39_N7
\UmemoryAdressControl|URegisto3|U1FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UmemoryAdressControl|UAddSub3|UAdder3|FA1|HA1|S~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \UmemoryAdressControl|sOr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UmemoryAdressControl|URegisto3|U1FFD|Q~q\);

-- Location: LCCOMB_X46_Y39_N18
\UmemoryAdressControl|UAddSub3|UAdder3|FA2|CO~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|UAddSub3|UAdder3|FA2|CO~0_combout\ = (\UmemoryAdressControl|URegisto3|U1FFD|Q~q\ & ((\URingBufferControl|CurrentState.STATE_INCGET~q\) # ((\UmemoryAdressControl|URegisto3|U0FFD|Q~q\ & \UmemoryAdressControl|URegisto3|U2FFD|Q~q\)))) # 
-- (!\UmemoryAdressControl|URegisto3|U1FFD|Q~q\ & (\URingBufferControl|CurrentState.STATE_INCGET~q\ & ((\UmemoryAdressControl|URegisto3|U0FFD|Q~q\) # (\UmemoryAdressControl|URegisto3|U2FFD|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UmemoryAdressControl|URegisto3|U1FFD|Q~q\,
	datab => \UmemoryAdressControl|URegisto3|U0FFD|Q~q\,
	datac => \UmemoryAdressControl|URegisto3|U2FFD|Q~q\,
	datad => \URingBufferControl|CurrentState.STATE_INCGET~q\,
	combout => \UmemoryAdressControl|UAddSub3|UAdder3|FA2|CO~0_combout\);

-- Location: LCCOMB_X46_Y39_N22
\UmemoryAdressControl|UAddSub3|UAdder3|FA3|HA1|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|UAddSub3|UAdder3|FA3|HA1|S~0_combout\ = \URingBufferControl|CurrentState.STATE_INCGET~q\ $ (\UmemoryAdressControl|URegisto3|U3FFD|Q~q\ $ (\UmemoryAdressControl|UAddSub3|UAdder3|FA2|CO~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \URingBufferControl|CurrentState.STATE_INCGET~q\,
	datac => \UmemoryAdressControl|URegisto3|U3FFD|Q~q\,
	datad => \UmemoryAdressControl|UAddSub3|UAdder3|FA2|CO~0_combout\,
	combout => \UmemoryAdressControl|UAddSub3|UAdder3|FA3|HA1|S~0_combout\);

-- Location: FF_X46_Y39_N23
\UmemoryAdressControl|URegisto3|U3FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UmemoryAdressControl|UAddSub3|UAdder3|FA3|HA1|S~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \UmemoryAdressControl|sOr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UmemoryAdressControl|URegisto3|U3FFD|Q~q\);

-- Location: LCCOMB_X46_Y39_N14
\URingBufferControl|GenerateNextState~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \URingBufferControl|GenerateNextState~0_combout\ = (\CTS~input_o\ & ((\UmemoryAdressControl|URegisto3|U3FFD|Q~q\) # (!\UmemoryAdressControl|full~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTS~input_o\,
	datac => \UmemoryAdressControl|URegisto3|U3FFD|Q~q\,
	datad => \UmemoryAdressControl|full~0_combout\,
	combout => \URingBufferControl|GenerateNextState~0_combout\);

-- Location: LCCOMB_X46_Y39_N28
\URingBufferControl|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \URingBufferControl|Selector0~1_combout\ = (!\URingBufferControl|CurrentState.STATE_INCPUT~q\ & (!\URingBufferControl|CurrentState.STATE_INCGET~q\ & ((\URingBufferControl|GenerateNextState~0_combout\) # (!\URingBufferControl|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \URingBufferControl|CurrentState.STATE_INCPUT~q\,
	datab => \URingBufferControl|CurrentState.STATE_INCGET~q\,
	datac => \URingBufferControl|GenerateNextState~0_combout\,
	datad => \URingBufferControl|Selector0~0_combout\,
	combout => \URingBufferControl|Selector0~1_combout\);

-- Location: FF_X46_Y39_N29
\URingBufferControl|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \URingBufferControl|Selector0~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \URingBufferControl|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X46_Y39_N20
\URingBufferControl|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \URingBufferControl|Selector0~0_combout\ = (!\URingBufferControl|CurrentState.STATE_WAITING~q\ & (((\UmemoryAdressControl|URegisto3|U3FFD|Q~q\ & \UmemoryAdressControl|full~0_combout\)) # (!\DAV~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DAV~input_o\,
	datab => \URingBufferControl|CurrentState.STATE_WAITING~q\,
	datac => \UmemoryAdressControl|URegisto3|U3FFD|Q~q\,
	datad => \UmemoryAdressControl|full~0_combout\,
	combout => \URingBufferControl|Selector0~0_combout\);

-- Location: LCCOMB_X46_Y39_N2
\URingBufferControl|NextState.STATE_NOTPUTGET~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \URingBufferControl|NextState.STATE_NOTPUTGET~2_combout\ = (\CTS~input_o\ & (\URingBufferControl|Selector0~0_combout\ & ((\UmemoryAdressControl|URegisto3|U3FFD|Q~q\) # (!\UmemoryAdressControl|full~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTS~input_o\,
	datab => \UmemoryAdressControl|full~0_combout\,
	datac => \UmemoryAdressControl|URegisto3|U3FFD|Q~q\,
	datad => \URingBufferControl|Selector0~0_combout\,
	combout => \URingBufferControl|NextState.STATE_NOTPUTGET~2_combout\);

-- Location: FF_X46_Y39_N3
\URingBufferControl|CurrentState.STATE_NOTPUTGET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \URingBufferControl|NextState.STATE_NOTPUTGET~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \URingBufferControl|CurrentState.STATE_NOTPUTGET~q\);

-- Location: LCCOMB_X47_Y39_N12
\URingBufferControl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \URingBufferControl|Selector1~0_combout\ = (\URingBufferControl|CurrentState.STATE_NOTPUTGET~q\) # ((\CTS~input_o\ & \URingBufferControl|CurrentState.STATE_RE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTS~input_o\,
	datac => \URingBufferControl|CurrentState.STATE_RE~q\,
	datad => \URingBufferControl|CurrentState.STATE_NOTPUTGET~q\,
	combout => \URingBufferControl|Selector1~0_combout\);

-- Location: FF_X47_Y39_N13
\URingBufferControl|CurrentState.STATE_RE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \URingBufferControl|Selector1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \URingBufferControl|CurrentState.STATE_RE~q\);

-- Location: LCCOMB_X47_Y39_N26
\URingBufferControl|NextState.STATE_INCGET~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \URingBufferControl|NextState.STATE_INCGET~0_combout\ = (!\CTS~input_o\ & \URingBufferControl|CurrentState.STATE_RE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CTS~input_o\,
	datad => \URingBufferControl|CurrentState.STATE_RE~q\,
	combout => \URingBufferControl|NextState.STATE_INCGET~0_combout\);

-- Location: LCCOMB_X46_Y39_N12
\URingBufferControl|CurrentState.STATE_INCGET~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \URingBufferControl|CurrentState.STATE_INCGET~feeder_combout\ = \URingBufferControl|NextState.STATE_INCGET~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \URingBufferControl|NextState.STATE_INCGET~0_combout\,
	combout => \URingBufferControl|CurrentState.STATE_INCGET~feeder_combout\);

-- Location: FF_X46_Y39_N13
\URingBufferControl|CurrentState.STATE_INCGET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \URingBufferControl|CurrentState.STATE_INCGET~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \URingBufferControl|CurrentState.STATE_INCGET~q\);

-- Location: LCCOMB_X46_Y39_N8
\UmemoryAdressControl|UAddSub3|UAdder3|FA2|HA1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|UAddSub3|UAdder3|FA2|HA1|S~combout\ = \UmemoryAdressControl|URegisto3|U2FFD|Q~q\ $ (((\URingBufferControl|CurrentState.STATE_INCGET~q\ & (!\UmemoryAdressControl|URegisto3|U0FFD|Q~q\ & !\UmemoryAdressControl|URegisto3|U1FFD|Q~q\)) # 
-- (!\URingBufferControl|CurrentState.STATE_INCGET~q\ & (\UmemoryAdressControl|URegisto3|U0FFD|Q~q\ & \UmemoryAdressControl|URegisto3|U1FFD|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \URingBufferControl|CurrentState.STATE_INCGET~q\,
	datab => \UmemoryAdressControl|URegisto3|U0FFD|Q~q\,
	datac => \UmemoryAdressControl|URegisto3|U2FFD|Q~q\,
	datad => \UmemoryAdressControl|URegisto3|U1FFD|Q~q\,
	combout => \UmemoryAdressControl|UAddSub3|UAdder3|FA2|HA1|S~combout\);

-- Location: FF_X46_Y39_N9
\UmemoryAdressControl|URegisto3|U2FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UmemoryAdressControl|UAddSub3|UAdder3|FA2|HA1|S~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \UmemoryAdressControl|sOr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UmemoryAdressControl|URegisto3|U2FFD|Q~q\);

-- Location: LCCOMB_X46_Y39_N10
\UmemoryAdressControl|full~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|full~0_combout\ = (!\UmemoryAdressControl|URegisto3|U2FFD|Q~q\ & (!\UmemoryAdressControl|URegisto3|U0FFD|Q~q\ & !\UmemoryAdressControl|URegisto3|U1FFD|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UmemoryAdressControl|URegisto3|U2FFD|Q~q\,
	datac => \UmemoryAdressControl|URegisto3|U0FFD|Q~q\,
	datad => \UmemoryAdressControl|URegisto3|U1FFD|Q~q\,
	combout => \UmemoryAdressControl|full~0_combout\);

-- Location: LCCOMB_X46_Y39_N30
\URingBufferControl|NextState.STATE_PUTNOTGET~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \URingBufferControl|NextState.STATE_PUTNOTGET~0_combout\ = (\DAV~input_o\ & (!\URingBufferControl|CurrentState.STATE_WAITING~q\ & ((!\UmemoryAdressControl|URegisto3|U3FFD|Q~q\) # (!\UmemoryAdressControl|full~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UmemoryAdressControl|full~0_combout\,
	datab => \DAV~input_o\,
	datac => \UmemoryAdressControl|URegisto3|U3FFD|Q~q\,
	datad => \URingBufferControl|CurrentState.STATE_WAITING~q\,
	combout => \URingBufferControl|NextState.STATE_PUTNOTGET~0_combout\);

-- Location: FF_X46_Y39_N31
\URingBufferControl|CurrentState.STATE_PUTNOTGET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \URingBufferControl|NextState.STATE_PUTNOTGET~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \URingBufferControl|CurrentState.STATE_PUTNOTGET~q\);

-- Location: FF_X45_Y39_N11
\URingBufferControl|CurrentState.STATE_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \URingBufferControl|CurrentState.STATE_PUTNOTGET~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \URingBufferControl|CurrentState.STATE_WR~q\);

-- Location: LCCOMB_X45_Y39_N4
\UmemoryAdressControl|UIDXPUT|FF0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|UIDXPUT|FF0|Q~0_combout\ = \UmemoryAdressControl|UIDXPUT|FF0|Q~q\ $ (\URingBufferControl|CurrentState.STATE_INCPUT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datad => \URingBufferControl|CurrentState.STATE_INCPUT~q\,
	combout => \UmemoryAdressControl|UIDXPUT|FF0|Q~0_combout\);

-- Location: FF_X45_Y39_N5
\UmemoryAdressControl|UIDXPUT|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UmemoryAdressControl|UIDXPUT|FF0|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UmemoryAdressControl|UIDXPUT|FF0|Q~q\);

-- Location: LCCOMB_X45_Y39_N20
\UmemoryAdressControl|UIDXPUT|FF1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|UIDXPUT|FF1|Q~0_combout\ = \UmemoryAdressControl|UIDXPUT|FF1|Q~q\ $ (((\UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & \URingBufferControl|CurrentState.STATE_INCPUT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datac => \UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	datad => \URingBufferControl|CurrentState.STATE_INCPUT~q\,
	combout => \UmemoryAdressControl|UIDXPUT|FF1|Q~0_combout\);

-- Location: FF_X45_Y39_N21
\UmemoryAdressControl|UIDXPUT|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UmemoryAdressControl|UIDXPUT|FF1|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UmemoryAdressControl|UIDXPUT|FF1|Q~q\);

-- Location: LCCOMB_X45_Y39_N30
\UmemoryAdressControl|UIDXPUT|FF2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|UIDXPUT|FF2|Q~0_combout\ = \UmemoryAdressControl|UIDXPUT|FF2|Q~q\ $ (((\UmemoryAdressControl|UIDXPUT|FF1|Q~q\ & (\UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & \URingBufferControl|CurrentState.STATE_INCPUT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	datab => \UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datac => \UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datad => \URingBufferControl|CurrentState.STATE_INCPUT~q\,
	combout => \UmemoryAdressControl|UIDXPUT|FF2|Q~0_combout\);

-- Location: FF_X45_Y39_N31
\UmemoryAdressControl|UIDXPUT|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \UmemoryAdressControl|UIDXPUT|FF2|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UmemoryAdressControl|UIDXPUT|FF2|Q~q\);

-- Location: LCCOMB_X45_Y39_N26
\rtl~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~12_combout\ = (\URingBufferControl|CurrentState.STATE_WR~q\ & (!\UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & (!\UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & \UmemoryAdressControl|UIDXPUT|FF1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \URingBufferControl|CurrentState.STATE_WR~q\,
	datab => \UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datac => \UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datad => \UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	combout => \rtl~12_combout\);

-- Location: CLKCTRL_G10
\rtl~12clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~12clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~12clkctrl_outclk\);

-- Location: LCCOMB_X41_Y37_N12
\Uram|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~8_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & ((\D[0]~input_o\))) # (!GLOBAL(\rtl~12clkctrl_outclk\) & (\Uram|ram~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~8_combout\,
	datac => \D[0]~input_o\,
	datad => \rtl~12clkctrl_outclk\,
	combout => \Uram|ram~8_combout\);

-- Location: LCCOMB_X45_Y39_N14
\rtl~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~15_combout\ = (\URingBufferControl|CurrentState.STATE_WR~q\ & (\UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & (!\UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & \UmemoryAdressControl|UIDXPUT|FF1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \URingBufferControl|CurrentState.STATE_WR~q\,
	datab => \UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datac => \UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datad => \UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	combout => \rtl~15_combout\);

-- Location: CLKCTRL_G9
\rtl~15clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~15clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~15clkctrl_outclk\);

-- Location: LCCOMB_X41_Y37_N0
\Uram|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~12_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & ((\D[0]~input_o\))) # (!GLOBAL(\rtl~15clkctrl_outclk\) & (\Uram|ram~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Uram|ram~12_combout\,
	datac => \D[0]~input_o\,
	datad => \rtl~15clkctrl_outclk\,
	combout => \Uram|ram~12_combout\);

-- Location: LCCOMB_X46_Y39_N16
\UmemoryAdressControl|UIDXGET|FF0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|UIDXGET|FF0|Q~0_combout\ = \UmemoryAdressControl|UIDXGET|FF0|Q~q\ $ (\URingBufferControl|CurrentState.STATE_INCGET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UmemoryAdressControl|UIDXGET|FF0|Q~q\,
	datad => \URingBufferControl|CurrentState.STATE_INCGET~q\,
	combout => \UmemoryAdressControl|UIDXGET|FF0|Q~0_combout\);

-- Location: FF_X46_Y39_N17
\UmemoryAdressControl|UIDXGET|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UmemoryAdressControl|UIDXGET|FF0|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UmemoryAdressControl|UIDXGET|FF0|Q~q\);

-- Location: LCCOMB_X45_Y39_N24
\UmemoryAdressControl|UIDXGET|FF1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|UIDXGET|FF1|Q~0_combout\ = \UmemoryAdressControl|UIDXGET|FF1|Q~q\ $ (((\URingBufferControl|CurrentState.STATE_INCGET~q\ & \UmemoryAdressControl|UIDXGET|FF0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \URingBufferControl|CurrentState.STATE_INCGET~q\,
	datac => \UmemoryAdressControl|UIDXGET|FF1|Q~q\,
	datad => \UmemoryAdressControl|UIDXGET|FF0|Q~q\,
	combout => \UmemoryAdressControl|UIDXGET|FF1|Q~0_combout\);

-- Location: FF_X45_Y39_N25
\UmemoryAdressControl|UIDXGET|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UmemoryAdressControl|UIDXGET|FF1|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UmemoryAdressControl|UIDXGET|FF1|Q~q\);

-- Location: LCCOMB_X45_Y39_N18
\UmemoryAdressControl|Umux21|M[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|Umux21|M[1]~1_combout\ = (\URingBufferControl|CurrentState.STATE_PUTNOTGET~q\ & (\UmemoryAdressControl|UIDXPUT|FF1|Q~q\)) # (!\URingBufferControl|CurrentState.STATE_PUTNOTGET~q\ & ((\URingBufferControl|CurrentState.STATE_WR~q\ & 
-- (\UmemoryAdressControl|UIDXPUT|FF1|Q~q\)) # (!\URingBufferControl|CurrentState.STATE_WR~q\ & ((\UmemoryAdressControl|UIDXGET|FF1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \URingBufferControl|CurrentState.STATE_PUTNOTGET~q\,
	datab => \UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	datac => \URingBufferControl|CurrentState.STATE_WR~q\,
	datad => \UmemoryAdressControl|UIDXGET|FF1|Q~q\,
	combout => \UmemoryAdressControl|Umux21|M[1]~1_combout\);

-- Location: LCCOMB_X45_Y39_N6
\rtl~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~14_combout\ = (\URingBufferControl|CurrentState.STATE_WR~q\ & (!\UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & (!\UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & !\UmemoryAdressControl|UIDXPUT|FF1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \URingBufferControl|CurrentState.STATE_WR~q\,
	datab => \UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datac => \UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datad => \UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	combout => \rtl~14_combout\);

-- Location: CLKCTRL_G13
\rtl~14clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~14clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~14clkctrl_outclk\);

-- Location: LCCOMB_X40_Y37_N24
\Uram|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~0_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\Uram|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datab => \Uram|ram~0_combout\,
	datad => \rtl~14clkctrl_outclk\,
	combout => \Uram|ram~0_combout\);

-- Location: LCCOMB_X45_Y39_N2
\rtl~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~13_combout\ = (\URingBufferControl|CurrentState.STATE_WR~q\ & (\UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & (!\UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & !\UmemoryAdressControl|UIDXPUT|FF1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \URingBufferControl|CurrentState.STATE_WR~q\,
	datab => \UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datac => \UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datad => \UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	combout => \rtl~13_combout\);

-- Location: CLKCTRL_G11
\rtl~13clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~13clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~13clkctrl_outclk\);

-- Location: LCCOMB_X41_Y37_N18
\Uram|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~4_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\Uram|ram~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \Uram|ram~4_combout\,
	combout => \Uram|ram~4_combout\);

-- Location: LCCOMB_X45_Y39_N10
\UmemoryAdressControl|Umux21|M[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|Umux21|M[0]~0_combout\ = (\URingBufferControl|CurrentState.STATE_PUTNOTGET~q\ & (((\UmemoryAdressControl|UIDXPUT|FF0|Q~q\)))) # (!\URingBufferControl|CurrentState.STATE_PUTNOTGET~q\ & ((\URingBufferControl|CurrentState.STATE_WR~q\ & 
-- ((\UmemoryAdressControl|UIDXPUT|FF0|Q~q\))) # (!\URingBufferControl|CurrentState.STATE_WR~q\ & (\UmemoryAdressControl|UIDXGET|FF0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \URingBufferControl|CurrentState.STATE_PUTNOTGET~q\,
	datab => \UmemoryAdressControl|UIDXGET|FF0|Q~q\,
	datac => \URingBufferControl|CurrentState.STATE_WR~q\,
	datad => \UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	combout => \UmemoryAdressControl|Umux21|M[0]~0_combout\);

-- Location: LCCOMB_X41_Y37_N28
\Uram|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~34_combout\ = (\UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((\UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # (!\UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UmemoryAdressControl|Umux21|M[0]~0_combout\ & ((\Uram|ram~4_combout\))) # 
-- (!\UmemoryAdressControl|Umux21|M[0]~0_combout\ & (\Uram|ram~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~0_combout\,
	datab => \Uram|ram~4_combout\,
	datac => \UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datad => \UmemoryAdressControl|Umux21|M[0]~0_combout\,
	combout => \Uram|ram~34_combout\);

-- Location: LCCOMB_X41_Y37_N22
\Uram|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~35_combout\ = (\UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\Uram|ram~34_combout\ & ((\Uram|ram~12_combout\))) # (!\Uram|ram~34_combout\ & (\Uram|ram~8_combout\)))) # (!\UmemoryAdressControl|Umux21|M[1]~1_combout\ & 
-- (((\Uram|ram~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~8_combout\,
	datab => \Uram|ram~12_combout\,
	datac => \UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datad => \Uram|ram~34_combout\,
	combout => \Uram|ram~35_combout\);

-- Location: LCCOMB_X45_Y39_N12
\rtl~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = (\UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & (!\UmemoryAdressControl|UIDXPUT|FF1|Q~q\ & (\UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & \URingBufferControl|CurrentState.STATE_WR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datab => \UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	datac => \UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datad => \URingBufferControl|CurrentState.STATE_WR~q\,
	combout => \rtl~8_combout\);

-- Location: CLKCTRL_G12
\rtl~8clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~8clkctrl_outclk\);

-- Location: LCCOMB_X37_Y38_N24
\Uram|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~20_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\Uram|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datab => \Uram|ram~20_combout\,
	datad => \rtl~8clkctrl_outclk\,
	combout => \Uram|ram~20_combout\);

-- Location: LCCOMB_X45_Y39_N22
\rtl~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = (\URingBufferControl|CurrentState.STATE_WR~q\ & (\UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & (\UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & \UmemoryAdressControl|UIDXPUT|FF1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \URingBufferControl|CurrentState.STATE_WR~q\,
	datab => \UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datac => \UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datad => \UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	combout => \rtl~11_combout\);

-- Location: CLKCTRL_G6
\rtl~11clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~11clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~11clkctrl_outclk\);

-- Location: LCCOMB_X37_Y38_N8
\Uram|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~28_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\Uram|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datac => \Uram|ram~28_combout\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \Uram|ram~28_combout\);

-- Location: LCCOMB_X45_Y39_N8
\rtl~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = (\URingBufferControl|CurrentState.STATE_WR~q\ & (!\UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & (\UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & !\UmemoryAdressControl|UIDXPUT|FF1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \URingBufferControl|CurrentState.STATE_WR~q\,
	datab => \UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datac => \UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datad => \UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	combout => \rtl~10_combout\);

-- Location: CLKCTRL_G14
\rtl~10clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~10clkctrl_outclk\);

-- Location: LCCOMB_X36_Y37_N24
\Uram|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~16_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\Uram|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datac => \rtl~10clkctrl_outclk\,
	datad => \Uram|ram~16_combout\,
	combout => \Uram|ram~16_combout\);

-- Location: LCCOMB_X45_Y39_N16
\rtl~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = (\UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & (\UmemoryAdressControl|UIDXPUT|FF1|Q~q\ & (!\UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & \URingBufferControl|CurrentState.STATE_WR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datab => \UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	datac => \UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datad => \URingBufferControl|CurrentState.STATE_WR~q\,
	combout => \rtl~9_combout\);

-- Location: CLKCTRL_G7
\rtl~9clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~9clkctrl_outclk\);

-- Location: LCCOMB_X37_Y38_N6
\Uram|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~24_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\Uram|ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \Uram|ram~24_combout\,
	combout => \Uram|ram~24_combout\);

-- Location: LCCOMB_X37_Y38_N0
\Uram|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~32_combout\ = (\UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UmemoryAdressControl|Umux21|M[0]~0_combout\) # ((\Uram|ram~24_combout\)))) # (!\UmemoryAdressControl|Umux21|M[1]~1_combout\ & (!\UmemoryAdressControl|Umux21|M[0]~0_combout\ & 
-- (\Uram|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datab => \UmemoryAdressControl|Umux21|M[0]~0_combout\,
	datac => \Uram|ram~16_combout\,
	datad => \Uram|ram~24_combout\,
	combout => \Uram|ram~32_combout\);

-- Location: LCCOMB_X37_Y38_N22
\Uram|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~33_combout\ = (\UmemoryAdressControl|Umux21|M[0]~0_combout\ & ((\Uram|ram~32_combout\ & ((\Uram|ram~28_combout\))) # (!\Uram|ram~32_combout\ & (\Uram|ram~20_combout\)))) # (!\UmemoryAdressControl|Umux21|M[0]~0_combout\ & 
-- (((\Uram|ram~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UmemoryAdressControl|Umux21|M[0]~0_combout\,
	datab => \Uram|ram~20_combout\,
	datac => \Uram|ram~28_combout\,
	datad => \Uram|ram~32_combout\,
	combout => \Uram|ram~33_combout\);

-- Location: LCCOMB_X45_Y39_N0
\UmemoryAdressControl|UIDXGET|FF2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|UIDXGET|FF2|Q~0_combout\ = \UmemoryAdressControl|UIDXGET|FF2|Q~q\ $ (((\UmemoryAdressControl|UIDXGET|FF1|Q~q\ & (\URingBufferControl|CurrentState.STATE_INCGET~q\ & \UmemoryAdressControl|UIDXGET|FF0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UmemoryAdressControl|UIDXGET|FF1|Q~q\,
	datab => \URingBufferControl|CurrentState.STATE_INCGET~q\,
	datac => \UmemoryAdressControl|UIDXGET|FF2|Q~q\,
	datad => \UmemoryAdressControl|UIDXGET|FF0|Q~q\,
	combout => \UmemoryAdressControl|UIDXGET|FF2|Q~0_combout\);

-- Location: FF_X45_Y39_N1
\UmemoryAdressControl|UIDXGET|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UmemoryAdressControl|UIDXGET|FF2|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UmemoryAdressControl|UIDXGET|FF2|Q~q\);

-- Location: LCCOMB_X45_Y39_N28
\UmemoryAdressControl|Umux21|M[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UmemoryAdressControl|Umux21|M[2]~2_combout\ = (\URingBufferControl|CurrentState.STATE_WR~q\ & (\UmemoryAdressControl|UIDXPUT|FF2|Q~q\)) # (!\URingBufferControl|CurrentState.STATE_WR~q\ & ((\URingBufferControl|CurrentState.STATE_PUTNOTGET~q\ & 
-- (\UmemoryAdressControl|UIDXPUT|FF2|Q~q\)) # (!\URingBufferControl|CurrentState.STATE_PUTNOTGET~q\ & ((\UmemoryAdressControl|UIDXGET|FF2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \URingBufferControl|CurrentState.STATE_WR~q\,
	datab => \UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datac => \URingBufferControl|CurrentState.STATE_PUTNOTGET~q\,
	datad => \UmemoryAdressControl|UIDXGET|FF2|Q~q\,
	combout => \UmemoryAdressControl|Umux21|M[2]~2_combout\);

-- Location: LCCOMB_X37_Y38_N28
\Uram|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~36_combout\ = (\UmemoryAdressControl|Umux21|M[2]~2_combout\ & ((\Uram|ram~33_combout\))) # (!\UmemoryAdressControl|Umux21|M[2]~2_combout\ & (\Uram|ram~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~35_combout\,
	datac => \Uram|ram~33_combout\,
	datad => \UmemoryAdressControl|Umux21|M[2]~2_combout\,
	combout => \Uram|ram~36_combout\);

-- Location: IOIBUF_X34_Y39_N15
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

-- Location: LCCOMB_X37_Y38_N10
\Uram|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~21_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & ((\D[1]~input_o\))) # (!GLOBAL(\rtl~8clkctrl_outclk\) & (\Uram|ram~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~21_combout\,
	datab => \D[1]~input_o\,
	datad => \rtl~8clkctrl_outclk\,
	combout => \Uram|ram~21_combout\);

-- Location: LCCOMB_X37_Y38_N4
\Uram|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~29_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\Uram|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[1]~input_o\,
	datac => \Uram|ram~29_combout\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \Uram|ram~29_combout\);

-- Location: LCCOMB_X36_Y38_N8
\Uram|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~25_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\Uram|ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datac => \Uram|ram~25_combout\,
	datad => \rtl~9clkctrl_outclk\,
	combout => \Uram|ram~25_combout\);

-- Location: LCCOMB_X36_Y37_N18
\Uram|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~17_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\Uram|ram~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datac => \rtl~10clkctrl_outclk\,
	datad => \Uram|ram~17_combout\,
	combout => \Uram|ram~17_combout\);

-- Location: LCCOMB_X37_Y38_N26
\Uram|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~37_combout\ = (\UmemoryAdressControl|Umux21|M[0]~0_combout\ & (((\UmemoryAdressControl|Umux21|M[1]~1_combout\)))) # (!\UmemoryAdressControl|Umux21|M[0]~0_combout\ & ((\UmemoryAdressControl|Umux21|M[1]~1_combout\ & (\Uram|ram~25_combout\)) # 
-- (!\UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\Uram|ram~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UmemoryAdressControl|Umux21|M[0]~0_combout\,
	datab => \Uram|ram~25_combout\,
	datac => \Uram|ram~17_combout\,
	datad => \UmemoryAdressControl|Umux21|M[1]~1_combout\,
	combout => \Uram|ram~37_combout\);

-- Location: LCCOMB_X37_Y38_N20
\Uram|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~38_combout\ = (\Uram|ram~37_combout\ & (((\Uram|ram~29_combout\) # (!\UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # (!\Uram|ram~37_combout\ & (\Uram|ram~21_combout\ & ((\UmemoryAdressControl|Umux21|M[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~21_combout\,
	datab => \Uram|ram~29_combout\,
	datac => \Uram|ram~37_combout\,
	datad => \UmemoryAdressControl|Umux21|M[0]~0_combout\,
	combout => \Uram|ram~38_combout\);

-- Location: LCCOMB_X37_Y37_N12
\Uram|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~13_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & ((\D[1]~input_o\))) # (!GLOBAL(\rtl~15clkctrl_outclk\) & (\Uram|ram~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~13_combout\,
	datac => \D[1]~input_o\,
	datad => \rtl~15clkctrl_outclk\,
	combout => \Uram|ram~13_combout\);

-- Location: LCCOMB_X36_Y37_N8
\Uram|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~1_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\Uram|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datac => \Uram|ram~1_combout\,
	datad => \rtl~14clkctrl_outclk\,
	combout => \Uram|ram~1_combout\);

-- Location: LCCOMB_X37_Y37_N18
\Uram|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~5_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\Uram|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \Uram|ram~5_combout\,
	combout => \Uram|ram~5_combout\);

-- Location: LCCOMB_X37_Y37_N28
\Uram|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~39_combout\ = (\UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((\UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # (!\UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UmemoryAdressControl|Umux21|M[0]~0_combout\ & ((\Uram|ram~5_combout\))) # 
-- (!\UmemoryAdressControl|Umux21|M[0]~0_combout\ & (\Uram|ram~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~1_combout\,
	datab => \Uram|ram~5_combout\,
	datac => \UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datad => \UmemoryAdressControl|Umux21|M[0]~0_combout\,
	combout => \Uram|ram~39_combout\);

-- Location: LCCOMB_X37_Y37_N16
\Uram|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~9_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & ((\D[1]~input_o\))) # (!GLOBAL(\rtl~12clkctrl_outclk\) & (\Uram|ram~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Uram|ram~9_combout\,
	datac => \D[1]~input_o\,
	datad => \rtl~12clkctrl_outclk\,
	combout => \Uram|ram~9_combout\);

-- Location: LCCOMB_X37_Y37_N26
\Uram|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~40_combout\ = (\Uram|ram~39_combout\ & ((\Uram|ram~13_combout\) # ((!\UmemoryAdressControl|Umux21|M[1]~1_combout\)))) # (!\Uram|ram~39_combout\ & (((\UmemoryAdressControl|Umux21|M[1]~1_combout\ & \Uram|ram~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~13_combout\,
	datab => \Uram|ram~39_combout\,
	datac => \UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datad => \Uram|ram~9_combout\,
	combout => \Uram|ram~40_combout\);

-- Location: LCCOMB_X37_Y38_N18
\Uram|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~41_combout\ = (\UmemoryAdressControl|Umux21|M[2]~2_combout\ & (\Uram|ram~38_combout\)) # (!\UmemoryAdressControl|Umux21|M[2]~2_combout\ & ((\Uram|ram~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~38_combout\,
	datac => \Uram|ram~40_combout\,
	datad => \UmemoryAdressControl|Umux21|M[2]~2_combout\,
	combout => \Uram|ram~41_combout\);

-- Location: IOIBUF_X34_Y39_N22
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

-- Location: LCCOMB_X38_Y38_N4
\Uram|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~22_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\Uram|ram~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datac => \Uram|ram~22_combout\,
	datad => \rtl~8clkctrl_outclk\,
	combout => \Uram|ram~22_combout\);

-- Location: LCCOMB_X38_Y38_N30
\Uram|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~26_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\Uram|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \Uram|ram~26_combout\,
	combout => \Uram|ram~26_combout\);

-- Location: LCCOMB_X38_Y37_N18
\Uram|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~18_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\Uram|ram~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datac => \rtl~10clkctrl_outclk\,
	datad => \Uram|ram~18_combout\,
	combout => \Uram|ram~18_combout\);

-- Location: LCCOMB_X38_Y38_N28
\Uram|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~42_combout\ = (\UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\Uram|ram~26_combout\) # ((\UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # (!\UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((!\UmemoryAdressControl|Umux21|M[0]~0_combout\ & 
-- \Uram|ram~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~26_combout\,
	datab => \UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datac => \UmemoryAdressControl|Umux21|M[0]~0_combout\,
	datad => \Uram|ram~18_combout\,
	combout => \Uram|ram~42_combout\);

-- Location: LCCOMB_X38_Y38_N20
\Uram|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~30_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\Uram|ram~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \Uram|ram~30_combout\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \Uram|ram~30_combout\);

-- Location: LCCOMB_X38_Y38_N26
\Uram|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~43_combout\ = (\Uram|ram~42_combout\ & (((\Uram|ram~30_combout\) # (!\UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # (!\Uram|ram~42_combout\ & (\Uram|ram~22_combout\ & (\UmemoryAdressControl|Umux21|M[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~22_combout\,
	datab => \Uram|ram~42_combout\,
	datac => \UmemoryAdressControl|Umux21|M[0]~0_combout\,
	datad => \Uram|ram~30_combout\,
	combout => \Uram|ram~43_combout\);

-- Location: LCCOMB_X38_Y37_N24
\Uram|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~10_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\Uram|ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \Uram|ram~10_combout\,
	datad => \rtl~12clkctrl_outclk\,
	combout => \Uram|ram~10_combout\);

-- Location: LCCOMB_X36_Y37_N22
\Uram|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~2_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\Uram|ram~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[2]~input_o\,
	datac => \Uram|ram~2_combout\,
	datad => \rtl~14clkctrl_outclk\,
	combout => \Uram|ram~2_combout\);

-- Location: LCCOMB_X37_Y37_N10
\Uram|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~6_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\Uram|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \Uram|ram~6_combout\,
	combout => \Uram|ram~6_combout\);

-- Location: LCCOMB_X37_Y37_N4
\Uram|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~44_combout\ = (\UmemoryAdressControl|Umux21|M[0]~0_combout\ & (((\UmemoryAdressControl|Umux21|M[1]~1_combout\) # (\Uram|ram~6_combout\)))) # (!\UmemoryAdressControl|Umux21|M[0]~0_combout\ & (\Uram|ram~2_combout\ & 
-- (!\UmemoryAdressControl|Umux21|M[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~2_combout\,
	datab => \UmemoryAdressControl|Umux21|M[0]~0_combout\,
	datac => \UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datad => \Uram|ram~6_combout\,
	combout => \Uram|ram~44_combout\);

-- Location: LCCOMB_X37_Y37_N24
\Uram|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~14_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & ((\D[2]~input_o\))) # (!GLOBAL(\rtl~15clkctrl_outclk\) & (\Uram|ram~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Uram|ram~14_combout\,
	datac => \D[2]~input_o\,
	datad => \rtl~15clkctrl_outclk\,
	combout => \Uram|ram~14_combout\);

-- Location: LCCOMB_X37_Y37_N22
\Uram|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~45_combout\ = (\UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\Uram|ram~44_combout\ & ((\Uram|ram~14_combout\))) # (!\Uram|ram~44_combout\ & (\Uram|ram~10_combout\)))) # (!\UmemoryAdressControl|Umux21|M[1]~1_combout\ & 
-- (((\Uram|ram~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datab => \Uram|ram~10_combout\,
	datac => \Uram|ram~44_combout\,
	datad => \Uram|ram~14_combout\,
	combout => \Uram|ram~45_combout\);

-- Location: LCCOMB_X37_Y38_N16
\Uram|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~46_combout\ = (\UmemoryAdressControl|Umux21|M[2]~2_combout\ & (\Uram|ram~43_combout\)) # (!\UmemoryAdressControl|Umux21|M[2]~2_combout\ & ((\Uram|ram~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Uram|ram~43_combout\,
	datac => \Uram|ram~45_combout\,
	datad => \UmemoryAdressControl|Umux21|M[2]~2_combout\,
	combout => \Uram|ram~46_combout\);

-- Location: IOIBUF_X36_Y39_N22
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

-- Location: LCCOMB_X38_Y38_N22
\Uram|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~23_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\Uram|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datac => \Uram|ram~23_combout\,
	datad => \rtl~8clkctrl_outclk\,
	combout => \Uram|ram~23_combout\);

-- Location: LCCOMB_X38_Y37_N10
\Uram|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~19_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\Uram|ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datac => \rtl~10clkctrl_outclk\,
	datad => \Uram|ram~19_combout\,
	combout => \Uram|ram~19_combout\);

-- Location: LCCOMB_X38_Y38_N24
\Uram|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~27_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\Uram|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \Uram|ram~27_combout\,
	combout => \Uram|ram~27_combout\);

-- Location: LCCOMB_X38_Y38_N8
\Uram|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~47_combout\ = (\UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((\UmemoryAdressControl|Umux21|M[0]~0_combout\) # (\Uram|ram~27_combout\)))) # (!\UmemoryAdressControl|Umux21|M[1]~1_combout\ & (\Uram|ram~19_combout\ & 
-- (!\UmemoryAdressControl|Umux21|M[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~19_combout\,
	datab => \UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datac => \UmemoryAdressControl|Umux21|M[0]~0_combout\,
	datad => \Uram|ram~27_combout\,
	combout => \Uram|ram~47_combout\);

-- Location: LCCOMB_X38_Y38_N18
\Uram|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~31_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\Uram|ram~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datab => \Uram|ram~31_combout\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \Uram|ram~31_combout\);

-- Location: LCCOMB_X38_Y38_N14
\Uram|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~48_combout\ = (\UmemoryAdressControl|Umux21|M[0]~0_combout\ & ((\Uram|ram~47_combout\ & ((\Uram|ram~31_combout\))) # (!\Uram|ram~47_combout\ & (\Uram|ram~23_combout\)))) # (!\UmemoryAdressControl|Umux21|M[0]~0_combout\ & 
-- (((\Uram|ram~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~23_combout\,
	datab => \UmemoryAdressControl|Umux21|M[0]~0_combout\,
	datac => \Uram|ram~47_combout\,
	datad => \Uram|ram~31_combout\,
	combout => \Uram|ram~48_combout\);

-- Location: LCCOMB_X37_Y37_N30
\Uram|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~11_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\Uram|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[3]~input_o\,
	datac => \Uram|ram~11_combout\,
	datad => \rtl~12clkctrl_outclk\,
	combout => \Uram|ram~11_combout\);

-- Location: LCCOMB_X39_Y37_N28
\Uram|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~3_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\Uram|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datac => \rtl~14clkctrl_outclk\,
	datad => \Uram|ram~3_combout\,
	combout => \Uram|ram~3_combout\);

-- Location: LCCOMB_X39_Y37_N18
\Uram|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~7_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\Uram|ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \Uram|ram~7_combout\,
	combout => \Uram|ram~7_combout\);

-- Location: LCCOMB_X39_Y37_N24
\Uram|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~49_combout\ = (\UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((\UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # (!\UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UmemoryAdressControl|Umux21|M[0]~0_combout\ & ((\Uram|ram~7_combout\))) # 
-- (!\UmemoryAdressControl|Umux21|M[0]~0_combout\ & (\Uram|ram~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datab => \Uram|ram~3_combout\,
	datac => \UmemoryAdressControl|Umux21|M[0]~0_combout\,
	datad => \Uram|ram~7_combout\,
	combout => \Uram|ram~49_combout\);

-- Location: LCCOMB_X38_Y37_N8
\Uram|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~15_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\Uram|ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datac => \Uram|ram~15_combout\,
	datad => \rtl~15clkctrl_outclk\,
	combout => \Uram|ram~15_combout\);

-- Location: LCCOMB_X38_Y37_N4
\Uram|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~50_combout\ = (\Uram|ram~49_combout\ & (((\Uram|ram~15_combout\) # (!\UmemoryAdressControl|Umux21|M[1]~1_combout\)))) # (!\Uram|ram~49_combout\ & (\Uram|ram~11_combout\ & ((\UmemoryAdressControl|Umux21|M[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Uram|ram~11_combout\,
	datab => \Uram|ram~49_combout\,
	datac => \Uram|ram~15_combout\,
	datad => \UmemoryAdressControl|Umux21|M[1]~1_combout\,
	combout => \Uram|ram~50_combout\);

-- Location: LCCOMB_X37_Y38_N30
\Uram|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Uram|ram~51_combout\ = (\UmemoryAdressControl|Umux21|M[2]~2_combout\ & (\Uram|ram~48_combout\)) # (!\UmemoryAdressControl|Umux21|M[2]~2_combout\ & ((\Uram|ram~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Uram|ram~48_combout\,
	datac => \Uram|ram~50_combout\,
	datad => \UmemoryAdressControl|Umux21|M[2]~2_combout\,
	combout => \Uram|ram~51_combout\);

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

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Wreg <= \Wreg~output_o\;

ww_DAC <= \DAC~output_o\;
END structure;


