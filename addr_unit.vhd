--Ethan Ashby and Brayden Shampton Project 2 
--Address Unit for MPU

--library declarations
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Entity Declarations
entity addr_unit is
    port(
        clk, ld_pc, inc_pc : in std_logic;
        data : in std_logic_vector(7 downto 0);
        pc_out : out std_logic_vector(7 downto 0)
    );
end addr_unit;

--Architecture Declarations
architecture behavioral of addr_unit is
begin
    
end behavioral;