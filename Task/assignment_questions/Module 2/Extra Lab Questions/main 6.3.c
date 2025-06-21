#include <stdio.h>

void main() {
    char sentence[200];
    int i = 0, wordCount = 0, length = 0;
    int maxLen = 0, maxStart = 0, currentStart = 0;

    printf("Enter a sentence: ");
    fgets(sentence, sizeof(sentence), stdin); 

    while (sentence[i] != '\0') 
    {
        if (sentence[i] != ' ' && sentence[i] != '\n') 
        {
            if (length == 0) 
            {
                currentStart = i; 
            }
            length++;
        } else 
        {
            if (length > 0) 
            {
                wordCount++;
                if (length > maxLen) 
                {
                    maxLen = length;
                    maxStart = currentStart;
                }
                length = 0; 
            }
        }
        i++;
    }

    if (length > 0) 
    {
        wordCount++;
        if (length > maxLen) 
        {
            maxLen = length;
            maxStart = currentStart;
        }
    }

    printf("Number of words: %d\n", wordCount);

    printf("Longest word: ");
    for (i = 0; i < maxLen; i++) 
    {
        printf("%c", sentence[maxStart + i]);
    }
    printf("\n");
}
