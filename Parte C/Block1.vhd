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
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sat Nov 18 21:31:19 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Block1 IS 
	PORT
	(
		a :  IN  STD_LOGIC;
		b :  IN  STD_LOGIC;
		cin :  IN  STD_LOGIC;
		f :  OUT  STD_LOGIC;
		cout :  OUT  STD_LOGIC
	);
END Block1;

ARCHITECTURE bdf_type OF Block1 IS 

COMPONENT sumador_completo
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 cin : IN STD_LOGIC;
		 f : OUT STD_LOGIC;
		 cout : OUT STD_LOGIC
	);
END COMPONENT;



BEGIN 



b2v_inst : sumador_completo
PORT MAP(a => a,
		 b => b,
		 cin => cin,
		 f => f,
		 cout => cout);


END bdf_type;