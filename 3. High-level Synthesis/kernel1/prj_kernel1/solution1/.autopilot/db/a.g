#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/cs470/Downloads/hw3-kernels/kernel1/prj_kernel1/solution1/.autopilot/db/a.g.bc ${1+"$@"}
