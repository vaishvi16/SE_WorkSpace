
import 'dart:io';


numAccept()
{
  var num, numlist = 0, order;
  List<int> numbers = [];

  print("Enter numbers you want to add: ");
  num = int.parse(stdin.readLineSync().toString());

  for(int i= 1; i<=num; i++)
  {
    print("Enter number :");
    numlist = int.parse(stdin.readLineSync().toString());
    numbers.add(numlist);

  }

  print("In which order you want to sort? \n1.Ascending \t2.Descending");
  order = int.parse(stdin.readLineSync().toString());

  switch(order)
  {
    case 1:
      ascending(numbers, num);

    case 2:
      descending(numbers, num);
  }

}

void ascending(List<int> values, int num) {
  for (int i = 0; i < num; i++) {
    for (int j = 0; j < num; j++) {
      if (values[i] < values[j]) {
        int temp = values[i];
        values[i] = values[j];
        values[j] = temp;
      }
    }
  }

  print("Ascending Order:");
  for (int i = 0; i < num; i++) {
    print(values[i]);
  }
}

void descending(List<int> values, int num) {
  for (int i = 0; i < num; i++) {
    for (int j = 0; j < num; j++) {
      if (values[i] > values[j]) {
        int temp = values[i];
        values[i] = values[j];
        values[j] = temp;
      }
    }
  }

  print("Descending Order:");
  for (int i = 0; i < num; i++) {
    print(values[i]);
  }
}




void main()
{
  numAccept();
}