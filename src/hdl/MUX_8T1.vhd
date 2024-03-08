----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2024 11:11:06 AM
-- Design Name: 
-- Module Name: MUX_8T1 - Multiplexor
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_8T1 is
    Port ( SEL : in std_logic_vector (2 downto 0);
           D_IN : in std_logic_vector (7 downto 0);
           F : out STD_LOGIC);
end MUX_8T1;

architecture Behavioral of MUX_8T1 is

begin

    F <= 
            D_IN(0) when SEL = "000" else
            D_IN(1) when SEL = "001" else
            D_IN(2) when SEL = "010" else
            D_IN(3) when SEL = "011" else
            D_IN(4) when SEL = "100" else
            D_IN(5) when SEL = "101" else
            D_IN(6) when SEL = "110" else
            D_IN(7);


end Behavioral;
