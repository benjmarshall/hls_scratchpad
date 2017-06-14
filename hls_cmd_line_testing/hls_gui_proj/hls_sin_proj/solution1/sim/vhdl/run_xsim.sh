
/opt/Xilinx/Vivado/2017.1/bin/xelab xil_defaultlib.apatb_sin_taylor_series_top -prj sin_taylor_series.prj -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 --initfile "/opt/Xilinx/Vivado/2017.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s sin_taylor_series 
/opt/Xilinx/Vivado/2017.1/bin/xsim --noieeewarnings sin_taylor_series -tclbatch sin_taylor_series.tcl

