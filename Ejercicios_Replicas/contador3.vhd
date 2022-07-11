----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:55:24 07/07/2022 
-- Design Name: 
-- Module Name:    contador3 - modulo 
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

entity contador3 is
    Port ( clk, reset : in  STD_LOGIC;
                    q : inout  STD_LOGIC_VECTOR(3 downto 0));
end contador3;

architecture modulo of contador3 is

begin
	process (clk, reset)
		begin
			if(clk' event and clk='1') then
				if(reset='1' or q="1001") then
					q<="0000";
				else
					q<=q+1;
				end if;
			end if;
	end process;
end modulo;

