import 'dart:io';

void main() async
{

  try
  {
    File file = File("D://task36.txt");

    file.writeAsString("Pretty little baby");
    print("Success");

    var content = await file.readAsString();
    print("Reading from the file: $content");
  }
  catch(e)
  {
    print(e);
  }

}