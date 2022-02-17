# RTL_to_GDSII_Adder
Tools Used:\
RTL Design and Simulation - Xilinx Vivado,\
Synthesis Netlist - Yosys,\
Place and Route - Cadence Innovus.\
Library used - GSCL45nm.\
A 64 bit Carry Select Adder with blocks of 4 bits of Carry Lookahead adder was coded in Verilog.


Yosys commands used: (for yosys all the modules were kept in csa64bit.v; works even if separate - read_verilog all .v files)\
  read_verilog csa64bit.v \
  synth -top csa64bit \
  dfflibmap -liberty /home/mbk/yosys/gscl45nm.lib \
  abc -liberty /home/mbk/yosys/gscl45nm.lib \
  opt \
  clean \
  write_verilog csa64bit_syn.v 
