library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity fullsubtract is
port(  A: in std_logic_vector(2 downto 0);
       B: in std_logic_vector(2 downto 0);
       contr: in std_logic;
       co: out std_logic;
       S: out std_logic_vector(2 downto 0)
);
end fullsubtract;
architecture sub4 of fullsubtract is
signal N : std_logic_vector (2 downto 0);
signal y : std_logic;
begin
process (contr)
begin
if contr='0' then 
  y <= '0';
else if contr='1' then
  y <= '1'; 
end if;
end if;
end process;
A0: entity work.sumtract port map(cin =>  y, control=>y, a=>A(0), b=>B(0), cout=>N(0), s=>S(0));
A1: entity work.sumtract port map(cin=>N(0), control=>y, a=>A(1), b=>B(1), cout=>N(1), s=>S(1));
A2: entity work.sumtract port map(cin=>N(1), control=>y, a=>A(2), b=>B(2), cout=>N(2), s=>S(2));
--A3: entity work.sumtract port map(cin=>N(2), control=>y, a=>A(3), b=>B(3), cout=>N(3), s=>S(3));
co <= N(2);
end sub4;
