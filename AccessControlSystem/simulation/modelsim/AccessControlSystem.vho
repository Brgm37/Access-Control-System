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

-- DATE "06/16/2023 15:53:05"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	AccessControlSystem IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	Ln : IN std_logic_vector(3 DOWNTO 0);
	Maintenance : IN std_logic;
	Cl : OUT std_logic_vector(2 DOWNTO 0);
	Door : OUT std_logic_vector(4 DOWNTO 0);
	OnOff : OUT std_logic;
	busy : OUT std_logic;
	sensor : IN std_logic;
	lcd : OUT std_logic_vector(4 DOWNTO 0);
	isValid : OUT std_logic;
	Not_SS_door : OUT std_logic;
	Not_SS_LCD : OUT std_logic;
	en : OUT std_logic;
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	HEX4 : OUT std_logic_vector(7 DOWNTO 0);
	HEX5 : OUT std_logic_vector(7 DOWNTO 0)
	);
END AccessControlSystem;

-- Design Ports Information
-- Cl[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cl[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cl[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Door[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Door[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Door[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Door[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Door[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OnOff	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd[0]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd[1]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd[3]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- isValid	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Not_SS_door	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Not_SS_LCD	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Maintenance	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ln[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AccessControlSystem IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Ln : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Maintenance : std_logic;
SIGNAL ww_Cl : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Door : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_OnOff : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL ww_sensor : std_logic;
SIGNAL ww_lcd : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_isValid : std_logic;
SIGNAL ww_Not_SS_door : std_logic;
SIGNAL ww_Not_SS_LCD : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UKeyBoardReader|UCLKDIV|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UDoor_mecanism|shift_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UDoor_mecanism|UCLK|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~12clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~15clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~14clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~13clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \USLCDC|UCLKDIV|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|count[0]~7_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~1\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~2_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~3\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~4_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~5\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~6_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~7\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~8_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|count~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~9\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~10_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~11\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~12_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~13\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~14_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|count~1_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~15\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~16_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~17\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~18_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~19\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~20_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~21\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~22_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Equal0~3_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Equal0~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Equal0~1_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Equal0~2_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~23\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~24_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|count~2_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~25\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~26_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~27\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~28_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|count~3_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~29\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~30_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|count~4_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Equal0~4_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~31\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~32_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|count~5_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~33\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~34_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|count~6_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~35\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~36_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~37\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~38_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~39\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~40_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~41\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~42_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~43\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~44_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~45\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~46_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~47\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~48_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~49\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~50_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~51\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~52_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~53\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~54_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~55\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~56_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~57\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~58_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~59\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~60_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~61\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Add0~62_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Equal0~8_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Equal0~6_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Equal0~5_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Equal0~7_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Equal0~9_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|Equal0~10_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|tmp~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|tmp~q\ : std_logic;
SIGNAL \UKeyBoardReader|UCLKDIV|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \Ln[1]~input_o\ : std_logic;
SIGNAL \Ln[0]~input_o\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~0_combout\ : std_logic;
SIGNAL \Ln[2]~input_o\ : std_logic;
SIGNAL \Ln[3]~input_o\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_INCPUT~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCPUT~q\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR~clkctrl_outclk\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF1|Q~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF1|Q~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF2|Q~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF2|Q~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2_combout\ : std_logic;
SIGNAL \rtl~12_combout\ : std_logic;
SIGNAL \rtl~12clkctrl_outclk\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~8_combout\ : std_logic;
SIGNAL \rtl~15_combout\ : std_logic;
SIGNAL \rtl~15clkctrl_outclk\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~12_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ : std_logic;
SIGNAL \rtl~13_combout\ : std_logic;
SIGNAL \rtl~13clkctrl_outclk\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~4_combout\ : std_logic;
SIGNAL \rtl~14_combout\ : std_logic;
SIGNAL \rtl~14clkctrl_outclk\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~34_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~35_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \rtl~9clkctrl_outclk\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~24_combout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \rtl~10clkctrl_outclk\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~16_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~32_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \rtl~8clkctrl_outclk\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~20_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \rtl~11clkctrl_outclk\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~28_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~33_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~36_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UOutputBuffer|UOutputRegister|U0FFD|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \Maintenance~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\ : std_logic;
SIGNAL \USDC|USerialReceiver|counter1|FF0|Q~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \USDC|USerialReceiver|counter1|FF1|Q~0_combout\ : std_logic;
SIGNAL \USDC|USerialReceiver|counter1|FF1|Q~q\ : std_logic;
SIGNAL \USDC|USerialReceiver|counter1|FF2|Q~0_combout\ : std_logic;
SIGNAL \USDC|USerialReceiver|counter1|FF2|Q~q\ : std_logic;
SIGNAL \USDC|USerialReceiver|serialControl1|Selector0~0_combout\ : std_logic;
SIGNAL \sensor~input_o\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~1_cout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~2_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~3\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~4_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~5\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~6_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~7\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~8_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~9\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~10_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|count~0_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~11\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~12_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~13\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~14_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~15\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~16_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|count~1_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~17\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~18_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~19\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~20_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Equal0~2_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~21\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~22_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~23\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~24_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~25\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~26_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|count~2_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~27\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~28_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Equal0~3_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Equal0~0_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Equal0~1_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~29\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~30_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|count~3_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~31\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~32_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|count~4_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~33\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~34_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|count~5_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~35\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~36_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|count~6_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~37\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~38_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~39\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~40_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~41\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~42_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~43\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~44_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~45\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~46_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~47\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~48_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~49\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~50_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~51\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~52_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~53\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~54_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~55\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~56_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~57\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~58_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~59\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Add0~60_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Equal0~7_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Equal0~5_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Equal0~4_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Equal0~6_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Equal0~8_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|Equal0~9_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|tmp~0_combout\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|tmp~q\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \UDoor_mecanism|U6|cnt_atual_pl[0]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \USDC|USerialReceiver|shiftReg51|FF0|Q~feeder_combout\ : std_logic;
SIGNAL \USDC|USerialReceiver|serialControl1|Selector1~1_combout\ : std_logic;
SIGNAL \USDC|USerialReceiver|serialControl1|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \USDC|USerialReceiver|serialControl1|Selector1~0_combout\ : std_logic;
SIGNAL \USDC|USerialReceiver|shiftReg51|FF0|Q~q\ : std_logic;
SIGNAL \USDC|USerialReceiver|shiftReg51|FF1|Q~feeder_combout\ : std_logic;
SIGNAL \USDC|USerialReceiver|shiftReg51|FF1|Q~q\ : std_logic;
SIGNAL \USDC|USerialReceiver|shiftReg51|FF2|Q~feeder_combout\ : std_logic;
SIGNAL \USDC|USerialReceiver|shiftReg51|FF2|Q~q\ : std_logic;
SIGNAL \USDC|USerialReceiver|shiftReg51|FF3|Q~feeder_combout\ : std_logic;
SIGNAL \USDC|USerialReceiver|shiftReg51|FF3|Q~q\ : std_logic;
SIGNAL \USDC|USerialReceiver|shiftReg51|FF4|Q~feeder_combout\ : std_logic;
SIGNAL \USDC|USerialReceiver|shiftReg51|FF4|Q~q\ : std_logic;
SIGNAL \USDC|UDispatcher|Selector1~0_combout\ : std_logic;
SIGNAL \USDC|UDispatcher|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \USDC|UDispatcher|Selector0~1_combout\ : std_logic;
SIGNAL \USDC|UDispatcher|Selector0~0_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U7|dataShift_in[8]~0_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U7|dataShift_in[6]~7_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U7|dataShift_in[7]~8_combout\ : std_logic;
SIGNAL \UDoor_mecanism|Equal0~1_combout\ : std_logic;
SIGNAL \USDC|UDispatcher|OnOff~0_combout\ : std_logic;
SIGNAL \USDC|UDispatcher|Selector0~2_combout\ : std_logic;
SIGNAL \USDC|UDispatcher|CurrentState.STATE_OPENING~q\ : std_logic;
SIGNAL \UDoor_mecanism|U7|dataShift_in[4]~5_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U7|dataShift_in[5]~6_combout\ : std_logic;
SIGNAL \UDoor_mecanism|Equal1~1_combout\ : std_logic;
SIGNAL \UDoor_mecanism|Equal1~2_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U7|dataShift_in[2]~3_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U7|dataShift_in[1]~2_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U7|dataShift_in[0]~1_combout\ : std_logic;
SIGNAL \UDoor_mecanism|Equal1~0_combout\ : std_logic;
SIGNAL \USDC|UDispatcher|OnOff~1_combout\ : std_logic;
SIGNAL \USDC|UDispatcher|OnOff~combout\ : std_logic;
SIGNAL \UDoor_mecanism|U6|cnt_atual_pl[1]~4_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U6|U1|SC:2:U1|S~combout\ : std_logic;
SIGNAL \UDoor_mecanism|U6|cnt_atual_pl[2]~1_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U6|U1|SC:3:U1|S~combout\ : std_logic;
SIGNAL \UDoor_mecanism|U6|cnt_atual_pl[3]~0_combout\ : std_logic;
SIGNAL \UDoor_mecanism|shift_clk~2_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U6|cnt_atual_pl[4]~3_combout\ : std_logic;
SIGNAL \UDoor_mecanism|shift_clk~0_combout\ : std_logic;
SIGNAL \UDoor_mecanism|shift_clk~combout\ : std_logic;
SIGNAL \UDoor_mecanism|shift_clk~clkctrl_outclk\ : std_logic;
SIGNAL \UDoor_mecanism|U7|dataShift_in[3]~4_combout\ : std_logic;
SIGNAL \UDoor_mecanism|Equal0~0_combout\ : std_logic;
SIGNAL \USDC|UDispatcher|Selector3~1_combout\ : std_logic;
SIGNAL \USDC|UDispatcher|Selector2~0_combout\ : std_logic;
SIGNAL \USDC|UDispatcher|CurrentState.STATE_CLOSING~q\ : std_logic;
SIGNAL \USDC|UDispatcher|Selector3~0_combout\ : std_logic;
SIGNAL \USDC|UDispatcher|Selector3~2_combout\ : std_logic;
SIGNAL \USDC|UDispatcher|Selector3~4_combout\ : std_logic;
SIGNAL \USDC|UDispatcher|CurrentState.STATE_DONE~q\ : std_logic;
SIGNAL \USDC|UDispatcher|Selector3~3_combout\ : std_logic;
SIGNAL \USDC|USerialReceiver|serialControl1|Selector0~1_combout\ : std_logic;
SIGNAL \USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\ : std_logic;
SIGNAL \USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~clkctrl_outclk\ : std_logic;
SIGNAL \USDC|USerialReceiver|counter1|FF0|Q~q\ : std_logic;
SIGNAL \USDC|USerialReceiver|serialControl1|Selector2~0_combout\ : std_logic;
SIGNAL \USDC|USerialReceiver|serialControl1|Selector2~1_combout\ : std_logic;
SIGNAL \USDC|USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~2_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~11_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~15_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~3_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~7_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~49_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~50_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~31_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~23_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~27_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~19_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~47_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~48_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~51_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UOutputBuffer|UOutputRegister|U3FFD|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~26_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~18_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~42_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~30_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~22_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~43_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~10_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~14_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~6_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~2_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~44_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~45_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~46_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UOutputBuffer|UOutputRegister|U2FFD|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~9_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~13_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~5_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~1_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~39_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~40_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~21_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~29_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~25_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~17_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~37_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~38_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|Uram|ram~41_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UOutputBuffer|UOutputRegister|U1FFD|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~14\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \UKeyBoardReader|UOutputBuffer|UBufferControl|Selector0~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \UKeyBoardReader|UOutputBuffer|UBufferControl|NextState.STATE_WR~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR~q\ : std_logic;
SIGNAL \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_CLK_ZERO~feeder_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_CLK_ZERO~q\ : std_logic;
SIGNAL \UKeyBoardReader|UOutputBuffer|UBufferControl|Selector1~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_RECEIVING~q\ : std_logic;
SIGNAL \UKeyBoardReader|UOutputBuffer|UBufferControl|NextState.STATE_PULSING~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_PULSING~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|sOr~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA2|HA1|S~combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U2FFD|Q~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA2|CO~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA3|HA1|S~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U3FFD|Q~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_NOTPUTGET~3_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|GenerateNextState~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_NOTPUTGET~2_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_NOTPUTGET~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|Selector1~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_RE~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_INCGET~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA1|HA1|S~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U1FFD|Q~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|UmemoryAdressControl|full~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|Selector0~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|Selector0~1_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_PUTNOTGET~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_PUTNOTGET~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~feeder_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|Selector2~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_DAC~q\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyControl|Selector1~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyControl|Selector0~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_SCANNING~q\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~1_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|I0~combout\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|I1~combout\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|I2~combout\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UshiftReg5|FF0|Q~feeder_combout\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UCounter|FF0|Q~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|USerialControl|Selector1~1_combout\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|USerialControl|Selector2~0_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~0_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Equal0~0_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Equal0~2_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Equal0~3_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Equal0~1_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Equal0~4_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|count~0_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~1\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~2_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~3\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~4_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|count~1_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~5\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~6_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~7\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~8_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~9\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~10_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~11\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~12_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~13\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~14_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~15\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~16_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~17\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~18_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~19\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~20_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~21\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~22_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~23\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~24_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~25\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~26_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~27\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~28_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~29\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~30_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~31\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~32_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~33\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~34_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~35\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~36_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~37\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~38_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~39\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~40_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~41\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~42_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~43\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~44_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Equal0~6_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~45\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~46_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~47\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~48_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~49\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~50_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~51\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~52_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~53\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~54_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~55\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~56_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~57\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~58_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~59\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Add0~60_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Equal0~8_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Equal0~7_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Equal0~5_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|Equal0~9_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|tmp~0_combout\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|tmp~q\ : std_logic;
SIGNAL \USLCDC|UCLKDIV|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \USLCDC|UDispatcher|Selector1~0_combout\ : std_logic;
SIGNAL \USLCDC|UDispatcher|CurrentState.STATE_WAITING~q\ : std_logic;
SIGNAL \USLCDC|UDispatcher|Selector0~0_combout\ : std_logic;
SIGNAL \USLCDC|UDispatcher|CurrentState.STATE_DATA~q\ : std_logic;
SIGNAL \USLCDC|UDispatcher|Selector2~0_combout\ : std_logic;
SIGNAL \USLCDC|UDispatcher|CurrentState.STATE_DONE~q\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|USerialControl|Selector2~1_combout\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|USerialControl|Selector0~0_combout\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|USerialControl|Selector0~1_combout\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|USerialControl|Selector0~2_combout\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~clkctrl_outclk\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UCounter|FF0|Q~q\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UCounter|FF1|Q~0_combout\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UCounter|FF1|Q~q\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UCounter|FF2|Q~0_combout\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UCounter|FF2|Q~q\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|USerialControl|Selector1~0_combout\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UshiftReg5|FF0|Q~q\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UshiftReg5|FF1|Q~feeder_combout\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UshiftReg5|FF1|Q~q\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UshiftReg5|FF2|Q~feeder_combout\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UshiftReg5|FF2|Q~q\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UshiftReg5|FF3|Q~feeder_combout\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UshiftReg5|FF3|Q~q\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UshiftReg5|FF4|Q~feeder_combout\ : std_logic;
SIGNAL \USLCDC|USerialReceiver|UshiftReg5|FF4|Q~q\ : std_logic;
SIGNAL \UDoor_mecanism|U0|dOut[1]~0_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U5|dOut~0_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U1|dOut[1]~0_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U4|dOut~0_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U2|dOut[1]~0_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U3|dOut~0_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \UDoor_mecanism|UCLK|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UDoor_mecanism|U7|U1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \UKeyBoardReader|UCLKDIV|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \UDoor_mecanism|U6|U2|Q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \USLCDC|UCLKDIV|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UDoor_mecanism|U3|ALT_INV_dOut~0_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U4|ALT_INV_dOut~0_combout\ : std_logic;
SIGNAL \UDoor_mecanism|U5|ALT_INV_dOut~0_combout\ : std_logic;
SIGNAL \UDoor_mecanism|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \UDoor_mecanism|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \UDoor_mecanism|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|ALT_INV_I2~combout\ : std_logic;
SIGNAL \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|ALT_INV_I1~combout\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_clk <= clk;
ww_rst <= rst;
ww_Ln <= Ln;
ww_Maintenance <= Maintenance;
Cl <= ww_Cl;
Door <= ww_Door;
OnOff <= ww_OnOff;
busy <= ww_busy;
ww_sensor <= sensor;
lcd <= ww_lcd;
isValid <= ww_isValid;
Not_SS_door <= ww_Not_SS_door;
Not_SS_LCD <= ww_Not_SS_LCD;
en <= ww_en;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR~q\);

\UKeyBoardReader|UCLKDIV|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \UKeyBoardReader|UCLKDIV|tmp~q\);

\UDoor_mecanism|shift_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \UDoor_mecanism|shift_clk~combout\);

\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & 
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

\UDoor_mecanism|UCLK|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \UDoor_mecanism|UCLK|tmp~q\);

\rtl~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~9_combout\);

\rtl~12clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~12_combout\);

\rtl~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~8_combout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\rtl~15clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~15_combout\);

\rtl~14clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~14_combout\);

\rtl~11clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~11_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rtl~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~10_combout\);

\rtl~13clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~13_combout\);

\USLCDC|UCLKDIV|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \USLCDC|UCLKDIV|tmp~q\);

\USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\);

\USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\);
\UDoor_mecanism|U3|ALT_INV_dOut~0_combout\ <= NOT \UDoor_mecanism|U3|dOut~0_combout\;
\UDoor_mecanism|U4|ALT_INV_dOut~0_combout\ <= NOT \UDoor_mecanism|U4|dOut~0_combout\;
\UDoor_mecanism|U5|ALT_INV_dOut~0_combout\ <= NOT \UDoor_mecanism|U5|dOut~0_combout\;
\UDoor_mecanism|ALT_INV_Equal1~2_combout\ <= NOT \UDoor_mecanism|Equal1~2_combout\;
\UDoor_mecanism|ALT_INV_Equal1~1_combout\ <= NOT \UDoor_mecanism|Equal1~1_combout\;
\UDoor_mecanism|ALT_INV_Equal1~0_combout\ <= NOT \UDoor_mecanism|Equal1~0_combout\;
\UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|ALT_INV_I2~combout\ <= NOT \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|I2~combout\;
\UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|ALT_INV_I1~combout\ <= NOT \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|I1~combout\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;

-- Location: FF_X45_Y40_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LCCOMB_X46_Y41_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LCCOMB_X46_Y40_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LCCOMB_X46_Y40_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X46_Y40_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: LCCOMB_X45_Y40_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\);

-- Location: LCCOMB_X44_Y52_N8
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

-- Location: LCCOMB_X45_Y41_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X45_Y41_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\);

-- Location: LCCOMB_X45_Y41_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\);

-- Location: IOOBUF_X38_Y0_N9
\Cl[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|I0~combout\,
	devoe => ww_devoe,
	o => ww_Cl(0));

-- Location: IOOBUF_X38_Y0_N16
\Cl[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|ALT_INV_I1~combout\,
	devoe => ww_devoe,
	o => ww_Cl(1));

-- Location: IOOBUF_X34_Y0_N23
\Cl[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|ALT_INV_I2~combout\,
	devoe => ww_devoe,
	o => ww_Cl(2));

-- Location: IOOBUF_X51_Y54_N16
\Door[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USDC|USerialReceiver|shiftReg51|FF0|Q~q\,
	devoe => ww_devoe,
	o => ww_Door(0));

-- Location: IOOBUF_X46_Y54_N9
\Door[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USDC|USerialReceiver|shiftReg51|FF1|Q~q\,
	devoe => ww_devoe,
	o => ww_Door(1));

-- Location: IOOBUF_X56_Y54_N30
\Door[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USDC|USerialReceiver|shiftReg51|FF2|Q~q\,
	devoe => ww_devoe,
	o => ww_Door(2));

-- Location: IOOBUF_X58_Y54_N23
\Door[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USDC|USerialReceiver|shiftReg51|FF3|Q~q\,
	devoe => ww_devoe,
	o => ww_Door(3));

-- Location: IOOBUF_X66_Y54_N23
\Door[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USDC|UDispatcher|CurrentState.STATE_OPENING~q\,
	devoe => ww_devoe,
	o => ww_Door(4));

-- Location: IOOBUF_X51_Y54_N9
\OnOff~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USDC|UDispatcher|OnOff~combout\,
	devoe => ww_devoe,
	o => ww_OnOff);

-- Location: IOOBUF_X56_Y54_N9
\busy~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\,
	devoe => ww_devoe,
	o => ww_busy);

-- Location: IOOBUF_X20_Y0_N9
\lcd[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USLCDC|USerialReceiver|UshiftReg5|FF0|Q~q\,
	devoe => ww_devoe,
	o => ww_lcd(0));

-- Location: IOOBUF_X20_Y0_N2
\lcd[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USLCDC|USerialReceiver|UshiftReg5|FF1|Q~q\,
	devoe => ww_devoe,
	o => ww_lcd(1));

-- Location: IOOBUF_X34_Y0_N2
\lcd[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USLCDC|USerialReceiver|UshiftReg5|FF2|Q~q\,
	devoe => ww_devoe,
	o => ww_lcd(2));

-- Location: IOOBUF_X36_Y0_N9
\lcd[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USLCDC|USerialReceiver|UshiftReg5|FF3|Q~q\,
	devoe => ww_devoe,
	o => ww_lcd(3));

-- Location: IOOBUF_X24_Y0_N2
\lcd[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USLCDC|USerialReceiver|UshiftReg5|FF4|Q~q\,
	devoe => ww_devoe,
	o => ww_lcd(4));

-- Location: IOOBUF_X46_Y54_N23
\isValid~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_RECEIVING~q\,
	devoe => ww_devoe,
	o => ww_isValid);

-- Location: IOOBUF_X46_Y54_N2
\Not_SS_door~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	devoe => ww_devoe,
	o => ww_Not_SS_door);

-- Location: IOOBUF_X49_Y54_N9
\Not_SS_LCD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	devoe => ww_devoe,
	o => ww_Not_SS_LCD);

-- Location: IOOBUF_X14_Y0_N9
\en~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \USLCDC|UDispatcher|CurrentState.STATE_DATA~q\,
	devoe => ww_devoe,
	o => ww_en);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U5|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(7));

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U4|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(7));

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|ALT_INV_Equal1~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|ALT_INV_Equal1~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U3|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(7));

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|ALT_INV_Equal1~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|ALT_INV_Equal1~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U2|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U3|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X78_Y35_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(7));

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|ALT_INV_Equal1~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U1|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U4|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X78_Y43_N23
\HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(7));

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|ALT_INV_Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U0|dOut[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UDoor_mecanism|U5|ALT_INV_dOut~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X78_Y37_N9
\HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(7));

-- Location: IOOBUF_X0_Y28_N23
\altera_reserved_tdo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

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

-- Location: LCCOMB_X57_Y35_N0
\UKeyBoardReader|UCLKDIV|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~0_combout\ = \UKeyBoardReader|UCLKDIV|count\(0) $ (GND)
-- \UKeyBoardReader|UCLKDIV|Add0~1\ = CARRY(!\UKeyBoardReader|UCLKDIV|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(0),
	datad => VCC,
	combout => \UKeyBoardReader|UCLKDIV|Add0~0_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~1\);

-- Location: LCCOMB_X56_Y35_N18
\UKeyBoardReader|UCLKDIV|count[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|count[0]~7_combout\ = !\UKeyBoardReader|UCLKDIV|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UKeyBoardReader|UCLKDIV|Add0~0_combout\,
	combout => \UKeyBoardReader|UCLKDIV|count[0]~7_combout\);

-- Location: FF_X56_Y35_N19
\UKeyBoardReader|UCLKDIV|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|count[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(0));

-- Location: LCCOMB_X57_Y35_N2
\UKeyBoardReader|UCLKDIV|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~2_combout\ = (\UKeyBoardReader|UCLKDIV|count\(1) & (!\UKeyBoardReader|UCLKDIV|Add0~1\)) # (!\UKeyBoardReader|UCLKDIV|count\(1) & ((\UKeyBoardReader|UCLKDIV|Add0~1\) # (GND)))
-- \UKeyBoardReader|UCLKDIV|Add0~3\ = CARRY((!\UKeyBoardReader|UCLKDIV|Add0~1\) # (!\UKeyBoardReader|UCLKDIV|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|count\(1),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~1\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~2_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~3\);

-- Location: FF_X57_Y35_N3
\UKeyBoardReader|UCLKDIV|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(1));

-- Location: LCCOMB_X57_Y35_N4
\UKeyBoardReader|UCLKDIV|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~4_combout\ = (\UKeyBoardReader|UCLKDIV|count\(2) & (\UKeyBoardReader|UCLKDIV|Add0~3\ $ (GND))) # (!\UKeyBoardReader|UCLKDIV|count\(2) & (!\UKeyBoardReader|UCLKDIV|Add0~3\ & VCC))
-- \UKeyBoardReader|UCLKDIV|Add0~5\ = CARRY((\UKeyBoardReader|UCLKDIV|count\(2) & !\UKeyBoardReader|UCLKDIV|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|count\(2),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~3\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~4_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~5\);

-- Location: FF_X57_Y35_N5
\UKeyBoardReader|UCLKDIV|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(2));

-- Location: LCCOMB_X57_Y35_N6
\UKeyBoardReader|UCLKDIV|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~6_combout\ = (\UKeyBoardReader|UCLKDIV|count\(3) & (!\UKeyBoardReader|UCLKDIV|Add0~5\)) # (!\UKeyBoardReader|UCLKDIV|count\(3) & ((\UKeyBoardReader|UCLKDIV|Add0~5\) # (GND)))
-- \UKeyBoardReader|UCLKDIV|Add0~7\ = CARRY((!\UKeyBoardReader|UCLKDIV|Add0~5\) # (!\UKeyBoardReader|UCLKDIV|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(3),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~5\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~6_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~7\);

-- Location: FF_X57_Y35_N7
\UKeyBoardReader|UCLKDIV|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(3));

-- Location: LCCOMB_X57_Y35_N8
\UKeyBoardReader|UCLKDIV|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~8_combout\ = (\UKeyBoardReader|UCLKDIV|count\(4) & (\UKeyBoardReader|UCLKDIV|Add0~7\ $ (GND))) # (!\UKeyBoardReader|UCLKDIV|count\(4) & (!\UKeyBoardReader|UCLKDIV|Add0~7\ & VCC))
-- \UKeyBoardReader|UCLKDIV|Add0~9\ = CARRY((\UKeyBoardReader|UCLKDIV|count\(4) & !\UKeyBoardReader|UCLKDIV|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|count\(4),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~7\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~8_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~9\);

-- Location: LCCOMB_X56_Y35_N6
\UKeyBoardReader|UCLKDIV|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|count~0_combout\ = (\UKeyBoardReader|UCLKDIV|Add0~8_combout\ & !\UKeyBoardReader|UCLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UKeyBoardReader|UCLKDIV|Add0~8_combout\,
	datad => \UKeyBoardReader|UCLKDIV|Equal0~10_combout\,
	combout => \UKeyBoardReader|UCLKDIV|count~0_combout\);

-- Location: FF_X56_Y35_N7
\UKeyBoardReader|UCLKDIV|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(4));

