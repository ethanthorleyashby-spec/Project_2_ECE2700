--Ethan Ashby and Brayden Shampton Project 2 
--D Flip Flop 8 bits TEST BENCH

--library declarations
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Entity Declarations
entity tb_dFF_8 is
end entity;

--Architecture Declarations
architecture behavioral of tb_dFF_8 is
    component dFF_8 is
        port(
            clk, rst, ce : in std_logic;
            d : in std_logic_vector (7 downto 0);
            q : out std_logic_vector(7 downto 0)
        );
    end component;
    signal clk, rst, ce : std_logic;
    signal d : std_logic_vector (7 downto 0);
    signal q : std_logic_vector (7 downto 0);
    
begin
clk_proc : process
begin
    clk <= '0'; wait for 5 ns;
    clk <= '1'; wait for 5 ns;
end process;
    --Unit Test!!
    UUT : dFF_8 port map(clk=>clk,rst=>rst,ce=>ce,d=>d,q=>q);
    process
    begin
        --Test CE
        ce<='1';
        rst<='0';
        d<=(x"A5");
        wait for 20 ns;
        assert (q=x"A5") report "CE failed" Severity error;

        --Test Reset
        ce<='1';
        rst<='1';
        d<=(x"A5");
        wait for 20 ns;
        assert (q=x"00") report "RST failed" Severity error;

        --Test Neither
        ce<='0';
        rst<='0';
        d<=(x"A5");
        wait for 20 ns;
        assert (q=x"00") report "Neither failed" Severity error;
    wait;
    end process;
end behavioral;