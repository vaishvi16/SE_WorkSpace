import 'package:flutter/material.dart';

class Details extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Vaishvi Gandhi",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Text("Powered by Flutter", style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }

}