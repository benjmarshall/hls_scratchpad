#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jun  9 08:03:07 2017

@author: Ben Marshall
"""

# Imports
import os
import sys
import shutil
import argparse
from glob import glob
import contextlib

# Parse command line arguments
parser = argparse.ArgumentParser(description="Helper tool for using Vivado HLS through the command line. If no arguments are specified then a default run is executed which includes C simulation, C synthesis, Cosimulation and export for both Vivado IP Catalog and System Generator. If any of the run options are specified then only those specified are performed.")
parser.add_argument("-clean", help="Remove all Vivado HLS generated files", action="store_true")
parser.add_argument("-keep", help="keep all previous solution and generate a new one", action="store_true")
parser.add_argument("-csim", help="perform C simulation stage", action="store_true")
parser.add_argument("-syn", help="perform C synthesis stage", action="store_true")
cosim_group = parser.add_mutually_exclusive_group()
cosim_group.add_argument("-cosim", help="perform cosimulation", action="store_true")
cosim_group.add_argument("-cosim_debug", help="perform cosimulation with debug logging", action="store_true")
export_ip_group = parser.add_mutually_exclusive_group()
export_ip_group.add_argument("-export_ip", help="perform export for Vivado IP Catalog", action="store_true")
export_ip_group.add_argument("-evaluate_ip", help="perform export for Vivado IP Catalog with build to place and route", action="store_true")
export_dsp_group = parser.add_mutually_exclusive_group()
export_dsp_group.add_argument("-export_dsp", help="perform export for System Generator", action="store_true")
export_dsp_group.add_argument("-evaluate_dsp", help="perform export for System Generator with build to place and route", action="store_true")
args = parser.parse_args()

# Load project specifics from local manifest file
from Manifest import *

# Set some default values if not specified in manifest file
try:
    src_dir_name
except NameError:
    src_dir_name = 'src'

try:
    tb_dir_name
except NameError:
    tb_dir_name = 'tb'

# Set the project name
try:
    project_name
except NameError:
    project_name = "proj_" + os.path.relpath(".","..")

# Check for clean argument
def proj_delete():
    try:
        shutil.rmtree(project_name)
    except OSError:
        return 1
    else:
        return 0
def tcl_delete():
        try:
            os.remove("run_hls.tcl")
        except OSError:
            return 1
        else:
            return 0
def log_delete():
        try:
            os.remove("vivado_hls.log")
        except OSError:
            return 1
        else:
            return 0
if args.clean:
    if len(sys.argv) > 2:
        print("Warning: The 'Clean' option is exclusive. All other arguments will be ignored.")
    if proj_delete() + tcl_delete() + log_delete() == 3:
        print("Warning: Nothing to remove!")
    else:
        print("Cleaned up generated files.")
    sys.exit()

# Write out TCL file
file = open("run_hls.tcl","w")
file.write("open_project " + project_name + "\n")
file.write("set_top " + top_level_function_name + "\n")
for src_file in src_files:
    file.write("add_files " + src_dir_name + "/" + src_file + "\n")
for tb_file in tb_files:
    file.write("add_files -tb " + tb_dir_name + "/" + tb_file + "\n")
if args.keep:
    print("******\n\n\n\n\n\n\n\n\n\n\n*******")
    paths = glob(project_name + "/solution*/")
    print(paths)
    solution_num = len(paths) + 1
    if solution_num == 1:
        file.write("open_solution -reset \"solution1\"" + "\n")
    else:
        file.write("open_solution -reset \"solution" + str(solution_num) + "\"" + "\n")
else:
    file.write("open_solution -reset \"solution1\"" + "\n")
file.write("set_part \{" + part_name + "\}" + "\n")
file.write("create_clock -period " + clock_period + " -name default" + "\n")

if not(args.csim or args.syn or args.cosim or args.cosim_debug or args.export_ip or args.export_dsp or args.evaluate_ip or args.evaluate_dsp):
    file.write("csim_design -clean" + "\n")
    file.write("csynth_design" + "\n")
    file.write("cosim_design -O -rtl vhdl" + "\n")
    file.write("export_design -format ip_catalog" + "\n")
    file.write("export_design -format sysgen" + "\n")
    file.write("exit" + "\n")
else:
    if args.csim:
        file.write("csim_design -clean" + "\n")
    if args.syn:
        file.write("csynth_design" + "\n")
    if args.cosim:
        file.write("cosim_design -O -rtl vhdl" + "\n")
    if args.cosim_debug:
        file.write("cosim_design -rtl vhdl -trace_level all" + "\n")
    if args.export_dsp:
        file.write("export_design -format ip_catalog")
    if args.export_ip:
        file.write("export_design -format sysgen")
    if args.evaluate_dsp:
        file.write("export_design -format ip_catalog -evaluate vhdl")
    if args.evaluate_ip:
        file.write("export_design -format sysgen -evaluat vhdl")
file.write("exit")
file.close()

# Call the Vivado HLS process
os.system("vivado_hls -f run_hls.tcl")
