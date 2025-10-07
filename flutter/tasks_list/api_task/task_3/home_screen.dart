import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_projects/tasks_list/api_task/task_3/my_model.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  fetchData() async {
    var url = Uri.parse("https://simplifiedcoding.net/demos/marvel/");
    var resp = await http.get(url);
    return jsonDecode(resp.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View Data")),
      body: FutureBuilder(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasError) {
            print("Network not found");
          }

          if (snapshot.hasData) {
            return MyModel(list: snapshot.data);
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