-- Location: LCCOMB_X57_Y35_N10
\UKeyBoardReader|UCLKDIV|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~10_combout\ = (\UKeyBoardReader|UCLKDIV|count\(5) & (!\UKeyBoardReader|UCLKDIV|Add0~9\)) # (!\UKeyBoardReader|UCLKDIV|count\(5) & ((\UKeyBoardReader|UCLKDIV|Add0~9\) # (GND)))
-- \UKeyBoardReader|UCLKDIV|Add0~11\ = CARRY((!\UKeyBoardReader|UCLKDIV|Add0~9\) # (!\UKeyBoardReader|UCLKDIV|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(5),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~9\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~10_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~11\);

-- Location: FF_X57_Y35_N11
\UKeyBoardReader|UCLKDIV|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(5));

-- Location: LCCOMB_X57_Y35_N12
\UKeyBoardReader|UCLKDIV|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~12_combout\ = (\UKeyBoardReader|UCLKDIV|count\(6) & (\UKeyBoardReader|UCLKDIV|Add0~11\ $ (GND))) # (!\UKeyBoardReader|UCLKDIV|count\(6) & (!\UKeyBoardReader|UCLKDIV|Add0~11\ & VCC))
-- \UKeyBoardReader|UCLKDIV|Add0~13\ = CARRY((\UKeyBoardReader|UCLKDIV|count\(6) & !\UKeyBoardReader|UCLKDIV|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(6),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~11\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~12_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~13\);

-- Location: FF_X57_Y35_N13
\UKeyBoardReader|UCLKDIV|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(6));

-- Location: LCCOMB_X57_Y35_N14
\UKeyBoardReader|UCLKDIV|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~14_combout\ = (\UKeyBoardReader|UCLKDIV|count\(7) & (!\UKeyBoardReader|UCLKDIV|Add0~13\)) # (!\UKeyBoardReader|UCLKDIV|count\(7) & ((\UKeyBoardReader|UCLKDIV|Add0~13\) # (GND)))
-- \UKeyBoardReader|UCLKDIV|Add0~15\ = CARRY((!\UKeyBoardReader|UCLKDIV|Add0~13\) # (!\UKeyBoardReader|UCLKDIV|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(7),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~13\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~14_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~15\);

-- Location: LCCOMB_X56_Y35_N16
\UKeyBoardReader|UCLKDIV|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|count~1_combout\ = (\UKeyBoardReader|UCLKDIV|Add0~14_combout\ & !\UKeyBoardReader|UCLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UKeyBoardReader|UCLKDIV|Add0~14_combout\,
	datad => \UKeyBoardReader|UCLKDIV|Equal0~10_combout\,
	combout => \UKeyBoardReader|UCLKDIV|count~1_combout\);

-- Location: FF_X56_Y35_N17
\UKeyBoardReader|UCLKDIV|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(7));

-- Location: LCCOMB_X57_Y35_N16
\UKeyBoardReader|UCLKDIV|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~16_combout\ = (\UKeyBoardReader|UCLKDIV|count\(8) & (\UKeyBoardReader|UCLKDIV|Add0~15\ $ (GND))) # (!\UKeyBoardReader|UCLKDIV|count\(8) & (!\UKeyBoardReader|UCLKDIV|Add0~15\ & VCC))
-- \UKeyBoardReader|UCLKDIV|Add0~17\ = CARRY((\UKeyBoardReader|UCLKDIV|count\(8) & !\UKeyBoardReader|UCLKDIV|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|count\(8),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~15\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~16_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~17\);

-- Location: FF_X57_Y35_N17
\UKeyBoardReader|UCLKDIV|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(8));

-- Location: LCCOMB_X57_Y35_N18
\UKeyBoardReader|UCLKDIV|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~18_combout\ = (\UKeyBoardReader|UCLKDIV|count\(9) & (!\UKeyBoardReader|UCLKDIV|Add0~17\)) # (!\UKeyBoardReader|UCLKDIV|count\(9) & ((\UKeyBoardReader|UCLKDIV|Add0~17\) # (GND)))
-- \UKeyBoardReader|UCLKDIV|Add0~19\ = CARRY((!\UKeyBoardReader|UCLKDIV|Add0~17\) # (!\UKeyBoardReader|UCLKDIV|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|count\(9),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~17\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~18_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~19\);

-- Location: FF_X57_Y35_N19
\UKeyBoardReader|UCLKDIV|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(9));

-- Location: LCCOMB_X57_Y35_N20
\UKeyBoardReader|UCLKDIV|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~20_combout\ = (\UKeyBoardReader|UCLKDIV|count\(10) & (\UKeyBoardReader|UCLKDIV|Add0~19\ $ (GND))) # (!\UKeyBoardReader|UCLKDIV|count\(10) & (!\UKeyBoardReader|UCLKDIV|Add0~19\ & VCC))
-- \UKeyBoardReader|UCLKDIV|Add0~21\ = CARRY((\UKeyBoardReader|UCLKDIV|count\(10) & !\UKeyBoardReader|UCLKDIV|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|count\(10),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~19\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~20_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~21\);

-- Location: FF_X57_Y35_N21
\UKeyBoardReader|UCLKDIV|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(10));

-- Location: LCCOMB_X57_Y35_N22
\UKeyBoardReader|UCLKDIV|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~22_combout\ = (\UKeyBoardReader|UCLKDIV|count\(11) & (!\UKeyBoardReader|UCLKDIV|Add0~21\)) # (!\UKeyBoardReader|UCLKDIV|count\(11) & ((\UKeyBoardReader|UCLKDIV|Add0~21\) # (GND)))
-- \UKeyBoardReader|UCLKDIV|Add0~23\ = CARRY((!\UKeyBoardReader|UCLKDIV|Add0~21\) # (!\UKeyBoardReader|UCLKDIV|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(11),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~21\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~22_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~23\);

-- Location: FF_X57_Y35_N23
\UKeyBoardReader|UCLKDIV|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(11));

