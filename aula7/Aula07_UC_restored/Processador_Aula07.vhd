library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Processador_Aula07 is
  generic   (
    DATA_WIDTH  : natural :=  16;
    ADDR_WIDTH  : natural :=  12
  );

  port   (
    -- Input ports
    clk     : in  std_logic;
    -- Output ports
    saidaAcumulador :  out  std_logic_vector(DATA_WIDTH-1 downto 0);
	 programCounter  :  out  std_logic_vector(ADDR_WIDTH-1 downto 0)
  );
end entity;


architecture arch_name of Processador_Aula07 is
  signal progCount : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal saiAcumulador : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal palavraControle : std_logic_vector(7 downto 0);
  signal opCode : std_logic_vector(3 downto 0);
  
begin

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  FD:  entity work.Fluxo_Dados generic map (DATA_WIDTH => DATA_WIDTH, ADDR_WIDTH => ADDR_WIDTH)
          port map (palavraControle => palavraControle, opCode => opCode, saidaAcumulador => saidaAcumulador, 
						  programCounter => programCounter, clk =>  clk);
  UC:  entity work.Unidade_Controle generic map (DATA_WIDTH => DATA_WIDTH, ADDR_WIDTH => ADDR_WIDTH)
          port map (palavraControle => palavraControle, opCode => opCode, clk =>  clk);
end architecture;