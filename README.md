pillow-dtrace
=============

Debugging scripts for Pillow

There's a race condition issue in the Jpeg2k support for Pillow on
OSX, and I'm trying to use LLDB and dtrace to figure exactly what's
happening when it deadlocks. 

* `./pthread/` dtrace script to trace the pthread_cond calls of interest.
* `./pthread-mp/` a set of scripts to follow forks and capture all the children. 


References
-----

- http://docs.oracle.com/cd/E18752_01/html/819-5488/gcgkk.html#gcglh -- Oracle dttrace User guide
- http://www.bignerdranch.com/blog/hooked-on-dtrace-part-2/ -- Bignerdranch, on debugging malloc with dtrace
- http://stackoverflow.com/questions/1462547/how-to-view-call-stack-with-dtrace -- Function args in dtrace
- http://ewaldertl.blogspot.fr/2010/09/debugging-memory-leaks-with-dtrace-and.html -- Memory leaks with dtrace
- http://www.joyent.com/blog/bruning-questions-debugging - Bruning, dtrace
- http://www.joyent.com/blog/dtrace-caller-builtin - Bruning, caller builtin. how to trace when called by one particular function. Only works in the kernel. 
- https://blogs.oracle.com/chrisg/entry/follow_fork_for_dtrace_pid - Following a fork
- https://www.mail-archive.com/dtrace-discuss@opensolaris.org/msg03902.html Following a fork
- http://linux.die.net/man/3/pthread_cond_signal - pthread_cond_signal man page