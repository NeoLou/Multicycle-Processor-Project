onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /multicycle_tb/reset
add wave -noupdate /multicycle_tb/clock
add wave -position 2 -radix unsigned sim:/multicycle_tb/DUT/PC/q
add wave -position 3 sim:/multicycle_tb/DUT/Control/instr
add wave -position 4 -radix unsigned sim:/multicycle_tb/DUT/Control/state
add wave -position 5 -radix hexadecimal sim:/multicycle_tb/DUT/RF_block/k0
add wave -position 6 -radix hexadecimal sim:/multicycle_tb/DUT/RF_block/k1
add wave -position 7 -radix hexadecimal sim:/multicycle_tb/DUT/RF_block/k2
add wave -position 8 -radix hexadecimal sim:/multicycle_tb/DUT/RF_block/k3
add wave -position 9 -radix unsigned sim:/multicycle_tb/DUT/Cycler/out
add wave -position 10 -radix hexadecimal sim:/multicycle_tb/DUT/T0/data
add wave -position 11 -radix hexadecimal sim:/multicycle_tb/DUT/T0/q
add wave -position 12 -radix hexadecimal sim:/multicycle_tb/DUT/T1/data
add wave -position 13 -radix hexadecimal sim:/multicycle_tb/DUT/T1/q
add wave -position 14 -radix hexadecimal sim:/multicycle_tb/DUT/T2/data
add wave -position 15 -radix hexadecimal sim:/multicycle_tb/DUT/T2/q
add wave -position 16 -radix hexadecimal sim:/multicycle_tb/DUT/T3/data
add wave -position 17 -radix hexadecimal sim:/multicycle_tb/DUT/T3/q
add wave -position 18 -radix hexadecimal sim:/multicycle_tb/DUT/VRF_block/vr0
add wave -position 19 -radix hexadecimal sim:/multicycle_tb/DUT/VRF_block/vr1
add wave -position 20 -radix hexadecimal sim:/multicycle_tb/DUT/VRF_block/vr2
add wave -position 21 -radix hexadecimal sim:/multicycle_tb/DUT/VRF_block/vr3
add wave -position 22 -radix hexadecimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data
add wave -position 23 -radix hexadecimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data[100]
add wave -position 24 -radix hexadecimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data[101]
add wave -position 25 -radix hexadecimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data[102]
add wave -position 26 -radix hexadecimal sim:/multicycle_tb/DUT/DataMem/b2v_inst/altsyncram_component/m_default/altsyncram_inst/mem_data[103]
add wave -noupdate -divider {Hex Display}
add wave -noupdate -radix hexadecimal /multicycle_tb/DUT/HEX_display/in0
add wave -noupdate -radix hexadecimal /multicycle_tb/DUT/HEX_display/in1
add wave -noupdate -radix hexadecimal /multicycle_tb/DUT/HEX_display/in2
add wave -noupdate -radix hexadecimal /multicycle_tb/DUT/HEX_display/in3
add wave -noupdate -divider {multicycle.v inputs}
add wave -noupdate /multicycle_tb/KEY
add wave -noupdate /multicycle_tb/SW
add wave -noupdate -divider {multicycle.v outputs}
add wave -noupdate /multicycle_tb/LEDG
add wave -noupdate /multicycle_tb/LEDR
add wave -noupdate /multicycle_tb/HEX0
add wave -noupdate /multicycle_tb/HEX1
add wave -noupdate /multicycle_tb/HEX2
add wave -noupdate /multicycle_tb/HEX3
add wave -noupdate /multicycle_tb/HEX4
add wave -noupdate /multicycle_tb/HEX5
add wave -noupdate /multicycle_tb/HEX6
add wave -noupdate /multicycle_tb/HEX7
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2500 ns} 0}
configure wave -namecolwidth 227
configure wave -valuecolwidth 57
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {2500 ns}
run 10000ns
