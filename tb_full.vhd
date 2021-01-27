library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_full is end;

architecture dir of tb_full is
component fullsubtract is 
port(  A: in std_logic_vector(3 downto 0);
       B: in std_logic_vector(3 downto 0);
       contr: in std_logic;
       co: out std_logic;
       S: out std_logic_vector(3 downto 0)
);
end component; 
signal aa, bb, ss : std_logic_vector(3 downto 0);
signal carry : std_logic;
signal ctrl : std_logic;
constant dt : time := 1 ns;   
begin
u : fullsubtract port map(A=>aa, B=>bb, contr=>ctrl, co=>carry, S=>ss);
process
begin

  ctrl <= '0';
       aa <= X"3"; 
       bb <= X"3";
       wait for dt;
       aa <= X"7";
       bb <= X"6";
       wait for dt;
  ctrl <= '1';
       aa <= X"A";
       bb <= X"9";
       wait for dt;
       aa <= X"C";
       bb <= X"A";
       wait; 

end process;
end dir; 
