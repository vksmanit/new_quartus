all:
	mkdir -p build
	ghdl -a --workdir=build headers.vhd top.vhd top_tb.vhd
	ghdl -e --workdir=build top_tb
	ghdl -r --workdir=build top_tb --vcd=waveform.vcd --stop-time=10000ns

clean:
	rm -rf testbench ./build

view:
	gtkwave waveform.vcd

