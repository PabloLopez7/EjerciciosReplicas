----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:04:35 07/06/2022 
-- Design Name: 
-- Module Name:    ffd - arq_ffd 
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

entity ffd is
    Port ( D, clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end ffd;

architecture arq_ffd of ffd is

begin
	process (clk) begin
			if (clk' event and clk='1') then
				Q <= D;	
			end if;
	end process;
end arq_ffd;

