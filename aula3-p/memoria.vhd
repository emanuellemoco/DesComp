library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 9
    );
   port (
          -- O fato da interface ser do tipo std_logic auxilía na simulação.
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoria is
--             bit_17   bit_16      bit_15    bit_14       bit_13    bit_12     bits(11~4)        bits(3~0)
-- Mnemonico  Sel_Mux  Habilita_A  Reset_A   Habilita_B   Reset_B   Operacao   Entrada_de_Dados  ProxEndereco
--
--

  subtype opCode_t is std_logic_vector(5 downto 0);
  constant NOP  : opCode_t := "000000";
  constant V_ZERO  : std_logic_vector(7 downto 0) := (others => '0');
--

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        -- Inicializa todas as posições da memória com zero:    
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
        -- Inicializa os endereços desejados. Os demais endereços conterão o valor zero:
        tmp(0) := b"010101" & x"03" & b"0001"; --X + X 
        tmp(1) := b"000001" & x"42" & b"0010"; --Salva  no Registrador A: 2Y
        tmp(2) := b"001010" & x"01" & b"0000"; -- 2X - Y
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    -- A conversão de tipos para obter o índice do vetor que será acessado:
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;