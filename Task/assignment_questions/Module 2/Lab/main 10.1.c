#include<stdio.h>
#include<conio.h>

void interchange(int x1,int y1)
{
    int temp;
    temp=x1; 
    x1=y1; 
    y1=temp; 
    
     printf("\n x1=%d y1=%d",x1,y1); 
}

void main()
{
   int x=50, y=70; 

    printf("\n Before x=%d y=%d",x,y);
    interchange(x,y);
    printf("\n After x=%d y=%d",x,y);
    
    
    
    getch();
}