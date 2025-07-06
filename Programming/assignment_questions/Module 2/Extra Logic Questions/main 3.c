#include <stdio.h>
#include <stdlib.h>  
#include <time.h>   

void main() {
    int randomNumber, guessNumber, i;

    srand(time(0));
    randomNumber = rand() % 100;
    
    printf("Guess any number between 0 to 100. You will get maximum 7 chance!\nLet's start the game, All the best!");
   
   for(i=0; i<7; i++)
   {
       printf("\nEnter any number: ");
       scanf("%d", &guessNumber);
       
        if(guessNumber < randomNumber)
        {
           printf("The number you entered is too low! ");
        }
        else if(guessNumber > randomNumber)
        {
           printf("The number you entered is too high! ");
        }
        else
        {
            printf("You got the perfect number! ");
            break;

        }

   }
 
    printf("\n Random number is : %d\n", randomNumber);
}
