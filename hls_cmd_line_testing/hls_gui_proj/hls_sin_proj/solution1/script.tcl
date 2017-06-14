############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_sin_proj
set_top sin_taylor_series
add_files ../source_files/src/dut.cpp
add_files ../source_files/src/dut.h
add_files -tb ../source_files/tb/testbench.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./hls_sin_proj/solution1/directives.tcl"
csim_design -clean -compiler gcc
csynth_design
cosim_design -O -rtl vhdl
export_design -format ip_catalog
