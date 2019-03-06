----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 01:11:35 PM
-- Design Name: 
-- Module Name: question3 - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity question3 is
--  Port ( );
Port(
    A_1 : in std_logic;
    A_2 : in std_logic;
    B_1 : in std_logic;
    B_2 : in std_logic;
    D_1 : in std_logic;
    E_out : out std_logic
    );
end question3;

architecture Behavioral of question3 is
signal Aout: std_logic:= '0';
signal Bout: std_logic:='0';
signal Cout: std_logic:='0';

begin

Aout<= A_1 and A_2;
Bout<= B_1 or B_2;
Cout <= B_2 and (not D_1);

E_out <= Aout or Bout or Cout;

end Behavioral;
