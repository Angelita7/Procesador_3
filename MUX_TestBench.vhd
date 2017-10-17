--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:02:06 10/08/2017
-- Design Name:   
-- Module Name:   C:/Users/GEORGE/Pictures/Procesador_2/Procesador_2/MUX_TestBench.vhd
-- Project Name:  Procesador_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Multiplexor
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MUX_TestBench IS
END MUX_TestBench;
 
ARCHITECTURE behavior OF MUX_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multiplexor
    PORT(
         i : IN  std_logic;
         Contenido_r2 : IN  std_logic_vector(31 downto 0);
         Dato_SEU : IN  std_logic_vector(31 downto 0);
         Salida_MUX : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic := '0';
   signal Contenido_r2 : std_logic_vector(31 downto 0) := (others => '0');
   signal Dato_SEU : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Salida_MUX : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplexor PORT MAP (
          i => i,
          Contenido_r2 => Contenido_r2,
          Dato_SEU => Dato_SEU,
          Salida_MUX => Salida_MUX
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
	--<clock> <= '0';
	--wait for <clock>_period/2;
	--<clock> <= '1';
	--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		i <='1';
		Dato_SEU <= x"00000004";
		Contenido_r2 	<= x"00000008";
		--wait for 100 ns;
		
		--i <='0';
		--Dato_SEU <= x"00000004";
		--Contenido_r2 	<= x"00000008";
		--wait for 100 ns;
		

      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
