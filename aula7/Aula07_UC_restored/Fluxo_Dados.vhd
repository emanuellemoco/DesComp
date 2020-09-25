library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Fluxo_Dados is
  generic   (
    DATA_WIDTH  : natural :=  8;
	 ROM_DATA_WIDTH  : natural :=  16;
    ADDR_WIDTH  : natural :=  8
  );

  port   (
    -- Input ports
    clk  :  in  std_logic;
	 palavraControle  :  in  std_logic_vector(7 downto 0);
    -- Output ports
    opCode  :  out  std_logic_vector(3 downto 0);
	 saidaAcumulador :  out  std_logic_vector(DATA_WIDTH-1 downto 0);
	 programCounter  :  out  std_logic_vector(ADDR_WIDTH-1 downto 0)
  );
end entity;


architecture arch_name of Fluxo_Dados is
  --signal  : std_logic;
  signal PC_ROM : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal SomaUm_MuxProxPC : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal MuxProxPC_PC : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal muxULAImed_Acumulador : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal Instrucao : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal Acumulador_ULA_A : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal saidaULA_muxULAImed_1 : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal DadoLidoRAM_ULA_B : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal saidaExtSinal_muxULAImed_0 : std_logic_vector(DATA_WIDTH-1 downto 0);
  
  alias opCodeLocal :  std_logic_vector(3 downto 0) is Instrucao(15 downto 12);
  alias enderecoRAM :  std_logic_vector(ADDR_WIDTH-1 downto 0) is Instrucao(ADDR_WIDTH-1 downto 0);
  alias enderecoJUMP : std_logic_vector(ADDR_WIDTH-1 downto 0) is Instrucao(ADDR_WIDTH-1 downto 0);
  alias imediato_entradaExtSinal : std_logic_vector(ADDR_WIDTH-1 downto 0) is Instrucao(ADDR_WIDTH-1 downto 0);
  
  alias selMuxProxPC : std_logic is palavraControle(7);
  alias selMuxULAImed : std_logic is palavraControle(6);
  alias HabEscritaAcumulador : std_logic is palavraControle(5);
  alias selOperacaoULA : std_logic_vector(2 downto 0) is palavraControle(4 downto 2);
  alias habLeituraMEM : std_logic is palavraControle(1);
  alias habEscritaMEM : std_logic is palavraControle(0);
  
  constant INCREMENTO : natural := 1;
begin

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  PC: entity work.registradorGenerico generic map (larguraDados => ADDR_WIDTH)
         port map (DIN => MuxProxPC_PC, DOUT => PC_ROM, ENABLE => '1', CLK =>  clk, RST => '0');
  
  MuxProxPC: entity work.muxGenerico2x1 generic map (larguraDados => ADDR_WIDTH)
         port map(entradaA_MUX => SomaUm_MuxProxPC, entradaB_MUX =>  enderecoJUMP,
                 seletor_MUX => selMuxProxPC, saida_MUX => MuxProxPC_PC);

  muxULA_Imediato: entity work.muxGenerico2x1 generic map (larguraDados => DATA_WIDTH)
         port map(entradaA_MUX => saidaExtSinal_muxULAImed_0, entradaB_MUX =>  saidaULA_muxULAImed_1,
                 seletor_MUX => selMuxULAImed, saida_MUX => muxULAImed_Acumulador);
					  
  somaUm: entity work.somaConstante generic map (larguraDados => ADDR_WIDTH, constante => INCREMENTO)
         port map(entrada => PC_ROM, saida => SomaUm_MuxProxPC);

  ROM: entity work.memoriaROM  generic map (dataWidth => ROM_DATA_WIDTH, addrWidth => ADDR_WIDTH)
          port map (Endereco => PC_ROM, Dado => Instrucao);
  
  RAM: entity work.memoriaRAM   generic map (dataWidth => DATA_WIDTH, addrWidth => ADDR_WIDTH)
         port map (addr => enderecoRAM, we => habEscritaMEM, dado_in => Acumulador_ULA_A, dado_out => DadoLidoRAM_ULA_B, clk => clk);

  Acumulador:  entity work.registradorGenerico generic map (larguraDados => DATA_WIDTH)
			port map (DIN => muxULAImed_Acumulador, DOUT => Acumulador_ULA_A, ENABLE => HabEscritaAcumulador, CLK => clk, RST => '0');
  
  ULA:  entity work.ULA generic map (larguraDados => DATA_WIDTH)
			port map (entradaA => Acumulador_ULA_A, entradaB => DadoLidoRAM_ULA_B, 
			saida => saidaULA_muxULAImed_1, seletor => selOperacaoULA, flagZero => open);
  
  estendeSinal:  entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 12, larguraDadoSaida => DATA_WIDTH)
          port map (estendeSinal_IN => imediato_entradaExtSinal, estendeSinal_OUT => saidaExtSinal_muxULAImed_0);
  
  opCode <= opCodeLocal;
  saidaAcumulador <= Acumulador_ULA_A;
  programCounter <= PC_ROM;
end architecture;