library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;           -- Biblioteca IEEE para funções aritméticas

entity aula1 is 
        port(
                SW  : in std_logic_vector(9 downto 0);
                LEDR : OUT std_logic_vector(9 downto 0)


        );
    end entity;


    architecture arch of aula1 is 

        component somadorGenerico is
            port(
                entradaA, entradaB: in STD_LOGIC_VECTOR(3 downto 0);
                saida:  out STD_LOGIC_VECTOR(3 downto 0)
            );
        end component;    
    
        component subtratorGenerico is
        port(
            entradaA, entradaB: in STD_LOGIC_VECTOR(3 downto 0);
            saida:  out STD_LOGIC_VECTOR(3 downto 0)
        );
        end component;
    
    SIGNAL x,y, out2x, out2y, out2x3y,out3y, out_f:STD_LOGIC_VECTOR( 3 downto 0);
    
    begin 
        x<= SW(9 downto 6);
        y<=SW(3 downto 0);
        somador2x: somadorGenerico port map(
                entradaA=>x,
                entradaB=>x,
                saida=>out2x
        );
        somador2y: somadorGenerico port map(
                entradaA=>y,
                entradaB=>y,
                saida=>out2y
        );
        somador3y: somadorGenerico port map(
                entradaA=>out2y,
                entradaB=>y,
                saida=>out3y    
        );
        
        subtrator: subtratorGenerico port map(
                entradaA=> out2x,
                entradaB=>out3y,
                saida=>out2x3y
        );
        
        somador_f: somadorGenerico port map(
                entradaA=>out2x3y,
                entradaB=>"0111",
                saida=>out_f
        );
        
        LEDR<= "000000" & out_f;
        
        
        
    
    
    end architecture;