----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 01:39:34 PM
-- Design Name: 
-- Module Name: question7case - Behavioral
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

entity question7case is
--  Port ( );
Port(
    clk : in std_logic;
    Input : in std_logic_vector(2 downto 0);
    Output : out std_logic_vector(7 downto 0)
    );
end question7case;

architecture Behavioral of question7case is

begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            case Input is
                when "000" => Output <= "11111110";
                when "001" => Output <= "11111101";
                when "010" => Output <= "11111011";
                when "011" => Output <= "11110111";
                when "100" => Output <= "11101111";
                when "101" => Output <= "11011111";
                when "110" => Output <= "10111111";
                when "111" => Output <= "01111111";    
            end case;
       end if;
   end process;

end Behavioral;
