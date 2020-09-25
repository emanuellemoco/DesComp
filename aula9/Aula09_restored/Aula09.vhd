library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Aula09 is
  generic   (
    DATA_WIDTH  : natural :=  8;
    ADDR_WIDTH  : natural :=  8;
	 ROM_ADDR_WIDTH : natural := 10
  );

  port   (
    -- Input ports
    --dataIN  :  in  std_logic_vector(DATA_WIDTH-1 downto 0);
    --enable  : in  std_logic;
    CLOCK_50     : in  std_logic;
    --<name>  : in  <type> := <default_value>;

    -- Inout ports
    --<name>  : inout <type>;

    -- Output ports
    dataOUT :  out  std_logic_vector(DATA_WIDTH-1 downto 0)
    --<name>  : out <type> := <default_value>
  );
end entity;


architecture arch_name of Aula09 is
  signal selMUXProxPC : std_logic;
  signal PC_EnderecoROM, somadorOut, muxOut : std_logic_vector(ROM_ADDR_WIDTH-1 downto 0);
  signal dado: std_logic_vector(ROM_ADDR_WIDTH-1 downto 0);
  
  -- constant FUNCT_WIDTH : natural := 6;


begin

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
	PC : entity work.registradorGenerico   generic map (larguraDados => ROM_ADDR_WIDTH)
          port map (DIN => muxOut, DOUT => PC_EnderecoROM, ENABLE => '1', CLK => CLOCK_50, RST => '0');
			 
	muxProxPC :  entity work.muxGenerico2x1  generic map (larguraDados => ROM_ADDR_WIDTH)
        port map( entradaA_MUX => dado,
                 entradaB_MUX =>  somadorOut,
                 seletor_MUX => selMUXProxPC,
                 saida_MUX => muxOut);
	somadorProxPC :  entity work.somaConstante  generic map (larguraDados => ROM_ADDR_WIDTH, constante => 1)
        port map( entrada => PC_EnderecoROM, saida => somadorOut);
					  
	memoriaInstrucoes : entity work.memoriaROM   generic map (dataWidth => ROM_ADDR_WIDTH, addrWidth => ROM_ADDR_WIDTH)
          port map (Endereco => PC_EnderecoROM, Dado => dado);
	
end architecture;