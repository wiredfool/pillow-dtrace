pillow-dtrace
=============

Debugging scripts for Pillow

There's a race condition issue in the Jpeg2k support for Pillow on
OSX, and I'm trying to use LLDB and dtrace to figure exactly what's
happening when it deadlocks. 

* `./pthread/` dtrace script to trace the pthread_cond calls of interest.
* `./pthread-mp/` a set of scripts to follow forks and capture all the children. 
