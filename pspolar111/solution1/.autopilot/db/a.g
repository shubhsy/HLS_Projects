#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/shubham/HLS_Exercises/pspolar111/solution1/.autopilot/db/a.g.bc ${1+"$@"}
