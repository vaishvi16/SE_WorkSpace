#include<stdio.h>
#include<conio.h>

void main()
{
    int i, arr[10];
    
    for(i=0; i<10; i++)
    {
        printf("Enter any number: ");
        scanf("%d", &arr[i]);
    }
    
    int max = arr[0], min = arr[0];
    
    printf("Numbers are : \n");
    for(i=0; i<10; i++)
    {
        printf("%d ", arr[i]);
        
        if(arr[i] > max)
        {
            max = arr[i];
        }
        if(arr[i] < min)
        {
            min = arr[i];
        }
        
        
    }
    
    printf("\nMax number is : %d\n", max);
    printf("Mini number is : %d\n", min);
    
    
    int temp;
    for(i = 0; i < 9; i++)
    {
        for(int j = i + 1; j < 10; j++)
        {
            if(arr[i] > arr[j])
            {
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }

    printf("Numbers in ascending order:\n");
    for(i = 0; i < 10; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
    getch();
}