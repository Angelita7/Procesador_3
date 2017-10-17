
-- VHDL Instantiation Created from source file Next_PC.vhd -- 00:22:05 10/09/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Next_PC
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		PC_in : IN std_logic_vector(31 downto 0);          
		PC_out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Next_PC: Next_PC PORT MAP(
		clk => ,
		reset => ,
		PC_in => ,
		PC_out => 
	);


