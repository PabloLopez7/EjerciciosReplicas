----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:58:26 07/06/2022 
-- Design Name: 
-- Module Name:    latch1 - Ejemplo 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity latch1 is
    Port (  dato, control : in  STD_LOGIC;
           salida : out  STD_LOGIC);
end latch1;

architecture Ejemplo of latch1 is

	process ( dato, control) 
		begin
			
			if control='1' then
				salida <= dato
			end if
	end process
end Ejemplo;

