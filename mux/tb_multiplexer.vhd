LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity tb_multiplexer is end;

architecture dir of tb_multiplexer is
component multiplexer is 
PORT ( a : IN  STD_LOGIC_VECTOR(3 DOWNTO 0); 
       sel : IN  STD_LOGIC_VECTOR(1 DOWNTO 0); 
       z : OUT STD_LOGIC );
end component;
component multiplexerwith is
PORT ( a : IN  STD_LOGIC_VECTOR(15 DOWNTO 0); 
sel : IN  STD_LOGIC_VECTOR(1 DOWNTO 0); 
z : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)); 
end component;  
signal x : std_logic_vector(3 downto 0);
signal y : std_logic_vector(1 downto 0);
signal z : std_logic_vector(15 downto 0);
begin

u0: multiplexer port map(a=>x, sel=>y, z=>open);
u1: multiplexerwith port map(a=>z, sel=>y, z=>open);

x <= "1010";
z <= "1110001101010111";

process
begin
     y <= "00";
     wait for 1 ns;
     y <= "01";
     wait for 1 ns;
     y <= "10";
     wait for 1 ns;
     y <= "11";
     wait;
end process;
end dir;