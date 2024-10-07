library ieee;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
Library work;

entity part3 is
	PORT ( 
		-- Address : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		-- Clock : IN STD_LOGIC := '1';
		-- DataIn : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		-- Wren : IN STD_LOGIC ;
		DataOut : INOUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, k0 : in std_logic;
		HEX00, HEX01, HEX02, HEX03, HEX04, HEX05, HEX06, HEX20, HEX21, HEX22, HEX23, HEX24, HEX25, HEX26, HEX40, HEX41, HEX42, HEX43, HEX44, HEX45, HEX46, HEX50, HEX51, HEX52, HEX53, HEX54, HEX55, HEX56  : out std_logic
	);
end entity;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ram_32x4 is
	port ( clock : in std_logic;
		wren : in std_logic;
		address : in std_logic_vector(4 downto 0);
		data : in std_logic_vector(3 downto 0);
		q : out std_logic_vector(3 downto 0));
end ram_32x4;

architecture syn of ram_32x4 is
	type ram_type is array (31 downto 0) of std_logic_vector (3 downto 0);
	signal RAM: ram_type;
begin
	process (clock)
	begin 
		if (rising_edge(clock)) then
			if (wren = '1') then
				RAM(conv_integer(address)) <= data;
			end if;
				q <= RAM(conv_integer(address)) ; -- read-first operation
		end if;
	end process;
end syn;

architecture teste of part3 is	

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

--component ram32x4
--			port (
--				address		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
--				clock		: IN STD_LOGIC  := '1';
--				data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
--				wren		: IN STD_LOGIC ;
--				q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
--			);
--end component;

begin
	memoria : entity work.ram_32x4(syn)
			-- port map(address => Address, clock => Clock, data => DataIn, wren => Wren, q => DataOut);
			port map(address(0) => s4, address(1) => s5, address(2) => s6, address(3) => s7, address(4) => s8, clock => k0, 
			data(0) => s0, data(1) => s1, data(2) => s2, data(3) => s3, wren => s9, q => DataOut);
	display0 : aula4
		port map(Zerar => '0', B0 => DataOut(0), B1 => DataOut(1), B2 => DataOut(2), B3 => DataOut(3), D0 => HEX00, D1 => HEX01, D2 => HEX02, D3 => HEX03, D4 => HEX04, D5 => HEX05, D6 => HEX06);
		
	display2 : aula4
		port map(Zerar => '0', B0 => s0, B1 => s1, B2 => s2, B3 => s3, D0 => HEX20, D1 => HEX21, D2 => HEX22, D3 => HEX23, D4 => HEX24, D5 => HEX25, D6 => HEX26);
	
	display4 : aula4
		port map(Zerar => '0', B0 => s4, B1 => s5, B2 => s6, B3 => s7, D0 => HEX40, D1 => HEX41, D2 => HEX42, D3 => HEX43, D4 => HEX44, D5 => HEX45, D6 => HEX46);
		
	display5 : aula4
		port map(Zerar => '0', B0 => s8, B1 => '0', B2 => '0', B3 => '0', D0 => HEX50, D1 => HEX51, D2 => HEX52, D3 => HEX53, D4 => HEX54, D5 => HEX55, D6 => HEX56);

end architecture;