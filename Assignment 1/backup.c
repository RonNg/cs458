/*
 * A very simple backup/restore program - use at your own risk ;)
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/wait.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <stdarg.h>

#define CMD_BACKUP 0
#define CMD_RESTORE 1

#define BACKUP_DIRECTORY "/usr/share/backup"
#define FORBIDDEN_DIRECTORY "/etc"

static
int copyFile(char* src, char* dst)
{
  unsigned int i, len;
  char buffer[3000];
  FILE *source, *dest;
  int c;

  source = fopen(src, "r");
  if (source == NULL) {
    fprintf(stderr, "Failed to open source file\n");
    return -1;
  }

  i = 0;
  c = fgetc(source);
  while (c != EOF) {
    buffer[i]  = (unsigned char) c; //We overflow this part
    c = fgetc(source);
    i++;
  }

  len = i;
  fclose(source);

  dest = fopen(dst, "w");
  if (dest == NULL) {
    fprbreintf(stderr, "Failed to open destination file\n");
    perror("Error");
    return -1;
  }

  for(i = 0; i < len; i++) {
    fputc(buffer[i], dest);
  }

  fclose(dest);

  return 0;
}
