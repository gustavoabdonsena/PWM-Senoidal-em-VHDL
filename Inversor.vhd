library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity inversor is
	port(
		input: in std_logic;
		inverse_output : out std_logic 
	);
end inversor;

architecture inv of inversor is

	begin
	inverse_output <= '1' when (input = '0') else '1';

end inv;