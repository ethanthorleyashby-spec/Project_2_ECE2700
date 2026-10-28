--Ethan Ashby and Brayden Shampton Project 2 
--D Flip Flop 8 bits

--library declarations
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Entity Declarations
entity dFF_8 is
    port(
        clk, rst, ce : in std_logic;
        d : in std_logic_vector (7 downto 0);
        q : out std_logic_vector(7 downto 0)
    );
end dFF_8;

--Architecture Declarations
architecture behavioral of dFF_8 is

begin
    process (clk, rst)
    begin
        if rst = '1' then
            q <= (others=> '0');
        elsif rising_edge(clk) then
            if ce ='1' then
                q<=d;
            end if;
        end if;
    end process;

end behavioral;