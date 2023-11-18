library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Inversor is
	Port (	SW1 : in STD_lOGIC;
			 	SW2 : in STD_LOGIC;
				SALIDA : out STD_LOGIC);		
	end Inversor;
	
architecture Behaevioral of Inversor is
	
begin

SALIDA <= not (SW1 and SW2);
		
end Behaevioral;
	
