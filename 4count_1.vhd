-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Sat Mar 05 19:03:33 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY altera;
USE altera.maxplus2.all; 

LIBRARY work;

ENTITY 4count_1 IS 
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
	QC	:	OUT	 STD_LOGIC;
	QD	:	OUT	 STD_LOGIC
); 
END 4count_1;

ARCHITECTURE bdf_type OF 4count_1 IS 
BEGIN 

-- instantiate macrofunction 

b2v_Divider : 4count
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
		 QC => QC,
		 QD => QD);

END bdf_type; 