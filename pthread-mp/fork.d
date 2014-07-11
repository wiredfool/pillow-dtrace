#pragma D option destructive
	
syscall::*fork*:return
/progenyof($target) && pid!=$target/
{
   printf("forked %d\n" , pid);
   system("/bin/bash ./once.sh %d &", pid);
/*   system("/usr/sbin/dtrace -s /Users/erics/Pillow/pthread_pid.d %d &", pid);*/
}