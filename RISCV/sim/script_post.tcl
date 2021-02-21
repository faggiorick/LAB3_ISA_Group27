vcom -93 -work ./work ../src/clk_gen.vhd
vcom -93 -work ./work ../src/a.a.u-IRAM.vhd
vcom -93 -work ./work ../src/a.a.v-DATARAM.vhd
#vlog -work ./work ../netlist/riscv.v
vlog -work ./work ../innovus/riscv.v
vlog -work ./work ../src/tb_riscv.v
#vsim -L /software/dk/nangate45/verilog/msim6.2g -sdftyp /tb_riscv/U1=../netlist/riscv.sdf work.tb_riscv
vsim -L /software/dk/nangate45/verilog/msim6.2g -sdftyp /tb_riscv/U1=../innovus/riscv.sdf work.tb_riscv

add wave sim:/tb_riscv/DR/data_mem

#vcd file ../vcd/riscv.vcd
#vcd file ../vcd/design.vcd
#vcd add /tb_riscv/U1/*
run 700 ns
