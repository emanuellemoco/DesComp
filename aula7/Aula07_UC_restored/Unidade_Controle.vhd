library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Unidade_Controle is
  generic   (
    DATA_WIDTH  : natural :=  8;
    ADDR_WIDTH  : natural :=  8
  );

  port   (
    -- Input ports
    clk  :  in  std_logic;
	 opCode  :  in  std_logic_vector(3 downto 0);
	 
    -- Output ports
    palavraControle  :  out std_logic_vector(7 downto 0)
  );
end entity;


architecture arch_name of Unidade_Controle is
  alias selMuxProxPC : std_logic is palavraControle(7);
  alias selMuxULAImed : std_logic is palavraControle(6);
  alias HabEscritaAcumulador : std_logic is palavraControle(5);
  alias selOperacaoULA : std_logic_vector(2 downto 0) is palavraControle(4 downto 2);
  alias habLeituraMEM : std_logic is palavraControle(1);
  alias habEscritaMEM : std_logic is palavraControle(0);

  -- Load ----------------- 0001
  -- Store ---------------- 0010
  -- Soma com imediato ---- 0011
  -- Soma com memoria ----- 0100
  -- Sub com imediato ----- 0101
  -- Sub com memoria ------ 0110
  -- Desvia se igual ------ 0111
  -- Jump ----------------- 1000
   
  begin
  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  -- regA:  entity work.nome_do_componente generic map (DATA_WIDTH => DATA_WIDTH)
  --        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst);
  
  selMuxProxPC <= '1' when (opCode = "1000") else '0';
  selMuxULAImed <= '0' when (opCode = "0011") or (opCode = "0101") else '1';
  HabEscritaAcumulador <= '1' when (opCode = "0011") or (opCode = "0101") else '0';
  selOperacaoULA <= "000" when (opCode = "0011") or (opCode = "0100") else
						  "001" when (opCode = "0101") or (opCode = "0110") else
						  "010" when (opCode = "") --?????Soma Acumulador com Zero -> n sei quando carregar o A
						  "011" when (opCode = "0100") or (opCode = "0110") else -- carrega B qndo soma/sub com a memoria?
						  "100" when (opCode = "0111") else '010';

  habLeituraMEM <= '1' when (opCode = "0001") or (opCode = "0100") or (opCode = "0110") 
  else '0';
  
  habEscritaMEM <= '1' when (opCode = "0010") else '0';
  
  

  

end architecture;