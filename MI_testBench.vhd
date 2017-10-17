--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:57:47 10/01/2017
-- Design Name:   
-- Module Name:   C:/Users/GEORGE/Documents/Procesador/Procesador/MI_testBench.vhd
-- Project Name:  Procesador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MEMORIAINSTRUCCION
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
 
ENTITY MI_testBench IS
END MI_testBench;
 
ARCHITECTURE behavior OF MI_testBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MEMORIAINSTRUCCION
    PORT(
         MIentrada : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         MIsalida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal MIentrada : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal MIsalida : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEMORIAINSTRUCCION PORT MAP (
          MIentrada => MIentrada,
          reset => reset,
          MIsalida => MIsalida
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
		
		reset <='0';
		MIentrada <= x"00000001";

      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
