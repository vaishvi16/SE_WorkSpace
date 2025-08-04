import 'package:flutter/material.dart';
import 'package:flutter_projects/assignment/task%201.dart';
import 'package:flutter_projects/fourth_task/form.dart';

import 'assignment/task 2.dart';

void main() {
  runApp(
    MaterialApp(
      home: Task2(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal),
      ),
    ),
  );
}
