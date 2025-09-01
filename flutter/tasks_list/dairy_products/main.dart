import 'package:dairy_products/homescreen.dart';
import 'package:dairy_products/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Splashscreen(),
    debugShowCheckedModeBanner: false,
    themeMode: ThemeMode.system,
    theme: ThemeData(
      primaryColor: const Color.fromARGB(255, 5,89,125),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: const Color.fromARGB(204, 200, 100, 150), // 80% opaque secondary color
      ),
     // inputDecorationTheme: InputDecorationTheme(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 5,89,125))))

    ),
  ));
}

