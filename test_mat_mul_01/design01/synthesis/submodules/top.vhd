library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.headers.all;

entity top is 
    port (
        clk, reset : in std_logic;
        address : in std_logic_vector (4 downto 0);
        read : in std_logic;
        write : in std_logic;
        readdata : out std_logic_vector_32;
        writedata : in std_logic_vector_32
    );
end entity top ;

architecture arch of top is 
    --- signal variable for matrix 
    signal a11 : std_logic_vector_32;
    signal a12 : std_logic_vector_32;
    signal a13 : std_logic_vector_32;
    signal a14 : std_logic_vector_32;
    signal a21 : std_logic_vector_32;
    signal a22 : std_logic_vector_32;
    signal a23 : std_logic_vector_32;
    signal a24 : std_logic_vector_32;
    signal a31 : std_logic_vector_32;
    signal a32 : std_logic_vector_32;
    signal a33 : std_logic_vector_32;
    signal a34 : std_logic_vector_32;
    signal a41 : std_logic_vector_32;
    signal a42 : std_logic_vector_32;
    signal a43 : std_logic_vector_32;
    signal a44 : std_logic_vector_32;

    signal x1 : std_logic_vector_32;
    signal x2 : std_logic_vector_32;
    signal x3 : std_logic_vector_32;
    signal x4 : std_logic_vector_32;

    signal b1 : std_logic_vector_32;
    signal b2 : std_logic_vector_32;
    signal b3 : std_logic_vector_32;
    signal b4 : std_logic_vector_32;

    signal control_and_status_reg : std_logic_vector_32;
    signal state : tState;

--- component instantiation fp_add and fp_mult

    component fp_add is 
	PORT
	(
		aclr		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		dataa		: IN std_logic_vector_32; --(31 DOWNTO 0);
		datab		: IN std_logic_vector_32; -- (31 DOWNTO 0);
		result		: OUT std_logic_vector_32-- (31 DOWNTO 0)
	);
    end component;

    component fp_mult is 
	PORT
	(
		aclr		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		dataa		: IN std_logic_vector_32; --(31 DOWNTO 0);
		datab		: IN std_logic_vector_32; -- (31 DOWNTO 0);
		result		: OUT std_logic_vector_32-- (31 DOWNTO 0)
	);
    end component ;

    --- signal representing interconnection b/w multipliers and adders
    signal mult1_reg1 : std_logic_vector_32;
    signal mult1_reg2 : std_logic_vector_32;
    signal mult2_reg1 : std_logic_vector_32;
    signal mult2_reg2 : std_logic_vector_32;
    signal mult3_reg1 : std_logic_vector_32;
    signal mult3_reg2 : std_logic_vector_32;
    signal mult4_reg1 : std_logic_vector_32;
    signal mult4_reg2 : std_logic_vector_32;

    signal mult1_out_add1_in : std_logic_vector_32;
    signal mult2_out_add1_in : std_logic_vector_32;
    signal mult3_out_add2_in : std_logic_vector_32;
    signal mult4_out_add2_in : std_logic_vector_32;

    signal add1_out_add3_in : std_logic_vector_32;
    signal add2_out_add3_in : std_logic_vector_32;

    signal add3_out : std_logic_vector_32;

