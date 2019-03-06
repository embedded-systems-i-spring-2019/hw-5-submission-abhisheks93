----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 11:59:48 AM
-- Design Name: 
-- Module Name: question2 - Behavioral
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
entity question2 is
--  Port ( );
Port(
    A_1 : in std_logic;
    A_2 : in std_logic;
    B_1 : in std_logic;
    B_2 : in std_logic;
    D_1 : in std_logic;
    E_out : out std_logic
    );
end question2;

architecture Behavioral of question2 is
signal tempA : std_logic_vector(1 downto 0);
signal tempB : std_logic_vector(1 downto 0);
signal tempC : std_logic_vector(1 downto 0);
signal tempE : std_logic_vector(2 downto 0);

signal Aout : std_logic;
signal Bout : std_logic;
signal Cout : std_logic;
begin
    tempA <= A_1 & A_2;
    tempB <= B_1 & B_2;
    tempC <= B_2 & (not D_1);
-- case
    A : process(tempA)
    begin
        case (tempA) is
            when "00" => Aout <= '0';
            when "01" => Aout <= '0';
            when "10" => Aout <= '0';
            when "11" => Aout <= '1';    
        end case;
    end process;
        
    B : process(tempB)
    begin
        case (tempB) is
            when "00" => Bout <= '0';
            when "01" => Bout <= '1';
            when "10" => Bout <= '1';
            when "11" => Bout <= '1';    
        end case;
    end process;
    
    C : process(tempC)
    begin
        case (tempC) is
            when "00" => Cout <= '0';
            when "01" => Cout <= '1';
            when "10" => Cout <= '1';
            when "11" => Cout <= '1';    
        end case;
    end process;
                 
    E : process(Aout, Bout, Cout)
    begin
        case tempE is
            when "000" => E_out <= '0';
            when "001" => E_out <= '1';
            when "010" => E_out <= '1';
            when "011" => E_out <= '1';
            when "100" => E_out <= '1';
            when "101" => E_out <= '1';
            when "110" => E_out <= '1';
            when "111" => E_out <= '1';         
        end case;
    end process;
    
end Behavioral;