-- Location: LCCOMB_X56_Y35_N22
\UKeyBoardReader|UCLKDIV|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Equal0~3_combout\ = (!\UKeyBoardReader|UCLKDIV|count\(8) & (!\UKeyBoardReader|UCLKDIV|count\(11) & (!\UKeyBoardReader|UCLKDIV|count\(10) & !\UKeyBoardReader|UCLKDIV|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(8),
	datab => \UKeyBoardReader|UCLKDIV|count\(11),
	datac => \UKeyBoardReader|UCLKDIV|count\(10),
	datad => \UKeyBoardReader|UCLKDIV|count\(9),
	combout => \UKeyBoardReader|UCLKDIV|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y35_N20
\UKeyBoardReader|UCLKDIV|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Equal0~0_combout\ = (\UKeyBoardReader|UCLKDIV|count\(0) & !\UKeyBoardReader|UCLKDIV|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|count\(0),
	datad => \UKeyBoardReader|UCLKDIV|count\(1),
	combout => \UKeyBoardReader|UCLKDIV|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y35_N10
\UKeyBoardReader|UCLKDIV|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Equal0~1_combout\ = (\UKeyBoardReader|UCLKDIV|count\(7) & (!\UKeyBoardReader|UCLKDIV|count\(6) & (!\UKeyBoardReader|UCLKDIV|count\(5) & \UKeyBoardReader|UCLKDIV|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(7),
	datab => \UKeyBoardReader|UCLKDIV|count\(6),
	datac => \UKeyBoardReader|UCLKDIV|count\(5),
	datad => \UKeyBoardReader|UCLKDIV|count\(4),
	combout => \UKeyBoardReader|UCLKDIV|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y35_N28
\UKeyBoardReader|UCLKDIV|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Equal0~2_combout\ = (!\UKeyBoardReader|UCLKDIV|count\(3) & (\UKeyBoardReader|UCLKDIV|Equal0~0_combout\ & (\UKeyBoardReader|UCLKDIV|Equal0~1_combout\ & !\UKeyBoardReader|UCLKDIV|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(3),
	datab => \UKeyBoardReader|UCLKDIV|Equal0~0_combout\,
	datac => \UKeyBoardReader|UCLKDIV|Equal0~1_combout\,
	datad => \UKeyBoardReader|UCLKDIV|count\(2),
	combout => \UKeyBoardReader|UCLKDIV|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y35_N24
\UKeyBoardReader|UCLKDIV|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~24_combout\ = (\UKeyBoardReader|UCLKDIV|count\(12) & (\UKeyBoardReader|UCLKDIV|Add0~23\ $ (GND))) # (!\UKeyBoardReader|UCLKDIV|count\(12) & (!\UKeyBoardReader|UCLKDIV|Add0~23\ & VCC))
-- \UKeyBoardReader|UCLKDIV|Add0~25\ = CARRY((\UKeyBoardReader|UCLKDIV|count\(12) & !\UKeyBoardReader|UCLKDIV|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(12),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~23\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~24_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~25\);

-- Location: LCCOMB_X56_Y35_N8
\UKeyBoardReader|UCLKDIV|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|count~2_combout\ = (!\UKeyBoardReader|UCLKDIV|Equal0~10_combout\ & \UKeyBoardReader|UCLKDIV|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|Equal0~10_combout\,
	datad => \UKeyBoardReader|UCLKDIV|Add0~24_combout\,
	combout => \UKeyBoardReader|UCLKDIV|count~2_combout\);

-- Location: FF_X56_Y35_N9
\UKeyBoardReader|UCLKDIV|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(12));

-- Location: LCCOMB_X57_Y35_N26
\UKeyBoardReader|UCLKDIV|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~26_combout\ = (\UKeyBoardReader|UCLKDIV|count\(13) & (!\UKeyBoardReader|UCLKDIV|Add0~25\)) # (!\UKeyBoardReader|UCLKDIV|count\(13) & ((\UKeyBoardReader|UCLKDIV|Add0~25\) # (GND)))
-- \UKeyBoardReader|UCLKDIV|Add0~27\ = CARRY((!\UKeyBoardReader|UCLKDIV|Add0~25\) # (!\UKeyBoardReader|UCLKDIV|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(13),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~25\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~26_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~27\);

-- Location: FF_X57_Y35_N27
\UKeyBoardReader|UCLKDIV|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(13));

-- Location: LCCOMB_X57_Y35_N28
\UKeyBoardReader|UCLKDIV|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~28_combout\ = (\UKeyBoardReader|UCLKDIV|count\(14) & (\UKeyBoardReader|UCLKDIV|Add0~27\ $ (GND))) # (!\UKeyBoardReader|UCLKDIV|count\(14) & (!\UKeyBoardReader|UCLKDIV|Add0~27\ & VCC))
-- \UKeyBoardReader|UCLKDIV|Add0~29\ = CARRY((\UKeyBoardReader|UCLKDIV|count\(14) & !\UKeyBoardReader|UCLKDIV|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(14),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~27\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~28_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~29\);

-- Location: LCCOMB_X56_Y35_N26
\UKeyBoardReader|UCLKDIV|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|count~3_combout\ = (!\UKeyBoardReader|UCLKDIV|Equal0~10_combout\ & \UKeyBoardReader|UCLKDIV|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|Equal0~10_combout\,
	datad => \UKeyBoardReader|UCLKDIV|Add0~28_combout\,
	combout => \UKeyBoardReader|UCLKDIV|count~3_combout\);

-- Location: FF_X56_Y35_N27
\UKeyBoardReader|UCLKDIV|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(14));

-- Location: LCCOMB_X57_Y35_N30
\UKeyBoardReader|UCLKDIV|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~30_combout\ = (\UKeyBoardReader|UCLKDIV|count\(15) & (!\UKeyBoardReader|UCLKDIV|Add0~29\)) # (!\UKeyBoardReader|UCLKDIV|count\(15) & ((\UKeyBoardReader|UCLKDIV|Add0~29\) # (GND)))
-- \UKeyBoardReader|UCLKDIV|Add0~31\ = CARRY((!\UKeyBoardReader|UCLKDIV|Add0~29\) # (!\UKeyBoardReader|UCLKDIV|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(15),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~29\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~30_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~31\);

-- Location: LCCOMB_X56_Y35_N12
\UKeyBoardReader|UCLKDIV|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|count~4_combout\ = (\UKeyBoardReader|UCLKDIV|Add0~30_combout\ & !\UKeyBoardReader|UCLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UKeyBoardReader|UCLKDIV|Add0~30_combout\,
	datad => \UKeyBoardReader|UCLKDIV|Equal0~10_combout\,
	combout => \UKeyBoardReader|UCLKDIV|count~4_combout\);

-- Location: FF_X56_Y35_N13
\UKeyBoardReader|UCLKDIV|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(15));

-- Location: LCCOMB_X56_Y35_N30
\UKeyBoardReader|UCLKDIV|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Equal0~4_combout\ = (\UKeyBoardReader|UCLKDIV|count\(15) & (\UKeyBoardReader|UCLKDIV|count\(12) & (\UKeyBoardReader|UCLKDIV|count\(14) & !\UKeyBoardReader|UCLKDIV|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(15),
	datab => \UKeyBoardReader|UCLKDIV|count\(12),
	datac => \UKeyBoardReader|UCLKDIV|count\(14),
	datad => \UKeyBoardReader|UCLKDIV|count\(13),
	combout => \UKeyBoardReader|UCLKDIV|Equal0~4_combout\);

-- Location: LCCOMB_X57_Y34_N0
\UKeyBoardReader|UCLKDIV|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~32_combout\ = (\UKeyBoardReader|UCLKDIV|count\(16) & (\UKeyBoardReader|UCLKDIV|Add0~31\ $ (GND))) # (!\UKeyBoardReader|UCLKDIV|count\(16) & (!\UKeyBoardReader|UCLKDIV|Add0~31\ & VCC))
-- \UKeyBoardReader|UCLKDIV|Add0~33\ = CARRY((\UKeyBoardReader|UCLKDIV|count\(16) & !\UKeyBoardReader|UCLKDIV|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(16),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~31\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~32_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~33\);

-- Location: LCCOMB_X56_Y34_N16
\UKeyBoardReader|UCLKDIV|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|count~5_combout\ = (\UKeyBoardReader|UCLKDIV|Add0~32_combout\ & !\UKeyBoardReader|UCLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UKeyBoardReader|UCLKDIV|Add0~32_combout\,
	datad => \UKeyBoardReader|UCLKDIV|Equal0~10_combout\,
	combout => \UKeyBoardReader|UCLKDIV|count~5_combout\);

-- Location: FF_X56_Y34_N17
\UKeyBoardReader|UCLKDIV|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(16));

-- Location: LCCOMB_X57_Y34_N2
\UKeyBoardReader|UCLKDIV|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~34_combout\ = (\UKeyBoardReader|UCLKDIV|count\(17) & (!\UKeyBoardReader|UCLKDIV|Add0~33\)) # (!\UKeyBoardReader|UCLKDIV|count\(17) & ((\UKeyBoardReader|UCLKDIV|Add0~33\) # (GND)))
-- \UKeyBoardReader|UCLKDIV|Add0~35\ = CARRY((!\UKeyBoardReader|UCLKDIV|Add0~33\) # (!\UKeyBoardReader|UCLKDIV|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(17),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~33\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~34_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~35\);

-- Location: LCCOMB_X56_Y34_N2
\UKeyBoardReader|UCLKDIV|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|count~6_combout\ = (!\UKeyBoardReader|UCLKDIV|Equal0~10_combout\ & \UKeyBoardReader|UCLKDIV|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|Equal0~10_combout\,
	datad => \UKeyBoardReader|UCLKDIV|Add0~34_combout\,
	combout => \UKeyBoardReader|UCLKDIV|count~6_combout\);

-- Location: FF_X56_Y34_N3
\UKeyBoardReader|UCLKDIV|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(17));

-- Location: LCCOMB_X57_Y34_N4
\UKeyBoardReader|UCLKDIV|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~36_combout\ = (\UKeyBoardReader|UCLKDIV|count\(18) & (\UKeyBoardReader|UCLKDIV|Add0~35\ $ (GND))) # (!\UKeyBoardReader|UCLKDIV|count\(18) & (!\UKeyBoardReader|UCLKDIV|Add0~35\ & VCC))
-- \UKeyBoardReader|UCLKDIV|Add0~37\ = CARRY((\UKeyBoardReader|UCLKDIV|count\(18) & !\UKeyBoardReader|UCLKDIV|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|count\(18),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~35\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~36_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~37\);

-- Location: FF_X57_Y34_N5
\UKeyBoardReader|UCLKDIV|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(18));

-- Location: LCCOMB_X57_Y34_N6
\UKeyBoardReader|UCLKDIV|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~38_combout\ = (\UKeyBoardReader|UCLKDIV|count\(19) & (!\UKeyBoardReader|UCLKDIV|Add0~37\)) # (!\UKeyBoardReader|UCLKDIV|count\(19) & ((\UKeyBoardReader|UCLKDIV|Add0~37\) # (GND)))
-- \UKeyBoardReader|UCLKDIV|Add0~39\ = CARRY((!\UKeyBoardReader|UCLKDIV|Add0~37\) # (!\UKeyBoardReader|UCLKDIV|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(19),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~37\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~38_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~39\);

-- Location: FF_X57_Y34_N7
\UKeyBoardReader|UCLKDIV|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(19));

-- Location: LCCOMB_X57_Y34_N8
\UKeyBoardReader|UCLKDIV|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~40_combout\ = (\UKeyBoardReader|UCLKDIV|count\(20) & (\UKeyBoardReader|UCLKDIV|Add0~39\ $ (GND))) # (!\UKeyBoardReader|UCLKDIV|count\(20) & (!\UKeyBoardReader|UCLKDIV|Add0~39\ & VCC))
-- \UKeyBoardReader|UCLKDIV|Add0~41\ = CARRY((\UKeyBoardReader|UCLKDIV|count\(20) & !\UKeyBoardReader|UCLKDIV|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|count\(20),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~39\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~40_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~41\);

-- Location: FF_X57_Y34_N9
\UKeyBoardReader|UCLKDIV|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(20));

-- Location: LCCOMB_X57_Y34_N10
\UKeyBoardReader|UCLKDIV|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~42_combout\ = (\UKeyBoardReader|UCLKDIV|count\(21) & (!\UKeyBoardReader|UCLKDIV|Add0~41\)) # (!\UKeyBoardReader|UCLKDIV|count\(21) & ((\UKeyBoardReader|UCLKDIV|Add0~41\) # (GND)))
-- \UKeyBoardReader|UCLKDIV|Add0~43\ = CARRY((!\UKeyBoardReader|UCLKDIV|Add0~41\) # (!\UKeyBoardReader|UCLKDIV|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(21),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~41\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~42_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~43\);

-- Location: FF_X57_Y34_N11
\UKeyBoardReader|UCLKDIV|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(21));

-- Location: LCCOMB_X57_Y34_N12
\UKeyBoardReader|UCLKDIV|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~44_combout\ = (\UKeyBoardReader|UCLKDIV|count\(22) & (\UKeyBoardReader|UCLKDIV|Add0~43\ $ (GND))) # (!\UKeyBoardReader|UCLKDIV|count\(22) & (!\UKeyBoardReader|UCLKDIV|Add0~43\ & VCC))
-- \UKeyBoardReader|UCLKDIV|Add0~45\ = CARRY((\UKeyBoardReader|UCLKDIV|count\(22) & !\UKeyBoardReader|UCLKDIV|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(22),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~43\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~44_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~45\);

-- Location: FF_X57_Y34_N13
\UKeyBoardReader|UCLKDIV|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(22));

-- Location: LCCOMB_X57_Y34_N14
\UKeyBoardReader|UCLKDIV|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~46_combout\ = (\UKeyBoardReader|UCLKDIV|count\(23) & (!\UKeyBoardReader|UCLKDIV|Add0~45\)) # (!\UKeyBoardReader|UCLKDIV|count\(23) & ((\UKeyBoardReader|UCLKDIV|Add0~45\) # (GND)))
-- \UKeyBoardReader|UCLKDIV|Add0~47\ = CARRY((!\UKeyBoardReader|UCLKDIV|Add0~45\) # (!\UKeyBoardReader|UCLKDIV|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|count\(23),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~45\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~46_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~47\);

-- Location: FF_X57_Y34_N15
\UKeyBoardReader|UCLKDIV|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(23));

-- Location: LCCOMB_X57_Y34_N16
\UKeyBoardReader|UCLKDIV|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~48_combout\ = (\UKeyBoardReader|UCLKDIV|count\(24) & (\UKeyBoardReader|UCLKDIV|Add0~47\ $ (GND))) # (!\UKeyBoardReader|UCLKDIV|count\(24) & (!\UKeyBoardReader|UCLKDIV|Add0~47\ & VCC))
-- \UKeyBoardReader|UCLKDIV|Add0~49\ = CARRY((\UKeyBoardReader|UCLKDIV|count\(24) & !\UKeyBoardReader|UCLKDIV|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|count\(24),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~47\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~48_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~49\);

-- Location: FF_X57_Y34_N17
\UKeyBoardReader|UCLKDIV|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(24));

-- Location: LCCOMB_X57_Y34_N18
\UKeyBoardReader|UCLKDIV|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~50_combout\ = (\UKeyBoardReader|UCLKDIV|count\(25) & (!\UKeyBoardReader|UCLKDIV|Add0~49\)) # (!\UKeyBoardReader|UCLKDIV|count\(25) & ((\UKeyBoardReader|UCLKDIV|Add0~49\) # (GND)))
-- \UKeyBoardReader|UCLKDIV|Add0~51\ = CARRY((!\UKeyBoardReader|UCLKDIV|Add0~49\) # (!\UKeyBoardReader|UCLKDIV|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|count\(25),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~49\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~50_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~51\);

-- Location: FF_X57_Y34_N19
\UKeyBoardReader|UCLKDIV|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(25));

-- Location: LCCOMB_X57_Y34_N20
\UKeyBoardReader|UCLKDIV|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~52_combout\ = (\UKeyBoardReader|UCLKDIV|count\(26) & (\UKeyBoardReader|UCLKDIV|Add0~51\ $ (GND))) # (!\UKeyBoardReader|UCLKDIV|count\(26) & (!\UKeyBoardReader|UCLKDIV|Add0~51\ & VCC))
-- \UKeyBoardReader|UCLKDIV|Add0~53\ = CARRY((\UKeyBoardReader|UCLKDIV|count\(26) & !\UKeyBoardReader|UCLKDIV|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|count\(26),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~51\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~52_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~53\);

-- Location: FF_X57_Y34_N21
\UKeyBoardReader|UCLKDIV|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(26));

-- Location: LCCOMB_X57_Y34_N22
\UKeyBoardReader|UCLKDIV|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~54_combout\ = (\UKeyBoardReader|UCLKDIV|count\(27) & (!\UKeyBoardReader|UCLKDIV|Add0~53\)) # (!\UKeyBoardReader|UCLKDIV|count\(27) & ((\UKeyBoardReader|UCLKDIV|Add0~53\) # (GND)))
-- \UKeyBoardReader|UCLKDIV|Add0~55\ = CARRY((!\UKeyBoardReader|UCLKDIV|Add0~53\) # (!\UKeyBoardReader|UCLKDIV|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(27),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~53\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~54_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~55\);

-- Location: FF_X57_Y34_N23
\UKeyBoardReader|UCLKDIV|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(27));

-- Location: LCCOMB_X57_Y34_N24
\UKeyBoardReader|UCLKDIV|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~56_combout\ = (\UKeyBoardReader|UCLKDIV|count\(28) & (\UKeyBoardReader|UCLKDIV|Add0~55\ $ (GND))) # (!\UKeyBoardReader|UCLKDIV|count\(28) & (!\UKeyBoardReader|UCLKDIV|Add0~55\ & VCC))
-- \UKeyBoardReader|UCLKDIV|Add0~57\ = CARRY((\UKeyBoardReader|UCLKDIV|count\(28) & !\UKeyBoardReader|UCLKDIV|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|count\(28),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~55\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~56_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~57\);

-- Location: FF_X57_Y34_N25
\UKeyBoardReader|UCLKDIV|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(28));

-- Location: LCCOMB_X57_Y34_N26
\UKeyBoardReader|UCLKDIV|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~58_combout\ = (\UKeyBoardReader|UCLKDIV|count\(29) & (!\UKeyBoardReader|UCLKDIV|Add0~57\)) # (!\UKeyBoardReader|UCLKDIV|count\(29) & ((\UKeyBoardReader|UCLKDIV|Add0~57\) # (GND)))
-- \UKeyBoardReader|UCLKDIV|Add0~59\ = CARRY((!\UKeyBoardReader|UCLKDIV|Add0~57\) # (!\UKeyBoardReader|UCLKDIV|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(29),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~57\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~58_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~59\);

-- Location: FF_X57_Y34_N27
\UKeyBoardReader|UCLKDIV|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(29));

-- Location: LCCOMB_X57_Y34_N28
\UKeyBoardReader|UCLKDIV|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~60_combout\ = (\UKeyBoardReader|UCLKDIV|count\(30) & (\UKeyBoardReader|UCLKDIV|Add0~59\ $ (GND))) # (!\UKeyBoardReader|UCLKDIV|count\(30) & (!\UKeyBoardReader|UCLKDIV|Add0~59\ & VCC))
-- \UKeyBoardReader|UCLKDIV|Add0~61\ = CARRY((\UKeyBoardReader|UCLKDIV|count\(30) & !\UKeyBoardReader|UCLKDIV|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UCLKDIV|count\(30),
	datad => VCC,
	cin => \UKeyBoardReader|UCLKDIV|Add0~59\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~60_combout\,
	cout => \UKeyBoardReader|UCLKDIV|Add0~61\);

-- Location: FF_X57_Y34_N29
\UKeyBoardReader|UCLKDIV|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(30));

-- Location: LCCOMB_X57_Y34_N30
\UKeyBoardReader|UCLKDIV|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Add0~62_combout\ = \UKeyBoardReader|UCLKDIV|count\(31) $ (\UKeyBoardReader|UCLKDIV|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(31),
	cin => \UKeyBoardReader|UCLKDIV|Add0~61\,
	combout => \UKeyBoardReader|UCLKDIV|Add0~62_combout\);

-- Location: FF_X57_Y34_N31
\UKeyBoardReader|UCLKDIV|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|count\(31));

-- Location: LCCOMB_X58_Y34_N12
\UKeyBoardReader|UCLKDIV|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Equal0~8_combout\ = (!\UKeyBoardReader|UCLKDIV|count\(31) & (!\UKeyBoardReader|UCLKDIV|count\(30) & (!\UKeyBoardReader|UCLKDIV|count\(29) & !\UKeyBoardReader|UCLKDIV|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(31),
	datab => \UKeyBoardReader|UCLKDIV|count\(30),
	datac => \UKeyBoardReader|UCLKDIV|count\(29),
	datad => \UKeyBoardReader|UCLKDIV|count\(28),
	combout => \UKeyBoardReader|UCLKDIV|Equal0~8_combout\);

-- Location: LCCOMB_X58_Y34_N24
\UKeyBoardReader|UCLKDIV|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Equal0~6_combout\ = (!\UKeyBoardReader|UCLKDIV|count\(23) & (!\UKeyBoardReader|UCLKDIV|count\(22) & (!\UKeyBoardReader|UCLKDIV|count\(20) & !\UKeyBoardReader|UCLKDIV|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(23),
	datab => \UKeyBoardReader|UCLKDIV|count\(22),
	datac => \UKeyBoardReader|UCLKDIV|count\(20),
	datad => \UKeyBoardReader|UCLKDIV|count\(21),
	combout => \UKeyBoardReader|UCLKDIV|Equal0~6_combout\);

-- Location: LCCOMB_X56_Y34_N20
\UKeyBoardReader|UCLKDIV|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Equal0~5_combout\ = (!\UKeyBoardReader|UCLKDIV|count\(19) & (\UKeyBoardReader|UCLKDIV|count\(17) & (\UKeyBoardReader|UCLKDIV|count\(16) & !\UKeyBoardReader|UCLKDIV|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(19),
	datab => \UKeyBoardReader|UCLKDIV|count\(17),
	datac => \UKeyBoardReader|UCLKDIV|count\(16),
	datad => \UKeyBoardReader|UCLKDIV|count\(18),
	combout => \UKeyBoardReader|UCLKDIV|Equal0~5_combout\);

-- Location: LCCOMB_X58_Y34_N10
\UKeyBoardReader|UCLKDIV|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Equal0~7_combout\ = (!\UKeyBoardReader|UCLKDIV|count\(27) & (!\UKeyBoardReader|UCLKDIV|count\(26) & (!\UKeyBoardReader|UCLKDIV|count\(24) & !\UKeyBoardReader|UCLKDIV|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(27),
	datab => \UKeyBoardReader|UCLKDIV|count\(26),
	datac => \UKeyBoardReader|UCLKDIV|count\(24),
	datad => \UKeyBoardReader|UCLKDIV|count\(25),
	combout => \UKeyBoardReader|UCLKDIV|Equal0~7_combout\);

-- Location: LCCOMB_X58_Y34_N22
\UKeyBoardReader|UCLKDIV|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Equal0~9_combout\ = (\UKeyBoardReader|UCLKDIV|Equal0~8_combout\ & (\UKeyBoardReader|UCLKDIV|Equal0~6_combout\ & (\UKeyBoardReader|UCLKDIV|Equal0~5_combout\ & \UKeyBoardReader|UCLKDIV|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|Equal0~8_combout\,
	datab => \UKeyBoardReader|UCLKDIV|Equal0~6_combout\,
	datac => \UKeyBoardReader|UCLKDIV|Equal0~5_combout\,
	datad => \UKeyBoardReader|UCLKDIV|Equal0~7_combout\,
	combout => \UKeyBoardReader|UCLKDIV|Equal0~9_combout\);

-- Location: LCCOMB_X56_Y35_N24
\UKeyBoardReader|UCLKDIV|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|Equal0~10_combout\ = (\UKeyBoardReader|UCLKDIV|Equal0~3_combout\ & (\UKeyBoardReader|UCLKDIV|Equal0~2_combout\ & (\UKeyBoardReader|UCLKDIV|Equal0~4_combout\ & \UKeyBoardReader|UCLKDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|Equal0~3_combout\,
	datab => \UKeyBoardReader|UCLKDIV|Equal0~2_combout\,
	datac => \UKeyBoardReader|UCLKDIV|Equal0~4_combout\,
	datad => \UKeyBoardReader|UCLKDIV|Equal0~9_combout\,
	combout => \UKeyBoardReader|UCLKDIV|Equal0~10_combout\);

-- Location: LCCOMB_X56_Y35_N0
\UKeyBoardReader|UCLKDIV|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UCLKDIV|tmp~0_combout\ = \UKeyBoardReader|UCLKDIV|tmp~q\ $ (\UKeyBoardReader|UCLKDIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UKeyBoardReader|UCLKDIV|tmp~q\,
	datad => \UKeyBoardReader|UCLKDIV|Equal0~10_combout\,
	combout => \UKeyBoardReader|UCLKDIV|tmp~0_combout\);

-- Location: FF_X56_Y35_N1
\UKeyBoardReader|UCLKDIV|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UCLKDIV|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UCLKDIV|tmp~q\);

-- Location: CLKCTRL_G6
\UKeyBoardReader|UCLKDIV|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UKeyBoardReader|UCLKDIV|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UKeyBoardReader|UCLKDIV|tmp~clkctrl_outclk\);

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

-- Location: LCCOMB_X46_Y34_N2
\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~0_combout\ = \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\ $ (((!\UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_SCANNING~q\ & 
-- (\UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\ & \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_SCANNING~q\,
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\,
	datac => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\,
	combout => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~0_combout\);

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

-- Location: FF_X46_Y34_N3
\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UKeyBoardReader|UCLKDIV|tmp~clkctrl_outclk\,
	d => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\);

-- Location: LCCOMB_X46_Y34_N30
\UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~0_combout\ = (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\ & ((\Ln[1]~input_o\) # ((\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\)))) # 
-- (!\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\ & (((\Ln[0]~input_o\ & !\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ln[1]~input_o\,
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\,
	datac => \Ln[0]~input_o\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\,
	combout => \UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~0_combout\);

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

-- Location: LCCOMB_X46_Y34_N24
\UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\ = (\UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~0_combout\ & (((\Ln[3]~input_o\) # (!\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\)))) # 
-- (!\UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~0_combout\ & (\Ln[2]~input_o\ & ((\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~0_combout\,
	datab => \Ln[2]~input_o\,
	datac => \Ln[3]~input_o\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\,
	combout => \UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\);

-- Location: LCCOMB_X45_Y38_N8
\UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_INCPUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_INCPUT~0_combout\ = (\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_DAC~q\ & !\UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_DAC~q\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\,
	combout => \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_INCPUT~0_combout\);

-- Location: FF_X45_Y38_N9
\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCPUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_INCPUT~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCPUT~q\);

-- Location: IOIBUF_X0_Y29_N15
\altera_reserved_tms~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\altera_reserved_tck~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\altera_reserved_tdi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: JTAG_X43_Y40_N0
altera_internal_jtag : fiftyfivenm_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCCOMB_X45_Y40_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\);

-- Location: FF_X45_Y40_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X45_Y40_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X45_Y40_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X45_Y40_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X45_Y40_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X45_Y40_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X45_Y40_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X45_Y40_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X45_Y40_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LCCOMB_X45_Y40_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X45_Y40_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X45_Y40_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCCOMB_X45_Y40_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\);

-- Location: FF_X45_Y40_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LCCOMB_X44_Y40_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X44_Y40_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X44_Y40_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X44_Y40_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X44_Y40_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X44_Y40_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X45_Y40_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X45_Y40_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: LCCOMB_X45_Y41_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X45_Y41_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X45_Y41_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\);

-- Location: FF_X45_Y41_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LCCOMB_X45_Y41_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X45_Y41_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LCCOMB_X45_Y41_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: FF_X46_Y41_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X45_Y40_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X45_Y40_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X45_Y40_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X45_Y40_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X45_Y40_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X45_Y40_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: LCCOMB_X45_Y41_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X45_Y41_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X45_Y42_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\);

-- Location: LCCOMB_X45_Y42_N4
\~QIC_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: LCCOMB_X49_Y42_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\);

-- Location: FF_X49_Y42_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: FF_X49_Y42_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: LCCOMB_X49_Y42_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X49_Y42_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: LCCOMB_X49_Y42_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X49_Y42_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: LCCOMB_X49_Y42_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\);

-- Location: FF_X49_Y42_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: LCCOMB_X49_Y42_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X49_Y42_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: LCCOMB_X49_Y42_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X49_Y42_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LCCOMB_X49_Y42_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X49_Y42_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X49_Y42_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X49_Y42_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LCCOMB_X49_Y42_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X49_Y42_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X49_Y42_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y42_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X46_Y42_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X45_Y41_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X45_Y41_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\);

-- Location: FF_X45_Y41_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: CLKCTRL_G13
\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR~clkctrl_outclk\);

-- Location: LCCOMB_X43_Y38_N24
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~0_combout\ = \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\ $ (\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCPUT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCPUT~q\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~0_combout\);

-- Location: FF_X43_Y38_N25
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\);

-- Location: LCCOMB_X43_Y38_N26
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~0_combout\ = \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\ $ (((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & 
-- \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCPUT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCPUT~q\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~0_combout\);

-- Location: FF_X43_Y38_N27
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\);

-- Location: LCCOMB_X43_Y38_N20
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~0_combout\ = \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\ $ (((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\ & 
-- (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCPUT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCPUT~q\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~0_combout\);

-- Location: FF_X43_Y38_N21
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\);

-- Location: LCCOMB_X46_Y38_N0
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q~0_combout\ = \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q~q\ $ (\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q~0_combout\);

-- Location: FF_X46_Y38_N1
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q~q\);

-- Location: LCCOMB_X46_Y38_N30
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF1|Q~0_combout\ = \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF1|Q~q\ $ (((\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\ & 
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF1|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q~q\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF1|Q~0_combout\);

-- Location: FF_X46_Y38_N31
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF1|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF1|Q~q\);

-- Location: LCCOMB_X46_Y38_N18
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF2|Q~0_combout\ = \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF2|Q~q\ $ (((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF1|Q~q\ & 
-- (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q~q\ & \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF1|Q~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF2|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF2|Q~0_combout\);

-- Location: FF_X46_Y38_N19
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF2|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF2|Q~q\);

-- Location: LCCOMB_X46_Y38_N12
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2_combout\ = (\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_PUTNOTGET~q\ & (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\)) # 
-- (!\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_PUTNOTGET~q\ & ((\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\ & (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\)) # 
-- (!\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\ & ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_PUTNOTGET~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF2|Q~q\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2_combout\);

-- Location: LCCOMB_X43_Y38_N6
\rtl~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~12_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\ & (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & 
-- \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\,
	combout => \rtl~12_combout\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X47_Y36_N12
\UKeyBoardReader|URingBuffer|Uram|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~8_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\,
	datab => \rtl~12clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~8_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~8_combout\);

-- Location: LCCOMB_X43_Y38_N12
\rtl~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~15_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\ & (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & 
-- \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\,
	combout => \rtl~15_combout\);

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X47_Y36_N0
\UKeyBoardReader|URingBuffer|Uram|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~12_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~12_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~12_combout\);

-- Location: LCCOMB_X46_Y38_N16
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ = (\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_PUTNOTGET~q\ & (((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\)))) # 
-- (!\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_PUTNOTGET~q\ & ((\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\ & ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\))) # 
-- (!\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\ & (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_PUTNOTGET~q\,
	datab => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF1|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\);

-- Location: LCCOMB_X43_Y38_N8
\rtl~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~13_combout\ = (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\ & (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & 
-- \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\,
	combout => \rtl~13_combout\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X47_Y36_N6
\UKeyBoardReader|URingBuffer|Uram|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~4_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~4_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~4_combout\);

-- Location: LCCOMB_X43_Y38_N2
\rtl~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~14_combout\ = (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\ & (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & 
-- \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\,
	combout => \rtl~14_combout\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X46_Y36_N0
\UKeyBoardReader|URingBuffer|Uram|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~0_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\,
	datac => \rtl~14clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~0_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~0_combout\);

-- Location: LCCOMB_X46_Y38_N20
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\ = (\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_PUTNOTGET~q\ & (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\)) # 
-- (!\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_PUTNOTGET~q\ & ((\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\ & (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\)) # 
-- (!\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\ & ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_PUTNOTGET~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXGET|FF0|Q~q\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\);

-- Location: LCCOMB_X47_Y36_N24
\UKeyBoardReader|URingBuffer|Uram|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~34_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\ & (\UKeyBoardReader|URingBuffer|Uram|ram~4_combout\)) # 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|Uram|ram~4_combout\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datac => \UKeyBoardReader|URingBuffer|Uram|ram~0_combout\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~34_combout\);

-- Location: LCCOMB_X47_Y36_N10
\UKeyBoardReader|URingBuffer|Uram|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~35_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~34_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~12_combout\))) # 
-- (!\UKeyBoardReader|URingBuffer|Uram|ram~34_combout\ & (\UKeyBoardReader|URingBuffer|Uram|ram~8_combout\)))) # (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((\UKeyBoardReader|URingBuffer|Uram|ram~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|Uram|ram~8_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~12_combout\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~34_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~35_combout\);

-- Location: LCCOMB_X43_Y38_N0
\rtl~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\ & (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & 
-- \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\,
	combout => \rtl~9_combout\);

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X46_Y34_N28
\UKeyBoardReader|URingBuffer|Uram|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~24_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~24_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~24_combout\);

-- Location: LCCOMB_X43_Y38_N10
\rtl~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\ & (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & 
-- \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\,
	combout => \rtl~10_combout\);

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X47_Y35_N18
\UKeyBoardReader|URingBuffer|Uram|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~16_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\,
	datac => \rtl~10clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~16_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~16_combout\);

-- Location: LCCOMB_X47_Y35_N12
\UKeyBoardReader|URingBuffer|Uram|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~32_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~24_combout\) # 
-- ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((\UKeyBoardReader|URingBuffer|Uram|ram~16_combout\ & 
-- !\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|Uram|ram~24_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~16_combout\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~32_combout\);

-- Location: LCCOMB_X43_Y38_N22
\rtl~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\ & (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & 
-- \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\,
	combout => \rtl~8_combout\);

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X47_Y35_N16
\UKeyBoardReader|URingBuffer|Uram|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~20_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~20_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~20_combout\);

-- Location: LCCOMB_X43_Y38_N4
\rtl~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\ & (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\ & (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\ & 
-- \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF1|Q~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF2|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UIDXPUT|FF0|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\,
	combout => \rtl~11_combout\);

-- Location: CLKCTRL_G10
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

-- Location: LCCOMB_X46_Y35_N0
\UKeyBoardReader|URingBuffer|Uram|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~28_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~28_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~28_combout\);

-- Location: LCCOMB_X47_Y35_N30
\UKeyBoardReader|URingBuffer|Uram|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~33_combout\ = (\UKeyBoardReader|URingBuffer|Uram|ram~32_combout\ & (((\UKeyBoardReader|URingBuffer|Uram|ram~28_combout\) # (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # 
-- (!\UKeyBoardReader|URingBuffer|Uram|ram~32_combout\ & (\UKeyBoardReader|URingBuffer|Uram|ram~20_combout\ & ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|Uram|ram~32_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~20_combout\,
	datac => \UKeyBoardReader|URingBuffer|Uram|ram~28_combout\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~33_combout\);

-- Location: LCCOMB_X47_Y35_N24
\UKeyBoardReader|URingBuffer|Uram|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~36_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~33_combout\))) # 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2_combout\ & (\UKeyBoardReader|URingBuffer|Uram|ram~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~35_combout\,
	datac => \UKeyBoardReader|URingBuffer|Uram|ram~33_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~36_combout\);

-- Location: FF_X47_Y35_N25
\UKeyBoardReader|UOutputBuffer|UOutputRegister|U0FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR~clkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|Uram|ram~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UOutputBuffer|UOutputRegister|U0FFD|Q~q\);

-- Location: LCCOMB_X44_Y41_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datad => \UKeyBoardReader|UOutputBuffer|UOutputRegister|U0FFD|Q~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\);

-- Location: LCCOMB_X44_Y41_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\);

-- Location: LCCOMB_X44_Y41_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\);

-- Location: FF_X44_Y41_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LCCOMB_X46_Y41_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\);

-- Location: LCCOMB_X45_Y41_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\);

-- Location: FF_X45_Y41_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X44_Y41_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X44_Y41_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\);

-- Location: IOIBUF_X51_Y54_N29
\Maintenance~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Maintenance,
	o => \Maintenance~input_o\);

-- Location: LCCOMB_X44_Y41_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \Maintenance~input_o\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\);

-- Location: FF_X44_Y41_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7));

-- Location: LCCOMB_X44_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\);

-- Location: LCCOMB_X44_Y41_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\);

-- Location: FF_X44_Y41_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

-- Location: CLKCTRL_G11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\);

-- Location: LCCOMB_X69_Y47_N12
\USDC|USerialReceiver|counter1|FF0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|USerialReceiver|counter1|FF0|Q~0_combout\ = !\USDC|USerialReceiver|counter1|FF0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \USDC|USerialReceiver|counter1|FF0|Q~q\,
	combout => \USDC|USerialReceiver|counter1|FF0|Q~0_combout\);

-- Location: LCCOMB_X45_Y41_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\);

-- Location: FF_X45_Y41_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\);

-- Location: LCCOMB_X69_Y47_N10
\USDC|USerialReceiver|counter1|FF1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|USerialReceiver|counter1|FF1|Q~0_combout\ = \USDC|USerialReceiver|counter1|FF1|Q~q\ $ (\USDC|USerialReceiver|counter1|FF0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \USDC|USerialReceiver|counter1|FF1|Q~q\,
	datad => \USDC|USerialReceiver|counter1|FF0|Q~q\,
	combout => \USDC|USerialReceiver|counter1|FF1|Q~0_combout\);

-- Location: FF_X69_Y47_N11
\USDC|USerialReceiver|counter1|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USDC|USerialReceiver|counter1|FF1|Q~0_combout\,
	clrn => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USDC|USerialReceiver|counter1|FF1|Q~q\);

-- Location: LCCOMB_X69_Y47_N6
\USDC|USerialReceiver|counter1|FF2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|USerialReceiver|counter1|FF2|Q~0_combout\ = \USDC|USerialReceiver|counter1|FF2|Q~q\ $ (((\USDC|USerialReceiver|counter1|FF0|Q~q\ & \USDC|USerialReceiver|counter1|FF1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USDC|USerialReceiver|counter1|FF0|Q~q\,
	datac => \USDC|USerialReceiver|counter1|FF2|Q~q\,
	datad => \USDC|USerialReceiver|counter1|FF1|Q~q\,
	combout => \USDC|USerialReceiver|counter1|FF2|Q~0_combout\);

-- Location: FF_X69_Y47_N7
\USDC|USerialReceiver|counter1|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USDC|USerialReceiver|counter1|FF2|Q~0_combout\,
	clrn => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USDC|USerialReceiver|counter1|FF2|Q~q\);

-- Location: LCCOMB_X69_Y47_N14
\USDC|USerialReceiver|serialControl1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|USerialReceiver|serialControl1|Selector0~0_combout\ = (!\USDC|USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\ & (((\USDC|USerialReceiver|counter1|FF1|Q~q\) # (!\USDC|USerialReceiver|counter1|FF2|Q~q\)) # 
-- (!\USDC|USerialReceiver|counter1|FF0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USDC|USerialReceiver|counter1|FF0|Q~q\,
	datab => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\,
	datac => \USDC|USerialReceiver|counter1|FF2|Q~q\,
	datad => \USDC|USerialReceiver|counter1|FF1|Q~q\,
	combout => \USDC|USerialReceiver|serialControl1|Selector0~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\sensor~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor,
	o => \sensor~input_o\);

-- Location: LCCOMB_X52_Y33_N2
\UDoor_mecanism|UCLK|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~1_cout\ = CARRY((!\UKeyBoardReader|UCLKDIV|count\(0) & \UKeyBoardReader|UCLKDIV|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(0),
	datab => \UKeyBoardReader|UCLKDIV|count\(1),
	datad => VCC,
	cout => \UDoor_mecanism|UCLK|Add0~1_cout\);

-- Location: LCCOMB_X52_Y33_N4
\UDoor_mecanism|UCLK|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~2_combout\ = (\UDoor_mecanism|UCLK|count\(2) & (!\UDoor_mecanism|UCLK|Add0~1_cout\)) # (!\UDoor_mecanism|UCLK|count\(2) & ((\UDoor_mecanism|UCLK|Add0~1_cout\) # (GND)))
-- \UDoor_mecanism|UCLK|Add0~3\ = CARRY((!\UDoor_mecanism|UCLK|Add0~1_cout\) # (!\UDoor_mecanism|UCLK|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|count\(2),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~1_cout\,
	combout => \UDoor_mecanism|UCLK|Add0~2_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~3\);

-- Location: FF_X52_Y33_N5
\UDoor_mecanism|UCLK|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(2));

-- Location: LCCOMB_X52_Y33_N6
\UDoor_mecanism|UCLK|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~4_combout\ = (\UDoor_mecanism|UCLK|count\(3) & (\UDoor_mecanism|UCLK|Add0~3\ $ (GND))) # (!\UDoor_mecanism|UCLK|count\(3) & (!\UDoor_mecanism|UCLK|Add0~3\ & VCC))
-- \UDoor_mecanism|UCLK|Add0~5\ = CARRY((\UDoor_mecanism|UCLK|count\(3) & !\UDoor_mecanism|UCLK|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(3),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~3\,
	combout => \UDoor_mecanism|UCLK|Add0~4_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~5\);

-- Location: FF_X52_Y33_N7
\UDoor_mecanism|UCLK|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(3));

-- Location: LCCOMB_X52_Y33_N8
\UDoor_mecanism|UCLK|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~6_combout\ = (\UDoor_mecanism|UCLK|count\(4) & (!\UDoor_mecanism|UCLK|Add0~5\)) # (!\UDoor_mecanism|UCLK|count\(4) & ((\UDoor_mecanism|UCLK|Add0~5\) # (GND)))
-- \UDoor_mecanism|UCLK|Add0~7\ = CARRY((!\UDoor_mecanism|UCLK|Add0~5\) # (!\UDoor_mecanism|UCLK|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|count\(4),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~5\,
	combout => \UDoor_mecanism|UCLK|Add0~6_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~7\);

-- Location: FF_X52_Y33_N9
\UDoor_mecanism|UCLK|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(4));

-- Location: LCCOMB_X52_Y33_N10
\UDoor_mecanism|UCLK|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~8_combout\ = (\UDoor_mecanism|UCLK|count\(5) & (\UDoor_mecanism|UCLK|Add0~7\ $ (GND))) # (!\UDoor_mecanism|UCLK|count\(5) & (!\UDoor_mecanism|UCLK|Add0~7\ & VCC))
-- \UDoor_mecanism|UCLK|Add0~9\ = CARRY((\UDoor_mecanism|UCLK|count\(5) & !\UDoor_mecanism|UCLK|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(5),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~7\,
	combout => \UDoor_mecanism|UCLK|Add0~8_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~9\);

-- Location: FF_X52_Y33_N11
\UDoor_mecanism|UCLK|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(5));

-- Location: LCCOMB_X52_Y33_N12
\UDoor_mecanism|UCLK|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~10_combout\ = (\UDoor_mecanism|UCLK|count\(6) & (!\UDoor_mecanism|UCLK|Add0~9\)) # (!\UDoor_mecanism|UCLK|count\(6) & ((\UDoor_mecanism|UCLK|Add0~9\) # (GND)))
-- \UDoor_mecanism|UCLK|Add0~11\ = CARRY((!\UDoor_mecanism|UCLK|Add0~9\) # (!\UDoor_mecanism|UCLK|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(6),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~9\,
	combout => \UDoor_mecanism|UCLK|Add0~10_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~11\);

-- Location: LCCOMB_X51_Y33_N10
\UDoor_mecanism|UCLK|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|count~0_combout\ = (!\UDoor_mecanism|UCLK|Equal0~9_combout\ & \UDoor_mecanism|UCLK|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|Equal0~9_combout\,
	datac => \UDoor_mecanism|UCLK|Add0~10_combout\,
	combout => \UDoor_mecanism|UCLK|count~0_combout\);

-- Location: FF_X51_Y33_N11
\UDoor_mecanism|UCLK|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(6));

-- Location: LCCOMB_X52_Y33_N14
\UDoor_mecanism|UCLK|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~12_combout\ = (\UDoor_mecanism|UCLK|count\(7) & (\UDoor_mecanism|UCLK|Add0~11\ $ (GND))) # (!\UDoor_mecanism|UCLK|count\(7) & (!\UDoor_mecanism|UCLK|Add0~11\ & VCC))
-- \UDoor_mecanism|UCLK|Add0~13\ = CARRY((\UDoor_mecanism|UCLK|count\(7) & !\UDoor_mecanism|UCLK|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|count\(7),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~11\,
	combout => \UDoor_mecanism|UCLK|Add0~12_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~13\);

-- Location: FF_X52_Y33_N15
\UDoor_mecanism|UCLK|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(7));

-- Location: LCCOMB_X52_Y33_N16
\UDoor_mecanism|UCLK|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~14_combout\ = (\UDoor_mecanism|UCLK|count\(8) & (!\UDoor_mecanism|UCLK|Add0~13\)) # (!\UDoor_mecanism|UCLK|count\(8) & ((\UDoor_mecanism|UCLK|Add0~13\) # (GND)))
-- \UDoor_mecanism|UCLK|Add0~15\ = CARRY((!\UDoor_mecanism|UCLK|Add0~13\) # (!\UDoor_mecanism|UCLK|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|count\(8),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~13\,
	combout => \UDoor_mecanism|UCLK|Add0~14_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~15\);

-- Location: FF_X52_Y33_N17
\UDoor_mecanism|UCLK|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(8));

-- Location: LCCOMB_X52_Y33_N18
\UDoor_mecanism|UCLK|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~16_combout\ = (\UDoor_mecanism|UCLK|count\(9) & (\UDoor_mecanism|UCLK|Add0~15\ $ (GND))) # (!\UDoor_mecanism|UCLK|count\(9) & (!\UDoor_mecanism|UCLK|Add0~15\ & VCC))
-- \UDoor_mecanism|UCLK|Add0~17\ = CARRY((\UDoor_mecanism|UCLK|count\(9) & !\UDoor_mecanism|UCLK|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(9),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~15\,
	combout => \UDoor_mecanism|UCLK|Add0~16_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~17\);

-- Location: LCCOMB_X51_Y33_N16
\UDoor_mecanism|UCLK|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|count~1_combout\ = (!\UDoor_mecanism|UCLK|Equal0~9_combout\ & \UDoor_mecanism|UCLK|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UDoor_mecanism|UCLK|Equal0~9_combout\,
	datad => \UDoor_mecanism|UCLK|Add0~16_combout\,
	combout => \UDoor_mecanism|UCLK|count~1_combout\);

-- Location: FF_X51_Y33_N17
\UDoor_mecanism|UCLK|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(9));

-- Location: LCCOMB_X52_Y33_N20
\UDoor_mecanism|UCLK|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~18_combout\ = (\UDoor_mecanism|UCLK|count\(10) & (!\UDoor_mecanism|UCLK|Add0~17\)) # (!\UDoor_mecanism|UCLK|count\(10) & ((\UDoor_mecanism|UCLK|Add0~17\) # (GND)))
-- \UDoor_mecanism|UCLK|Add0~19\ = CARRY((!\UDoor_mecanism|UCLK|Add0~17\) # (!\UDoor_mecanism|UCLK|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|count\(10),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~17\,
	combout => \UDoor_mecanism|UCLK|Add0~18_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~19\);

-- Location: FF_X52_Y33_N21
\UDoor_mecanism|UCLK|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(10));

-- Location: LCCOMB_X52_Y33_N22
\UDoor_mecanism|UCLK|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~20_combout\ = (\UDoor_mecanism|UCLK|count\(11) & (\UDoor_mecanism|UCLK|Add0~19\ $ (GND))) # (!\UDoor_mecanism|UCLK|count\(11) & (!\UDoor_mecanism|UCLK|Add0~19\ & VCC))
-- \UDoor_mecanism|UCLK|Add0~21\ = CARRY((\UDoor_mecanism|UCLK|count\(11) & !\UDoor_mecanism|UCLK|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(11),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~19\,
	combout => \UDoor_mecanism|UCLK|Add0~20_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~21\);

-- Location: FF_X52_Y33_N23
\UDoor_mecanism|UCLK|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(11));

-- Location: LCCOMB_X51_Y33_N26
\UDoor_mecanism|UCLK|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Equal0~2_combout\ = (!\UDoor_mecanism|UCLK|count\(11) & (\UDoor_mecanism|UCLK|count\(9) & (!\UDoor_mecanism|UCLK|count\(10) & !\UDoor_mecanism|UCLK|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(11),
	datab => \UDoor_mecanism|UCLK|count\(9),
	datac => \UDoor_mecanism|UCLK|count\(10),
	datad => \UDoor_mecanism|UCLK|count\(8),
	combout => \UDoor_mecanism|UCLK|Equal0~2_combout\);

-- Location: LCCOMB_X52_Y33_N24
\UDoor_mecanism|UCLK|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~22_combout\ = (\UDoor_mecanism|UCLK|count\(12) & (!\UDoor_mecanism|UCLK|Add0~21\)) # (!\UDoor_mecanism|UCLK|count\(12) & ((\UDoor_mecanism|UCLK|Add0~21\) # (GND)))
-- \UDoor_mecanism|UCLK|Add0~23\ = CARRY((!\UDoor_mecanism|UCLK|Add0~21\) # (!\UDoor_mecanism|UCLK|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|count\(12),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~21\,
	combout => \UDoor_mecanism|UCLK|Add0~22_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~23\);

-- Location: FF_X52_Y33_N25
\UDoor_mecanism|UCLK|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(12));

-- Location: LCCOMB_X52_Y33_N26
\UDoor_mecanism|UCLK|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~24_combout\ = (\UDoor_mecanism|UCLK|count\(13) & (\UDoor_mecanism|UCLK|Add0~23\ $ (GND))) # (!\UDoor_mecanism|UCLK|count\(13) & (!\UDoor_mecanism|UCLK|Add0~23\ & VCC))
-- \UDoor_mecanism|UCLK|Add0~25\ = CARRY((\UDoor_mecanism|UCLK|count\(13) & !\UDoor_mecanism|UCLK|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(13),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~23\,
	combout => \UDoor_mecanism|UCLK|Add0~24_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~25\);

-- Location: FF_X52_Y33_N27
\UDoor_mecanism|UCLK|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(13));

-- Location: LCCOMB_X52_Y33_N28
\UDoor_mecanism|UCLK|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~26_combout\ = (\UDoor_mecanism|UCLK|count\(14) & (!\UDoor_mecanism|UCLK|Add0~25\)) # (!\UDoor_mecanism|UCLK|count\(14) & ((\UDoor_mecanism|UCLK|Add0~25\) # (GND)))
-- \UDoor_mecanism|UCLK|Add0~27\ = CARRY((!\UDoor_mecanism|UCLK|Add0~25\) # (!\UDoor_mecanism|UCLK|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|count\(14),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~25\,
	combout => \UDoor_mecanism|UCLK|Add0~26_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~27\);

-- Location: LCCOMB_X52_Y33_N0
\UDoor_mecanism|UCLK|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|count~2_combout\ = (!\UDoor_mecanism|UCLK|Equal0~9_combout\ & \UDoor_mecanism|UCLK|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|Equal0~9_combout\,
	datad => \UDoor_mecanism|UCLK|Add0~26_combout\,
	combout => \UDoor_mecanism|UCLK|count~2_combout\);

-- Location: FF_X52_Y33_N1
\UDoor_mecanism|UCLK|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(14));

-- Location: LCCOMB_X52_Y33_N30
\UDoor_mecanism|UCLK|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~28_combout\ = (\UDoor_mecanism|UCLK|count\(15) & (\UDoor_mecanism|UCLK|Add0~27\ $ (GND))) # (!\UDoor_mecanism|UCLK|count\(15) & (!\UDoor_mecanism|UCLK|Add0~27\ & VCC))
-- \UDoor_mecanism|UCLK|Add0~29\ = CARRY((\UDoor_mecanism|UCLK|count\(15) & !\UDoor_mecanism|UCLK|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(15),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~27\,
	combout => \UDoor_mecanism|UCLK|Add0~28_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~29\);

-- Location: FF_X52_Y33_N31
\UDoor_mecanism|UCLK|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(15));

-- Location: LCCOMB_X51_Y33_N28
\UDoor_mecanism|UCLK|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Equal0~3_combout\ = (!\UDoor_mecanism|UCLK|count\(13) & (\UDoor_mecanism|UCLK|count\(14) & (!\UDoor_mecanism|UCLK|count\(15) & !\UDoor_mecanism|UCLK|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(13),
	datab => \UDoor_mecanism|UCLK|count\(14),
	datac => \UDoor_mecanism|UCLK|count\(15),
	datad => \UDoor_mecanism|UCLK|count\(12),
	combout => \UDoor_mecanism|UCLK|Equal0~3_combout\);

-- Location: LCCOMB_X51_Y33_N12
\UDoor_mecanism|UCLK|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Equal0~0_combout\ = (!\UDoor_mecanism|UCLK|count\(7) & (!\UDoor_mecanism|UCLK|count\(5) & (!\UDoor_mecanism|UCLK|count\(4) & \UDoor_mecanism|UCLK|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(7),
	datab => \UDoor_mecanism|UCLK|count\(5),
	datac => \UDoor_mecanism|UCLK|count\(4),
	datad => \UDoor_mecanism|UCLK|count\(6),
	combout => \UDoor_mecanism|UCLK|Equal0~0_combout\);

-- Location: LCCOMB_X51_Y33_N14
\UDoor_mecanism|UCLK|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Equal0~1_combout\ = (\UDoor_mecanism|UCLK|Equal0~0_combout\ & (\UKeyBoardReader|UCLKDIV|Equal0~0_combout\ & (!\UDoor_mecanism|UCLK|count\(3) & !\UDoor_mecanism|UCLK|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|Equal0~0_combout\,
	datab => \UKeyBoardReader|UCLKDIV|Equal0~0_combout\,
	datac => \UDoor_mecanism|UCLK|count\(3),
	datad => \UDoor_mecanism|UCLK|count\(2),
	combout => \UDoor_mecanism|UCLK|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y32_N0
\UDoor_mecanism|UCLK|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~30_combout\ = (\UDoor_mecanism|UCLK|count\(16) & (!\UDoor_mecanism|UCLK|Add0~29\)) # (!\UDoor_mecanism|UCLK|count\(16) & ((\UDoor_mecanism|UCLK|Add0~29\) # (GND)))
-- \UDoor_mecanism|UCLK|Add0~31\ = CARRY((!\UDoor_mecanism|UCLK|Add0~29\) # (!\UDoor_mecanism|UCLK|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(16),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~29\,
	combout => \UDoor_mecanism|UCLK|Add0~30_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~31\);

-- Location: LCCOMB_X51_Y33_N6
\UDoor_mecanism|UCLK|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|count~3_combout\ = (!\UDoor_mecanism|UCLK|Equal0~9_combout\ & \UDoor_mecanism|UCLK|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|Equal0~9_combout\,
	datac => \UDoor_mecanism|UCLK|Add0~30_combout\,
	combout => \UDoor_mecanism|UCLK|count~3_combout\);

-- Location: FF_X51_Y33_N7
\UDoor_mecanism|UCLK|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(16));

-- Location: LCCOMB_X52_Y32_N2
\UDoor_mecanism|UCLK|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~32_combout\ = (\UDoor_mecanism|UCLK|count\(17) & (\UDoor_mecanism|UCLK|Add0~31\ $ (GND))) # (!\UDoor_mecanism|UCLK|count\(17) & (!\UDoor_mecanism|UCLK|Add0~31\ & VCC))
-- \UDoor_mecanism|UCLK|Add0~33\ = CARRY((\UDoor_mecanism|UCLK|count\(17) & !\UDoor_mecanism|UCLK|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(17),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~31\,
	combout => \UDoor_mecanism|UCLK|Add0~32_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~33\);

-- Location: LCCOMB_X51_Y33_N0
\UDoor_mecanism|UCLK|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|count~4_combout\ = (!\UDoor_mecanism|UCLK|Equal0~9_combout\ & \UDoor_mecanism|UCLK|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UDoor_mecanism|UCLK|Equal0~9_combout\,
	datad => \UDoor_mecanism|UCLK|Add0~32_combout\,
	combout => \UDoor_mecanism|UCLK|count~4_combout\);

-- Location: FF_X51_Y33_N1
\UDoor_mecanism|UCLK|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(17));

-- Location: LCCOMB_X52_Y32_N4
\UDoor_mecanism|UCLK|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~34_combout\ = (\UDoor_mecanism|UCLK|count\(18) & (!\UDoor_mecanism|UCLK|Add0~33\)) # (!\UDoor_mecanism|UCLK|count\(18) & ((\UDoor_mecanism|UCLK|Add0~33\) # (GND)))
-- \UDoor_mecanism|UCLK|Add0~35\ = CARRY((!\UDoor_mecanism|UCLK|Add0~33\) # (!\UDoor_mecanism|UCLK|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(18),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~33\,
	combout => \UDoor_mecanism|UCLK|Add0~34_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~35\);

-- Location: LCCOMB_X51_Y33_N18
\UDoor_mecanism|UCLK|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|count~5_combout\ = (!\UDoor_mecanism|UCLK|Equal0~9_combout\ & \UDoor_mecanism|UCLK|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UDoor_mecanism|UCLK|Equal0~9_combout\,
	datad => \UDoor_mecanism|UCLK|Add0~34_combout\,
	combout => \UDoor_mecanism|UCLK|count~5_combout\);

-- Location: FF_X51_Y33_N19
\UDoor_mecanism|UCLK|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(18));

-- Location: LCCOMB_X52_Y32_N6
\UDoor_mecanism|UCLK|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~36_combout\ = (\UDoor_mecanism|UCLK|count\(19) & (\UDoor_mecanism|UCLK|Add0~35\ $ (GND))) # (!\UDoor_mecanism|UCLK|count\(19) & (!\UDoor_mecanism|UCLK|Add0~35\ & VCC))
-- \UDoor_mecanism|UCLK|Add0~37\ = CARRY((\UDoor_mecanism|UCLK|count\(19) & !\UDoor_mecanism|UCLK|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|count\(19),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~35\,
	combout => \UDoor_mecanism|UCLK|Add0~36_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~37\);

-- Location: LCCOMB_X51_Y33_N20
\UDoor_mecanism|UCLK|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|count~6_combout\ = (!\UDoor_mecanism|UCLK|Equal0~9_combout\ & \UDoor_mecanism|UCLK|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UDoor_mecanism|UCLK|Equal0~9_combout\,
	datad => \UDoor_mecanism|UCLK|Add0~36_combout\,
	combout => \UDoor_mecanism|UCLK|count~6_combout\);

-- Location: FF_X51_Y33_N21
\UDoor_mecanism|UCLK|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(19));

-- Location: LCCOMB_X52_Y32_N8
\UDoor_mecanism|UCLK|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~38_combout\ = (\UDoor_mecanism|UCLK|count\(20) & (!\UDoor_mecanism|UCLK|Add0~37\)) # (!\UDoor_mecanism|UCLK|count\(20) & ((\UDoor_mecanism|UCLK|Add0~37\) # (GND)))
-- \UDoor_mecanism|UCLK|Add0~39\ = CARRY((!\UDoor_mecanism|UCLK|Add0~37\) # (!\UDoor_mecanism|UCLK|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|count\(20),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~37\,
	combout => \UDoor_mecanism|UCLK|Add0~38_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~39\);

-- Location: FF_X52_Y32_N9
\UDoor_mecanism|UCLK|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(20));

-- Location: LCCOMB_X52_Y32_N10
\UDoor_mecanism|UCLK|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~40_combout\ = (\UDoor_mecanism|UCLK|count\(21) & (\UDoor_mecanism|UCLK|Add0~39\ $ (GND))) # (!\UDoor_mecanism|UCLK|count\(21) & (!\UDoor_mecanism|UCLK|Add0~39\ & VCC))
-- \UDoor_mecanism|UCLK|Add0~41\ = CARRY((\UDoor_mecanism|UCLK|count\(21) & !\UDoor_mecanism|UCLK|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(21),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~39\,
	combout => \UDoor_mecanism|UCLK|Add0~40_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~41\);

-- Location: FF_X52_Y32_N11
\UDoor_mecanism|UCLK|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(21));

-- Location: LCCOMB_X52_Y32_N12
\UDoor_mecanism|UCLK|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~42_combout\ = (\UDoor_mecanism|UCLK|count\(22) & (!\UDoor_mecanism|UCLK|Add0~41\)) # (!\UDoor_mecanism|UCLK|count\(22) & ((\UDoor_mecanism|UCLK|Add0~41\) # (GND)))
-- \UDoor_mecanism|UCLK|Add0~43\ = CARRY((!\UDoor_mecanism|UCLK|Add0~41\) # (!\UDoor_mecanism|UCLK|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(22),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~41\,
	combout => \UDoor_mecanism|UCLK|Add0~42_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~43\);

-- Location: FF_X52_Y32_N13
\UDoor_mecanism|UCLK|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(22));

-- Location: LCCOMB_X52_Y32_N14
\UDoor_mecanism|UCLK|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~44_combout\ = (\UDoor_mecanism|UCLK|count\(23) & (\UDoor_mecanism|UCLK|Add0~43\ $ (GND))) # (!\UDoor_mecanism|UCLK|count\(23) & (!\UDoor_mecanism|UCLK|Add0~43\ & VCC))
-- \UDoor_mecanism|UCLK|Add0~45\ = CARRY((\UDoor_mecanism|UCLK|count\(23) & !\UDoor_mecanism|UCLK|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|count\(23),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~43\,
	combout => \UDoor_mecanism|UCLK|Add0~44_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~45\);

-- Location: FF_X52_Y32_N15
\UDoor_mecanism|UCLK|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(23));

-- Location: LCCOMB_X52_Y32_N16
\UDoor_mecanism|UCLK|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~46_combout\ = (\UDoor_mecanism|UCLK|count\(24) & (!\UDoor_mecanism|UCLK|Add0~45\)) # (!\UDoor_mecanism|UCLK|count\(24) & ((\UDoor_mecanism|UCLK|Add0~45\) # (GND)))
-- \UDoor_mecanism|UCLK|Add0~47\ = CARRY((!\UDoor_mecanism|UCLK|Add0~45\) # (!\UDoor_mecanism|UCLK|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|count\(24),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~45\,
	combout => \UDoor_mecanism|UCLK|Add0~46_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~47\);

-- Location: FF_X52_Y32_N17
\UDoor_mecanism|UCLK|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(24));

-- Location: LCCOMB_X52_Y32_N18
\UDoor_mecanism|UCLK|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~48_combout\ = (\UDoor_mecanism|UCLK|count\(25) & (\UDoor_mecanism|UCLK|Add0~47\ $ (GND))) # (!\UDoor_mecanism|UCLK|count\(25) & (!\UDoor_mecanism|UCLK|Add0~47\ & VCC))
-- \UDoor_mecanism|UCLK|Add0~49\ = CARRY((\UDoor_mecanism|UCLK|count\(25) & !\UDoor_mecanism|UCLK|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|count\(25),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~47\,
	combout => \UDoor_mecanism|UCLK|Add0~48_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~49\);

-- Location: FF_X52_Y32_N19
\UDoor_mecanism|UCLK|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(25));

-- Location: LCCOMB_X52_Y32_N20
\UDoor_mecanism|UCLK|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~50_combout\ = (\UDoor_mecanism|UCLK|count\(26) & (!\UDoor_mecanism|UCLK|Add0~49\)) # (!\UDoor_mecanism|UCLK|count\(26) & ((\UDoor_mecanism|UCLK|Add0~49\) # (GND)))
-- \UDoor_mecanism|UCLK|Add0~51\ = CARRY((!\UDoor_mecanism|UCLK|Add0~49\) # (!\UDoor_mecanism|UCLK|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|count\(26),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~49\,
	combout => \UDoor_mecanism|UCLK|Add0~50_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~51\);

-- Location: FF_X52_Y32_N21
\UDoor_mecanism|UCLK|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(26));

-- Location: LCCOMB_X52_Y32_N22
\UDoor_mecanism|UCLK|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~52_combout\ = (\UDoor_mecanism|UCLK|count\(27) & (\UDoor_mecanism|UCLK|Add0~51\ $ (GND))) # (!\UDoor_mecanism|UCLK|count\(27) & (!\UDoor_mecanism|UCLK|Add0~51\ & VCC))
-- \UDoor_mecanism|UCLK|Add0~53\ = CARRY((\UDoor_mecanism|UCLK|count\(27) & !\UDoor_mecanism|UCLK|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(27),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~51\,
	combout => \UDoor_mecanism|UCLK|Add0~52_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~53\);

-- Location: FF_X52_Y32_N23
\UDoor_mecanism|UCLK|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(27));

-- Location: LCCOMB_X52_Y32_N24
\UDoor_mecanism|UCLK|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~54_combout\ = (\UDoor_mecanism|UCLK|count\(28) & (!\UDoor_mecanism|UCLK|Add0~53\)) # (!\UDoor_mecanism|UCLK|count\(28) & ((\UDoor_mecanism|UCLK|Add0~53\) # (GND)))
-- \UDoor_mecanism|UCLK|Add0~55\ = CARRY((!\UDoor_mecanism|UCLK|Add0~53\) # (!\UDoor_mecanism|UCLK|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|count\(28),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~53\,
	combout => \UDoor_mecanism|UCLK|Add0~54_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~55\);

-- Location: FF_X52_Y32_N25
\UDoor_mecanism|UCLK|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(28));

-- Location: LCCOMB_X52_Y32_N26
\UDoor_mecanism|UCLK|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~56_combout\ = (\UDoor_mecanism|UCLK|count\(29) & (\UDoor_mecanism|UCLK|Add0~55\ $ (GND))) # (!\UDoor_mecanism|UCLK|count\(29) & (!\UDoor_mecanism|UCLK|Add0~55\ & VCC))
-- \UDoor_mecanism|UCLK|Add0~57\ = CARRY((\UDoor_mecanism|UCLK|count\(29) & !\UDoor_mecanism|UCLK|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(29),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~55\,
	combout => \UDoor_mecanism|UCLK|Add0~56_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~57\);

-- Location: FF_X52_Y32_N27
\UDoor_mecanism|UCLK|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(29));

-- Location: LCCOMB_X52_Y32_N28
\UDoor_mecanism|UCLK|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~58_combout\ = (\UDoor_mecanism|UCLK|count\(30) & (!\UDoor_mecanism|UCLK|Add0~57\)) # (!\UDoor_mecanism|UCLK|count\(30) & ((\UDoor_mecanism|UCLK|Add0~57\) # (GND)))
-- \UDoor_mecanism|UCLK|Add0~59\ = CARRY((!\UDoor_mecanism|UCLK|Add0~57\) # (!\UDoor_mecanism|UCLK|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|count\(30),
	datad => VCC,
	cin => \UDoor_mecanism|UCLK|Add0~57\,
	combout => \UDoor_mecanism|UCLK|Add0~58_combout\,
	cout => \UDoor_mecanism|UCLK|Add0~59\);

-- Location: FF_X52_Y32_N29
\UDoor_mecanism|UCLK|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(30));

-- Location: LCCOMB_X52_Y32_N30
\UDoor_mecanism|UCLK|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Add0~60_combout\ = \UDoor_mecanism|UCLK|count\(31) $ (!\UDoor_mecanism|UCLK|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(31),
	cin => \UDoor_mecanism|UCLK|Add0~59\,
	combout => \UDoor_mecanism|UCLK|Add0~60_combout\);

-- Location: FF_X52_Y32_N31
\UDoor_mecanism|UCLK|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|count\(31));

-- Location: LCCOMB_X51_Y32_N12
\UDoor_mecanism|UCLK|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Equal0~7_combout\ = (!\UDoor_mecanism|UCLK|count\(29) & (!\UDoor_mecanism|UCLK|count\(30) & (!\UDoor_mecanism|UCLK|count\(31) & !\UDoor_mecanism|UCLK|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(29),
	datab => \UDoor_mecanism|UCLK|count\(30),
	datac => \UDoor_mecanism|UCLK|count\(31),
	datad => \UDoor_mecanism|UCLK|count\(28),
	combout => \UDoor_mecanism|UCLK|Equal0~7_combout\);

-- Location: LCCOMB_X51_Y32_N24
\UDoor_mecanism|UCLK|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Equal0~5_combout\ = (!\UDoor_mecanism|UCLK|count\(21) & (!\UDoor_mecanism|UCLK|count\(22) & (!\UDoor_mecanism|UCLK|count\(20) & !\UDoor_mecanism|UCLK|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(21),
	datab => \UDoor_mecanism|UCLK|count\(22),
	datac => \UDoor_mecanism|UCLK|count\(20),
	datad => \UDoor_mecanism|UCLK|count\(23),
	combout => \UDoor_mecanism|UCLK|Equal0~5_combout\);

-- Location: LCCOMB_X51_Y33_N30
\UDoor_mecanism|UCLK|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Equal0~4_combout\ = (\UDoor_mecanism|UCLK|count\(16) & (\UDoor_mecanism|UCLK|count\(18) & (\UDoor_mecanism|UCLK|count\(17) & \UDoor_mecanism|UCLK|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(16),
	datab => \UDoor_mecanism|UCLK|count\(18),
	datac => \UDoor_mecanism|UCLK|count\(17),
	datad => \UDoor_mecanism|UCLK|count\(19),
	combout => \UDoor_mecanism|UCLK|Equal0~4_combout\);

-- Location: LCCOMB_X51_Y32_N10
\UDoor_mecanism|UCLK|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Equal0~6_combout\ = (!\UDoor_mecanism|UCLK|count\(27) & (!\UDoor_mecanism|UCLK|count\(25) & (!\UDoor_mecanism|UCLK|count\(26) & !\UDoor_mecanism|UCLK|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|count\(27),
	datab => \UDoor_mecanism|UCLK|count\(25),
	datac => \UDoor_mecanism|UCLK|count\(26),
	datad => \UDoor_mecanism|UCLK|count\(24),
	combout => \UDoor_mecanism|UCLK|Equal0~6_combout\);

-- Location: LCCOMB_X51_Y32_N14
\UDoor_mecanism|UCLK|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Equal0~8_combout\ = (\UDoor_mecanism|UCLK|Equal0~7_combout\ & (\UDoor_mecanism|UCLK|Equal0~5_combout\ & (\UDoor_mecanism|UCLK|Equal0~4_combout\ & \UDoor_mecanism|UCLK|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|Equal0~7_combout\,
	datab => \UDoor_mecanism|UCLK|Equal0~5_combout\,
	datac => \UDoor_mecanism|UCLK|Equal0~4_combout\,
	datad => \UDoor_mecanism|UCLK|Equal0~6_combout\,
	combout => \UDoor_mecanism|UCLK|Equal0~8_combout\);

-- Location: LCCOMB_X51_Y33_N8
\UDoor_mecanism|UCLK|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|Equal0~9_combout\ = (\UDoor_mecanism|UCLK|Equal0~2_combout\ & (\UDoor_mecanism|UCLK|Equal0~3_combout\ & (\UDoor_mecanism|UCLK|Equal0~1_combout\ & \UDoor_mecanism|UCLK|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|UCLK|Equal0~2_combout\,
	datab => \UDoor_mecanism|UCLK|Equal0~3_combout\,
	datac => \UDoor_mecanism|UCLK|Equal0~1_combout\,
	datad => \UDoor_mecanism|UCLK|Equal0~8_combout\,
	combout => \UDoor_mecanism|UCLK|Equal0~9_combout\);

-- Location: LCCOMB_X51_Y33_N24
\UDoor_mecanism|UCLK|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|UCLK|tmp~0_combout\ = \UDoor_mecanism|UCLK|Equal0~9_combout\ $ (\UDoor_mecanism|UCLK|tmp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|UCLK|Equal0~9_combout\,
	datac => \UDoor_mecanism|UCLK|tmp~q\,
	combout => \UDoor_mecanism|UCLK|tmp~0_combout\);

-- Location: FF_X51_Y33_N25
\UDoor_mecanism|UCLK|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UDoor_mecanism|UCLK|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|UCLK|tmp~q\);

-- Location: CLKCTRL_G18
\UDoor_mecanism|UCLK|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UDoor_mecanism|UCLK|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UDoor_mecanism|UCLK|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X71_Y47_N30
\UDoor_mecanism|U6|cnt_atual_pl[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U6|cnt_atual_pl[0]~2_combout\ = (!\UDoor_mecanism|shift_clk~combout\ & !\UDoor_mecanism|U6|U2|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|shift_clk~combout\,
	datac => \UDoor_mecanism|U6|U2|Q\(0),
	combout => \UDoor_mecanism|U6|cnt_atual_pl[0]~2_combout\);

-- Location: LCCOMB_X45_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\);

-- Location: FF_X45_Y41_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\);

-- Location: LCCOMB_X65_Y50_N16
\USDC|USerialReceiver|shiftReg51|FF0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|USerialReceiver|shiftReg51|FF0|Q~feeder_combout\ = \auto_hub|instrumentati
-- on_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	combout => \USDC|USerialReceiver|shiftReg51|FF0|Q~feeder_combout\);

-- Location: LCCOMB_X69_Y47_N24
\USDC|USerialReceiver|serialControl1|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|USerialReceiver|serialControl1|Selector1~1_combout\ = (!\auto_hub|instrume
-- ntation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ & ((\USDC|USerialReceiver|serialControl1|Selector1~0_combout\) # 
-- (!\USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datab => \USDC|USerialReceiver|serialControl1|Selector1~0_combout\,
	datad => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\,
	combout => \USDC|USerialReceiver|serialControl1|Selector1~1_combout\);

-- Location: FF_X69_Y47_N25
\USDC|USerialReceiver|serialControl1|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USDC|USerialReceiver|serialControl1|Selector1~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X69_Y47_N0
\USDC|USerialReceiver|serialControl1|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|USerialReceiver|serialControl1|Selector1~0_combout\ = (\USDC|USerialReceiver|serialControl1|CurrentState.STATE_WAITING~q\ & (((\USDC|USerialReceiver|counter1|FF1|Q~q\) # (!\USDC|USerialReceiver|counter1|FF2|Q~q\)) # 
-- (!\USDC|USerialReceiver|counter1|FF0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USDC|USerialReceiver|counter1|FF0|Q~q\,
	datab => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_WAITING~q\,
	datac => \USDC|USerialReceiver|counter1|FF2|Q~q\,
	datad => \USDC|USerialReceiver|counter1|FF1|Q~q\,
	combout => \USDC|USerialReceiver|serialControl1|Selector1~0_combout\);

-- Location: FF_X65_Y50_N17
\USDC|USerialReceiver|shiftReg51|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USDC|USerialReceiver|shiftReg51|FF0|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|USerialReceiver|serialControl1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USDC|USerialReceiver|shiftReg51|FF0|Q~q\);

-- Location: LCCOMB_X65_Y50_N26
\USDC|USerialReceiver|shiftReg51|FF1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|USerialReceiver|shiftReg51|FF1|Q~feeder_combout\ = \USDC|USerialReceiver|shiftReg51|FF0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \USDC|USerialReceiver|shiftReg51|FF0|Q~q\,
	combout => \USDC|USerialReceiver|shiftReg51|FF1|Q~feeder_combout\);

-- Location: FF_X65_Y50_N27
\USDC|USerialReceiver|shiftReg51|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USDC|USerialReceiver|shiftReg51|FF1|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|USerialReceiver|serialControl1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USDC|USerialReceiver|shiftReg51|FF1|Q~q\);

-- Location: LCCOMB_X65_Y50_N12
\USDC|USerialReceiver|shiftReg51|FF2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|USerialReceiver|shiftReg51|FF2|Q~feeder_combout\ = \USDC|USerialReceiver|shiftReg51|FF1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \USDC|USerialReceiver|shiftReg51|FF1|Q~q\,
	combout => \USDC|USerialReceiver|shiftReg51|FF2|Q~feeder_combout\);

-- Location: FF_X65_Y50_N13
\USDC|USerialReceiver|shiftReg51|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USDC|USerialReceiver|shiftReg51|FF2|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|USerialReceiver|serialControl1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USDC|USerialReceiver|shiftReg51|FF2|Q~q\);

-- Location: LCCOMB_X65_Y50_N30
\USDC|USerialReceiver|shiftReg51|FF3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|USerialReceiver|shiftReg51|FF3|Q~feeder_combout\ = \USDC|USerialReceiver|shiftReg51|FF2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \USDC|USerialReceiver|shiftReg51|FF2|Q~q\,
	combout => \USDC|USerialReceiver|shiftReg51|FF3|Q~feeder_combout\);

-- Location: FF_X65_Y50_N31
\USDC|USerialReceiver|shiftReg51|FF3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USDC|USerialReceiver|shiftReg51|FF3|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|USerialReceiver|serialControl1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USDC|USerialReceiver|shiftReg51|FF3|Q~q\);

-- Location: LCCOMB_X70_Y47_N16
\USDC|USerialReceiver|shiftReg51|FF4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|USerialReceiver|shiftReg51|FF4|Q~feeder_combout\ = \USDC|USerialReceiver|shiftReg51|FF3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \USDC|USerialReceiver|shiftReg51|FF3|Q~q\,
	combout => \USDC|USerialReceiver|shiftReg51|FF4|Q~feeder_combout\);

-- Location: FF_X70_Y47_N17
\USDC|USerialReceiver|shiftReg51|FF4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USDC|USerialReceiver|shiftReg51|FF4|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|USerialReceiver|serialControl1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USDC|USerialReceiver|shiftReg51|FF4|Q~q\);

-- Location: LCCOMB_X70_Y47_N18
\USDC|UDispatcher|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|UDispatcher|Selector1~0_combout\ = (\USDC|USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\) # ((!\USDC|UDispatcher|CurrentState.STATE_DONE~q\ & \USDC|UDispatcher|CurrentState.STATE_WAITING~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \USDC|UDispatcher|CurrentState.STATE_DONE~q\,
	datac => \USDC|UDispatcher|CurrentState.STATE_WAITING~q\,
	datad => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\,
	combout => \USDC|UDispatcher|Selector1~0_combout\);

-- Location: FF_X70_Y47_N19
\USDC|UDispatcher|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USDC|UDispatcher|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USDC|UDispatcher|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X70_Y47_N20
\USDC|UDispatcher|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|UDispatcher|Selector0~1_combout\ = (!\USDC|UDispatcher|CurrentState.STATE_WAITING~q\ & \USDC|USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \USDC|UDispatcher|CurrentState.STATE_WAITING~q\,
	datad => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\,
	combout => \USDC|UDispatcher|Selector0~1_combout\);

-- Location: LCCOMB_X70_Y47_N22
\USDC|UDispatcher|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|UDispatcher|Selector0~0_combout\ = (\sensor~input_o\ & \USDC|UDispatcher|CurrentState.STATE_CLOSING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sensor~input_o\,
	datad => \USDC|UDispatcher|CurrentState.STATE_CLOSING~q\,
	combout => \USDC|UDispatcher|Selector0~0_combout\);

-- Location: LCCOMB_X71_Y47_N8
\UDoor_mecanism|U7|dataShift_in[8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U7|dataShift_in[8]~0_combout\ = (!\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & \UDoor_mecanism|U7|U1|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \USDC|UDispatcher|CurrentState.STATE_OPENING~q\,
	datad => \UDoor_mecanism|U7|U1|Q\(7),
	combout => \UDoor_mecanism|U7|dataShift_in[8]~0_combout\);

-- Location: FF_X71_Y47_N9
\UDoor_mecanism|U7|U1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UDoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \UDoor_mecanism|U7|dataShift_in[8]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|UDispatcher|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|U7|U1|Q\(8));

-- Location: LCCOMB_X70_Y49_N6
\UDoor_mecanism|U7|dataShift_in[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U7|dataShift_in[6]~7_combout\ = (\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & (\UDoor_mecanism|U7|U1|Q\(7))) # (!\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & ((\UDoor_mecanism|U7|U1|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USDC|UDispatcher|CurrentState.STATE_OPENING~q\,
	datac => \UDoor_mecanism|U7|U1|Q\(7),
	datad => \UDoor_mecanism|U7|U1|Q\(5),
	combout => \UDoor_mecanism|U7|dataShift_in[6]~7_combout\);

-- Location: FF_X70_Y49_N7
\UDoor_mecanism|U7|U1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UDoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \UDoor_mecanism|U7|dataShift_in[6]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|UDispatcher|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|U7|U1|Q\(6));

-- Location: LCCOMB_X71_Y47_N10
\UDoor_mecanism|U7|dataShift_in[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U7|dataShift_in[7]~8_combout\ = (\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & (\UDoor_mecanism|U7|U1|Q\(8))) # (!\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & ((\UDoor_mecanism|U7|U1|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \USDC|UDispatcher|CurrentState.STATE_OPENING~q\,
	datac => \UDoor_mecanism|U7|U1|Q\(8),
	datad => \UDoor_mecanism|U7|U1|Q\(6),
	combout => \UDoor_mecanism|U7|dataShift_in[7]~8_combout\);

-- Location: FF_X71_Y47_N11
\UDoor_mecanism|U7|U1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UDoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \UDoor_mecanism|U7|dataShift_in[7]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|UDispatcher|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|U7|U1|Q\(7));

-- Location: LCCOMB_X70_Y49_N0
\UDoor_mecanism|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|Equal0~1_combout\ = (!\UDoor_mecanism|U7|U1|Q\(5) & (!\UDoor_mecanism|U7|U1|Q\(4) & (!\UDoor_mecanism|U7|U1|Q\(7) & !\UDoor_mecanism|U7|U1|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|U7|U1|Q\(5),
	datab => \UDoor_mecanism|U7|U1|Q\(4),
	datac => \UDoor_mecanism|U7|U1|Q\(7),
	datad => \UDoor_mecanism|U7|U1|Q\(6),
	combout => \UDoor_mecanism|Equal0~1_combout\);

-- Location: LCCOMB_X70_Y47_N2
\USDC|UDispatcher|OnOff~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|UDispatcher|OnOff~0_combout\ = (\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & (((\UDoor_mecanism|U7|U1|Q\(8)) # (!\UDoor_mecanism|Equal0~1_combout\)) # (!\UDoor_mecanism|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|Equal0~0_combout\,
	datab => \UDoor_mecanism|Equal0~1_combout\,
	datac => \UDoor_mecanism|U7|U1|Q\(8),
	datad => \USDC|UDispatcher|CurrentState.STATE_OPENING~q\,
	combout => \USDC|UDispatcher|OnOff~0_combout\);

-- Location: LCCOMB_X70_Y47_N24
\USDC|UDispatcher|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|UDispatcher|Selector0~2_combout\ = (\USDC|UDispatcher|Selector0~0_combout\) # ((\USDC|UDispatcher|OnOff~0_combout\) # ((\USDC|USerialReceiver|shiftReg51|FF4|Q~q\ & \USDC|UDispatcher|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USDC|USerialReceiver|shiftReg51|FF4|Q~q\,
	datab => \USDC|UDispatcher|Selector0~1_combout\,
	datac => \USDC|UDispatcher|Selector0~0_combout\,
	datad => \USDC|UDispatcher|OnOff~0_combout\,
	combout => \USDC|UDispatcher|Selector0~2_combout\);

-- Location: FF_X70_Y47_N25
\USDC|UDispatcher|CurrentState.STATE_OPENING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USDC|UDispatcher|Selector0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USDC|UDispatcher|CurrentState.STATE_OPENING~q\);

-- Location: LCCOMB_X70_Y49_N18
\UDoor_mecanism|U7|dataShift_in[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U7|dataShift_in[4]~5_combout\ = (\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & ((\UDoor_mecanism|U7|U1|Q\(5)))) # (!\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & (\UDoor_mecanism|U7|U1|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USDC|UDispatcher|CurrentState.STATE_OPENING~q\,
	datac => \UDoor_mecanism|U7|U1|Q\(3),
	datad => \UDoor_mecanism|U7|U1|Q\(5),
	combout => \UDoor_mecanism|U7|dataShift_in[4]~5_combout\);

-- Location: FF_X70_Y49_N19
\UDoor_mecanism|U7|U1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UDoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \UDoor_mecanism|U7|dataShift_in[4]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|UDispatcher|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|U7|U1|Q\(4));

-- Location: LCCOMB_X70_Y49_N12
\UDoor_mecanism|U7|dataShift_in[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U7|dataShift_in[5]~6_combout\ = (\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & ((\UDoor_mecanism|U7|U1|Q\(6)))) # (!\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & (\UDoor_mecanism|U7|U1|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|U7|U1|Q\(4),
	datac => \USDC|UDispatcher|CurrentState.STATE_OPENING~q\,
	datad => \UDoor_mecanism|U7|U1|Q\(6),
	combout => \UDoor_mecanism|U7|dataShift_in[5]~6_combout\);

-- Location: FF_X70_Y49_N13
\UDoor_mecanism|U7|U1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UDoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \UDoor_mecanism|U7|dataShift_in[5]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|UDispatcher|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|U7|U1|Q\(5));

-- Location: LCCOMB_X70_Y49_N28
\UDoor_mecanism|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|Equal1~1_combout\ = (\UDoor_mecanism|U7|U1|Q\(5) & (\UDoor_mecanism|U7|U1|Q\(4) & \UDoor_mecanism|U7|U1|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|U7|U1|Q\(5),
	datab => \UDoor_mecanism|U7|U1|Q\(4),
	datac => \UDoor_mecanism|U7|U1|Q\(3),
	combout => \UDoor_mecanism|Equal1~1_combout\);

-- Location: LCCOMB_X71_Y47_N4
\UDoor_mecanism|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|Equal1~2_combout\ = (\UDoor_mecanism|U7|U1|Q\(7) & (\UDoor_mecanism|U7|U1|Q\(6) & \UDoor_mecanism|U7|U1|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|U7|U1|Q\(7),
	datab => \UDoor_mecanism|U7|U1|Q\(6),
	datac => \UDoor_mecanism|U7|U1|Q\(8),
	combout => \UDoor_mecanism|Equal1~2_combout\);

-- Location: LCCOMB_X70_Y49_N20
\UDoor_mecanism|U7|dataShift_in[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U7|dataShift_in[2]~3_combout\ = (\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & (\UDoor_mecanism|U7|U1|Q\(3))) # (!\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & ((\UDoor_mecanism|U7|U1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|U7|U1|Q\(3),
	datac => \USDC|UDispatcher|CurrentState.STATE_OPENING~q\,
	datad => \UDoor_mecanism|U7|U1|Q\(1),
	combout => \UDoor_mecanism|U7|dataShift_in[2]~3_combout\);

-- Location: FF_X70_Y49_N21
\UDoor_mecanism|U7|U1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UDoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \UDoor_mecanism|U7|dataShift_in[2]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|UDispatcher|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|U7|U1|Q\(2));

-- Location: LCCOMB_X70_Y49_N2
\UDoor_mecanism|U7|dataShift_in[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U7|dataShift_in[1]~2_combout\ = (\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & ((\UDoor_mecanism|U7|U1|Q\(2)))) # (!\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & (!\UDoor_mecanism|U7|U1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USDC|UDispatcher|CurrentState.STATE_OPENING~q\,
	datac => \UDoor_mecanism|U7|U1|Q\(0),
	datad => \UDoor_mecanism|U7|U1|Q\(2),
	combout => \UDoor_mecanism|U7|dataShift_in[1]~2_combout\);

-- Location: FF_X70_Y49_N3
\UDoor_mecanism|U7|U1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UDoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \UDoor_mecanism|U7|dataShift_in[1]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|UDispatcher|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|U7|U1|Q\(1));

-- Location: LCCOMB_X70_Y49_N8
\UDoor_mecanism|U7|dataShift_in[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U7|dataShift_in[0]~1_combout\ = (\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & !\UDoor_mecanism|U7|U1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \USDC|UDispatcher|CurrentState.STATE_OPENING~q\,
	datad => \UDoor_mecanism|U7|U1|Q\(1),
	combout => \UDoor_mecanism|U7|dataShift_in[0]~1_combout\);

-- Location: FF_X70_Y49_N9
\UDoor_mecanism|U7|U1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UDoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \UDoor_mecanism|U7|dataShift_in[0]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|UDispatcher|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|U7|U1|Q\(0));

-- Location: LCCOMB_X70_Y49_N10
\UDoor_mecanism|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|Equal1~0_combout\ = (!\UDoor_mecanism|U7|U1|Q\(0) & (\UDoor_mecanism|U7|U1|Q\(2) & \UDoor_mecanism|U7|U1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|U7|U1|Q\(0),
	datac => \UDoor_mecanism|U7|U1|Q\(2),
	datad => \UDoor_mecanism|U7|U1|Q\(1),
	combout => \UDoor_mecanism|Equal1~0_combout\);

-- Location: LCCOMB_X70_Y47_N8
\USDC|UDispatcher|OnOff~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|UDispatcher|OnOff~1_combout\ = (\USDC|UDispatcher|Selector3~0_combout\ & (((!\UDoor_mecanism|Equal1~0_combout\) # (!\UDoor_mecanism|Equal1~2_combout\)) # (!\UDoor_mecanism|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USDC|UDispatcher|Selector3~0_combout\,
	datab => \UDoor_mecanism|Equal1~1_combout\,
	datac => \UDoor_mecanism|Equal1~2_combout\,
	datad => \UDoor_mecanism|Equal1~0_combout\,
	combout => \USDC|UDispatcher|OnOff~1_combout\);

-- Location: LCCOMB_X70_Y47_N10
\USDC|UDispatcher|OnOff\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|UDispatcher|OnOff~combout\ = (\USDC|UDispatcher|OnOff~1_combout\) # (\USDC|UDispatcher|OnOff~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \USDC|UDispatcher|OnOff~1_combout\,
	datad => \USDC|UDispatcher|OnOff~0_combout\,
	combout => \USDC|UDispatcher|OnOff~combout\);

-- Location: FF_X71_Y47_N31
\UDoor_mecanism|U6|U2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UDoor_mecanism|UCLK|tmp~clkctrl_outclk\,
	d => \UDoor_mecanism|U6|cnt_atual_pl[0]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|UDispatcher|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|U6|U2|Q\(0));

-- Location: LCCOMB_X71_Y47_N26
\UDoor_mecanism|U6|cnt_atual_pl[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U6|cnt_atual_pl[1]~4_combout\ = (\UDoor_mecanism|shift_clk~combout\ & (((\USDC|USerialReceiver|shiftReg51|FF3|Q~q\)))) # (!\UDoor_mecanism|shift_clk~combout\ & (\UDoor_mecanism|U6|U2|Q\(0) $ ((\UDoor_mecanism|U6|U2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|shift_clk~combout\,
	datab => \UDoor_mecanism|U6|U2|Q\(0),
	datac => \UDoor_mecanism|U6|U2|Q\(1),
	datad => \USDC|USerialReceiver|shiftReg51|FF3|Q~q\,
	combout => \UDoor_mecanism|U6|cnt_atual_pl[1]~4_combout\);

-- Location: FF_X71_Y47_N27
\UDoor_mecanism|U6|U2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UDoor_mecanism|UCLK|tmp~clkctrl_outclk\,
	d => \UDoor_mecanism|U6|cnt_atual_pl[1]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|UDispatcher|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|U6|U2|Q\(1));

-- Location: LCCOMB_X71_Y47_N18
\UDoor_mecanism|U6|U1|SC:2:U1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U6|U1|SC:2:U1|S~combout\ = \UDoor_mecanism|U6|U2|Q\(2) $ (((\UDoor_mecanism|U6|U2|Q\(0) & \UDoor_mecanism|U6|U2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|U6|U2|Q\(0),
	datab => \UDoor_mecanism|U6|U2|Q\(2),
	datac => \UDoor_mecanism|U6|U2|Q\(1),
	combout => \UDoor_mecanism|U6|U1|SC:2:U1|S~combout\);

-- Location: LCCOMB_X71_Y47_N28
\UDoor_mecanism|U6|cnt_atual_pl[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U6|cnt_atual_pl[2]~1_combout\ = (\UDoor_mecanism|shift_clk~combout\ & ((\USDC|USerialReceiver|shiftReg51|FF2|Q~q\))) # (!\UDoor_mecanism|shift_clk~combout\ & (\UDoor_mecanism|U6|U1|SC:2:U1|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|shift_clk~combout\,
	datab => \UDoor_mecanism|U6|U1|SC:2:U1|S~combout\,
	datac => \USDC|USerialReceiver|shiftReg51|FF2|Q~q\,
	combout => \UDoor_mecanism|U6|cnt_atual_pl[2]~1_combout\);

-- Location: FF_X71_Y47_N29
\UDoor_mecanism|U6|U2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UDoor_mecanism|UCLK|tmp~clkctrl_outclk\,
	d => \UDoor_mecanism|U6|cnt_atual_pl[2]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|UDispatcher|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|U6|U2|Q\(2));

-- Location: LCCOMB_X71_Y47_N16
\UDoor_mecanism|U6|U1|SC:3:U1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U6|U1|SC:3:U1|S~combout\ = \UDoor_mecanism|U6|U2|Q\(3) $ (((\UDoor_mecanism|U6|U2|Q\(0) & (\UDoor_mecanism|U6|U2|Q\(2) & \UDoor_mecanism|U6|U2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|U6|U2|Q\(0),
	datab => \UDoor_mecanism|U6|U2|Q\(2),
	datac => \UDoor_mecanism|U6|U2|Q\(1),
	datad => \UDoor_mecanism|U6|U2|Q\(3),
	combout => \UDoor_mecanism|U6|U1|SC:3:U1|S~combout\);

-- Location: LCCOMB_X71_Y47_N2
\UDoor_mecanism|U6|cnt_atual_pl[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U6|cnt_atual_pl[3]~0_combout\ = (\UDoor_mecanism|shift_clk~combout\ & (\USDC|USerialReceiver|shiftReg51|FF1|Q~q\)) # (!\UDoor_mecanism|shift_clk~combout\ & ((\UDoor_mecanism|U6|U1|SC:3:U1|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USDC|USerialReceiver|shiftReg51|FF1|Q~q\,
	datab => \UDoor_mecanism|U6|U1|SC:3:U1|S~combout\,
	datac => \UDoor_mecanism|shift_clk~combout\,
	combout => \UDoor_mecanism|U6|cnt_atual_pl[3]~0_combout\);

-- Location: FF_X71_Y47_N3
\UDoor_mecanism|U6|U2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UDoor_mecanism|UCLK|tmp~clkctrl_outclk\,
	d => \UDoor_mecanism|U6|cnt_atual_pl[3]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|UDispatcher|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|U6|U2|Q\(3));

-- Location: LCCOMB_X71_Y47_N12
\UDoor_mecanism|shift_clk~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|shift_clk~2_combout\ = (\UDoor_mecanism|U6|U2|Q\(0) & (\UDoor_mecanism|U6|U2|Q\(2) & (\UDoor_mecanism|U6|U2|Q\(1) & \UDoor_mecanism|U6|U2|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|U6|U2|Q\(0),
	datab => \UDoor_mecanism|U6|U2|Q\(2),
	datac => \UDoor_mecanism|U6|U2|Q\(1),
	datad => \UDoor_mecanism|U6|U2|Q\(3),
	combout => \UDoor_mecanism|shift_clk~2_combout\);

-- Location: LCCOMB_X71_Y47_N0
\UDoor_mecanism|U6|cnt_atual_pl[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U6|cnt_atual_pl[4]~3_combout\ = (\UDoor_mecanism|shift_clk~combout\ & (\USDC|USerialReceiver|shiftReg51|FF0|Q~q\)) # (!\UDoor_mecanism|shift_clk~combout\ & ((\UDoor_mecanism|U6|U2|Q\(4) $ (\UDoor_mecanism|shift_clk~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|shift_clk~combout\,
	datab => \USDC|USerialReceiver|shiftReg51|FF0|Q~q\,
	datac => \UDoor_mecanism|U6|U2|Q\(4),
	datad => \UDoor_mecanism|shift_clk~2_combout\,
	combout => \UDoor_mecanism|U6|cnt_atual_pl[4]~3_combout\);

-- Location: FF_X71_Y47_N1
\UDoor_mecanism|U6|U2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UDoor_mecanism|UCLK|tmp~clkctrl_outclk\,
	d => \UDoor_mecanism|U6|cnt_atual_pl[4]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|UDispatcher|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|U6|U2|Q\(4));

-- Location: LCCOMB_X71_Y47_N20
\UDoor_mecanism|shift_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|shift_clk~0_combout\ = (\UDoor_mecanism|U6|U2|Q\(1) & \UDoor_mecanism|U6|U2|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UDoor_mecanism|U6|U2|Q\(1),
	datad => \UDoor_mecanism|U6|U2|Q\(4),
	combout => \UDoor_mecanism|shift_clk~0_combout\);

-- Location: LCCOMB_X71_Y47_N22
\UDoor_mecanism|shift_clk\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|shift_clk~combout\ = LCELL((\UDoor_mecanism|U6|U2|Q\(2) & (\UDoor_mecanism|shift_clk~0_combout\ & (\UDoor_mecanism|U6|U2|Q\(0) & \UDoor_mecanism|U6|U2|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|U6|U2|Q\(2),
	datab => \UDoor_mecanism|shift_clk~0_combout\,
	datac => \UDoor_mecanism|U6|U2|Q\(0),
	datad => \UDoor_mecanism|U6|U2|Q\(3),
	combout => \UDoor_mecanism|shift_clk~combout\);

-- Location: CLKCTRL_G9
\UDoor_mecanism|shift_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UDoor_mecanism|shift_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UDoor_mecanism|shift_clk~clkctrl_outclk\);

-- Location: LCCOMB_X70_Y49_N22
\UDoor_mecanism|U7|dataShift_in[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U7|dataShift_in[3]~4_combout\ = (\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & ((\UDoor_mecanism|U7|U1|Q\(4)))) # (!\USDC|UDispatcher|CurrentState.STATE_OPENING~q\ & (\UDoor_mecanism|U7|U1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|U7|U1|Q\(2),
	datac => \USDC|UDispatcher|CurrentState.STATE_OPENING~q\,
	datad => \UDoor_mecanism|U7|U1|Q\(4),
	combout => \UDoor_mecanism|U7|dataShift_in[3]~4_combout\);

-- Location: FF_X70_Y49_N23
\UDoor_mecanism|U7|U1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UDoor_mecanism|shift_clk~clkctrl_outclk\,
	d => \UDoor_mecanism|U7|dataShift_in[3]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USDC|UDispatcher|OnOff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UDoor_mecanism|U7|U1|Q\(3));

-- Location: LCCOMB_X70_Y49_N24
\UDoor_mecanism|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|Equal0~0_combout\ = (!\UDoor_mecanism|U7|U1|Q\(3) & (!\UDoor_mecanism|U7|U1|Q\(0) & (!\UDoor_mecanism|U7|U1|Q\(2) & !\UDoor_mecanism|U7|U1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|U7|U1|Q\(3),
	datab => \UDoor_mecanism|U7|U1|Q\(0),
	datac => \UDoor_mecanism|U7|U1|Q\(2),
	datad => \UDoor_mecanism|U7|U1|Q\(1),
	combout => \UDoor_mecanism|Equal0~0_combout\);

-- Location: LCCOMB_X70_Y47_N30
\USDC|UDispatcher|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|UDispatcher|Selector3~1_combout\ = (\UDoor_mecanism|Equal0~0_combout\ & (\UDoor_mecanism|Equal0~1_combout\ & (!\UDoor_mecanism|U7|U1|Q\(8) & \USDC|UDispatcher|CurrentState.STATE_OPENING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|Equal0~0_combout\,
	datab => \UDoor_mecanism|Equal0~1_combout\,
	datac => \UDoor_mecanism|U7|U1|Q\(8),
	datad => \USDC|UDispatcher|CurrentState.STATE_OPENING~q\,
	combout => \USDC|UDispatcher|Selector3~1_combout\);

-- Location: LCCOMB_X70_Y47_N28
\USDC|UDispatcher|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|UDispatcher|Selector2~0_combout\ = (\USDC|UDispatcher|OnOff~1_combout\) # ((!\USDC|USerialReceiver|shiftReg51|FF4|Q~q\ & ((\USDC|UDispatcher|Selector3~1_combout\) # (\USDC|UDispatcher|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USDC|UDispatcher|Selector3~1_combout\,
	datab => \USDC|USerialReceiver|shiftReg51|FF4|Q~q\,
	datac => \USDC|UDispatcher|OnOff~1_combout\,
	datad => \USDC|UDispatcher|Selector0~1_combout\,
	combout => \USDC|UDispatcher|Selector2~0_combout\);

-- Location: FF_X70_Y47_N29
\USDC|UDispatcher|CurrentState.STATE_CLOSING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USDC|UDispatcher|Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USDC|UDispatcher|CurrentState.STATE_CLOSING~q\);

-- Location: LCCOMB_X70_Y47_N6
\USDC|UDispatcher|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|UDispatcher|Selector3~0_combout\ = (!\sensor~input_o\ & \USDC|UDispatcher|CurrentState.STATE_CLOSING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sensor~input_o\,
	datad => \USDC|UDispatcher|CurrentState.STATE_CLOSING~q\,
	combout => \USDC|UDispatcher|Selector3~0_combout\);

-- Location: LCCOMB_X70_Y47_N26
\USDC|UDispatcher|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|UDispatcher|Selector3~2_combout\ = (\USDC|UDispatcher|Selector3~0_combout\ & (\UDoor_mecanism|Equal1~1_combout\ & (\UDoor_mecanism|Equal1~2_combout\ & \UDoor_mecanism|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USDC|UDispatcher|Selector3~0_combout\,
	datab => \UDoor_mecanism|Equal1~1_combout\,
	datac => \UDoor_mecanism|Equal1~2_combout\,
	datad => \UDoor_mecanism|Equal1~0_combout\,
	combout => \USDC|UDispatcher|Selector3~2_combout\);

-- Location: LCCOMB_X70_Y47_N0
\USDC|UDispatcher|Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|UDispatcher|Selector3~4_combout\ = (\USDC|UDispatcher|Selector3~2_combout\) # ((\USDC|UDispatcher|Selector3~3_combout\) # ((\USDC|USerialReceiver|shiftReg51|FF4|Q~q\ & \USDC|UDispatcher|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USDC|UDispatcher|Selector3~2_combout\,
	datab => \USDC|USerialReceiver|shiftReg51|FF4|Q~q\,
	datac => \USDC|UDispatcher|Selector3~1_combout\,
	datad => \USDC|UDispatcher|Selector3~3_combout\,
	combout => \USDC|UDispatcher|Selector3~4_combout\);

-- Location: FF_X70_Y47_N1
\USDC|UDispatcher|CurrentState.STATE_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USDC|UDispatcher|Selector3~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USDC|UDispatcher|CurrentState.STATE_DONE~q\);

-- Location: LCCOMB_X70_Y47_N4
\USDC|UDispatcher|Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|UDispatcher|Selector3~3_combout\ = (\USDC|UDispatcher|CurrentState.STATE_DONE~q\ & \USDC|USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \USDC|UDispatcher|CurrentState.STATE_DONE~q\,
	datad => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\,
	combout => \USDC|UDispatcher|Selector3~3_combout\);

-- Location: LCCOMB_X69_Y47_N28
\USDC|USerialReceiver|serialControl1|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|USerialReceiver|serialControl1|Selector0~1_combout\ = (\USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\ & (!\USDC|UDispatcher|Selector3~3_combout\ & ((!\USDC|USerialReceiver|serialControl1|Selector0~0_combout\) # 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\)))) # 
-- (!\USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\ & (!\auto
-- _hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datab => \USDC|USerialReceiver|serialControl1|Selector0~0_combout\,
	datac => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\,
	datad => \USDC|UDispatcher|Selector3~3_combout\,
	combout => \USDC|USerialReceiver|serialControl1|Selector0~1_combout\);

-- Location: FF_X69_Y47_N29
\USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USDC|USerialReceiver|serialControl1|Selector0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~q\);

-- Location: CLKCTRL_G5
\USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~clkctrl_outclk\);

-- Location: FF_X69_Y47_N13
\USDC|USerialReceiver|counter1|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USDC|USerialReceiver|counter1|FF0|Q~0_combout\,
	clrn => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_RECEIVING~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USDC|USerialReceiver|counter1|FF0|Q~q\);

-- Location: LCCOMB_X69_Y47_N2
\USDC|USerialReceiver|serialControl1|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|USerialReceiver|serialControl1|Selector2~0_combout\ = (\USDC|USerialReceiver|counter1|FF0|Q~q\ & (\USDC|USerialReceiver|serialControl1|CurrentState.STATE_WAITING~q\ & (\USDC|USerialReceiver|counter1|FF2|Q~q\ & 
-- !\USDC|USerialReceiver|counter1|FF1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USDC|USerialReceiver|counter1|FF0|Q~q\,
	datab => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_WAITING~q\,
	datac => \USDC|USerialReceiver|counter1|FF2|Q~q\,
	datad => \USDC|USerialReceiver|counter1|FF1|Q~q\,
	combout => \USDC|USerialReceiver|serialControl1|Selector2~0_combout\);

-- Location: LCCOMB_X70_Y47_N12
\USDC|USerialReceiver|serialControl1|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USDC|USerialReceiver|serialControl1|Selector2~1_combout\ = (\USDC|USerialReceiver|serialControl1|Selector2~0_combout\) # ((\USDC|USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\ & !\USDC|UDispatcher|CurrentState.STATE_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USDC|USerialReceiver|serialControl1|Selector2~0_combout\,
	datac => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\,
	datad => \USDC|UDispatcher|CurrentState.STATE_DONE~q\,
	combout => \USDC|USerialReceiver|serialControl1|Selector2~1_combout\);

-- Location: FF_X70_Y47_N13
\USDC|USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USDC|USerialReceiver|serialControl1|Selector2~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\);

-- Location: LCCOMB_X44_Y41_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	datab => \USDC|USerialReceiver|serialControl1|CurrentState.STATE_ACCEPTED~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\);

-- Location: FF_X44_Y41_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6));

-- Location: LCCOMB_X45_Y42_N24
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X44_Y41_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	datad => \~GND~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\);

-- Location: FF_X44_Y41_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5));

-- Location: LCCOMB_X44_Y41_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_RECEIVING~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\);

-- Location: FF_X44_Y41_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: LCCOMB_X46_Y34_N6
\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~2_combout\ = (!\UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_SCANNING~q\ & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\ & 
-- (\UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\ & \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_SCANNING~q\,
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\,
	datac => \UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\,
	combout => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~2_combout\);

-- Location: LCCOMB_X46_Y37_N0
\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~0_combout\ = \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\ $ (((\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~2_combout\ & \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~2_combout\,
	datac => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\,
	combout => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~0_combout\);

-- Location: FF_X46_Y37_N1
\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UKeyBoardReader|UCLKDIV|tmp~clkctrl_outclk\,
	d => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\);

-- Location: LCCOMB_X46_Y37_N16
\UKeyBoardReader|URingBuffer|Uram|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~11_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\,
	datac => \rtl~12clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~11_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~11_combout\);

-- Location: LCCOMB_X46_Y37_N2
\UKeyBoardReader|URingBuffer|Uram|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~15_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~15clkctrl_outclk\,
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~15_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~15_combout\);

-- Location: LCCOMB_X47_Y37_N20
\UKeyBoardReader|URingBuffer|Uram|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~3_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\,
	datac => \rtl~14clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~3_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~3_combout\);

-- Location: LCCOMB_X47_Y37_N10
\UKeyBoardReader|URingBuffer|Uram|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~7_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~7_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~7_combout\);

-- Location: LCCOMB_X47_Y37_N12
\UKeyBoardReader|URingBuffer|Uram|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~49_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~7_combout\))) # 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\ & (\UKeyBoardReader|URingBuffer|Uram|ram~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~3_combout\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~7_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~49_combout\);

-- Location: LCCOMB_X47_Y37_N22
\UKeyBoardReader|URingBuffer|Uram|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~50_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~49_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~15_combout\))) # 
-- (!\UKeyBoardReader|URingBuffer|Uram|ram~49_combout\ & (\UKeyBoardReader|URingBuffer|Uram|ram~11_combout\)))) # (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((\UKeyBoardReader|URingBuffer|Uram|ram~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|Uram|ram~11_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~15_combout\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~49_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~50_combout\);

