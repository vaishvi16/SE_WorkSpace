void main() async {

  for(int i=1; i<=15; i++)
    {
       print(i);

       if(i==7)
         {
           print("Loading... Please wait");
           await Future.delayed(Duration(seconds: 3));
         }
    }

  print("Completed");

}