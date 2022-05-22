#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/cs470/Downloads/hw3-kernels/kernel4/prj_kernel4/solution1/.autopilot/db/a.g.bc ${1+"$@"}
