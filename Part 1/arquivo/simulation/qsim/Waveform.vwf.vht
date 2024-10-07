-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/04/2024 17:55:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          part1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY part1_vhd_vec_tst IS
END part1_vhd_vec_tst;
ARCHITECTURE part1_arch OF part1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Address : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Clock : STD_LOGIC;
SIGNAL DataIn : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DataOut : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Wren : STD_LOGIC;
COMPONENT part1
	PORT (
	Address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	Clock : IN STD_LOGIC;
	DataIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	DataOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Wren : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : part1
	PORT MAP (
-- list connections between master ports and signals
	Address => Address,
	Clock => Clock,
	DataIn => DataIn,
	DataOut => DataOut,
	Wren => Wren
	);
-- Address[4]
t_prcs_Address_4: PROCESS
BEGIN
	Address(4) <= '0';
	WAIT FOR 40000 ps;
	Address(4) <= '1';
	WAIT FOR 10000 ps;
	Address(4) <= '0';
	WAIT FOR 10000 ps;
	Address(4) <= '1';
	WAIT FOR 10000 ps;
	Address(4) <= '0';
WAIT;
END PROCESS t_prcs_Address_4;
-- Address[3]
t_prcs_Address_3: PROCESS
BEGIN
	Address(3) <= '0';
	WAIT FOR 40000 ps;
	Address(3) <= '1';
	WAIT FOR 10000 ps;
	Address(3) <= '0';
	WAIT FOR 10000 ps;
	Address(3) <= '1';
	WAIT FOR 10000 ps;
	Address(3) <= '0';
WAIT;
END PROCESS t_prcs_Address_3;
-- Address[2]
t_prcs_Address_2: PROCESS
BEGIN
	Address(2) <= '0';
	WAIT FOR 40000 ps;
	Address(2) <= '1';
	WAIT FOR 10000 ps;
	Address(2) <= '0';
	WAIT FOR 10000 ps;
	Address(2) <= '1';
	WAIT FOR 10000 ps;
	Address(2) <= '0';
WAIT;
END PROCESS t_prcs_Address_2;
-- Address[1]
t_prcs_Address_1: PROCESS
BEGIN
	Address(1) <= '0';
	WAIT FOR 40000 ps;
	Address(1) <= '1';
	WAIT FOR 10000 ps;
	Address(1) <= '0';
	WAIT FOR 10000 ps;
	Address(1) <= '1';
	WAIT FOR 10000 ps;
	Address(1) <= '0';
WAIT;
END PROCESS t_prcs_Address_1;
-- Address[0]
t_prcs_Address_0: PROCESS
BEGIN
	Address(0) <= '0';
	WAIT FOR 40000 ps;
	Address(0) <= '1';
	WAIT FOR 10000 ps;
	Address(0) <= '0';
	WAIT FOR 10000 ps;
	Address(0) <= '1';
	WAIT FOR 10000 ps;
	Address(0) <= '0';
WAIT;
END PROCESS t_prcs_Address_0;

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 5000 ps;
	Clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;
-- DataIn[3]
t_prcs_DataIn_3: PROCESS
BEGIN
	DataIn(3) <= '0';
	WAIT FOR 20000 ps;
	DataIn(3) <= '1';
	WAIT FOR 10000 ps;
	DataIn(3) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_3;
-- DataIn[2]
t_prcs_DataIn_2: PROCESS
BEGIN
	DataIn(2) <= '0';
	WAIT FOR 40000 ps;
	DataIn(2) <= '1';
	WAIT FOR 10000 ps;
	DataIn(2) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_2;
-- DataIn[1]
t_prcs_DataIn_1: PROCESS
BEGIN
	DataIn(1) <= '0';
	WAIT FOR 20000 ps;
	DataIn(1) <= '1';
	WAIT FOR 10000 ps;
	DataIn(1) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_1;
-- DataIn[0]
t_prcs_DataIn_0: PROCESS
BEGIN
	DataIn(0) <= '0';
	WAIT FOR 40000 ps;
	DataIn(0) <= '1';
	WAIT FOR 10000 ps;
	DataIn(0) <= '0';
WAIT;
END PROCESS t_prcs_DataIn_0;

-- Wren
t_prcs_Wren: PROCESS
BEGIN
	Wren <= '0';
	WAIT FOR 20000 ps;
	Wren <= '1';
	WAIT FOR 10000 ps;
	Wren <= '0';
	WAIT FOR 10000 ps;
	Wren <= '1';
	WAIT FOR 10000 ps;
	Wren <= '0';
WAIT;
END PROCESS t_prcs_Wren;
END part1_arch;