begin 
    -- multiplier and adder instantiation 
    mult1 : fp_mult port map (aclr => '0', dataa => mult1_reg1, datab => mult1_reg2, clock => clk, result => mult1_out_add1_in);
    mult2 : fp_mult port map (aclr => '0', dataa => mult2_reg1, datab => mult2_reg2, clock => clk, result => mult2_out_add1_in);
    mult3 : fp_mult port map (aclr => '0', dataa => mult3_reg1, datab => mult3_reg2, clock => clk, result => mult3_out_add2_in);
    mult4 : fp_mult port map (aclr => '0', dataa => mult4_reg1, datab => mult4_reg2, clock => clk, result => mult4_out_add2_in);
    
    add1 : fp_add port map (aclr => '0', dataa => mult1_out_add1_in, datab => mult2_out_add1_in, clock => clk, result => add1_out_add3_in);
    add2 : fp_add port map (aclr => '0', dataa => mult3_out_add2_in, datab => mult4_out_add2_in, clock => clk, result => add2_out_add3_in);
    add3 : fp_add port map (aclr => '0', dataa => add1_out_add3_in, datab => add2_out_add3_in, clock => clk,   result => add3_out);

    

    process (clk) 
        variable out_data : std_logic_vector_32;
    begin 
        if (rising_edge(clk)) then 
		  if (read = '1') then 
            case address is 
                when "00000" => out_data := control_and_status_reg;
                when "00001" => out_data := a11;
                when "00010" => out_data := a12;
                when "00011" => out_data := a13;
                when "00100" => out_data := a14;
                when "00101" => out_data := a21;
                when "00110" => out_data := a22;
                when "00111" => out_data := a23;
                when "01000" => out_data := a24;
                when "01001" => out_data := a31;
                when "01010" => out_data := a32;
                when "01011" => out_data := a33;
                when "01100" => out_data := a34;
                when "01101" => out_data := a41;
                when "01110" => out_data := a42;
                when "01111" => out_data := a43;
                when "10000" => out_data := a44;
                when "10001" => out_data := x1;
                when "10010" => out_data := x2;
                when "10011" => out_data := x3;
                when "10100" => out_data := x4;
                when "10101" => out_data := b1; 
                when "10110" => out_data := b2; 
                when "10111" => out_data := b3; 
                when "11000" => out_data := b4; 
                when others => null;
            end case;
            readdata <= out_data;
        elsif (write = '1') then
            case address is 
                when "00000" => 
                    if ( writedata = x"00000001") then 
                        state <= stSTART;
                    end if;
                    control_and_status_reg <= writedata;
                when "00001" => a11 <= writedata;
                when "00010" => a12 <= writedata;
                when "00011" => a13 <= writedata;
                when "00100" => a14 <= writedata;
                when "00101" => a21 <= writedata;
                when "00110" => a22 <= writedata;
                when "00111" => a23 <= writedata;
                when "01000" => a24 <= writedata;
                when "01001" => a31 <= writedata;
                when "01010" => a32 <= writedata;
                when "01011" => a33 <= writedata;
                when "01100" => a34 <= writedata;
                when "01101" => a41 <= writedata;
                when "01110" => a42 <= writedata;
                when "01111" => a43 <= writedata;
                when "10000" => a44 <= writedata;
                when "10001" => x1 <= writedata;
                when "10010" => x2 <= writedata;
                when "10011" => x3 <= writedata;
                when "10100" => x4 <= writedata;
                when others => null;
            end case;
        else 
            case state is 
                    when stSTART => 
                        control_and_status_reg <= x"00000003";
                        state <= stPROC_ROW1;
                    when stPROC_ROW1 => 
                        mult1_reg1 <= a11;
                        mult2_reg1 <= a12;
                        mult3_reg1 <= a13;
                        mult4_reg1 <= a14;
                        mult1_reg2 <= x1;
                        mult2_reg2 <= x2;
                        mult3_reg2 <= x3;
                        mult4_reg2 <= x4;
								b1 <= add3_out;
                        state <= stFINISH; -- stPROC_ROW2;
             --      when stPROC_ROW2 => 
             --          mult1_reg1 <= a21;
             --          mult2_reg1 <= a22;
             --          mult3_reg1 <= a23;
             --          mult4_reg1 <= a24;
             --          mult1_reg2 <= x1;
             --          mult2_reg2 <= x2;
             --          mult3_reg2 <= x3;
             --          mult4_reg2 <= x4;
             --          state <= stPROC_ROW3;
             --      when stPROC_ROW3 => 
             --          mult1_reg1 <= a31;
             --          mult2_reg1 <= a32;
             --          mult3_reg1 <= a33;
             --          mult4_reg1 <= a34;
             --          mult1_reg2 <= x1;
             --          mult2_reg2 <= x2;
             --          mult3_reg2 <= x3;
             --          mult4_reg2 <= x4;
             --          state <= stPROC_ROW4;
             --      when stPROC_ROW4 => 
             --          mult1_reg1 <= a41;
             --          mult2_reg1 <= a42;
             --          mult3_reg1 <= a43;
             --          mult4_reg1 <= a44;
             --          mult1_reg2 <= x1;
             --          mult2_reg2 <= x2;
             --          mult3_reg2 <= x3;
             --          mult4_reg2 <= x4;
			 --  			   state<= stTEMP1;
             --      when stTEMP1 =>
             --          state <= stTEMP2;
             --      when stTEMP2 =>
             --          state <= stTEMP3;
             --      when stTEMP3 =>
             --          state <= stTEMP4;
             --      when stTEMP4 =>
             --          state <= stTEMP5;
			 --  		  when stTEMP5 => 
			 --  				state <= stTEMP6;
             --      when stTEMP6 =>
	
			 --  				
             --          state <= stRESULT_OUT1;
             --      when stRESULT_OUT1 => 
             --          b1 <= add3_out;
             --          state <= stRESULT_OUT2;
             --      when stRESULT_OUT2 => 
             --          b2 <= add3_out;
             --          state <= stRESULT_OUT3;
             --      when stRESULT_OUT3 => 
             --          b3 <= add3_out;
             --          state <= stRESULT_OUT4;
             --      when stRESULT_OUT4 => 
             --          b4 <= add3_out;
             --          state <= stFINISH;
                    when stFINISH => 
								--b1 <= add3_out;
                        control_and_status_reg <= x"00000000";
                        state <= stIDLE;
                    when stIDLE => 
                        state <= stIDLE;
								when others => null;
                end case;
            end if;
        end if;
    end process;
end architecture arch;





    
                        