-- Location: LCCOMB_X47_Y38_N6
\UKeyBoardReader|URingBuffer|Uram|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~31_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~31_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~31_combout\);

-- Location: LCCOMB_X47_Y38_N18
\UKeyBoardReader|URingBuffer|Uram|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~23_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~23_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~23_combout\);

-- Location: LCCOMB_X46_Y37_N6
\UKeyBoardReader|URingBuffer|Uram|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~27_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~27_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~27_combout\);

-- Location: LCCOMB_X47_Y38_N28
\UKeyBoardReader|URingBuffer|Uram|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~19_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~10clkctrl_outclk\,
	datac => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~19_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~19_combout\);

-- Location: LCCOMB_X47_Y38_N8
\UKeyBoardReader|URingBuffer|Uram|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~47_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~27_combout\) # 
-- ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((\UKeyBoardReader|URingBuffer|Uram|ram~19_combout\ & 
-- !\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|Uram|ram~27_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~19_combout\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~47_combout\);

-- Location: LCCOMB_X47_Y38_N10
\UKeyBoardReader|URingBuffer|Uram|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~48_combout\ = (\UKeyBoardReader|URingBuffer|Uram|ram~47_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~31_combout\) # ((!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # 
-- (!\UKeyBoardReader|URingBuffer|Uram|ram~47_combout\ & (((\UKeyBoardReader|URingBuffer|Uram|ram~23_combout\ & \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|Uram|ram~31_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~23_combout\,
	datac => \UKeyBoardReader|URingBuffer|Uram|ram~47_combout\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~48_combout\);

-- Location: LCCOMB_X47_Y38_N2
\UKeyBoardReader|URingBuffer|Uram|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~51_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~48_combout\))) # 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2_combout\ & (\UKeyBoardReader|URingBuffer|Uram|ram~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~50_combout\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~48_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~51_combout\);

-- Location: FF_X47_Y38_N3
\UKeyBoardReader|UOutputBuffer|UOutputRegister|U3FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR~clkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|Uram|ram~51_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UOutputBuffer|UOutputRegister|U3FFD|Q~q\);

