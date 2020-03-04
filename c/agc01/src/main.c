/*
 *  PROYECTO RPG EN C
 *  
 *  by @deividventas
 */
#include <cpctelera.h>
#include <stdio.h>

void main(void) {
   int i;
   // Empezamos el juego
   printf("RPG GAME\r\n");
   printf("\r\n");
   printf("PRESS ENTER TO START \r\n");
   printf("\r\n");
   printf("Juego hecho por David Ventas \r\n");
   printf("\r\n");

   
   while (i < 10) {
      printf(i);
      printf("\r\n");
      i++;
      //cpct_scanKeyboard();
   }
   
   printf("GAME START\r\n");

   

   // Loop forever
   while (1);
}
