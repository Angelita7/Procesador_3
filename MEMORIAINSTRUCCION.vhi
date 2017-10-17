
-- VHDL Instantiation Created from source file MEMORIAINSTRUCCION.vhd -- 00:32:05 10/09/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MEMORIAINSTRUCCION
	PORT(
		MIentrada : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;          
		MIsalida : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_MEMORIAINSTRUCCION: MEMORIAINSTRUCCION PORT MAP(
		MIentrada => ,
		reset => ,
		MIsalida => 
	);


