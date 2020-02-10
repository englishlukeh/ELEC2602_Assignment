transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/instruction_fetcher.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/arithmetic/ALU_sub.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/arithmetic/ALU_mul.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/arithmetic/ALU_div.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/arithmetic/ALU_add.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/general/reg_16bit.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/general/tri_state_buffer_16bit.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/general/buffered_reg_16bit.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/register_file.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/general/onehot_4bit.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/ip/ram_main.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/memory_controller.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/control_unit.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/ALU.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/instruction_decoder.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/datapath.vhd}
vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/letni_processor.vhd}

vcom -93 -work work {C:/Users/Administrator/Desktop/letin-processor/letin/testbenches/testbench_processor.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  testbench_processor

add wave *
view structure
view signals
run 1000 ns
