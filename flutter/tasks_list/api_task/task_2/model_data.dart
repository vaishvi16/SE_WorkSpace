import 'package:flutter/material.dart';

class ModelData extends StatelessWidget {
  List list;

  ModelData({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(list[index]["title"]),
          subtitle: Text(
            list[index]["body"],
          ),
        );
      },
    );
  }
}
