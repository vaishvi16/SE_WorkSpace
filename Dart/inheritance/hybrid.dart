
import 'dart:io';

class A
{
  getValueA()
  {

  }
}
class B extends A
{
  getValueB()
  {

  }
}
class C
{
  getValueC()
  {

  }
}
class D implements B,C
{
  var a,b,c;
  @override
  getValueA()
  {
    print("Enter value of A");
    a = int.parse(stdin.readLineSync().toString());
  }

  @override
  getValueB()
  {
    print("Enter value of B");
    b = int.parse(stdin.readLineSync().toString());
  }

  @override
  getValueC()
  {
    print("Enter value of C");
    c = int.parse(stdin.readLineSync().toString());
  }

  multiplication()
  {
     var result = a * b * c;
     print("Multiplication is $result");
  }


}

void main()
{
   var d = D();

   d.getValueA();
   d.getValueB();
   d.getValueC();
   d.multiplication();

}