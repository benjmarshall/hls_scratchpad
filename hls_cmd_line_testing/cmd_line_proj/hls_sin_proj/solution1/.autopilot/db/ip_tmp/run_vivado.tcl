create_project prj -part xc7z020clg484-1 -force
set_property target_language vhdl [current_project]
set vivado_ver [version -short]
source "/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/cmd_line_proj/hls_sin_proj/solution1/syn/vhdl/sin_taylor_series_ap_dadd_3_full_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips sin_taylor_series_ap_dadd_3_full_dsp_64]]
}
source "/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/cmd_line_proj/hls_sin_proj/solution1/syn/vhdl/sin_taylor_series_ap_ddiv_29_no_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips sin_taylor_series_ap_ddiv_29_no_dsp_64]]
}
source "/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/cmd_line_proj/hls_sin_proj/solution1/syn/vhdl/sin_taylor_series_ap_dsub_3_full_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips sin_taylor_series_ap_dsub_3_full_dsp_64]]
}
source "/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/cmd_line_proj/hls_sin_proj/solution1/syn/vhdl/sin_taylor_series_ap_sitodp_4_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips sin_taylor_series_ap_sitodp_4_no_dsp_32]]
}
source "/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/cmd_line_proj/hls_sin_proj/solution1/syn/vhdl/sin_taylor_series_ap_dmul_4_max_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips sin_taylor_series_ap_dmul_4_max_dsp_64]]
}
