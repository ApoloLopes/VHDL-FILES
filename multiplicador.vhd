library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplicador is 
port ( a, b : in std_logic_vector(2 downto 0);
       s : out std_logic_vector(5 downto 0)
);
end multiplicador;

architecture hard of multiplicador is 
component fullsubtract is
port(  A: in std_logic_vector(2 downto 0);
       B: in std_logic_vector(2 downto 0);
       contr: in std_logic;
       co: out std_logic;
       S: out std_logic_vector(2 downto 0)
);
end component;
signal aa : std_logic_vector(2 downto 0);
signal bb : integer;
signal 
begin

aa <= a; bb <= to_integer(unsigned(b));

process 
begin 
     for i in 1 to bb loop
     

 
 
