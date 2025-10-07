import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model_data.dart';

class ViewData extends StatefulWidget {
  const ViewData({super.key});

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  var data;

  fetchData() async {
    var url = Uri.parse(
      "https://www.simplifiedcoding.net/demos/view-flipper/heroes.php",
    );
    var resp = await http.get(url);
    data = jsonDecode(resp.body);
    return data['heroes'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View Data"), backgroundColor: Colors.teal,),
      body: FutureBuilder(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
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
