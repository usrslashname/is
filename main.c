int main() { 
  if (argc < 3 || argc > 4) {
    /* If the argc somehow doesn't equal 3 */
    printf("Usage:\n");
    printf("is [APPLICATION] [PROPERTY]")
    return 1;
  }

  if (argc = 3) {
    /* Set environment variables */
    setenv("APPLICATION_NAME", argv[1], overwrite);
    setenv("PROPERTY", argv[2], overwrite);
    /* Execute shell script */
    execvp("sh", "sh", "$PROPERTY.sh");
  }
 return 0;
}
