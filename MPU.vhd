--Ethan Ashby and Brayden Shampton Project 2 
--Top level MPU

--library Declaration
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;



--entity declarations
entity MPU is
    port( 
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        rd : in STD_LOGIC;
        wr : in STD_LOGIC;
        fetch : in STD_LOGIC;
        ld_pc : in STD_LOGIC;
        ld_mar : in STD_LOGIC;
        inc_pc : in STD_LOGIC;
        op : in STD_LOGIC_VECTOR (2 downto 0);
        addr : out STD_LOGIC_VECTOR (7 downto 0);
        data : inout STD_LOGIC_VECTOR (7 downto 0));
    end mpu;


--Architecture Declarations
architecture behavioral of MPU is
constant add: std_logic_vector(2 downto 0) := "000";
constant addc: std_logic_vector(2 downto 0) := "001";
constant exor: std_logic_vector(2 downto 0) := "010";
constant load: std_logic_vector(2 downto 0) := "011";
constant hold: std_logic_vector(2 downto 0) := "100";

begin

    process (CLK, rst)

    begin 
        if op = add then

        elsif op = addc then

        elsif op = exor then

        elsif op = load then

        elsif op = hold then

        end if;
    end process;

end behavioral;