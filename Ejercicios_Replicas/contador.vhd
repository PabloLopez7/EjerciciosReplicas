----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:49:40 07/07/2022 
-- Design Name: 
-- Module Name:    contador - cuenta 
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

entity contador is
    Port ( clk : in  STD_LOGIC;
           q   : inout  STD_LOGIC_VECTOR(3 downto 0));
end contador;

architecture cuenta of contador is

begin
	process (clk)
		begin
			if(clk' event and clk='1') then
			q <= q+1;
			end if;
	end process;
end cuenta;

