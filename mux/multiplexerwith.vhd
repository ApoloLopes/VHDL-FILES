LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY multiplexerwith IS 
PORT ( a : IN  STD_LOGIC_VECTOR(15 DOWNTO 0); 
sel : IN  STD_LOGIC_VECTOR(1 DOWNTO 0); 
z : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)); 
END ENTITY multiplexerwith;
ARCHITECTURE eqn OF multiplexerwith IS
BEGIN 
WITH sel SELECT  -- a(4*i+3), a(4*i+2), a(4*i+1), a(4*i) para sa�da z 
     z <= a(4*to_integer(unsigned(sel))+3)& 
          a(4*to_integer(unsigned(sel))+2)& 
          a(4*to_integer(unsigned(sel))+1)& 
          a(4*to_integer(unsigned(sel)))  WHEN OTHERS;
END ARCHITECTURE eqn;
