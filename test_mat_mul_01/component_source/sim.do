
ls -rlt
# total 104
# -rw-rw-r-- 1 vipinsoni vipinsoni   244 May  2 15:21 Makefile
# -rw-rw-r-- 1 vipinsoni vipinsoni  4594 May  2 15:24 top_tb.vhd
# -rw-rw-r-- 1 vipinsoni vipinsoni  1286 May  2 15:59 headers.vhd
# -rw-rw-r-- 1 vipinsoni vipinsoni 10803 May  2 16:42 modelsim.ini
# -rw-rw-r-- 1 vipinsoni vipinsoni 49152 May  2 16:57 vsim.wlf
# -rw-rw-r-- 1 vipinsoni vipinsoni  4389 May  2 16:57 sim.do
# -rw-rw-r-- 1 vipinsoni vipinsoni 12793 May  2 16:58 top.vhd
# drwxrwxr-x 2 vipinsoni vipinsoni  4096 May  2 16:58 work
# -rw-rw-r-- 1 vipinsoni vipinsoni     8 May  2 16:58 transcript
do sim.do
# vsim work.top_tb(arch) 
# Start time: 16:58:35 on May 02,2018
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.numeric_std(body)
# Loading work.headers
# Loading work.top_tb(arch)
# Loading work.top(arch)
# ** Warning: (vsim-3473) Component instance "mult1 : fp_mult" is not bound.
#    Time: 0 ps  Iteration: 0  Instance: /top_tb/uut File: top.vhd
# ** Warning: (vsim-3473) Component instance "mult2 : fp_mult" is not bound.
#    Time: 0 ps  Iteration: 0  Instance: /top_tb/uut File: top.vhd
# ** Warning: (vsim-3473) Component instance "mult3 : fp_mult" is not bound.
#    Time: 0 ps  Iteration: 0  Instance: /top_tb/uut File: top.vhd
# ** Warning: (vsim-3473) Component instance "mult4 : fp_mult" is not bound.
#    Time: 0 ps  Iteration: 0  Instance: /top_tb/uut File: top.vhd
# ** Warning: (vsim-3473) Component instance "add1 : fp_add" is not bound.
#    Time: 0 ps  Iteration: 0  Instance: /top_tb/uut File: top.vhd
# ** Warning: (vsim-3473) Component instance "add2 : fp_add" is not bound.
#    Time: 0 ps  Iteration: 0  Instance: /top_tb/uut File: top.vhd
# ** Warning: (vsim-3473) Component instance "add3 : fp_add" is not bound.
#    Time: 0 ps  Iteration: 0  Instance: /top_tb/uut File: top.vhd
# WARNING: No extended dataflow license exists
# ** Note: iowrite : address [1], writedata [1065353216]
#    Time: 220 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [2], writedata [1073741824]
#    Time: 340 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [3], writedata [1077936128]
#    Time: 460 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [4], writedata [1082130432]
#    Time: 580 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [5], writedata [1093664768]
#    Time: 700 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [6], writedata [1094713344]
#    Time: 820 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [7], writedata [1095761920]
#    Time: 940 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [8], writedata [1096810496]
#    Time: 1060 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [9], writedata [1101529088]
#    Time: 1180 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [10], writedata [1102053376]
#    Time: 1300 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [11], writedata [1102577664]
#    Time: 1420 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [16], writedata [1103101952]
#    Time: 1540 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [17], writedata [1106771968]
#    Time: 1660 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [18], writedata [1107296256]
#    Time: 1780 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [19], writedata [1107558400]
#    Time: 1900 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [20], writedata [1107820544]
#    Time: 2020 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [0], writedata [1]
#    Time: 2140 ns  Iteration: 1  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 2301 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 2461 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 2621 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 2781 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 2941 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 3101 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 3261 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 3421 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [0]
#    Time: 3581 ns  Iteration: 0  Instance: /top_tb
# ** Warning: NUMERIC_STD.TO_INTEGER: metavalue detected, returning 0
#    Time: 3741 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [21], readdata [0]
#    Time: 3741 ns  Iteration: 0  Instance: /top_tb
add wave -position insertpoint  \
sim:/top_tb/uut/mult1_reg1 \
sim:/top_tb/uut/mult1_reg2 \
sim:/top_tb/uut/mult2_reg1 \
sim:/top_tb/uut/mult2_reg2 \
sim:/top_tb/uut/mult3_reg1 \
sim:/top_tb/uut/mult3_reg2 \
sim:/top_tb/uut/mult4_reg1 \
sim:/top_tb/uut/mult4_reg2 \
sim:/top_tb/uut/mult1_out_add1_in \
sim:/top_tb/uut/mult2_out_add1_in \
sim:/top_tb/uut/mult3_out_add2_in \
sim:/top_tb/uut/mult4_out_add2_in \
sim:/top_tb/uut/add1_out_add3_in \
sim:/top_tb/uut/add2_out_add3_in \
sim:/top_tb/uut/add3_out
restart
# ** Warning: (vsim-3473) Component instance "mult1 : fp_mult" is not bound.
#    Time: 0 ps  Iteration: 0  Instance: /top_tb/uut File: top.vhd
# ** Warning: (vsim-3473) Component instance "mult2 : fp_mult" is not bound.
#    Time: 0 ps  Iteration: 0  Instance: /top_tb/uut File: top.vhd
# ** Warning: (vsim-3473) Component instance "mult3 : fp_mult" is not bound.
#    Time: 0 ps  Iteration: 0  Instance: /top_tb/uut File: top.vhd
# ** Warning: (vsim-3473) Component instance "mult4 : fp_mult" is not bound.
#    Time: 0 ps  Iteration: 0  Instance: /top_tb/uut File: top.vhd
# ** Warning: (vsim-3473) Component instance "add1 : fp_add" is not bound.
#    Time: 0 ps  Iteration: 0  Instance: /top_tb/uut File: top.vhd
# ** Warning: (vsim-3473) Component instance "add2 : fp_add" is not bound.
#    Time: 0 ps  Iteration: 0  Instance: /top_tb/uut File: top.vhd
# ** Warning: (vsim-3473) Component instance "add3 : fp_add" is not bound.
#    Time: 0 ps  Iteration: 0  Instance: /top_tb/uut File: top.vhd
run 6u
# Invalid time value: 6u
run 6 u
# Invalid time value: 6 u
run 6us
# ** Note: iowrite : address [1], writedata [1065353216]
#    Time: 220 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [2], writedata [1073741824]
#    Time: 340 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [3], writedata [1077936128]
#    Time: 460 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [4], writedata [1082130432]
#    Time: 580 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [5], writedata [1093664768]
#    Time: 700 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [6], writedata [1094713344]
#    Time: 820 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [7], writedata [1095761920]
#    Time: 940 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [8], writedata [1096810496]
#    Time: 1060 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [9], writedata [1101529088]
#    Time: 1180 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [10], writedata [1102053376]
#    Time: 1300 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [11], writedata [1102577664]
#    Time: 1420 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [16], writedata [1103101952]
#    Time: 1540 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [17], writedata [1106771968]
#    Time: 1660 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [18], writedata [1107296256]
#    Time: 1780 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [19], writedata [1107558400]
#    Time: 1900 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [20], writedata [1107820544]
#    Time: 2020 ns  Iteration: 1  Instance: /top_tb
# ** Note: iowrite : address [0], writedata [1]
#    Time: 2140 ns  Iteration: 1  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 2301 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 2461 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 2621 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 2781 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 2941 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 3101 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 3261 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [3]
#    Time: 3421 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [0], readdata [0]
#    Time: 3581 ns  Iteration: 0  Instance: /top_tb
# ** Warning: NUMERIC_STD.TO_INTEGER: metavalue detected, returning 0
#    Time: 3741 ns  Iteration: 0  Instance: /top_tb
# ** Note: ioread : address [21], readdata [0]
#    Time: 3741 ns  Iteration: 0  Instance: /top_tb
# End time: 17:08:13 on May 02,2018, Elapsed time: 0:09:38
# Errors: 2, Warnings: 17
