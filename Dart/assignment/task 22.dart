import 'dart:io';

void main() async
{
  try
  {
    File file = File("D://task.txt");

    file.writeAsString("Hello, I'm Vaishvi");

    var path = file.absolute;
    print("path of this file is $path");

    var content = await file.readAsString();
    print(content);

  }
  catch (e)
  {
    print("Error: File not found or could not be read.");
  }
}
