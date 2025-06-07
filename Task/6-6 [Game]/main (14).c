#include<stdio.h>
#include<conio.h>
#include<stdlib.h>

void startGame(int score, int rating)
{
    char name[50];
    int ans;
    
     printf("Enter your name:");
        scanf("%s", &name);
        
        printf("You have entered the \"Quiz game in C Welcome to the game\" \"%s\"  \n The quiz game will be started now. Get ready to answer the questions !! \n ALL THE BEST !! \n", name);
        
        if(name != NULL)
        {
            printf("\nQuestion 1: \n In the following given characteristics, which one is not related to the federal government ? \n 1. Flexible Constitution                \t 2. Written Constitution                 \n 3. Independent Judiciary               \t 4. Supremacy of the Constitution \n");
            printf("Submit your answer: ");
            scanf("%d", &ans);
            
            if(ans == 1)
            {
                printf("Huurayyyy!! Your answer is correct");
                score += 5;
                rating +=1;
                printf("\nYour Score is: %d", score);
            }
            else
            {
                printf("Ooo aww!! Your answer is wrong");
            }
            
            printf("\nQuestion 2: \n In the following given characteristics, which one is not related to the federal government ? \n 1. Flexible Constitution                \t 2. Written Constitution                 \n 3. Independent Judiciary               \t 4. Supremacy of the Constitution \n");
            printf("Submit your answer: ");
            scanf("%d", &ans);
            
            if(ans == 1)
            {
                printf("Huurayyyy!! Your answer is correct");
                score += 5;
                rating +=1;
                printf("\nYour Score is: %d", score);
            }
            else
            {
                printf("Ooo aww!! Your answer is wrong");
            }
            
            printf("\nQuestion 3: \n In the following given characteristics, which one is not related to the federal government ? \n 1. Flexible Constitution                \t 2. Written Constitution                 \n 3. Independent Judiciary               \t 4. Supremacy of the Constitution \n");
            printf("Submit your answer: ");
            scanf("%d", &ans);
            
            if(ans == 2)
            {
                printf("Huurayyyy!! Your answer is correct");
                score += 5;
                rating +=1;
                printf("\nYour Score is: %d", score);
            }
            else
            {
                printf("Ooo aww!! Your answer is wrong");
            }
            
            printf("\nQuestion 4: \n In the following given characteristics, which one is not related to the federal government ? \n 1. Flexible Constitution                \t 2. Written Constitution                 \n 3. Independent Judiciary               \t 4. Supremacy of the Constitution \n");
            printf("Submit your answer: ");
            scanf("%d", &ans);
            
            if(ans == 2)
            {
                printf("Huurayyyy!! Your answer is correct");
                score += 5;
                rating +=1;
                printf("\nYour Score is: %d", score);
            }
            else
            {
                printf("Ooo aww!! Your answer is wrong");
            }
            
             printf("\nQuestion 5: \n In the following given characteristics, which one is not related to the federal government ? \n 1. Flexible Constitution                \t 2. Written Constitution                 \n 3. Independent Judiciary               \t 4. Supremacy of the Constitution \n");
            printf("Submit your answer: ");
            scanf("%d", &ans);
            
             if(ans == 1)
            {
                printf("Huurayyyy!! Your answer is correct");
                score += 5;
                rating +=1;
                printf("\nYour Score is: %d", score);
            }
            else
            {
                printf("Ooo aww!! Your answer is wrong");
            }
        }
        
        if(score > 20)
        {
            printf("\n Excellent!, Your rating is: %d", rating);
        }
        else if(score > 15)
        {
            printf("\n Very Good!, Your rating is: %d", rating);
        }
        else if(score > 10)
        {
            printf("\n Can do better!, Your rating is: %d", rating);
        }
        else
        {
            printf("\n Needs improvement!, Your rating is: %d", rating);
        }
    
    FILE *f1;
    f1 = fopen("Game","a");
        
    fprintf(f1, "\n\n Name : %s", name);
    fprintf(f1, "\n Score : %d", score);
    fprintf(f1, "\t Rating : %d", rating);

    fclose(f1);
    
}

void main()
{
    int choice;
    
    printf(" Please enter 1 to start the game \n Please enter 2 to the high scores \n Please enter 3 to seek help \n Please enter 0 to exit \n Enter your choice: ");
    scanf("%d",&choice);
    
    FILE *f1;
    f1 = fopen("Game","a");
        
    int score = 0, rating =0;
    
    if(choice == 1)
    {
        startGame(score, rating);
    }
    else if(choice == 2)
    {
        char data;
        char score[30];
        f1 = fopen("Game","r");
        
        if(f1 == NULL)
        {
            printf("You have to play this game atleast once to see the highest score");
        }
        else
        {
            while((data=getc(f1))!=EOF)
            {	
                putchar(data);
               // printf("%c",data);
            }  
        }
        fclose(f1);
    }
    else if(choice == 3)
    {
        int ans; 
        printf("Instructions that are supposed to be followed while playing this game: \n Quiz Game in C \n ...................................................... \n You are supposed to answer 5 questions in this game !! \n There will be 4 options given for each questions which are marked with a serial number starting from 1 to 4. \n For each correct answer, you will be awarded with 5 points !! \n As soon as you answer a question, you will be directed to the next question without any pause. \n If your answer is wrong, no marks will be deducted from your score !! \n !! Wish you all the best !! \n Do you still wish to continue playing ? \n ");
        printf("\n If yes, then press 1. Else, press 0 :");
        scanf("%d", &ans);
        
        if(ans == 1)
        {
            startGame(score, rating);
        }
        else
        {
            exit;
        }
   
    }
    else if(choice == 0)
    {
        exit;
    }
    else
    {
        printf("Please enter valid input");
    }
    
    getch();
}