-- Location: LCCOMB_X44_Y41_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datac => \UKeyBoardReader|UOutputBuffer|UOutputRegister|U3FFD|Q~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X45_Y41_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\);

-- Location: FF_X45_Y41_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LCCOMB_X46_Y37_N24
\UKeyBoardReader|URingBuffer|Uram|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~26_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~26_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~26_combout\);

-- Location: LCCOMB_X47_Y38_N22
\UKeyBoardReader|URingBuffer|Uram|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~18_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & ((\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\))) # (!GLOBAL(\rtl~10clkctrl_outclk\) & (\UKeyBoardReader|URingBuffer|Uram|ram~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|Uram|ram~18_combout\,
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~18_combout\);

-- Location: LCCOMB_X47_Y38_N12
\UKeyBoardReader|URingBuffer|Uram|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~42_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~26_combout\) # 
-- ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((\UKeyBoardReader|URingBuffer|Uram|ram~18_combout\ & 
-- !\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~26_combout\,
	datac => \UKeyBoardReader|URingBuffer|Uram|ram~18_combout\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~42_combout\);

-- Location: LCCOMB_X47_Y38_N16
\UKeyBoardReader|URingBuffer|Uram|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~30_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~30_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~30_combout\);

-- Location: LCCOMB_X47_Y38_N20
\UKeyBoardReader|URingBuffer|Uram|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~22_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~22_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~22_combout\);

