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
          title: Image.network(list[index]["imageurl"], height: 80,),
          subtitle: Text(list[index]["name"],textAlign: TextAlign.center,style: TextStyle(fontSize: 21,fontWeight: FontWeight.w400),),
        );
    },);
  }
}
