----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:59:01 07/06/2022 
-- Design Name: 
-- Module Name:    reg - arqreg 
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
entity reg is
    Port ( D : in  STD_LOGIC_VECTOR(0 to 7);
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(0 to 7));
end reg;

architecture arqreg of reg is

begin
	process (clk) begin
	if(clk' event and clk='1' ) then
		Q <= D;
	end if;
	end process;
end arqreg;

