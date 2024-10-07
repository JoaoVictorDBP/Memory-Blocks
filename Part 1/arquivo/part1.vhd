library ieee;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
Library work;

entity part1 is
	PORT ( Address : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		Clock : IN STD_LOGIC := '1';
		DataIn : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		Wren : IN STD_LOGIC ;
		DataOut : OUT STD_LOGIC_VECTOR (3 DOWNTO 0) );
end part1;

architecture teste of part1 is	
component ram32x4
			port (
				address		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
				clock		: IN STD_LOGIC  := '1';
				data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
				wren		: IN STD_LOGIC ;
				q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
			);
end component;

begin
	memoria : ram32x4
			port map(address => Address, clock => Clock, data => DataIn, wren => Wren, q => DataOut);
end architecture;