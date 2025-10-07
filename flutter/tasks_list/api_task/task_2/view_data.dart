import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_projects/tasks_list/api_task/task_2/model_data.dart';
import 'package:http/http.dart' as http;

class ViewData extends StatefulWidget {
  const ViewData({super.key});

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {


  fetchData() async {
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var resp = await http.get(uri, headers: {
      'Content-Type': 'application/json',
      'User-Agent': 'FlutterApp/1.0',
    });
    print("Response printws:: ${jsonDecode(resp.body)}");
    print("resp.statusCode ${jsonDecode(resp.statusCode.toString())}");
    return jsonDecode(resp.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View Data")),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasError) {
            print("Error occurred");
          } else if (snapshot.hasData) {
            print("Has Data");
            return ModelData(list: snapshot.data);
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
