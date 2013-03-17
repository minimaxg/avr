/*
 * static.c
 *
 * Turn on an led connected to PORTA.0
 */

#include <avr/io.h>

int main(void)
{
  long a = 0;
  
  // Mark PORTA0 as output
  DDRA = 0x01;
  
  // Setup an infinite loop
  while (1)
  {
  	// Turn port A on (active-low configuration)
    PORTA = 0x00;
  }

  return 0;
}
