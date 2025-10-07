import 'package:flutter/material.dart';

class MyModel extends StatelessWidget {

  List list;
  MyModel({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: list.length,
        itemBuilder:(context,index)
        {
          return ListTile
            (
            leading: Image.network(list[index]["imageurl"]),
            title: Text(list[index]["name"]),
            subtitle: Text(list[index]["bio"]),
          );
        });
  }
}
