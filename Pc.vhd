----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:14:43 10/01/2017 
-- Design Name: 
-- Module Name:    Pc - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pc is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Pc_in : in  STD_LOGIC_VECTOR (31 downto 0);
           Pc_out : out  STD_LOGIC_VECTOR (31 downto 0));
end Pc;

architecture Behavioral of Pc is


begin

process(clk,reset, Pc_in)
	begin 
	if (rising_edge(clk)) then
	if reset='1' then
	Pc_out <= x"00000000";
	else
	Pc_out <= Pc_in;
	end if;
	end if;
	end process;

end Behavioral;

