LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sumtract IS
PORT( a, b, Cin, control : IN STD_LOGIC;
      s, cout   : OUT STD_LOGIC);

END sumtract;

ARCHITECTURE dir OF sumtract IS

signal x : std_logic;

BEGIN
   
   x <= control; 
   s <= (a XOR ((b XOR x) XOR Cin));
   Cout <= ((b XOR x) AND Cin) OR ((b XOR x) AND a) OR (Cin AND a); 

END dir;  
