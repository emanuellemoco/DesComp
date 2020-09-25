library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Aula03 is

	generic
	(
		DATA_WIDTH : natural := 8;
		PT_CONTROL_WIDTH : natural := 14
	);

	port 
	(
		CLOCK_50: in std_Logic;
		FPGA_RESET_N : in std_Logic;
		LEDR 		: out std_logic_vector (9 downto 0);
		PTS_CTRL : inout std_logic_vector (13 downto 0)


	);

end entity;

architecture rtl of Aula03 is

	signal habA : std_logic;
	signal habB : std_logic;
	signal rstA : std_logic;
	signal rstB : std_logic;
	signal clk : std_logic;
	
	signal entradaRegA : std_logic_vector ((DATA_WIDTH-1) downto 0);
	signal entradaA_ULA : std_logic_vector ((DATA_WIDTH-1) downto 0);
	signal entradaB_ULA : std_logic_vector ((DATA_WIDTH-1) downto 0);

		
	signal saidaULA : std_logic_vector ((DATA_WIDTH-1) downto 0);
	
	--signal PTS_CTRL : std_logic_vector ((PT_CONTROL_WIDTH-1) downto 0);
	--signal ROM_Endereco : std_logic_vector ((ROM_ADDR_WIDTH-1) downto 0);
	
begin
	-- Sel=0 Saida=A; Sel=1 Saida=B
	muxIN_A  : entity work.muxGenerico2
	port map(entradaA_MUX => PTS_CTRL(7 downto 0), entradaB_MUX => saidaULA, seletor_MUX => PTS_CTRL(13), saida_MUX => entradaRegA);
	
	regA  : entity work.registradorGenerico
	port map(DIN => entradaRegA, DOUT => entradaA_ULA, ENABLE => habA, CLK => clk, RST => rstA);

	-- add_sub=0 subtracao; add_sub=1 soma;
	ULA  : entity work.unsigned_adder_subtractor
	port map(
		a => unsigned(entradaA_ULA), b => unsigned(entradaB_ULA), add_sub => PTS_CTRL(8), std_logic_vector(result) => saidaULA
	);
	
	regB  : entity work.registradorGenerico
	port map( DIN => PTS_CTRL(7 downto 0), DOUT => entradaB_ULA, ENABLE => habB, CLK => clk, RST => rstB);

	habA <= not PTS_CTRL(12);
	habB <= not PTS_CTRL(10);
	detectorRSTA: work.edgeDetector(bordaDescida) port map (clk => CLOCK_50, entrada => (not PTS_CTRL(11)), saida => rstA);
	detectorRSTB: work.edgeDetector(bordaDescida) port map (clk => CLOCK_50, entrada => (not PTS_CTRL(9)), saida => rstB);
	detectorCLK: work.edgeDetector(bordaDescida) port map (clk => CLOCK_50, entrada => (not FPGA_RESET_N), saida => clk);
	
	LEDR(7 downto 0) <= saidaULA;
	LEDR(8) <= PTS_CTRL(13);  -- Apagado=Entrada_A; Aceso=Entrada_B;
	LEDR(9) <= PTS_CTRL(8);  -- Apagado=Subtracao; Aceso=Soma; 
	

	
	
	maqEstados: work.MEF	port map (CLK => clk, Pontos_de_Controle => PTS_CTRL);
	
end rtl;
