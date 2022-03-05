-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Sat Mar 05 16:08:02 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Test2 IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		QA :  OUT  STD_LOGIC;
		QB :  OUT  STD_LOGIC;
		QC :  OUT  STD_LOGIC;
		QD :  OUT  STD_LOGIC
	);
END Test2;

ARCHITECTURE bdf_type OF Test2 IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT \4count_0\
	PORT(LDN : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 CIN : IN STD_LOGIC;
		 DNUP : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 SETN : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 CLRN : IN STD_LOGIC;
		 QA : OUT STD_LOGIC;
		 QB : OUT STD_LOGIC;
		 QC : OUT STD_LOGIC;
		 QD : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \4count_0\: COMPONENT IS true;
ATTRIBUTE noopt OF \4count_0\: COMPONENT IS true;

SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_10 <= '1';



b2v_inst : 4count_0
PORT MAP(LDN => SYNTHESIZED_WIRE_10,
		 B => SYNTHESIZED_WIRE_10,
		 A => SYNTHESIZED_WIRE_10,
		 D => SYNTHESIZED_WIRE_10,
		 CIN => SYNTHESIZED_WIRE_10,
		 DNUP => SYNTHESIZED_WIRE_10,
		 CLK => SYNTHESIZED_WIRE_6,
		 SETN => SYNTHESIZED_WIRE_10,
		 C => SYNTHESIZED_WIRE_10,
		 CLRN => SYNTHESIZED_WIRE_10,
		 QA => QA,
		 QB => QB,
		 QC => QC,
		 QD => QD);


SYNTHESIZED_WIRE_6 <= NOT(clk);




END bdf_type;