----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 12:43:04 PM
-- Design Name: 
-- Module Name: question2if - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity question2if is
--  Port ( );
Port(
    A_1 : in std_logic;
    A_2 : in std_logic;
    B_1 : in std_logic;
    B_2 : in std_logic;
    D_1 : in std_logic;
    E_out : out std_logic
    );
end question2if;

architecture Behavioral of question2if is
signal Aout : std_logic;
signal Bout : std_logic;
signal Cout : std_logic;    
        
begin


    A : process(A_1, A_2)
    begin
    if (A_1 = '1' and A_2 = '1') then
        Aout <= '1';
    else
        Aout <= '0';
    end if;
    end process;


    
    B : process(B_1, B_2)
    begin
    if (B_1 = '0' and B_2 = '0') then
        Bout <= '0';
    else
        Bout <= '1';
    end if;
    end process;    



    C : process(B_2, D_1)
    begin
    if (B_2 = '1' and (not D_1) = '1') then
        Cout <= '1';
    else
        Cout <= '0';
    end if;
    end process;    
    
    
    
    E: process(Aout, Bout, Cout)
    begin
        if(Aout = '0' and Bout = '0' and Cout = '0') then
            E_out <= '0';
        else
            E_out <= '1';
        end if;
    end process;
    
end Behavioral;
