#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>


int main(void)
{
	printf("Running 001unsecureboot.\n");
	execve("/system/bootstrap/001unsecureboot", 0, 0 );
	printf("Oops, something went wrong. Unsecureboot was not run.\n");
	exit(1);
}