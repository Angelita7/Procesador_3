
-- VHDL Instantiation Created from source file Multiplexor.vhd -- 00:47:15 10/09/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Multiplexor
	PORT(
		i : IN std_logic;
		Contenido_r2 : IN std_logic_vector(31 downto 0);
		Dato_SEU : IN std_logic_vector(31 downto 0);          
		Salida_MUX : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Multiplexor: Multiplexor PORT MAP(
		i => ,
		Contenido_r2 => ,
		Dato_SEU => ,
		Salida_MUX => 
	);