-- Location: LCCOMB_X47_Y38_N14
\UKeyBoardReader|URingBuffer|Uram|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~43_combout\ = (\UKeyBoardReader|URingBuffer|Uram|ram~42_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~30_combout\) # ((!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # 
-- (!\UKeyBoardReader|URingBuffer|Uram|ram~42_combout\ & (((\UKeyBoardReader|URingBuffer|Uram|ram~22_combout\ & \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|Uram|ram~42_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~30_combout\,
	datac => \UKeyBoardReader|URingBuffer|Uram|ram~22_combout\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~43_combout\);

-- Location: LCCOMB_X46_Y37_N10
\UKeyBoardReader|URingBuffer|Uram|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~10_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\,
	datac => \rtl~12clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~10_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~10_combout\);

-- Location: LCCOMB_X46_Y37_N28
\UKeyBoardReader|URingBuffer|Uram|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~14_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\,
	datab => \rtl~15clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~14_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~14_combout\);

-- Location: LCCOMB_X47_Y34_N18
\UKeyBoardReader|URingBuffer|Uram|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~6_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~6_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~6_combout\);

-- Location: LCCOMB_X47_Y37_N16
\UKeyBoardReader|URingBuffer|Uram|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~2_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\,
	datac => \rtl~14clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~2_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~2_combout\);

-- Location: LCCOMB_X47_Y37_N24
\UKeyBoardReader|URingBuffer|Uram|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~44_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\ & (\UKeyBoardReader|URingBuffer|Uram|ram~6_combout\)) # 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~6_combout\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~2_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~44_combout\);

-- Location: LCCOMB_X47_Y37_N26
\UKeyBoardReader|URingBuffer|Uram|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~45_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~44_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~14_combout\))) # 
-- (!\UKeyBoardReader|URingBuffer|Uram|ram~44_combout\ & (\UKeyBoardReader|URingBuffer|Uram|ram~10_combout\)))) # (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((\UKeyBoardReader|URingBuffer|Uram|ram~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|Uram|ram~10_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~14_combout\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~44_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~45_combout\);

-- Location: LCCOMB_X47_Y38_N24
\UKeyBoardReader|URingBuffer|Uram|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~46_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2_combout\ & (\UKeyBoardReader|URingBuffer|Uram|ram~43_combout\)) # 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~43_combout\,
	datac => \UKeyBoardReader|URingBuffer|Uram|ram~45_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~46_combout\);

-- Location: FF_X47_Y38_N25
\UKeyBoardReader|UOutputBuffer|UOutputRegister|U2FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR~clkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|Uram|ram~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UOutputBuffer|UOutputRegister|U2FFD|Q~q\);

-- Location: LCCOMB_X44_Y41_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \UKeyBoardReader|UOutputBuffer|UOutputRegister|U2FFD|Q~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\);

-- Location: FF_X44_Y41_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: LCCOMB_X46_Y34_N0
\UKeyBoardReader|URingBuffer|Uram|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~9_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~12clkctrl_outclk\,
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~9_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~9_combout\);

-- Location: LCCOMB_X49_Y36_N0
\UKeyBoardReader|URingBuffer|Uram|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~13_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~13_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~13_combout\);

-- Location: LCCOMB_X50_Y35_N24
\UKeyBoardReader|URingBuffer|Uram|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~5_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~5_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~5_combout\);

-- Location: LCCOMB_X47_Y34_N0
\UKeyBoardReader|URingBuffer|Uram|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~1_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\,
	datac => \rtl~14clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~1_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~1_combout\);

-- Location: LCCOMB_X47_Y35_N20
\UKeyBoardReader|URingBuffer|Uram|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~39_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\ & (\UKeyBoardReader|URingBuffer|Uram|ram~5_combout\)) # 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|Uram|ram~5_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~1_combout\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~39_combout\);

-- Location: LCCOMB_X47_Y35_N22
\UKeyBoardReader|URingBuffer|Uram|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~40_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~39_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~13_combout\))) # 
-- (!\UKeyBoardReader|URingBuffer|Uram|ram~39_combout\ & (\UKeyBoardReader|URingBuffer|Uram|ram~9_combout\)))) # (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & (((\UKeyBoardReader|URingBuffer|Uram|ram~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|Uram|ram~9_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~13_combout\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~39_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~40_combout\);

-- Location: LCCOMB_X47_Y35_N28
\UKeyBoardReader|URingBuffer|Uram|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~21_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~21_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~21_combout\);

-- Location: LCCOMB_X47_Y35_N0
\UKeyBoardReader|URingBuffer|Uram|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~29_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~11clkctrl_outclk\,
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~29_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~29_combout\);

-- Location: LCCOMB_X46_Y34_N14
\UKeyBoardReader|URingBuffer|Uram|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~25_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & ((\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\))) # (!GLOBAL(\rtl~9clkctrl_outclk\) & (\UKeyBoardReader|URingBuffer|Uram|ram~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~9clkctrl_outclk\,
	datac => \UKeyBoardReader|URingBuffer|Uram|ram~25_combout\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~25_combout\);

-- Location: LCCOMB_X47_Y35_N6
\UKeyBoardReader|URingBuffer|Uram|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~17_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\UKeyBoardReader|URingBuffer|Uram|ram~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\,
	datac => \rtl~10clkctrl_outclk\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~17_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~17_combout\);

-- Location: LCCOMB_X47_Y35_N8
\UKeyBoardReader|URingBuffer|Uram|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~37_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\ & (((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\)))) # 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\ & ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & (\UKeyBoardReader|URingBuffer|Uram|ram~25_combout\)) # 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|Uram|ram~25_combout\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[1]~1_combout\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~17_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~37_combout\);

-- Location: LCCOMB_X47_Y35_N10
\UKeyBoardReader|URingBuffer|Uram|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~38_combout\ = (\UKeyBoardReader|URingBuffer|Uram|ram~37_combout\ & (((\UKeyBoardReader|URingBuffer|Uram|ram~29_combout\) # (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\)))) # 
-- (!\UKeyBoardReader|URingBuffer|Uram|ram~37_combout\ & (\UKeyBoardReader|URingBuffer|Uram|ram~21_combout\ & ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|Uram|ram~21_combout\,
	datab => \UKeyBoardReader|URingBuffer|Uram|ram~29_combout\,
	datac => \UKeyBoardReader|URingBuffer|Uram|ram~37_combout\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[0]~0_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~38_combout\);

-- Location: LCCOMB_X47_Y35_N26
\UKeyBoardReader|URingBuffer|Uram|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|Uram|ram~41_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2_combout\ & ((\UKeyBoardReader|URingBuffer|Uram|ram~38_combout\))) # 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2_combout\ & (\UKeyBoardReader|URingBuffer|Uram|ram~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|Umux21|M[2]~2_combout\,
	datac => \UKeyBoardReader|URingBuffer|Uram|ram~40_combout\,
	datad => \UKeyBoardReader|URingBuffer|Uram|ram~38_combout\,
	combout => \UKeyBoardReader|URingBuffer|Uram|ram~41_combout\);

-- Location: FF_X47_Y35_N27
\UKeyBoardReader|UOutputBuffer|UOutputRegister|U1FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR~clkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|Uram|ram~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UOutputBuffer|UOutputRegister|U1FFD|Q~q\);

-- Location: LCCOMB_X44_Y41_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \UKeyBoardReader|UOutputBuffer|UOutputRegister|U1FFD|Q~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\);

-- Location: FF_X44_Y41_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: LCCOMB_X46_Y41_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\);

-- Location: LCCOMB_X46_Y41_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X46_Y41_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\);

-- Location: LCCOMB_X46_Y41_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\);

-- Location: FF_X46_Y41_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X46_Y41_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\);

-- Location: LCCOMB_X46_Y42_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\);

-- Location: FF_X46_Y42_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X45_Y40_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X45_Y40_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\);

-- Location: FF_X45_Y42_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8));

-- Location: LCCOMB_X47_Y40_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\);

-- Location: LCCOMB_X46_Y40_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X47_Y40_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\);

-- Location: LCCOMB_X46_Y42_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\);

-- Location: FF_X46_Y42_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X47_Y40_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\);

-- Location: FF_X47_Y40_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1));

-- Location: LCCOMB_X47_Y40_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\);

-- Location: FF_X47_Y40_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X47_Y40_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\);

-- Location: FF_X47_Y40_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X47_Y40_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\);

-- Location: FF_X47_Y40_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X47_Y40_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\);

-- Location: FF_X47_Y40_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X47_Y40_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X47_Y40_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X47_Y40_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X47_Y40_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X47_Y40_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X47_Y40_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X46_Y40_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X46_Y40_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\);

-- Location: FF_X46_Y40_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X47_Y40_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X47_Y40_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X47_Y40_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X47_Y40_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X47_Y40_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X46_Y40_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: FF_X46_Y40_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X46_Y40_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X46_Y41_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: FF_X46_Y40_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X46_Y40_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X46_Y40_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X46_Y40_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X46_Y40_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X46_Y40_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X46_Y40_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X49_Y42_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X46_Y41_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X44_Y41_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X49_Y42_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X49_Y42_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X49_Y42_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X49_Y42_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X49_Y42_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X49_Y42_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X49_Y42_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X49_Y41_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\);

-- Location: LCCOMB_X44_Y41_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X49_Y41_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0));

-- Location: LCCOMB_X47_Y41_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\);

-- Location: LCCOMB_X47_Y41_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\);

-- Location: LCCOMB_X47_Y41_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\);

-- Location: LCCOMB_X46_Y40_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\);

-- Location: FF_X47_Y41_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0));

-- Location: LCCOMB_X47_Y41_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\);

-- Location: FF_X47_Y41_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1));

-- Location: LCCOMB_X47_Y41_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~12\);

-- Location: FF_X47_Y41_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2));

-- Location: LCCOMB_X47_Y41_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~13_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~14\);

-- Location: FF_X47_Y41_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~13_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3));

-- Location: LCCOMB_X47_Y41_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~14\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\);

-- Location: FF_X47_Y41_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~15_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4));

-- Location: LCCOMB_X47_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8_combout\);

-- Location: LCCOMB_X49_Y41_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~9_combout\);

-- Location: LCCOMB_X47_Y41_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\);

-- Location: LCCOMB_X47_Y41_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\);

-- Location: LCCOMB_X47_Y41_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\);

-- Location: LCCOMB_X49_Y41_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\);

-- Location: LCCOMB_X49_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~9_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X49_Y41_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\);

-- Location: FF_X49_Y41_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1));

-- Location: LCCOMB_X47_Y41_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\);

-- Location: LCCOMB_X47_Y41_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\);

-- Location: LCCOMB_X49_Y41_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\);

-- Location: LCCOMB_X49_Y41_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~9_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X49_Y41_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\);

-- Location: FF_X49_Y41_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2));

-- Location: LCCOMB_X47_Y41_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\);

-- Location: LCCOMB_X49_Y41_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~9_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X47_Y41_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\);

-- Location: LCCOMB_X47_Y41_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\);

-- Location: LCCOMB_X49_Y41_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\);

-- Location: FF_X49_Y41_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3));

-- Location: LCCOMB_X49_Y41_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X49_Y41_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: LCCOMB_X49_Y41_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\);

-- Location: FF_X49_Y41_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3));

-- Location: FF_X49_Y41_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2));

-- Location: FF_X49_Y41_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1));

-- Location: FF_X49_Y41_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0));

-- Location: LCCOMB_X46_Y40_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: LCCOMB_X46_Y40_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: LCCOMB_X46_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\,
	datac => \~GND~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\);

-- Location: LCCOMB_X46_Y41_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: LCCOMB_X46_Y41_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X46_Y41_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\);

-- Location: LCCOMB_X46_Y41_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LCCOMB_X46_Y41_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: LCCOMB_X46_Y41_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: LCCOMB_X46_Y41_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\);

-- Location: FF_X46_Y41_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\);

-- Location: CLKCTRL_G12
\altera_internal_jtag~TCKUTAPclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X45_Y41_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\);

-- Location: FF_X45_Y41_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\);

-- Location: LCCOMB_X45_Y38_N0
\UKeyBoardReader|UOutputBuffer|UBufferControl|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UOutputBuffer|UBufferControl|Selector0~0_combout\ = (\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_PULSING~q\ & 
-- (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ & 
-- ((\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_RE~q\) # (\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WAITING~q\)))) # (!\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_PULSING~q\ & 
-- ((\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_RE~q\) # ((\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WAITING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_PULSING~q\,
	datab => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_RE~q\,
	datac => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WAITING~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	combout => \UKeyBoardReader|UOutputBuffer|UBufferControl|Selector0~0_combout\);

-- Location: FF_X45_Y38_N1
\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UOutputBuffer|UBufferControl|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X45_Y38_N6
\UKeyBoardReader|UOutputBuffer|UBufferControl|NextState.STATE_WR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UOutputBuffer|UBufferControl|NextState.STATE_WR~0_combout\ = (!\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WAITING~q\ & \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_RE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WAITING~q\,
	datac => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_RE~q\,
	combout => \UKeyBoardReader|UOutputBuffer|UBufferControl|NextState.STATE_WR~0_combout\);

-- Location: FF_X45_Y38_N7
\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UOutputBuffer|UBufferControl|NextState.STATE_WR~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR~q\);

-- Location: LCCOMB_X45_Y38_N10
\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_CLK_ZERO~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_CLK_ZERO~feeder_combout\ = \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_WR~q\,
	combout => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_CLK_ZERO~feeder_combout\);

-- Location: FF_X45_Y38_N11
\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_CLK_ZERO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_CLK_ZERO~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_CLK_ZERO~q\);

-- Location: LCCOMB_X45_Y38_N16
\UKeyBoardReader|UOutputBuffer|UBufferControl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UOutputBuffer|UBufferControl|Selector1~0_combout\ = (\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_CLK_ZERO~q\) # ((\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_RECEIVING~q\ & 
-- !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_CLK_ZERO~q\,
	datac => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_RECEIVING~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	combout => \UKeyBoardReader|UOutputBuffer|UBufferControl|Selector1~0_combout\);

-- Location: FF_X45_Y38_N17
\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_RECEIVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UOutputBuffer|UBufferControl|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_RECEIVING~q\);

-- Location: LCCOMB_X45_Y38_N26
\UKeyBoardReader|UOutputBuffer|UBufferControl|NextState.STATE_PULSING~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UOutputBuffer|UBufferControl|NextState.STATE_PULSING~0_combout\ = 
-- (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ & 
-- ((\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_RECEIVING~q\) # (\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_PULSING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_RECEIVING~q\,
	datac => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_PULSING~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	combout => \UKeyBoardReader|UOutputBuffer|UBufferControl|NextState.STATE_PULSING~0_combout\);

-- Location: FF_X45_Y38_N27
\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_PULSING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|UOutputBuffer|UBufferControl|NextState.STATE_PULSING~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_PULSING~q\);

-- Location: LCCOMB_X46_Y38_N8
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~0_combout\ = !\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~0_combout\);

-- Location: LCCOMB_X46_Y38_N26
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|sOr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|sOr~0_combout\ = (\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\) # (\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCPUT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCPUT~q\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|sOr~0_combout\);

-- Location: FF_X46_Y38_N9
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|sOr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\);

-- Location: LCCOMB_X46_Y38_N28
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA2|HA1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA2|HA1|S~combout\ = \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U2FFD|Q~q\ $ (((\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\ & 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\ & !\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U1FFD|Q~q\)) # (!\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\ & 
-- (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\ & \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U1FFD|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U2FFD|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U1FFD|Q~q\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA2|HA1|S~combout\);

-- Location: FF_X46_Y38_N29
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U2FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA2|HA1|S~combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|sOr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U2FFD|Q~q\);

