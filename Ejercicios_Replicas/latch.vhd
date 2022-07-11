----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:52:02 07/06/2022 
-- Design Name: 
-- Module Name:    latch - ejemplo 
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

entity latch is
    Port ( x, control : in  STD_LOGIC;
           z : out  STD_LOGIC);
end latch;

architecture ejemplo of latch is

begin

	z<=x when ( control='1'); 

end ejemplo;

