library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SineWaveGenerator is
	port (
		clk, rst: in std_logic;
		speed: in std_logic_vector(7 downto 0);
		sin1: out std_logic_vector(7 downto 0);
		sin2: out std_logic_vector(7 downto 0);
		sin3: out std_logic_vector(7 downto 0)
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
			clk: in std_logic;
			wave: out std_logic_vector(7 downto 0)
		);
		
	end component portadora;
	
	component SineWave is 
		port (
			clk: in std_logic;
			div: in std_logic_vector(7 downto 0);
			wave: out std_logic_vector(7 downto 0)
		);
	end component SineWave;
	
	component comparador is
		port (
			sign1, sign2: in std_logic_vector(7 downto 0);
			pwm: out std_logic
		);
	end component comparador;
	
	
	signal a,b,c : std_logic_vector(7 downto 0);
	
	
	
	begin
	
	cnt1: contador 
		port map(clk, rst, a);
		
	
	

end threePWM;

