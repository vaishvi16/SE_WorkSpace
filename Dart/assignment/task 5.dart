void main()
{
   int i;

   for(i=1; i<=100; i++)
     {
       if(i % 3 == 0 && i % 5 == 0)
         {
           print("FIZZ BUZZ");
         }
       else if(i % 5 == 0)
         {
           print("BUZZ");
         }
       else if(i % 3 == 0 )
         {
           print("FIZZ");
         }
       else
         {
           print(i);
         }
     }
}