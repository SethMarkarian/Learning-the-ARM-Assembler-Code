#include <stdio.h>
#include <stdlib.h>

#define LINELENGTH 100

  int sum, num;
  char buffer[LINELENGTH];

int addmod() {
  printf( "Enter a number: " );

  fgets( buffer, LINELENGTH, stdin );
  sum = atoi( buffer );
  printf( "number entered: %d\n", sum );
  printf( "Enter another number: " );
  while( fgets( buffer, LINELENGTH, stdin ) != NULL ) {
    num = atoi( buffer );
    sum += num;
    printf( "Current sum is: %d\n", sum );
    printf( "Enter another number or ^D to exit program\n" );
  }
}
