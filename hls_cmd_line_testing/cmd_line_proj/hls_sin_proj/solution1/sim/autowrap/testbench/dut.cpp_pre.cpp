# 1 "/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/source_files/src/dut.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/source_files/src/dut.cpp"
double fact(int x) {

#pragma HLS inline off
 double result_int = 1.0;
 fact_loop: for (int i=1; i<=x; i++) {
#pragma HLS PIPELINE
  result_int=result_int*i;
 }
 return result_int;
}

double power (double x, int y) {

#pragma HLS INLINE OFF
 double result_int = 1.0;
 power_loop: for (int i=1; i<=y; i++) {
#pragma HLS PIPELINE
  result_int=result_int*x;
 }
 return result_int;
}

double sin_taylor_series (double x){

#pragma HLS DATAFLOW

 int n = 20;
 double sum_positive = 0.0;
 double sum_negative= 0.0;

 sum_loop: for (int i=1; i<=n; i+=4) {
  sum_positive = sum_positive + (power (x,i) / fact (i));
  sum_negative = sum_negative + (power (x,i+2) / fact (i+2));
 }

 return (sum_positive - sum_negative);
}
