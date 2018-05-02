
############################################################
quartus_map --read_settings_files=on --write_settings_files=off platform01 -c platform01
quartus_fit --read_settings_files=on --write_settings_files=off platform01 -c platform01
quartus_asm --read_settings_files=on --write_settings_files=off platform01 -c platform01
quartus_sta platform01 -c platform01
quartus_eda --read_settings_files=on --write_settings_files=off platform01 -c platform01

quartus_pgm -l 
cd ./output_files/
quartus_pgm -m JTAG -o "p;platform01.sof"
cd ./../
make download-elf
