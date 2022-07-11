----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:04:56 07/06/2022 
-- Design Name: 
-- Module Name:    reg4 - a_reg4 
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

entity reg4 is
    Port ( D : in  STD_LOGIC_VECTOR(3 downto 0);
           clk, CLR : in  STD_LOGIC;
           Q, Qn : inout  STD_LOGIC_VECTOR(3 downto 0));
end reg4;

architecture a_reg4 of reg4 is
begin
	process (clk, CLR) begin
		if(clk' event and clk = '1' ) the
			if(CLR = '1') then
				Q<=D;
				Qn <= not Q;
			else
				Q<= "0000";
				Qn<= "1111";
			end if;
		end if;
	end process;
end a_reg4;

