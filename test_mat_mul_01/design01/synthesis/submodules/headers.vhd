library ieee;
use ieee.std_logic_1164.all;

package headers is 

    type tState is (stIDLE, stSTART, stPROC_ROW1, stPROC_ROW2,stTEMP1, stTEMP2, stTEMP3, stTEMP4, stTEMP5, stTEMP6,
						stPROC_ROW3, stPROC_ROW4, stRESULT_OUT1, stRESULT_OUT2, stRESULT_OUT3, stRESULT_OUT4,stFINISH); -- stSTART_MULT_AND_ADD, st_WRITING_IN_RAM, stFINISH);
    --type dim1 is array (0 to 3) of std_logic_vector(31 downto 0); -- column
    --type matrix is array (0 to 3) of dim1; -- matrix
    subtype std_logic_vector_32 is std_logic_vector(31 downto 0);

end package headers;
