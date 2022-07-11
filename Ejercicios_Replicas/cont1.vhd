----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:02:10 07/07/2022 
-- Design Name: 
-- Module Name:    cont1 - arq_cont1 
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

entity cont1 is
    Port ( P                     : in  STD_LOGIC_VECTOR(3 downto 0);
           clk, LOAD, ENP, RESET : in  STD_LOGIC;
           Q                     : inout  STD_LOGIC_VECTOR(3 downto 0));
end cont1;

architecture arq_cont1 of cont1 is
begin
	process(clk, RESET, LOAD, ENP) begin
		if(RESET = '1') then
				Q <= "0000";
			elsif( clk' event and clk='1')then
					if(LOAD = '0' and ENP = '-')then
						Q <= P;
					elsif( LOAD= '1' and ENP = '0') then
						Q <= Q;
					elsif (LOAD = '1' AND ENP = '1')then
						Q <= Q + 1;
					end if;
		end if;
	end process;
end arq_cont1;

