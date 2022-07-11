----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:20:16 07/06/2022 
-- Design Name: 
-- Module Name:    Flip - Flop 
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FLIP is
    Port ( D , clk, RESET : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end FLIP;

architecture Behavioral of FLIP is

begin
	process (clk,D,RESET) begin
			if RESET='1' then
					Q<= '0';
					elsif (clk' event and clk ='1') then
					Q <= D;
			end if;
	end process;
	
end Behavioral;




