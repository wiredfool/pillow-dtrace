Multithreaded dtrace scripts
===========

Run from within the Pillow directory

```
sudo dtrace -s fork.d -c 'python ./test-installed.py' > threads
ls -l threads*
grep -A2 -B2 ImagingIncremental threads.23922 > incremental
```
Where the thread traces are in the various thread.pid files. 

Bugs
----

* There's a delay between the launch of the python process, and the
  execution of the shell script that provides dedup protection of the
  dtrace scripts. Without the dedup 3 copies of each dtrace are run.

* I can't figure out how to only select on items that are within
  `_imaging.so`, so it's grep after the fact.

Todo
---- 

* See if we can get traces of where the threads are being suspended
  and awakened.
