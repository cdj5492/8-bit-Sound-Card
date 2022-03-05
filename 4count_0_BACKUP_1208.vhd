<<<<<<< HEAD
-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
=======
-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
>>>>>>> d8fcfdaf91d6db653a39c822026ce08a0f013ce3
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
<<<<<<< HEAD
-- refer to the applicable agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Sat Mar 05 17:22:02 2022"
=======
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"
-- CREATED		"Sat Mar  5 16:28:34 2022"
>>>>>>> d8fcfdaf91d6db653a39c822026ce08a0f013ce3

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY altera;
USE altera.maxplus2.all; 

LIBRARY work;

ENTITY 4count_0 IS 
PORT 
( 
	LDN	:	IN	 STD_LOGIC;
	B	:	IN	 STD_LOGIC;
	A	:	IN	 STD_LOGIC;
	D	:	IN	 STD_LOGIC;
	CIN	:	IN	 STD_LOGIC;
	DNUP	:	IN	 STD_LOGIC;
	CLK	:	IN	 STD_LOGIC;
	SETN	:	IN	 STD_LOGIC;
	C	:	IN	 STD_LOGIC;
	CLRN	:	IN	 STD_LOGIC;
	QA	:	OUT	 STD_LOGIC;
	QB	:	OUT	 STD_LOGIC;
	QC	:	OUT	 STD_LOGIC
); 
END 4count_0;

ARCHITECTURE bdf_type OF 4count_0 IS 
BEGIN 

-- instantiate macrofunction 

b2v_DecayC : 4count
PORT MAP(LDN => LDN,
		 B => B,
		 A => A,
		 D => D,
		 CIN => CIN,
		 DNUP => DNUP,
		 CLK => CLK,
		 SETN => SETN,
		 C => C,
		 CLRN => CLRN,
		 QA => QA,
		 QB => QB,
		 QC => QC);

END bdf_type; 