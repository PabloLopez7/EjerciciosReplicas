----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:43:33 07/07/2022 
-- Design Name: 
-- Module Name:    contador5 - modulo 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador5 is
    Port ( clk, LD, UP : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR(2 downto 0);
           Q : inout  STD_LOGIC_VECTOR(2 downto 0));
end contador5;

architecture modulo of contador5 is
begin
	process(clk, LD, D, UP)
		begin
			if(clk' event and clk='1') then
				if(LD = '0') then
						Q<=D;
				elsif UP='1' THEN
					Q<= Q+1;
					else
						Q<=Q-1;
				end if;
			end if;
	end process;
end modulo;

