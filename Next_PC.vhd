----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:52:19 10/08/2017 
-- Design Name: 
-- Module Name:    Next_PC - Behavioral 
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

entity Next_PC is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           PC_in : in  STD_LOGIC_VECTOR (31 downto 0);
           PC_out : out  STD_LOGIC_VECTOR (31 downto 0));
end Next_PC;

architecture Behavioral of Next_PC is

begin

process(clk, reset,PC_in)
	begin 
		if(rising_edge(clk))then 
			if(reset='1')then
				 PC_out <= (others =>'0');
			 else 
				 PC_out <= PC_in; 
		end if;
	end if;
	end process;


end Behavioral;

