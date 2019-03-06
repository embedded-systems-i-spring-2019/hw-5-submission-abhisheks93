----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 01:18:12 PM
-- Design Name: 
-- Module Name: question6case - Behavioral
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

entity question6case is
--  Port ( );
port(
    clk: in std_logic;
    CE : in std_logic;
    Input : in std_logic_vector(7 downto 0);
    Output : out std_logic;
    sel : in std_logic_vector(2 downto 0));
    
end question6case;

architecture Behavioral of question6case is

begin

    mux : process(clk, sel, Input)
    begin
        if(rising_edge(clk)) then
            if(CE = '1') then
                case sel is
                    when "000" => Output <= Input(0);
                    when "001" => Output <= Input(1);
                    when "010" => Output <= Input(2);
                    when "011" => Output <= Input(3);
                    when "100" => Output <= Input(4);
                    when "101" => Output <= Input(5);
                    when "110" => Output <= Input(6);
                    when "111" => Output <= Input(7);
                end case;
            end if;
       end if;
    end process;
    
end Behavioral;
