#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /mnt/centos_share/Vivado_Projects/hls_scratchpad/hls_cmd_line_testing/cmd_line_proj/hls_sin_proj/solution1/.autopilot/db/a.g.bc ${1+"$@"}