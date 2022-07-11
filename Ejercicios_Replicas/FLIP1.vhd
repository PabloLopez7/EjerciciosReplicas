----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:23:31 07/06/2022 
-- Design Name: 
-- Module Name:    FLIP1 - FLOP 
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

entity FLIP1 is
    Port ( clk, RESET, EN ,D : in  STD_LOGIC;
           Q : inout  STD_LOGIC);
end FLIP1;

architecture FLOP of FLIP1 is
signal q_aux: std_logic; ·

begin
	process (clk, RESET, EN)
		begin
			if reset='l' then q_ aux<='0' 
			elsif (clk' event and clk 'l') then
				if ( EN=' l' ) then
					q_aux<= D; 					else
					q_aux<=q;
				end if; 			end if;   end process; 
	q<=q_aux; 
end FLOP;

