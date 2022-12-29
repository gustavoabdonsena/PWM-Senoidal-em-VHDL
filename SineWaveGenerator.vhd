library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SineWaveGenerator is
	port (
		clk, rst: in std_logic;
		div_clk: in std_logic_vector(7 downto 0);
		sin1: out std_logic
	);
end SineWavegenerator;

architecture threePWM of SineWaveGenerator is 
	component contador is
		port (
			clk, rst: in std_logic;
			q: out std_logic_vector(7 downto 0)
		);
	end component contador;
	
	component portadora is 
		port (
			ctt : in std_logic_vector(7 downto 0);
			wave : out std_logic_vector(7 downto 0)
		);
		
	end component portadora;
	
	component SineWave is 
		port (
			ctt : in std_logic_vector(7 downto 0);
			wave : out std_logic_vector(7 downto 0)
		);
	end component SineWave;
	
	component comparador is
		port (
			input_minus, input_plus : in std_logic_vector(7 downto 0);
			output_signal : out std_logic
		);
	end component comparador;
	
	component divisor_de_clock is
		port(
			i_clk         : in  std_logic;
			i_rst         : in  std_logic;
			i_clk_divider : in  std_logic_vector(7 downto 0);
			o_clk         : out std_logic);
	
	end component divisor_de_clock;
	
	
	signal a : std_logic;
	signal b,c,d,e : std_logic_vector(7 downto 0);
	
	
	begin
	div1: divisor_de_clock
		port map(
			i_clk => clk,
			i_rst => rst,
			i_clk_divider => div_clk,
			o_clk => a
		);
	
	cnt1: contador 
		port map(a, rst, b);
		
	SineWave1: SineWave
		port map(b, c);
		
	
	cnt2: contador
		port map(clk, rst, d);
		
	port1: portadora
		port map(d, e);
		
	comp1: comparador
		port map(e, c, sin1);
	

end threePWM;

