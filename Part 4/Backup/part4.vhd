library ieee;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
Library work;

entity part4 is
	PORT ( 
		-- Address : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		-- Clock : IN STD_LOGIC := '1';
		-- DataIn : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		-- Wren : IN STD_LOGIC ;
		DataOut : INOUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		s0, s1, s2, s3, s4, s5, s6, s7, s8, k0 : in std_logic;
		HEX00, HEX01, HEX02, HEX03, HEX04, HEX05, HEX06, HEX10, HEX11, HEX12, HEX13, HEX14, HEX15, HEX16, HEX20, HEX21, HEX22, HEX23, HEX24, HEX25, HEX26, HEX30, HEX31, HEX32, HEX33, HEX34, HEX35, HEX36, HEX40, HEX41, HEX42, HEX43, HEX44, HEX45, HEX46, HEX50, HEX51, HEX52, HEX53, HEX54, HEX55, HEX56  : out std_logic;
		mostrar : IN STD_LOGIC_VECTOR (4 DOWNTO 0)
	);
end entity;

architecture teste of part4 is	

component aula4
	port(
		Zerar : IN STD_LOGIC;
		B0 : IN STD_LOGIC;
     	B1 : IN STD_LOGIC;
     	B2 : IN STD_LOGIC;
     	B3 : IN STD_LOGIC;
     	D0 : OUT STD_LOGIC;
     	D1 : OUT STD_LOGIC;
     	D2 : OUT STD_LOGIC;
     	D3 : OUT STD_LOGIC;
     	D4 : OUT STD_LOGIC;
     	D5 : OUT STD_LOGIC;
     	D6 : OUT STD_LOGIC
	);
end component;

component ram32x4
			port (
				rdaddress		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
				wraddress		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
				clock		: IN STD_LOGIC  := '1';
				data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
				wren		: IN STD_LOGIC ;
				q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
			);
end component;

begin
	memoria : ram32x4
			-- port map(address => Address, clock => Clock, data => DataIn, wren => Wren, q => DataOut);
		port map(wraddress(0) => s4, wraddress(1) => s5, wraddress(2) => s6, wraddress(3) => s7, wraddress(4) => s8, clock => k0, 
		data(0) => s0, data(1) => s1, data(2) => s2, data(3) => s3, q => DataOut, rdaddress => mostrar, wren => '1');
	display0 : aula4
		port map(Zerar => '0', B0 => DataOut(0), B1 => DataOut(1), B2 => DataOut(2), B3 => DataOut(3), D0 => HEX00, D1 => HEX01, D2 => HEX02, D3 => HEX03, D4 => HEX04, D5 => HEX05, D6 => HEX06);
		
	display1 : aula4
		port map(Zerar => '0', B0 => s0, B1 => s1, B2 => s2, B3 => s3, D0 => HEX10, D1 => HEX11, D2 => HEX12, D3 => HEX13, D4 => HEX14, D5 => HEX15, D6 => HEX16);
	
	display2 : aula4
		port map(Zerar => '0', B0 => mostrar(0), B1 => mostrar(1), B2 => mostrar(2), B3 => mostrar(3), D0 => HEX20, D1 => HEX21, D2 => HEX22, D3 => HEX23, D4 => HEX24, D5 => HEX25, D6 => HEX26);
	
	display3 : aula4
		port map(Zerar => '0', B0 => mostrar(4), B1 => '0', B2 => '0', B3 => '0', D0 => HEX30, D1 => HEX31, D2 => HEX32, D3 => HEX33, D4 => HEX34, D5 => HEX35, D6 => HEX36);
	
	display4 : aula4
		port map(Zerar => '0', B0 => s4, B1 => s5, B2 => s6, B3 => s7, D0 => HEX40, D1 => HEX41, D2 => HEX42, D3 => HEX43, D4 => HEX44, D5 => HEX45, D6 => HEX46);
		
	display5 : aula4
		port map(Zerar => '0', B0 => s8, B1 => '0', B2 => '0', B3 => '0', D0 => HEX50, D1 => HEX51, D2 => HEX52, D3 => HEX53, D4 => HEX54, D5 => HEX55, D6 => HEX56);

end architecture;