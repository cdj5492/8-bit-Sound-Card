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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"
-- CREATED		"Sat Mar  5 16:28:34 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY altera;
USE altera.maxplus2.all; 

LIBRARY work;

ENTITY busmux_2 IS 
PORT 
( 
	sel	:	IN	 STD_LOGIC;
	dataa	:	IN	 STD_LOGIC_VECTOR(3 DOWNTO 0);
	datab	:	IN	 STD_LOGIC_VECTOR(3 DOWNTO 0);
	result	:	OUT	 STD_LOGIC_VECTOR(3 DOWNTO 0)
); 
END busmux_2;

ARCHITECTURE bdf_type OF busmux_2 IS 
BEGIN 

-- instantiate macrofunction 

b2v_inst : busmux
GENERIC MAP(WIDTH => 4)
PORT MAP(sel => sel,
		 dataa => dataa,
		 datab => datab,
		 result => result);

END bdf_type; 