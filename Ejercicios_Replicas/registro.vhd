----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:45:11 07/06/2022 
-- Design Name: 
-- Module Name:    registro - serie 
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
entity registro is
    Port ( d, clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end registro;

architecture serie of registro is
signal a,b: in std_logic; 
begin
	process (clk) 
	begin 	if ( clk' event and clk='l' ) then
		a<=d;
		b<=a;
		q<=d;
	end if; 
	end process;
end serie;

