LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY multiplexer IS 
PORT ( a : IN  STD_LOGIC_VECTOR(3 DOWNTO 0); 
       sel : IN  STD_LOGIC_VECTOR(1 DOWNTO 0); 
       z : OUT STD_LOGIC ); 
END ENTITY multiplexer;
ARCHITECTURE eqn OF multiplexer IS 
BEGIN
     z <= a(0) when sel="00" else
          a(1) when sel="01" else
          a(2) when sel="10" else
          a(3);
END ARCHITECTURE eqn;
