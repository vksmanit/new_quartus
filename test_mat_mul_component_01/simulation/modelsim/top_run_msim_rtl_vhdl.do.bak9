transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/vipinsoni/Desktop/MTP2/new_quartus/test_mat_mul_component_01/headers.vhd}
vcom -93 -work work {/home/vipinsoni/Desktop/MTP2/new_quartus/test_mat_mul_component_01/fp_add.vhd}
vcom -93 -work work {/home/vipinsoni/Desktop/MTP2/new_quartus/test_mat_mul_component_01/fp_mult.vhd}
vcom -93 -work work {/home/vipinsoni/Desktop/MTP2/new_quartus/test_mat_mul_component_01/top.vhd}

vcom -93 -work work {/home/vipinsoni/Desktop/MTP2/new_quartus/test_mat_mul_component_01/top_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  top_tb

add wave *
view structure
view signals
run 6 us
