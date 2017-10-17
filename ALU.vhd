----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:25:23 10/08/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.All;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( Contenido_r1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Contenido_r2 : in  STD_LOGIC_VECTOR (31 downto 0);
           Salida_UC : in  STD_LOGIC_VECTOR (5 downto 0);
           Salida_ALU : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is

begin

process (Contenido_r1,Contenido_r2,Salida_UC)

	begin
	
		case (Salida_UC) is
		
		   when "000000" => -- ADD
				Salida_ALU <= Contenido_r1 + Contenido_r2;
			when "000001" => -- AND
				Salida_ALU <= Contenido_r1 and Contenido_r2;
			when "000010" => -- OR
				Salida_ALU <= Contenido_r1 or Contenido_r2;
			when "000011" => -- XOR
				Salida_ALU <= Contenido_r1 xor Contenido_r2;
			when "000100" => -- SUB
				Salida_ALU <= Contenido_r1 - Contenido_r2;
			when "000101" => -- ANDN
				Salida_ALU <= Contenido_r1 nand Contenido_r2;
			when "000110" => -- ORN
				Salida_ALU <= Contenido_r1 nor Contenido_r2;
			when "000111" => -- XORN
				Salida_ALU <= Contenido_r1 xnor Contenido_r2;
			when others => 
				Salida_ALU <= (others=>'0');
				
		end case;
		
  end process;

end Behavioral;

