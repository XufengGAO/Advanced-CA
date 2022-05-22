#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/cs470/Downloads/hw3-kernels/kernel2/prj_kernel2/solution1/.autopilot/db/a.g.bc ${1+"$@"}
