pthread
=======

To run and process:
```
sudo dtrace -s pthread.d -c 'python ./test.py' > threads
grep -A2 -B2 ImagingIncremental threads
```