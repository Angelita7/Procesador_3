--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:55:14 10/08/2017
-- Design Name:   
-- Module Name:   C:/Users/GEORGE/Pictures/Procesador_2/Procesador_2/NextPC_TestBench.vhd
-- Project Name:  Procesador_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Next_PC
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
 
ENTITY NextPC_TestBench IS
END NextPC_TestBench;
 
ARCHITECTURE behavior OF NextPC_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Next_PC
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         PC_in : IN  std_logic_vector(31 downto 0);
         PC_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal PC_in : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal PC_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Next_PC PORT MAP (
          clk => clk,
          reset => reset,
          PC_in => PC_in,
          PC_out => PC_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	
   -- Stimulus process
   stim_proc: process
   begin		
     reset<='1';
      -- hold reset state for 100 ns.
      wait for 30 ns;
		reset<='0';
		PC_in <=  x"00000010"; 
		wait for 30 ns;
		PC_in <=  x"00000008";
		wait for 30 ns;
		PC_in <=  x"00000005";

      wait;
   end process;

END;
