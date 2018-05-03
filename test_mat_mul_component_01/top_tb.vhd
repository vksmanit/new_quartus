library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.headers.all;

entity top_tb is 
end entity top_tb;


architecture arch of top_tb is 

--- component instantiation of top
    component top is 
        port (
            clk, reset : in std_logic;
            address : in std_logic_vector(4 downto 0);
            read : in std_logic;
            write : in std_logic;
            readdata : out std_logic_vector_32;
            writedata : in std_logic_vector_32
        );
    end component top;

    -- signals 
    signal clk, reset, read, write : std_logic := '0';
    signal address : std_logic_vector (4 downto 0);
    signal readdata, writedata : std_logic_vector_32;

    procedure iowrite ( signal write            : out std_logic;
                        signal writedata        : out std_logic_vector_32;
                        signal address          : out std_logic_vector(4 downto 0);
                               address_value    : std_logic_vector(4 downto 0);
                               data             : std_logic_vector_32) is 
    begin
        wait for 80 ns;
        address <= address_value;
        writedata <= data;
        write <= '1';
        wait for 0 ns;
        report "iowrite : address [" & integer'image (to_integer (unsigned (address_value))) & "], "
            & "writedata [" & integer'image (to_integer (unsigned (data))) & "]";
        wait for 40 ns;
        write <= '0';
        wait for 0 ns;
    end procedure;

    
    procedure ioread  ( signal read            : out std_logic;
                        signal readdata        : in  std_logic_vector_32;
                        signal address         : out std_logic_vector (4 downto 0);
                               address_value   : in  std_logic_vector (4 downto 0);
                               readdata_value  : out std_logic_vector_32) is
    begin
        wait for 80 ns;
        address   <= address_value;
        read      <= '1';
        wait for 0 ns;
        wait for 41 ns;
        report "ioread : address [" & integer'image (to_integer (unsigned (address_value))) & "], "
                      & "readdata [" & integer'image (to_integer (unsigned (readdata))) & "]";
        readdata_value := readdata;
        read     <= '0';
        wait for 39 ns;
    end procedure;

begin 

    uut : top port map (clk => clk, reset => reset, address => address, read => read, write => write, readdata => readdata, writedata => writedata);

    clk <= not clk after 20 ns;
    reset <= '1' after 0 ns, '0' after 80 ns;
    P1: process 
        variable readdata_value : std_logic_vector_32;
    begin 
        -- let it reset 
        wait for 140 ns;

        -- 1. write matrix data of hex equivalent of floating points value
        iowrite (write, writedata, address, "00001", x"3f800000");
        iowrite (write, writedata, address, "00010", x"40000000");
        iowrite (write, writedata, address, "00011", x"40400000");
        iowrite (write, writedata, address, "00100", x"40800000");

        iowrite (write, writedata, address, "00101", x"41300000");
        iowrite (write, writedata, address, "00110", x"41400000");
        iowrite (write, writedata, address, "00111", x"41500000");
        iowrite (write, writedata, address, "01000", x"41600000");
        
        iowrite (write, writedata, address, "01001", x"41a80000");
        iowrite (write, writedata, address, "01010", x"41b00000");
        iowrite (write, writedata, address, "01011", x"41b80000");
        iowrite (write, writedata, address, "01100", x"41c00000");
        
        iowrite (write, writedata, address, "01101", x"41f80000");
        iowrite (write, writedata, address, "01110", x"42000000");
        iowrite (write, writedata, address, "01111", x"42040000");
        iowrite (write, writedata, address, "10000", x"42080000");
       
        iowrite (write, writedata, address, "10001", x"3f800000"); --1
        iowrite (write, writedata, address, "10010", x"40000000"); --2
        iowrite (write, writedata, address, "10011", x"40400000"); --3
        iowrite (write, writedata, address, "10100", x"40800000"); --4

       --unsigned int x1 = 0x3f800000;//0x1;
       --unsigned int x2 = 0x40000000;//0x2;
       --unsigned int x3 = 0x40400000;//0x3;
       --unsigned int x4 = 0x40800000;//0x4;
        
        

        -- 2. write 1 to control & status register to trigger the operation 
        iowrite (write, writedata, address, "00000", x"00000001");

        -- 3. wait till status become 0
        loop  
            ioread (read , readdata, address, "00000", readdata_value);
            exit when readdata_value = x"00000000";
        end loop;

        --4 read and display output values
        ioread (read, readdata, address, "10101", readdata_value);
        wait ;
    end process;
end architecture arch;
