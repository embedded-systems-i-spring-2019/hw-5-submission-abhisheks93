----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 01:29:39 PM
-- Design Name: 
-- Module Name: question6if - Behavioral
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

entity question6if is
--  Port ( );
port(
    clk: in std_logic;
    CE : in std_logic;
    Input : in std_logic_vector(7 downto 0);
    Output : out std_logic;
    sel : in std_logic_vector(2 downto 0));
end question6if;

architecture Behavioral of question6if is

begin

    mux : process(clk, sel, Input)
    begin
        if (rising_edge(clk)) then
            if(CE = '1') then
                if (sel = "000") then
                    Output <= Input(0);
                end if;
                
                if (sel = "001") then
                    Output <= Input(1);
                end if;
                
                if (sel = "010") then
                    Output <= Input(2);
                end if;
                
                if (sel = "011") then
                    Output <= Input(3);
                end if;
                                
                if (sel = "100") then
                    Output <= Input(4);
                end if;                
                
                if (sel = "101") then
                    Output <= Input(5);
                end if;       
                
                if (sel = "110") then
                    Output <= Input(6);
                end if;                         

                if (sel = "111") then
                    Output <= Input(7);
                end if;
            end if;
     end if;
     end process;
end Behavioral;
