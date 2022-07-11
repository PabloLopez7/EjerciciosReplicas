----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:32:46 07/07/2022 
-- Design Name: 
-- Module Name:    contador2 - pins 
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
use IEEE.STD_LOGIC_SIGNED.ALL;

entity contador2 is
    Port ( clk : in  STD_LOGIC;
           Q   : inout  STD_LOGIC_VECTOR(3 downto 0));
	 attribute pin_numbers of contador: entity is
	 " clk:1 Q(3):14  Q(2):15   Q(1):16  Q(0): 17";
end contador2;

architecture pins of contador2 is

begin
	process (clk)
		begin
			if(clk' event and clk='1') then
			Q <= Q+1;
			end if;
	end process;
end pins;

