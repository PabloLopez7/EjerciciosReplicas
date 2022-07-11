----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:50:32 07/06/2022 
-- Design Name: 
-- Module Name:    registro2 - serie2 
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

entity registro2 is
	Port ( d, clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end registro2;

architecture serie2 of registro2 is
begin
	process (clk); 
	variable a,b,: std_logic;
	begin 	if ( clk' event and clk='l' ) then
		a<=d;
		b<=a;
		q<=d;
	end if; 
	end process;
end serie2;

