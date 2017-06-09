#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jun  9 08:03:07 2017

@author: Ben Marshall
"""

import os

project_name = os.path.relpath(".","..")
top_level_function_name = "simple_adder"
src_dir_name = "src"
tb_dir_name = "tb"
src_files = ["dut.h","dut.cpp"]
tb_files = ["testbench.cpp"]
part_name = "xc7z020clg484-1"
clock_period = "10"

file = open("run_hls_python_output.tcl","w")
file.write("open_project proj_" + project_name + "\n")
file.write("set_top " + top_level_function_name + "\n")
for src_file in src_files:
    file.write("add_files " + src_dir_name + "/" + src_file + "\n")
for tb_file in tb_files:
    file.write("add_files -tb " + tb_dir_name + "/" + tb_file + "\n")
file.write("open_solution -reset \"solution1\"" + "\n")
file.write("set_part \{" + part_name + "\}" + "\n")
file.write("create_clock -period " + clock_period + " -name default" + "\n")
file.write("csim_design -clean" + "\n")
file.write("csynth_design" + "\n")
file.write("cosim_design -O -rtl vhdl" + "\n")
file.write("exit" + "\n")
file.close()

os.system("vivado_hls -f run_hls_python_output.tcl")
