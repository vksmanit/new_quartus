library ieee;
use ieee.std_logic_1164.all;

package headers is 

    type tState is (stIDLE, stSTART, stPROC_ROW1, stPROC_ROW2,
                    stTEMP1, stTEMP11, stTEMP21, stTEMP31,stTEMP41, stTEMP51,
                    stTEMP2, stTEMP12, stTEMP22, stTEMP32,stTEMP42, stTEMP52,
                    stTEMP3, stTEMP13, stTEMP23, stTEMP33,stTEMP43, stTEMP53,
                    stTEMP4, stTEMP14, stTEMP24, stTEMP34,stTEMP44, stTEMP54,
                    stTEMP5, stTEMP15, stTEMP25, stTEMP35,stTEMP45, stTEMP55,
                    stTEMP6, stTEMP16, stTEMP26, stTEMP36,stTEMP46, stTEMP56,
                    stTEMP7, stTEMP17, stTEMP27, stTEMP37,stTEMP47, stTEMP57,
                    stTEMP8, stTEMP18, stTEMP28, stTEMP38,stTEMP48, stTEMP58,
                    stTEMP9, stTEMP19, stTEMP29, stTEMP39,stTEMP49, stTEMP59,
                    stTEMP10,stTEMP20, stTEMP30, stTEMP40,stTEMP50, stTEMP60,
						stPROC_ROW3, stPROC_ROW4, stRESULT_OUT1, stRESULT_OUT2, stRESULT_OUT3, stRESULT_OUT4,stFINISH); -- stSTART_MULT_AND_ADD, st_WRITING_IN_RAM, stFINISH);
    --type dim1 is array (0 to 3) of std_logic_vector(31 downto 0); -- column
    --type matrix is array (0 to 3) of dim1; -- matrix
    subtype std_logic_vector_32 is std_logic_vector(31 downto 0);

end package headers;
