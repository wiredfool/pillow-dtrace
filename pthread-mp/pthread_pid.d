#!/usr/sbin/dtrace 

pid$1:libsystem_pthread.dylib:_pthread_cond_wait:entry 
{
        self->cond=arg0;
	self->mutex=arg1;
	ustack(3);
	printf("%d pthread_cond_wait(%p,%p) enter\n", timestamp, self->cond, self->mutex);
}
pid$1:libsystem_pthread.dylib:_pthread_cond_wait:return 
{
	ustack(3);
	printf("%d pthread_cond_wait(%p,%p) return\n", timestamp, self->cond, self->mutex);
}
pid$1:libsystem_pthread.dylib:_pthread_cond_signal:entry 
{
	ustack(3);						      
	printf("%d pthread_cond_signal(%p)\n", timestamp, arg0);
}


