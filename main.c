#include <stdio.h>
#include <stdlib.h>
#include <uninstd.h>

int main(int argc, char *argv[]) { 
  if (argc < 3 || argc > 4) {
    /* If the argc somehow doesn't equal 3 */
    printf("Usage:\n");
    printf("is [APPLICATION] [PROPERTY]");
    return 1;
  }

  if (argc == 3) {
    /* Set environment variables */
    setenv("APPLICATION_NAME", argv[1], 1);
    setenv("PROPERTY", argv[2], 1);
    /* Execute shell script */
    execlp("sh", "sh", "-c", "exec $PROPERTY.sh", (char *)NULL);
  }
 return 0;
}
