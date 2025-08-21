import 'package:flutter/material.dart';

class Task28 extends StatefulWidget {
  const Task28({super.key});

  @override
  State<Task28> createState() => _Task28State();
}

class _Task28State extends State<Task28> {
  List pName = [
    "Cheese Block",
    "Kesar Shrikhand",
    "Mango Shake",
    "Super Gold Milk",
    "Amul Buttermilk",
    "Maahi Cow Ghee",
  ];

  List pImage = [
    "https://m.media-amazon.com/images/I/71a5gO3y44L.jpg",
    "https://www.shutterstock.com/image-photo/kesar-shrikhand-indian-sweet-dish-260nw-365295710.jpg",
    "https://m.media-amazon.com/images/I/51P5e4kph1L._UF1000,1000_QL80_.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNcLWonms-q6iCwh90TwvFUdre0Fay33Xf7Q&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZg5HsepLRx8oi-voKuvx-hTH1ka57-XCTJA&s",
    "https://www.bbassets.com/media/uploads/p/l/40272204_1-maahi-cow-ghee-rich-aroma-improves-digestion.jpg",
  ];

  List pPrice = ["140", "135", "120", "40", "50", "70"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 28"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pName.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 200,
            child: ListTile(
              title: Image.network(pImage[index], width: 250, height: 200),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pName[index],
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Rs - ${pPrice[index]}",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
