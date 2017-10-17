----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:57:41 10/08/2017 
-- Design Name: 
-- Module Name:    Multiplexor - Behavioral 
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

entity Multiplexor is
    Port ( i : in  STD_LOGIC;
           Contenido_r2 : in  STD_LOGIC_VECTOR (31 downto 0);
           Dato_SEU : in  STD_LOGIC_VECTOR (31 downto 0);
           Salida_MUX : out  STD_LOGIC_VECTOR (31 downto 0));
end Multiplexor;

architecture Behavioral of Multiplexor is

begin

process(i,Contenido_r2,Dato_SEU)
begin
	if(i='1')then
		Salida_MUX<= Dato_SEU; -- Si el inmediato es 1 retorna el valor de la SEU.
	else 
		if(i='0')then
			Salida_MUX <= Contenido_r2; -- Siel  inmediato es 0 retorna el valor del Contenido_r2 (Register File).
	else 
		end if ; 
	end if; 	
end process; 


end Behavioral;

