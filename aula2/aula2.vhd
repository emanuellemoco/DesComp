library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;           

entity aula2 is
    port(
        SW: in std_logic_vector(9 downto 0);
        LEDR: out std_logic_vector(9 downto 0);
        KEY: in std_logic_vector(3 downto 0);
		CLOCK_50: in std_logic
);
end entity;

architecture arch of aula2 is

    component registradorGenerico is
        generic (
			larguraDados : natural := 10
		);
        port(
            DIN: in std_logic_vector((larguraDados-1) downto 0);
            DOUT: out std_logic_vector((larguraDados-1) downto 0);
            ENABLE: in std_logic;
            CLK, RST: in std_logic
            
        );
    end component; 


begin
    
    pm1: registradorGenerico port map (
      SW, 
      LEDR,  
      KEY(0), 
      CLOCK_50, 
      KEY(1)
    );

end architecture;