----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 06:03:05 PM
-- Design Name: 
-- Module Name: question7if - Behavioral
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

entity question7if is
--  Port ( );
Port(
    clk : in std_logic;
    Input : in std_logic_vector(2 downto 0);
    Output : out std_logic_vector(7 downto 0)
    );
end question7if;

architecture Behavioral of question7if is

begin

    process(clk)
    begin
        if(rising_edge(clk)) then
            if(Input = "000") then
                Output <= "11111110";
                
            elsif (Input = "001") then
                Output <= "11111101";
                
            elsif (Input = "010") then
                 Output <= "11111011";            
                 
            elsif (Input = "011") then
                Output <= "11110111";

            elsif (Input = "100") then
                Output <= "11101111";

            elsif (Input = "101") then
                Output <= "11011111";
                
            elsif (Input = "110") then
                 Output <= "10111111";
                 
            elsif (Input = "111") then
                 Output <= "01111111";
                 
            else
                 Output <= "11111111";
            end if;
       end if;
       
   end process;    
       
end Behavioral;
