/*
 * dummy exploit program
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>


#define TARGET "/usr/local/bin/backup" // or backupV2

  
int main(void)
{
  char *args[4];
  char *env[1];

  // one way to invoke backup
  system("/usr/local/bin/backup backup file.txt");

  // another way
  args[0] = TARGET; args[1] = "backup"; 
  args[2] = "file.txt"; args[3] = NULL;

  env[0] = NULL;

  if (execve(TARGET, args, env) < 0)
    fprintf(stderr, "execve failed.\n");

  exit(0);
}