-- Location: LCCOMB_X46_Y38_N24
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA2|CO~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA2|CO~0_combout\ = (\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\ & ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U1FFD|Q~q\) # 
-- ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\) # (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U2FFD|Q~q\)))) # (!\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\ & 
-- (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U1FFD|Q~q\ & (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\ & \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U2FFD|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U1FFD|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U2FFD|Q~q\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA2|CO~0_combout\);

-- Location: LCCOMB_X46_Y38_N22
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA3|HA1|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA3|HA1|S~0_combout\ = \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\ $ (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U3FFD|Q~q\ $ 
-- (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA2|CO~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U3FFD|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA2|CO~0_combout\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA3|HA1|S~0_combout\);

-- Location: FF_X46_Y38_N23
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U3FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA3|HA1|S~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|sOr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U3FFD|Q~q\);

-- Location: LCCOMB_X46_Y38_N4
\UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_NOTPUTGET~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_NOTPUTGET~3_combout\ = (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U3FFD|Q~q\ & (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U1FFD|Q~q\ & 
-- (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\ & !\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U2FFD|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U3FFD|Q~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U1FFD|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U2FFD|Q~q\,
	combout => \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_NOTPUTGET~3_combout\);

-- Location: LCCOMB_X45_Y38_N22
\UKeyBoardReader|URingBuffer|URingBufferControl|GenerateNextState~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|URingBufferControl|GenerateNextState~0_combout\ = (!\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_PULSING~q\ & (!\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_RECEIVING~q\ & 
-- ((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U3FFD|Q~q\) # (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|full~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_PULSING~q\,
	datab => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_RECEIVING~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|full~0_combout\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U3FFD|Q~q\,
	combout => \UKeyBoardReader|URingBuffer|URingBufferControl|GenerateNextState~0_combout\);

-- Location: LCCOMB_X45_Y38_N24
\UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_NOTPUTGET~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_NOTPUTGET~2_combout\ = (!\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WAITING~q\ & (\UKeyBoardReader|URingBuffer|URingBufferControl|GenerateNextState~0_combout\ & 
-- ((\UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_NOTPUTGET~3_combout\) # (!\UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_NOTPUTGET~3_combout\,
	datab => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WAITING~q\,
	datac => \UKeyBoardReader|URingBuffer|URingBufferControl|GenerateNextState~0_combout\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\,
	combout => \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_NOTPUTGET~2_combout\);

-- Location: FF_X45_Y38_N25
\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_NOTPUTGET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_NOTPUTGET~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_NOTPUTGET~q\);

-- Location: LCCOMB_X45_Y38_N14
\UKeyBoardReader|URingBuffer|URingBufferControl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|URingBufferControl|Selector1~0_combout\ = (\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_NOTPUTGET~q\) # ((!\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_PULSING~q\ & 
-- (\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_RE~q\ & !\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_RECEIVING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_PULSING~q\,
	datab => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_NOTPUTGET~q\,
	datac => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_RE~q\,
	datad => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_RECEIVING~q\,
	combout => \UKeyBoardReader|URingBuffer|URingBufferControl|Selector1~0_combout\);

-- Location: FF_X45_Y38_N15
\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_RE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|URingBufferControl|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_RE~q\);

-- Location: LCCOMB_X45_Y38_N2
\UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_INCGET~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_INCGET~0_combout\ = (\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_RE~q\ & ((\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_PULSING~q\) # 
-- (\UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_RECEIVING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_RE~q\,
	datac => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_PULSING~q\,
	datad => \UKeyBoardReader|UOutputBuffer|UBufferControl|CurrentState.STATE_RECEIVING~q\,
	combout => \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_INCGET~0_combout\);

-- Location: FF_X45_Y38_N3
\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_INCGET~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\);

-- Location: LCCOMB_X46_Y38_N2
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA1|HA1|S~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA1|HA1|S~0_combout\ = \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\ $ (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\ $ 
-- (\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U1FFD|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\,
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U1FFD|Q~q\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA1|HA1|S~0_combout\);

-- Location: FF_X46_Y38_N3
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U1FFD|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|UAddSub3|UAdder3|FA1|HA1|S~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|sOr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U1FFD|Q~q\);

-- Location: LCCOMB_X46_Y38_N14
\UKeyBoardReader|URingBuffer|UmemoryAdressControl|full~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|full~0_combout\ = (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U1FFD|Q~q\ & (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\ & 
-- !\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U2FFD|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U1FFD|Q~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U0FFD|Q~q\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U2FFD|Q~q\,
	combout => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|full~0_combout\);

-- Location: LCCOMB_X45_Y38_N20
\UKeyBoardReader|URingBuffer|URingBufferControl|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|URingBufferControl|Selector0~0_combout\ = (!\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WAITING~q\ & (((\UKeyBoardReader|URingBuffer|UmemoryAdressControl|full~0_combout\ & 
-- \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U3FFD|Q~q\)) # (!\UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WAITING~q\,
	datab => \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|full~0_combout\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U3FFD|Q~q\,
	combout => \UKeyBoardReader|URingBuffer|URingBufferControl|Selector0~0_combout\);

-- Location: LCCOMB_X45_Y38_N28
\UKeyBoardReader|URingBuffer|URingBufferControl|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|URingBufferControl|Selector0~1_combout\ = (!\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCPUT~q\ & (!\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\ & 
-- ((\UKeyBoardReader|URingBuffer|URingBufferControl|GenerateNextState~0_combout\) # (!\UKeyBoardReader|URingBuffer|URingBufferControl|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCPUT~q\,
	datab => \UKeyBoardReader|URingBuffer|URingBufferControl|Selector0~0_combout\,
	datac => \UKeyBoardReader|URingBuffer|URingBufferControl|GenerateNextState~0_combout\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_INCGET~q\,
	combout => \UKeyBoardReader|URingBuffer|URingBufferControl|Selector0~1_combout\);

-- Location: FF_X45_Y38_N29
\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|URingBufferControl|Selector0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X45_Y38_N12
\UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_PUTNOTGET~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_PUTNOTGET~0_combout\ = (!\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WAITING~q\ & (\UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\ & 
-- ((!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U3FFD|Q~q\) # (!\UKeyBoardReader|URingBuffer|UmemoryAdressControl|full~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WAITING~q\,
	datab => \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\,
	datac => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|full~0_combout\,
	datad => \UKeyBoardReader|URingBuffer|UmemoryAdressControl|URegisto3|U3FFD|Q~q\,
	combout => \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_PUTNOTGET~0_combout\);

-- Location: FF_X45_Y38_N13
\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_PUTNOTGET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|URingBufferControl|NextState.STATE_PUTNOTGET~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_PUTNOTGET~q\);

-- Location: LCCOMB_X46_Y38_N10
\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~feeder_combout\ = \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_PUTNOTGET~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_PUTNOTGET~q\,
	combout => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~feeder_combout\);

-- Location: FF_X46_Y38_N11
\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\);

-- Location: LCCOMB_X46_Y34_N26
\UKeyBoardReader|URingBuffer|URingBufferControl|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|URingBuffer|URingBufferControl|Selector2~0_combout\ = (\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\) # ((\UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\ & 
-- \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_DAC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\,
	datac => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_DAC~q\,
	datad => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_WR~q\,
	combout => \UKeyBoardReader|URingBuffer|URingBufferControl|Selector2~0_combout\);

-- Location: FF_X46_Y34_N27
\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_DAC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UKeyBoardReader|URingBuffer|URingBufferControl|Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_DAC~q\);

-- Location: LCCOMB_X46_Y34_N16
\UKeyBoardReader|UKeyDecoder|UKeyControl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UKeyDecoder|UKeyControl|Selector1~0_combout\ = (\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_DAC~q\ & (!\UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\ & 
-- ((!\UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_SCANNING~q\)))) # (!\UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_DAC~q\ & ((\UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\) # 
-- ((!\UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\ & !\UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_SCANNING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|URingBuffer|URingBufferControl|CurrentState.STATE_DAC~q\,
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\,
	datac => \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_SCANNING~q\,
	combout => \UKeyBoardReader|UKeyDecoder|UKeyControl|Selector1~0_combout\);

-- Location: FF_X46_Y34_N17
\UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UKeyBoardReader|UCLKDIV|tmp~clkctrl_outclk\,
	d => \UKeyBoardReader|UKeyDecoder|UKeyControl|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X46_Y34_N10
\UKeyBoardReader|UKeyDecoder|UKeyControl|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UKeyDecoder|UKeyControl|Selector0~0_combout\ = (\UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\) # (!\UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_WAITING~q\,
	combout => \UKeyBoardReader|UKeyDecoder|UKeyControl|Selector0~0_combout\);

-- Location: FF_X46_Y34_N11
\UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_SCANNING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UKeyBoardReader|UCLKDIV|tmp~clkctrl_outclk\,
	d => \UKeyBoardReader|UKeyDecoder|UKeyControl|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_SCANNING~q\);

-- Location: LCCOMB_X46_Y34_N20
\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~0_combout\ = \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\ $ (((!\UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_SCANNING~q\ & 
-- \UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_SCANNING~q\,
	datac => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\,
	combout => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~0_combout\);

-- Location: FF_X46_Y34_N21
\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UKeyBoardReader|UCLKDIV|tmp~clkctrl_outclk\,
	d => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\);

-- Location: LCCOMB_X46_Y34_N12
\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~0_combout\ = (!\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\) # (!\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF0|Q~q\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF1|Q~q\,
	combout => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~0_combout\);

-- Location: LCCOMB_X46_Y34_N8
\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~1_combout\ = \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\ $ (((!\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~0_combout\ & (\UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\ & 
-- !\UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_SCANNING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~0_combout\,
	datab => \UKeyBoardReader|UKeyDecoder|UKeyScan|UMux|M~1_combout\,
	datac => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyControl|CurrentState.STATE_SCANNING~q\,
	combout => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~1_combout\);

-- Location: FF_X46_Y34_N9
\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \UKeyBoardReader|UCLKDIV|tmp~clkctrl_outclk\,
	d => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\);

-- Location: LCCOMB_X46_Y37_N26
\UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|I0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|I0~combout\ = (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\) # (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\,
	combout => \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|I0~combout\);

-- Location: LCCOMB_X46_Y37_N20
\UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|I1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|I1~combout\ = (\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\ & !\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\,
	combout => \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|I1~combout\);

-- Location: LCCOMB_X46_Y37_N30
\UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|I2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|I2~combout\ = (!\UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\ & \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF2|Q~q\,
	datad => \UKeyBoardReader|UKeyDecoder|UKeyScan|UCounter|FF3|Q~q\,
	combout => \UKeyBoardReader|UKeyDecoder|UKeyScan|UDEC|I2~combout\);

-- Location: LCCOMB_X41_Y6_N16
\USLCDC|USerialReceiver|UshiftReg5|FF0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|USerialReceiver|UshiftReg5|FF0|Q~feeder_combout\ = \auto_hub|instrumenta
-- tion_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	combout => \USLCDC|USerialReceiver|UshiftReg5|FF0|Q~feeder_combout\);

-- Location: LCCOMB_X40_Y6_N18
\USLCDC|USerialReceiver|UCounter|FF0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|USerialReceiver|UCounter|FF0|Q~0_combout\ = !\USLCDC|USerialReceiver|UCounter|FF0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \USLCDC|USerialReceiver|UCounter|FF0|Q~q\,
	combout => \USLCDC|USerialReceiver|UCounter|FF0|Q~0_combout\);

-- Location: LCCOMB_X45_Y41_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\);

-- Location: FF_X45_Y41_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);

-- Location: LCCOMB_X41_Y6_N18
\USLCDC|USerialReceiver|USerialControl|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|USerialReceiver|USerialControl|Selector1~1_combout\ = (!\auto_hub|instru
-- mentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ & ((\USLCDC|USerialReceiver|USerialControl|Selector1~0_combout\) # 
-- (!\USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|USerialReceiver|USerialControl|Selector1~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datad => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\,
	combout => \USLCDC|USerialReceiver|USerialControl|Selector1~1_combout\);

-- Location: FF_X41_Y6_N19
\USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|USerialReceiver|USerialControl|Selector1~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X41_Y6_N2
\USLCDC|USerialReceiver|USerialControl|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|USerialReceiver|USerialControl|Selector2~0_combout\ = (\USLCDC|USerialReceiver|UCounter|FF2|Q~q\ & (\USLCDC|USerialReceiver|UCounter|FF0|Q~q\ & (!\USLCDC|USerialReceiver|UCounter|FF1|Q~q\ & 
-- \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_WAITING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|USerialReceiver|UCounter|FF2|Q~q\,
	datab => \USLCDC|USerialReceiver|UCounter|FF0|Q~q\,
	datac => \USLCDC|USerialReceiver|UCounter|FF1|Q~q\,
	datad => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_WAITING~q\,
	combout => \USLCDC|USerialReceiver|USerialControl|Selector2~0_combout\);

-- Location: LCCOMB_X61_Y36_N2
\USLCDC|UCLKDIV|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~0_combout\ = (\UKeyBoardReader|UCLKDIV|count\(0) & (\USLCDC|UCLKDIV|count\(1) & VCC)) # (!\UKeyBoardReader|UCLKDIV|count\(0) & (\USLCDC|UCLKDIV|count\(1) $ (VCC)))
-- \USLCDC|UCLKDIV|Add0~1\ = CARRY((!\UKeyBoardReader|UCLKDIV|count\(0) & \USLCDC|UCLKDIV|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UKeyBoardReader|UCLKDIV|count\(0),
	datab => \USLCDC|UCLKDIV|count\(1),
	datad => VCC,
	combout => \USLCDC|UCLKDIV|Add0~0_combout\,
	cout => \USLCDC|UCLKDIV|Add0~1\);

-- Location: LCCOMB_X62_Y35_N6
\USLCDC|UCLKDIV|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Equal0~0_combout\ = (!\USLCDC|UCLKDIV|count\(2) & (\UKeyBoardReader|UCLKDIV|count\(0) & (\USLCDC|UCLKDIV|count\(3) & \USLCDC|UCLKDIV|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(2),
	datab => \UKeyBoardReader|UCLKDIV|count\(0),
	datac => \USLCDC|UCLKDIV|count\(3),
	datad => \USLCDC|UCLKDIV|count\(1),
	combout => \USLCDC|UCLKDIV|Equal0~0_combout\);

-- Location: LCCOMB_X61_Y36_N0
\USLCDC|UCLKDIV|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Equal0~2_combout\ = (!\USLCDC|UCLKDIV|count\(10) & (!\USLCDC|UCLKDIV|count\(9) & (!\USLCDC|UCLKDIV|count\(11) & !\USLCDC|UCLKDIV|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(10),
	datab => \USLCDC|UCLKDIV|count\(9),
	datac => \USLCDC|UCLKDIV|count\(11),
	datad => \USLCDC|UCLKDIV|count\(8),
	combout => \USLCDC|UCLKDIV|Equal0~2_combout\);

-- Location: LCCOMB_X62_Y36_N10
\USLCDC|UCLKDIV|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Equal0~3_combout\ = (!\USLCDC|UCLKDIV|count\(15) & (!\USLCDC|UCLKDIV|count\(14) & (!\USLCDC|UCLKDIV|count\(13) & !\USLCDC|UCLKDIV|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(15),
	datab => \USLCDC|UCLKDIV|count\(14),
	datac => \USLCDC|UCLKDIV|count\(13),
	datad => \USLCDC|UCLKDIV|count\(12),
	combout => \USLCDC|UCLKDIV|Equal0~3_combout\);

-- Location: LCCOMB_X62_Y36_N8
\USLCDC|UCLKDIV|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Equal0~1_combout\ = (!\USLCDC|UCLKDIV|count\(7) & (!\USLCDC|UCLKDIV|count\(5) & (!\USLCDC|UCLKDIV|count\(6) & !\USLCDC|UCLKDIV|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(7),
	datab => \USLCDC|UCLKDIV|count\(5),
	datac => \USLCDC|UCLKDIV|count\(6),
	datad => \USLCDC|UCLKDIV|count\(4),
	combout => \USLCDC|UCLKDIV|Equal0~1_combout\);

-- Location: LCCOMB_X62_Y35_N24
\USLCDC|UCLKDIV|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Equal0~4_combout\ = (\USLCDC|UCLKDIV|Equal0~0_combout\ & (\USLCDC|UCLKDIV|Equal0~2_combout\ & (\USLCDC|UCLKDIV|Equal0~3_combout\ & \USLCDC|UCLKDIV|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|Equal0~0_combout\,
	datab => \USLCDC|UCLKDIV|Equal0~2_combout\,
	datac => \USLCDC|UCLKDIV|Equal0~3_combout\,
	datad => \USLCDC|UCLKDIV|Equal0~1_combout\,
	combout => \USLCDC|UCLKDIV|Equal0~4_combout\);

-- Location: LCCOMB_X62_Y35_N18
\USLCDC|UCLKDIV|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|count~0_combout\ = (\USLCDC|UCLKDIV|Add0~0_combout\ & ((!\USLCDC|UCLKDIV|Equal0~4_combout\) # (!\USLCDC|UCLKDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|Add0~0_combout\,
	datac => \USLCDC|UCLKDIV|Equal0~9_combout\,
	datad => \USLCDC|UCLKDIV|Equal0~4_combout\,
	combout => \USLCDC|UCLKDIV|count~0_combout\);

-- Location: FF_X62_Y35_N19
\USLCDC|UCLKDIV|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(1));

-- Location: LCCOMB_X61_Y36_N4
\USLCDC|UCLKDIV|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~2_combout\ = (\USLCDC|UCLKDIV|count\(2) & (!\USLCDC|UCLKDIV|Add0~1\)) # (!\USLCDC|UCLKDIV|count\(2) & ((\USLCDC|UCLKDIV|Add0~1\) # (GND)))
-- \USLCDC|UCLKDIV|Add0~3\ = CARRY((!\USLCDC|UCLKDIV|Add0~1\) # (!\USLCDC|UCLKDIV|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(2),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~1\,
	combout => \USLCDC|UCLKDIV|Add0~2_combout\,
	cout => \USLCDC|UCLKDIV|Add0~3\);

-- Location: FF_X61_Y36_N5
\USLCDC|UCLKDIV|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(2));

-- Location: LCCOMB_X61_Y36_N6
\USLCDC|UCLKDIV|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~4_combout\ = (\USLCDC|UCLKDIV|count\(3) & (\USLCDC|UCLKDIV|Add0~3\ $ (GND))) # (!\USLCDC|UCLKDIV|count\(3) & (!\USLCDC|UCLKDIV|Add0~3\ & VCC))
-- \USLCDC|UCLKDIV|Add0~5\ = CARRY((\USLCDC|UCLKDIV|count\(3) & !\USLCDC|UCLKDIV|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(3),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~3\,
	combout => \USLCDC|UCLKDIV|Add0~4_combout\,
	cout => \USLCDC|UCLKDIV|Add0~5\);

-- Location: LCCOMB_X62_Y35_N4
\USLCDC|UCLKDIV|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|count~1_combout\ = (\USLCDC|UCLKDIV|Add0~4_combout\ & ((!\USLCDC|UCLKDIV|Equal0~4_combout\) # (!\USLCDC|UCLKDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|Add0~4_combout\,
	datac => \USLCDC|UCLKDIV|Equal0~9_combout\,
	datad => \USLCDC|UCLKDIV|Equal0~4_combout\,
	combout => \USLCDC|UCLKDIV|count~1_combout\);

-- Location: FF_X62_Y35_N5
\USLCDC|UCLKDIV|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(3));

-- Location: LCCOMB_X61_Y36_N8
\USLCDC|UCLKDIV|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~6_combout\ = (\USLCDC|UCLKDIV|count\(4) & (!\USLCDC|UCLKDIV|Add0~5\)) # (!\USLCDC|UCLKDIV|count\(4) & ((\USLCDC|UCLKDIV|Add0~5\) # (GND)))
-- \USLCDC|UCLKDIV|Add0~7\ = CARRY((!\USLCDC|UCLKDIV|Add0~5\) # (!\USLCDC|UCLKDIV|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(4),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~5\,
	combout => \USLCDC|UCLKDIV|Add0~6_combout\,
	cout => \USLCDC|UCLKDIV|Add0~7\);

-- Location: FF_X61_Y36_N9
\USLCDC|UCLKDIV|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(4));

-- Location: LCCOMB_X61_Y36_N10
\USLCDC|UCLKDIV|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~8_combout\ = (\USLCDC|UCLKDIV|count\(5) & (\USLCDC|UCLKDIV|Add0~7\ $ (GND))) # (!\USLCDC|UCLKDIV|count\(5) & (!\USLCDC|UCLKDIV|Add0~7\ & VCC))
-- \USLCDC|UCLKDIV|Add0~9\ = CARRY((\USLCDC|UCLKDIV|count\(5) & !\USLCDC|UCLKDIV|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(5),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~7\,
	combout => \USLCDC|UCLKDIV|Add0~8_combout\,
	cout => \USLCDC|UCLKDIV|Add0~9\);

-- Location: FF_X61_Y36_N11
\USLCDC|UCLKDIV|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(5));

-- Location: LCCOMB_X61_Y36_N12
\USLCDC|UCLKDIV|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~10_combout\ = (\USLCDC|UCLKDIV|count\(6) & (!\USLCDC|UCLKDIV|Add0~9\)) # (!\USLCDC|UCLKDIV|count\(6) & ((\USLCDC|UCLKDIV|Add0~9\) # (GND)))
-- \USLCDC|UCLKDIV|Add0~11\ = CARRY((!\USLCDC|UCLKDIV|Add0~9\) # (!\USLCDC|UCLKDIV|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(6),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~9\,
	combout => \USLCDC|UCLKDIV|Add0~10_combout\,
	cout => \USLCDC|UCLKDIV|Add0~11\);

-- Location: FF_X61_Y36_N13
\USLCDC|UCLKDIV|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(6));

-- Location: LCCOMB_X61_Y36_N14
\USLCDC|UCLKDIV|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~12_combout\ = (\USLCDC|UCLKDIV|count\(7) & (\USLCDC|UCLKDIV|Add0~11\ $ (GND))) # (!\USLCDC|UCLKDIV|count\(7) & (!\USLCDC|UCLKDIV|Add0~11\ & VCC))
-- \USLCDC|UCLKDIV|Add0~13\ = CARRY((\USLCDC|UCLKDIV|count\(7) & !\USLCDC|UCLKDIV|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(7),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~11\,
	combout => \USLCDC|UCLKDIV|Add0~12_combout\,
	cout => \USLCDC|UCLKDIV|Add0~13\);

-- Location: FF_X61_Y36_N15
\USLCDC|UCLKDIV|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(7));

-- Location: LCCOMB_X61_Y36_N16
\USLCDC|UCLKDIV|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~14_combout\ = (\USLCDC|UCLKDIV|count\(8) & (!\USLCDC|UCLKDIV|Add0~13\)) # (!\USLCDC|UCLKDIV|count\(8) & ((\USLCDC|UCLKDIV|Add0~13\) # (GND)))
-- \USLCDC|UCLKDIV|Add0~15\ = CARRY((!\USLCDC|UCLKDIV|Add0~13\) # (!\USLCDC|UCLKDIV|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(8),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~13\,
	combout => \USLCDC|UCLKDIV|Add0~14_combout\,
	cout => \USLCDC|UCLKDIV|Add0~15\);

-- Location: FF_X61_Y36_N17
\USLCDC|UCLKDIV|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(8));

-- Location: LCCOMB_X61_Y36_N18
\USLCDC|UCLKDIV|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~16_combout\ = (\USLCDC|UCLKDIV|count\(9) & (\USLCDC|UCLKDIV|Add0~15\ $ (GND))) # (!\USLCDC|UCLKDIV|count\(9) & (!\USLCDC|UCLKDIV|Add0~15\ & VCC))
-- \USLCDC|UCLKDIV|Add0~17\ = CARRY((\USLCDC|UCLKDIV|count\(9) & !\USLCDC|UCLKDIV|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(9),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~15\,
	combout => \USLCDC|UCLKDIV|Add0~16_combout\,
	cout => \USLCDC|UCLKDIV|Add0~17\);

-- Location: FF_X61_Y36_N19
\USLCDC|UCLKDIV|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(9));

-- Location: LCCOMB_X61_Y36_N20
\USLCDC|UCLKDIV|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~18_combout\ = (\USLCDC|UCLKDIV|count\(10) & (!\USLCDC|UCLKDIV|Add0~17\)) # (!\USLCDC|UCLKDIV|count\(10) & ((\USLCDC|UCLKDIV|Add0~17\) # (GND)))
-- \USLCDC|UCLKDIV|Add0~19\ = CARRY((!\USLCDC|UCLKDIV|Add0~17\) # (!\USLCDC|UCLKDIV|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(10),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~17\,
	combout => \USLCDC|UCLKDIV|Add0~18_combout\,
	cout => \USLCDC|UCLKDIV|Add0~19\);

-- Location: FF_X61_Y36_N21
\USLCDC|UCLKDIV|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(10));

-- Location: LCCOMB_X61_Y36_N22
\USLCDC|UCLKDIV|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~20_combout\ = (\USLCDC|UCLKDIV|count\(11) & (\USLCDC|UCLKDIV|Add0~19\ $ (GND))) # (!\USLCDC|UCLKDIV|count\(11) & (!\USLCDC|UCLKDIV|Add0~19\ & VCC))
-- \USLCDC|UCLKDIV|Add0~21\ = CARRY((\USLCDC|UCLKDIV|count\(11) & !\USLCDC|UCLKDIV|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(11),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~19\,
	combout => \USLCDC|UCLKDIV|Add0~20_combout\,
	cout => \USLCDC|UCLKDIV|Add0~21\);

-- Location: FF_X61_Y36_N23
\USLCDC|UCLKDIV|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(11));

-- Location: LCCOMB_X61_Y36_N24
\USLCDC|UCLKDIV|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~22_combout\ = (\USLCDC|UCLKDIV|count\(12) & (!\USLCDC|UCLKDIV|Add0~21\)) # (!\USLCDC|UCLKDIV|count\(12) & ((\USLCDC|UCLKDIV|Add0~21\) # (GND)))
-- \USLCDC|UCLKDIV|Add0~23\ = CARRY((!\USLCDC|UCLKDIV|Add0~21\) # (!\USLCDC|UCLKDIV|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(12),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~21\,
	combout => \USLCDC|UCLKDIV|Add0~22_combout\,
	cout => \USLCDC|UCLKDIV|Add0~23\);

-- Location: FF_X61_Y36_N25
\USLCDC|UCLKDIV|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(12));

-- Location: LCCOMB_X61_Y36_N26
\USLCDC|UCLKDIV|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~24_combout\ = (\USLCDC|UCLKDIV|count\(13) & (\USLCDC|UCLKDIV|Add0~23\ $ (GND))) # (!\USLCDC|UCLKDIV|count\(13) & (!\USLCDC|UCLKDIV|Add0~23\ & VCC))
-- \USLCDC|UCLKDIV|Add0~25\ = CARRY((\USLCDC|UCLKDIV|count\(13) & !\USLCDC|UCLKDIV|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(13),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~23\,
	combout => \USLCDC|UCLKDIV|Add0~24_combout\,
	cout => \USLCDC|UCLKDIV|Add0~25\);

-- Location: FF_X61_Y36_N27
\USLCDC|UCLKDIV|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(13));

-- Location: LCCOMB_X61_Y36_N28
\USLCDC|UCLKDIV|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~26_combout\ = (\USLCDC|UCLKDIV|count\(14) & (!\USLCDC|UCLKDIV|Add0~25\)) # (!\USLCDC|UCLKDIV|count\(14) & ((\USLCDC|UCLKDIV|Add0~25\) # (GND)))
-- \USLCDC|UCLKDIV|Add0~27\ = CARRY((!\USLCDC|UCLKDIV|Add0~25\) # (!\USLCDC|UCLKDIV|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(14),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~25\,
	combout => \USLCDC|UCLKDIV|Add0~26_combout\,
	cout => \USLCDC|UCLKDIV|Add0~27\);

-- Location: FF_X61_Y36_N29
\USLCDC|UCLKDIV|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(14));

-- Location: LCCOMB_X61_Y36_N30
\USLCDC|UCLKDIV|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~28_combout\ = (\USLCDC|UCLKDIV|count\(15) & (\USLCDC|UCLKDIV|Add0~27\ $ (GND))) # (!\USLCDC|UCLKDIV|count\(15) & (!\USLCDC|UCLKDIV|Add0~27\ & VCC))
-- \USLCDC|UCLKDIV|Add0~29\ = CARRY((\USLCDC|UCLKDIV|count\(15) & !\USLCDC|UCLKDIV|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(15),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~27\,
	combout => \USLCDC|UCLKDIV|Add0~28_combout\,
	cout => \USLCDC|UCLKDIV|Add0~29\);

-- Location: FF_X61_Y36_N31
\USLCDC|UCLKDIV|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(15));

-- Location: LCCOMB_X61_Y35_N0
\USLCDC|UCLKDIV|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~30_combout\ = (\USLCDC|UCLKDIV|count\(16) & (!\USLCDC|UCLKDIV|Add0~29\)) # (!\USLCDC|UCLKDIV|count\(16) & ((\USLCDC|UCLKDIV|Add0~29\) # (GND)))
-- \USLCDC|UCLKDIV|Add0~31\ = CARRY((!\USLCDC|UCLKDIV|Add0~29\) # (!\USLCDC|UCLKDIV|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(16),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~29\,
	combout => \USLCDC|UCLKDIV|Add0~30_combout\,
	cout => \USLCDC|UCLKDIV|Add0~31\);

-- Location: FF_X61_Y35_N1
\USLCDC|UCLKDIV|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(16));

-- Location: LCCOMB_X61_Y35_N2
\USLCDC|UCLKDIV|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~32_combout\ = (\USLCDC|UCLKDIV|count\(17) & (\USLCDC|UCLKDIV|Add0~31\ $ (GND))) # (!\USLCDC|UCLKDIV|count\(17) & (!\USLCDC|UCLKDIV|Add0~31\ & VCC))
-- \USLCDC|UCLKDIV|Add0~33\ = CARRY((\USLCDC|UCLKDIV|count\(17) & !\USLCDC|UCLKDIV|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(17),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~31\,
	combout => \USLCDC|UCLKDIV|Add0~32_combout\,
	cout => \USLCDC|UCLKDIV|Add0~33\);

-- Location: FF_X61_Y35_N3
\USLCDC|UCLKDIV|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(17));

-- Location: LCCOMB_X61_Y35_N4
\USLCDC|UCLKDIV|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~34_combout\ = (\USLCDC|UCLKDIV|count\(18) & (!\USLCDC|UCLKDIV|Add0~33\)) # (!\USLCDC|UCLKDIV|count\(18) & ((\USLCDC|UCLKDIV|Add0~33\) # (GND)))
-- \USLCDC|UCLKDIV|Add0~35\ = CARRY((!\USLCDC|UCLKDIV|Add0~33\) # (!\USLCDC|UCLKDIV|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(18),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~33\,
	combout => \USLCDC|UCLKDIV|Add0~34_combout\,
	cout => \USLCDC|UCLKDIV|Add0~35\);

-- Location: FF_X61_Y35_N5
\USLCDC|UCLKDIV|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(18));

-- Location: LCCOMB_X61_Y35_N6
\USLCDC|UCLKDIV|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~36_combout\ = (\USLCDC|UCLKDIV|count\(19) & (\USLCDC|UCLKDIV|Add0~35\ $ (GND))) # (!\USLCDC|UCLKDIV|count\(19) & (!\USLCDC|UCLKDIV|Add0~35\ & VCC))
-- \USLCDC|UCLKDIV|Add0~37\ = CARRY((\USLCDC|UCLKDIV|count\(19) & !\USLCDC|UCLKDIV|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(19),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~35\,
	combout => \USLCDC|UCLKDIV|Add0~36_combout\,
	cout => \USLCDC|UCLKDIV|Add0~37\);

-- Location: FF_X61_Y35_N7
\USLCDC|UCLKDIV|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(19));

-- Location: LCCOMB_X61_Y35_N8
\USLCDC|UCLKDIV|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~38_combout\ = (\USLCDC|UCLKDIV|count\(20) & (!\USLCDC|UCLKDIV|Add0~37\)) # (!\USLCDC|UCLKDIV|count\(20) & ((\USLCDC|UCLKDIV|Add0~37\) # (GND)))
-- \USLCDC|UCLKDIV|Add0~39\ = CARRY((!\USLCDC|UCLKDIV|Add0~37\) # (!\USLCDC|UCLKDIV|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(20),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~37\,
	combout => \USLCDC|UCLKDIV|Add0~38_combout\,
	cout => \USLCDC|UCLKDIV|Add0~39\);

-- Location: FF_X61_Y35_N9
\USLCDC|UCLKDIV|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(20));

-- Location: LCCOMB_X61_Y35_N10
\USLCDC|UCLKDIV|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~40_combout\ = (\USLCDC|UCLKDIV|count\(21) & (\USLCDC|UCLKDIV|Add0~39\ $ (GND))) # (!\USLCDC|UCLKDIV|count\(21) & (!\USLCDC|UCLKDIV|Add0~39\ & VCC))
-- \USLCDC|UCLKDIV|Add0~41\ = CARRY((\USLCDC|UCLKDIV|count\(21) & !\USLCDC|UCLKDIV|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(21),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~39\,
	combout => \USLCDC|UCLKDIV|Add0~40_combout\,
	cout => \USLCDC|UCLKDIV|Add0~41\);

-- Location: FF_X61_Y35_N11
\USLCDC|UCLKDIV|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(21));

-- Location: LCCOMB_X61_Y35_N12
\USLCDC|UCLKDIV|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~42_combout\ = (\USLCDC|UCLKDIV|count\(22) & (!\USLCDC|UCLKDIV|Add0~41\)) # (!\USLCDC|UCLKDIV|count\(22) & ((\USLCDC|UCLKDIV|Add0~41\) # (GND)))
-- \USLCDC|UCLKDIV|Add0~43\ = CARRY((!\USLCDC|UCLKDIV|Add0~41\) # (!\USLCDC|UCLKDIV|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(22),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~41\,
	combout => \USLCDC|UCLKDIV|Add0~42_combout\,
	cout => \USLCDC|UCLKDIV|Add0~43\);

-- Location: FF_X61_Y35_N13
\USLCDC|UCLKDIV|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(22));

-- Location: LCCOMB_X61_Y35_N14
\USLCDC|UCLKDIV|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~44_combout\ = (\USLCDC|UCLKDIV|count\(23) & (\USLCDC|UCLKDIV|Add0~43\ $ (GND))) # (!\USLCDC|UCLKDIV|count\(23) & (!\USLCDC|UCLKDIV|Add0~43\ & VCC))
-- \USLCDC|UCLKDIV|Add0~45\ = CARRY((\USLCDC|UCLKDIV|count\(23) & !\USLCDC|UCLKDIV|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(23),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~43\,
	combout => \USLCDC|UCLKDIV|Add0~44_combout\,
	cout => \USLCDC|UCLKDIV|Add0~45\);

-- Location: FF_X61_Y35_N15
\USLCDC|UCLKDIV|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(23));

-- Location: LCCOMB_X62_Y35_N12
\USLCDC|UCLKDIV|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Equal0~6_combout\ = (!\USLCDC|UCLKDIV|count\(22) & (!\USLCDC|UCLKDIV|count\(21) & (!\USLCDC|UCLKDIV|count\(23) & !\USLCDC|UCLKDIV|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(22),
	datab => \USLCDC|UCLKDIV|count\(21),
	datac => \USLCDC|UCLKDIV|count\(23),
	datad => \USLCDC|UCLKDIV|count\(20),
	combout => \USLCDC|UCLKDIV|Equal0~6_combout\);

-- Location: LCCOMB_X61_Y35_N16
\USLCDC|UCLKDIV|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~46_combout\ = (\USLCDC|UCLKDIV|count\(24) & (!\USLCDC|UCLKDIV|Add0~45\)) # (!\USLCDC|UCLKDIV|count\(24) & ((\USLCDC|UCLKDIV|Add0~45\) # (GND)))
-- \USLCDC|UCLKDIV|Add0~47\ = CARRY((!\USLCDC|UCLKDIV|Add0~45\) # (!\USLCDC|UCLKDIV|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(24),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~45\,
	combout => \USLCDC|UCLKDIV|Add0~46_combout\,
	cout => \USLCDC|UCLKDIV|Add0~47\);

-- Location: FF_X61_Y35_N17
\USLCDC|UCLKDIV|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(24));

-- Location: LCCOMB_X61_Y35_N18
\USLCDC|UCLKDIV|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~48_combout\ = (\USLCDC|UCLKDIV|count\(25) & (\USLCDC|UCLKDIV|Add0~47\ $ (GND))) # (!\USLCDC|UCLKDIV|count\(25) & (!\USLCDC|UCLKDIV|Add0~47\ & VCC))
-- \USLCDC|UCLKDIV|Add0~49\ = CARRY((\USLCDC|UCLKDIV|count\(25) & !\USLCDC|UCLKDIV|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(25),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~47\,
	combout => \USLCDC|UCLKDIV|Add0~48_combout\,
	cout => \USLCDC|UCLKDIV|Add0~49\);

-- Location: FF_X61_Y35_N19
\USLCDC|UCLKDIV|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(25));

-- Location: LCCOMB_X61_Y35_N20
\USLCDC|UCLKDIV|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~50_combout\ = (\USLCDC|UCLKDIV|count\(26) & (!\USLCDC|UCLKDIV|Add0~49\)) # (!\USLCDC|UCLKDIV|count\(26) & ((\USLCDC|UCLKDIV|Add0~49\) # (GND)))
-- \USLCDC|UCLKDIV|Add0~51\ = CARRY((!\USLCDC|UCLKDIV|Add0~49\) # (!\USLCDC|UCLKDIV|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(26),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~49\,
	combout => \USLCDC|UCLKDIV|Add0~50_combout\,
	cout => \USLCDC|UCLKDIV|Add0~51\);

-- Location: FF_X61_Y35_N21
\USLCDC|UCLKDIV|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(26));

-- Location: LCCOMB_X61_Y35_N22
\USLCDC|UCLKDIV|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~52_combout\ = (\USLCDC|UCLKDIV|count\(27) & (\USLCDC|UCLKDIV|Add0~51\ $ (GND))) # (!\USLCDC|UCLKDIV|count\(27) & (!\USLCDC|UCLKDIV|Add0~51\ & VCC))
-- \USLCDC|UCLKDIV|Add0~53\ = CARRY((\USLCDC|UCLKDIV|count\(27) & !\USLCDC|UCLKDIV|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(27),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~51\,
	combout => \USLCDC|UCLKDIV|Add0~52_combout\,
	cout => \USLCDC|UCLKDIV|Add0~53\);

-- Location: FF_X61_Y35_N23
\USLCDC|UCLKDIV|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(27));

-- Location: LCCOMB_X61_Y35_N24
\USLCDC|UCLKDIV|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~54_combout\ = (\USLCDC|UCLKDIV|count\(28) & (!\USLCDC|UCLKDIV|Add0~53\)) # (!\USLCDC|UCLKDIV|count\(28) & ((\USLCDC|UCLKDIV|Add0~53\) # (GND)))
-- \USLCDC|UCLKDIV|Add0~55\ = CARRY((!\USLCDC|UCLKDIV|Add0~53\) # (!\USLCDC|UCLKDIV|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(28),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~53\,
	combout => \USLCDC|UCLKDIV|Add0~54_combout\,
	cout => \USLCDC|UCLKDIV|Add0~55\);

-- Location: FF_X61_Y35_N25
\USLCDC|UCLKDIV|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(28));

-- Location: LCCOMB_X61_Y35_N26
\USLCDC|UCLKDIV|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~56_combout\ = (\USLCDC|UCLKDIV|count\(29) & (\USLCDC|UCLKDIV|Add0~55\ $ (GND))) # (!\USLCDC|UCLKDIV|count\(29) & (!\USLCDC|UCLKDIV|Add0~55\ & VCC))
-- \USLCDC|UCLKDIV|Add0~57\ = CARRY((\USLCDC|UCLKDIV|count\(29) & !\USLCDC|UCLKDIV|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(29),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~55\,
	combout => \USLCDC|UCLKDIV|Add0~56_combout\,
	cout => \USLCDC|UCLKDIV|Add0~57\);

-- Location: FF_X61_Y35_N27
\USLCDC|UCLKDIV|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(29));

-- Location: LCCOMB_X61_Y35_N28
\USLCDC|UCLKDIV|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~58_combout\ = (\USLCDC|UCLKDIV|count\(30) & (!\USLCDC|UCLKDIV|Add0~57\)) # (!\USLCDC|UCLKDIV|count\(30) & ((\USLCDC|UCLKDIV|Add0~57\) # (GND)))
-- \USLCDC|UCLKDIV|Add0~59\ = CARRY((!\USLCDC|UCLKDIV|Add0~57\) # (!\USLCDC|UCLKDIV|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|UCLKDIV|count\(30),
	datad => VCC,
	cin => \USLCDC|UCLKDIV|Add0~57\,
	combout => \USLCDC|UCLKDIV|Add0~58_combout\,
	cout => \USLCDC|UCLKDIV|Add0~59\);

-- Location: FF_X61_Y35_N29
\USLCDC|UCLKDIV|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(30));

-- Location: LCCOMB_X61_Y35_N30
\USLCDC|UCLKDIV|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Add0~60_combout\ = \USLCDC|UCLKDIV|count\(31) $ (!\USLCDC|UCLKDIV|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(31),
	cin => \USLCDC|UCLKDIV|Add0~59\,
	combout => \USLCDC|UCLKDIV|Add0~60_combout\);

-- Location: FF_X61_Y35_N31
\USLCDC|UCLKDIV|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|count\(31));

-- Location: LCCOMB_X62_Y35_N0
\USLCDC|UCLKDIV|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Equal0~8_combout\ = (!\USLCDC|UCLKDIV|count\(30) & (!\USLCDC|UCLKDIV|count\(31) & (!\USLCDC|UCLKDIV|count\(29) & !\USLCDC|UCLKDIV|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(30),
	datab => \USLCDC|UCLKDIV|count\(31),
	datac => \USLCDC|UCLKDIV|count\(29),
	datad => \USLCDC|UCLKDIV|count\(28),
	combout => \USLCDC|UCLKDIV|Equal0~8_combout\);

-- Location: LCCOMB_X62_Y35_N22
\USLCDC|UCLKDIV|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Equal0~7_combout\ = (!\USLCDC|UCLKDIV|count\(27) & (!\USLCDC|UCLKDIV|count\(26) & (!\USLCDC|UCLKDIV|count\(24) & !\USLCDC|UCLKDIV|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(27),
	datab => \USLCDC|UCLKDIV|count\(26),
	datac => \USLCDC|UCLKDIV|count\(24),
	datad => \USLCDC|UCLKDIV|count\(25),
	combout => \USLCDC|UCLKDIV|Equal0~7_combout\);

-- Location: LCCOMB_X62_Y35_N10
\USLCDC|UCLKDIV|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Equal0~5_combout\ = (!\USLCDC|UCLKDIV|count\(16) & (!\USLCDC|UCLKDIV|count\(19) & (!\USLCDC|UCLKDIV|count\(18) & !\USLCDC|UCLKDIV|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|count\(16),
	datab => \USLCDC|UCLKDIV|count\(19),
	datac => \USLCDC|UCLKDIV|count\(18),
	datad => \USLCDC|UCLKDIV|count\(17),
	combout => \USLCDC|UCLKDIV|Equal0~5_combout\);

-- Location: LCCOMB_X62_Y35_N26
\USLCDC|UCLKDIV|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|Equal0~9_combout\ = (\USLCDC|UCLKDIV|Equal0~6_combout\ & (\USLCDC|UCLKDIV|Equal0~8_combout\ & (\USLCDC|UCLKDIV|Equal0~7_combout\ & \USLCDC|UCLKDIV|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|Equal0~6_combout\,
	datab => \USLCDC|UCLKDIV|Equal0~8_combout\,
	datac => \USLCDC|UCLKDIV|Equal0~7_combout\,
	datad => \USLCDC|UCLKDIV|Equal0~5_combout\,
	combout => \USLCDC|UCLKDIV|Equal0~9_combout\);

-- Location: LCCOMB_X62_Y35_N8
\USLCDC|UCLKDIV|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UCLKDIV|tmp~0_combout\ = \USLCDC|UCLKDIV|tmp~q\ $ (((\USLCDC|UCLKDIV|Equal0~9_combout\ & \USLCDC|UCLKDIV|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|UCLKDIV|Equal0~9_combout\,
	datac => \USLCDC|UCLKDIV|tmp~q\,
	datad => \USLCDC|UCLKDIV|Equal0~4_combout\,
	combout => \USLCDC|UCLKDIV|tmp~0_combout\);

-- Location: FF_X62_Y35_N9
\USLCDC|UCLKDIV|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|UCLKDIV|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UCLKDIV|tmp~q\);

-- Location: CLKCTRL_G8
\USLCDC|UCLKDIV|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \USLCDC|UCLKDIV|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \USLCDC|UCLKDIV|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y6_N10
\USLCDC|UDispatcher|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UDispatcher|Selector1~0_combout\ = (\USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\) # (\USLCDC|UDispatcher|CurrentState.STATE_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\,
	datad => \USLCDC|UDispatcher|CurrentState.STATE_DATA~q\,
	combout => \USLCDC|UDispatcher|Selector1~0_combout\);

-- Location: FF_X42_Y6_N11
\USLCDC|UDispatcher|CurrentState.STATE_WAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \USLCDC|UCLKDIV|tmp~clkctrl_outclk\,
	d => \USLCDC|UDispatcher|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UDispatcher|CurrentState.STATE_WAITING~q\);

-- Location: LCCOMB_X42_Y6_N16
\USLCDC|UDispatcher|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UDispatcher|Selector0~0_combout\ = (\USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\ & !\USLCDC|UDispatcher|CurrentState.STATE_WAITING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\,
	datad => \USLCDC|UDispatcher|CurrentState.STATE_WAITING~q\,
	combout => \USLCDC|UDispatcher|Selector0~0_combout\);

-- Location: FF_X42_Y6_N17
\USLCDC|UDispatcher|CurrentState.STATE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \USLCDC|UCLKDIV|tmp~clkctrl_outclk\,
	d => \USLCDC|UDispatcher|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UDispatcher|CurrentState.STATE_DATA~q\);

-- Location: LCCOMB_X42_Y6_N4
\USLCDC|UDispatcher|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|UDispatcher|Selector2~0_combout\ = (\USLCDC|UDispatcher|CurrentState.STATE_DATA~q\) # ((\USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\ & \USLCDC|UDispatcher|CurrentState.STATE_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\,
	datac => \USLCDC|UDispatcher|CurrentState.STATE_DONE~q\,
	datad => \USLCDC|UDispatcher|CurrentState.STATE_DATA~q\,
	combout => \USLCDC|UDispatcher|Selector2~0_combout\);

-- Location: FF_X42_Y6_N5
\USLCDC|UDispatcher|CurrentState.STATE_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \USLCDC|UCLKDIV|tmp~clkctrl_outclk\,
	d => \USLCDC|UDispatcher|Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|UDispatcher|CurrentState.STATE_DONE~q\);

-- Location: LCCOMB_X41_Y6_N14
\USLCDC|USerialReceiver|USerialControl|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|USerialReceiver|USerialControl|Selector2~1_combout\ = (\USLCDC|USerialReceiver|USerialControl|Selector2~0_combout\) # ((\USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\ & !\USLCDC|UDispatcher|CurrentState.STATE_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|USerialReceiver|USerialControl|Selector2~0_combout\,
	datac => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\,
	datad => \USLCDC|UDispatcher|CurrentState.STATE_DONE~q\,
	combout => \USLCDC|USerialReceiver|USerialControl|Selector2~1_combout\);

-- Location: FF_X41_Y6_N15
\USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|USerialReceiver|USerialControl|Selector2~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\);

-- Location: LCCOMB_X41_Y6_N4
\USLCDC|USerialReceiver|USerialControl|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|USerialReceiver|USerialControl|Selector0~0_combout\ = (\USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\ & (\USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\ & 
-- \USLCDC|UDispatcher|CurrentState.STATE_DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\,
	datac => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\,
	datad => \USLCDC|UDispatcher|CurrentState.STATE_DONE~q\,
	combout => \USLCDC|USerialReceiver|USerialControl|Selector0~0_combout\);

-- Location: LCCOMB_X41_Y6_N22
\USLCDC|USerialReceiver|USerialControl|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|USerialReceiver|USerialControl|Selector0~1_combout\ = (!\USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\ & ((\USLCDC|USerialReceiver|UCounter|FF1|Q~q\) # ((!\USLCDC|USerialReceiver|UCounter|FF2|Q~q\) # 
-- (!\USLCDC|USerialReceiver|UCounter|FF0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|USerialReceiver|UCounter|FF1|Q~q\,
	datab => \USLCDC|USerialReceiver|UCounter|FF0|Q~q\,
	datac => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_ACCEPTED~q\,
	datad => \USLCDC|USerialReceiver|UCounter|FF2|Q~q\,
	combout => \USLCDC|USerialReceiver|USerialControl|Selector0~1_combout\);

-- Location: LCCOMB_X41_Y6_N24
\USLCDC|USerialReceiver|USerialControl|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|USerialReceiver|USerialControl|Selector0~2_combout\ = (!\USLCDC|USerialReceiver|USerialControl|Selector0~0_combout\ & (((\USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\ & 
-- !\USLCDC|USerialReceiver|USerialControl|Selector0~1_combout\)) # (!\auto_hub|ins
-- trumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datab => \USLCDC|USerialReceiver|USerialControl|Selector0~0_combout\,
	datac => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\,
	datad => \USLCDC|USerialReceiver|USerialControl|Selector0~1_combout\,
	combout => \USLCDC|USerialReceiver|USerialControl|Selector0~2_combout\);

-- Location: FF_X41_Y6_N25
\USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \USLCDC|USerialReceiver|USerialControl|Selector0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~q\);

-- Location: CLKCTRL_G16
\USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~clkctrl_outclk\);

-- Location: FF_X40_Y6_N19
\USLCDC|USerialReceiver|UCounter|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USLCDC|USerialReceiver|UCounter|FF0|Q~0_combout\,
	clrn => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|USerialReceiver|UCounter|FF0|Q~q\);

-- Location: LCCOMB_X40_Y6_N0
\USLCDC|USerialReceiver|UCounter|FF1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|USerialReceiver|UCounter|FF1|Q~0_combout\ = \USLCDC|USerialReceiver|UCounter|FF1|Q~q\ $ (\USLCDC|USerialReceiver|UCounter|FF0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \USLCDC|USerialReceiver|UCounter|FF1|Q~q\,
	datad => \USLCDC|USerialReceiver|UCounter|FF0|Q~q\,
	combout => \USLCDC|USerialReceiver|UCounter|FF1|Q~0_combout\);

-- Location: FF_X40_Y6_N1
\USLCDC|USerialReceiver|UCounter|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USLCDC|USerialReceiver|UCounter|FF1|Q~0_combout\,
	clrn => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|USerialReceiver|UCounter|FF1|Q~q\);

-- Location: LCCOMB_X40_Y6_N12
\USLCDC|USerialReceiver|UCounter|FF2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|USerialReceiver|UCounter|FF2|Q~0_combout\ = \USLCDC|USerialReceiver|UCounter|FF2|Q~q\ $ (((\USLCDC|USerialReceiver|UCounter|FF1|Q~q\ & \USLCDC|USerialReceiver|UCounter|FF0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \USLCDC|USerialReceiver|UCounter|FF1|Q~q\,
	datac => \USLCDC|USerialReceiver|UCounter|FF2|Q~q\,
	datad => \USLCDC|USerialReceiver|UCounter|FF0|Q~q\,
	combout => \USLCDC|USerialReceiver|UCounter|FF2|Q~0_combout\);

-- Location: FF_X40_Y6_N13
\USLCDC|USerialReceiver|UCounter|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USLCDC|USerialReceiver|UCounter|FF2|Q~0_combout\,
	clrn => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_RECEIVING~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|USerialReceiver|UCounter|FF2|Q~q\);

-- Location: LCCOMB_X41_Y6_N28
\USLCDC|USerialReceiver|USerialControl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|USerialReceiver|USerialControl|Selector1~0_combout\ = (\USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_WAITING~q\ & (((\USLCDC|USerialReceiver|UCounter|FF1|Q~q\) # (!\USLCDC|USerialReceiver|UCounter|FF0|Q~q\)) # 
-- (!\USLCDC|USerialReceiver|UCounter|FF2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USLCDC|USerialReceiver|UCounter|FF2|Q~q\,
	datab => \USLCDC|USerialReceiver|UCounter|FF0|Q~q\,
	datac => \USLCDC|USerialReceiver|UCounter|FF1|Q~q\,
	datad => \USLCDC|USerialReceiver|USerialControl|CurrentState.STATE_WAITING~q\,
	combout => \USLCDC|USerialReceiver|USerialControl|Selector1~0_combout\);

-- Location: FF_X41_Y6_N17
\USLCDC|USerialReceiver|UshiftReg5|FF0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USLCDC|USerialReceiver|UshiftReg5|FF0|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USLCDC|USerialReceiver|USerialControl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|USerialReceiver|UshiftReg5|FF0|Q~q\);

-- Location: LCCOMB_X41_Y6_N26
\USLCDC|USerialReceiver|UshiftReg5|FF1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|USerialReceiver|UshiftReg5|FF1|Q~feeder_combout\ = \USLCDC|USerialReceiver|UshiftReg5|FF0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \USLCDC|USerialReceiver|UshiftReg5|FF0|Q~q\,
	combout => \USLCDC|USerialReceiver|UshiftReg5|FF1|Q~feeder_combout\);

-- Location: FF_X41_Y6_N27
\USLCDC|USerialReceiver|UshiftReg5|FF1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USLCDC|USerialReceiver|UshiftReg5|FF1|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USLCDC|USerialReceiver|USerialControl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|USerialReceiver|UshiftReg5|FF1|Q~q\);

-- Location: LCCOMB_X41_Y6_N20
\USLCDC|USerialReceiver|UshiftReg5|FF2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|USerialReceiver|UshiftReg5|FF2|Q~feeder_combout\ = \USLCDC|USerialReceiver|UshiftReg5|FF1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \USLCDC|USerialReceiver|UshiftReg5|FF1|Q~q\,
	combout => \USLCDC|USerialReceiver|UshiftReg5|FF2|Q~feeder_combout\);

-- Location: FF_X41_Y6_N21
\USLCDC|USerialReceiver|UshiftReg5|FF2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USLCDC|USerialReceiver|UshiftReg5|FF2|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USLCDC|USerialReceiver|USerialControl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|USerialReceiver|UshiftReg5|FF2|Q~q\);

-- Location: LCCOMB_X41_Y6_N30
\USLCDC|USerialReceiver|UshiftReg5|FF3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|USerialReceiver|UshiftReg5|FF3|Q~feeder_combout\ = \USLCDC|USerialReceiver|UshiftReg5|FF2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \USLCDC|USerialReceiver|UshiftReg5|FF2|Q~q\,
	combout => \USLCDC|USerialReceiver|UshiftReg5|FF3|Q~feeder_combout\);

-- Location: FF_X41_Y6_N31
\USLCDC|USerialReceiver|UshiftReg5|FF3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USLCDC|USerialReceiver|UshiftReg5|FF3|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USLCDC|USerialReceiver|USerialControl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|USerialReceiver|UshiftReg5|FF3|Q~q\);

-- Location: LCCOMB_X41_Y6_N0
\USLCDC|USerialReceiver|UshiftReg5|FF4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \USLCDC|USerialReceiver|UshiftReg5|FF4|Q~feeder_combout\ = \USLCDC|USerialReceiver|UshiftReg5|FF3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \USLCDC|USerialReceiver|UshiftReg5|FF3|Q~q\,
	combout => \USLCDC|USerialReceiver|UshiftReg5|FF4|Q~feeder_combout\);

-- Location: FF_X41_Y6_N1
\USLCDC|USerialReceiver|UshiftReg5|FF4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \USLCDC|USerialReceiver|UshiftReg5|FF4|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \USLCDC|USerialReceiver|USerialControl|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \USLCDC|USerialReceiver|UshiftReg5|FF4|Q~q\);

-- Location: LCCOMB_X70_Y49_N14
\UDoor_mecanism|U0|dOut[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U0|dOut[1]~0_combout\ = (\UDoor_mecanism|U7|U1|Q\(0)) # ((\UDoor_mecanism|U7|U1|Q\(2) & !\UDoor_mecanism|U7|U1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|U7|U1|Q\(0),
	datac => \UDoor_mecanism|U7|U1|Q\(2),
	datad => \UDoor_mecanism|U7|U1|Q\(1),
	combout => \UDoor_mecanism|U0|dOut[1]~0_combout\);

-- Location: LCCOMB_X70_Y49_N16
\UDoor_mecanism|U5|dOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U5|dOut~0_combout\ = (!\UDoor_mecanism|U7|U1|Q\(0) & \UDoor_mecanism|U7|U1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UDoor_mecanism|U7|U1|Q\(0),
	datad => \UDoor_mecanism|U7|U1|Q\(1),
	combout => \UDoor_mecanism|U5|dOut~0_combout\);

-- Location: LCCOMB_X70_Y49_N26
\UDoor_mecanism|U1|dOut[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U1|dOut[1]~0_combout\ = ((\UDoor_mecanism|U7|U1|Q\(5) & !\UDoor_mecanism|U7|U1|Q\(4))) # (!\UDoor_mecanism|U7|U1|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|U7|U1|Q\(5),
	datab => \UDoor_mecanism|U7|U1|Q\(4),
	datac => \UDoor_mecanism|U7|U1|Q\(3),
	combout => \UDoor_mecanism|U1|dOut[1]~0_combout\);

-- Location: LCCOMB_X70_Y49_N4
\UDoor_mecanism|U4|dOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U4|dOut~0_combout\ = (\UDoor_mecanism|U7|U1|Q\(4) & \UDoor_mecanism|U7|U1|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|U7|U1|Q\(4),
	datac => \UDoor_mecanism|U7|U1|Q\(3),
	combout => \UDoor_mecanism|U4|dOut~0_combout\);

-- Location: LCCOMB_X71_Y47_N6
\UDoor_mecanism|U2|dOut[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U2|dOut[1]~0_combout\ = ((!\UDoor_mecanism|U7|U1|Q\(7) & \UDoor_mecanism|U7|U1|Q\(8))) # (!\UDoor_mecanism|U7|U1|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UDoor_mecanism|U7|U1|Q\(7),
	datab => \UDoor_mecanism|U7|U1|Q\(6),
	datac => \UDoor_mecanism|U7|U1|Q\(8),
	combout => \UDoor_mecanism|U2|dOut[1]~0_combout\);

-- Location: LCCOMB_X71_Y47_N24
\UDoor_mecanism|U3|dOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UDoor_mecanism|U3|dOut~0_combout\ = (\UDoor_mecanism|U7|U1|Q\(6) & \UDoor_mecanism|U7|U1|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UDoor_mecanism|U7|U1|Q\(6),
	datad => \UDoor_mecanism|U7|U1|Q\(7),
	combout => \UDoor_mecanism|U3|dOut~0_combout\);

-- Location: FF_X45_Y41_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\);

-- Location: FF_X45_Y41_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\);

-- Location: FF_X45_Y41_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\);

-- Location: LCCOMB_X64_Y40_N0
\auto_hub|~GND\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X45_Y40_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X49_Y42_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\);

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
END structure;


