#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/shubham/HLS_Exercises/CheckCustomization/solution1/.autopilot/db/a.g.bc ${1+"$@"}
