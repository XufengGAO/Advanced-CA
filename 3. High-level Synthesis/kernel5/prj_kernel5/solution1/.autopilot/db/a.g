#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/cs470/Downloads/hw3-kernels/kernel5/prj_kernel5/solution1/.autopilot/db/a.g.bc ${1+"$@"}
