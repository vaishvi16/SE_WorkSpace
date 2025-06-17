#include<stdio.h>
#include<string.h>

void main()
{
    FILE *f1;
    char c;
    
     //f1 = fopen("File", "w");
    f1 = fopen("File", "r");
    
    while((c=getc(f1))!=EOF)
    {	
        printf("%c",c);
    }
    
    
    fclose(f1);
   
    
    getch();
}
