import 'dart:async';

void main() async {
  print("Loading... Please wait");

  await Future.delayed(Duration(seconds: 3));

  print("Operation completed");
  print("Successfully!");

}
