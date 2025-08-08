import 'package:flutter/material.dart';
import 'package:flutter_projects/assignment/task%201.dart';
import 'package:flutter_projects/assignment/task%2011.dart';
import 'package:flutter_projects/tasks_list/cafe_task/dashboard.dart';
import 'package:flutter_projects/tasks_list/cafe_task/splashscreen.dart';
import 'package:flutter_projects/tasks_list/switch_task/music_system.dart';
import 'assignment/task 10.dart';
import 'assignment/task 12.dart';
import 'assignment/task 2.dart';

void main() {
  runApp(
    MaterialApp(
      home: MusicSystem(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.teal),
      ),
    ),
  );
}
