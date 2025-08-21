import 'package:flutter/material.dart';

class Task26 extends StatefulWidget {
  @override
  State<Task26> createState() => _Task26State();
}

class _Task26State extends State<Task26> {
  var value = 1;

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
        title: Text("Task 26"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: GridView.builder(
          itemCount: pName.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.7,
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 5, 89, 125),
                  width: 2.0,
                ),
                // Define border for all sides
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: showListTile( pName[index], pImage[index], pPrice[index]),
            );
          },
        ),
      ),
    );
  }

  showListTile(var pname, var pImage, var pPrice){
    while(true){
      return ListTile(
        title: Text(
         pname,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        titleAlignment: ListTileTitleAlignment.center,
        subtitle: Column(
          children: [
            Image.network(pImage, height: 100),
            Text(
              "RS. ${pPrice}",
              style: TextStyle(
                color: Color.fromARGB(255, 5, 89, 125),
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                padding: WidgetStatePropertyAll(
                  EdgeInsets.only(left: 3, right: 3),
                ),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll(
                  Color.fromARGB(255, 5, 89, 125),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Subscribe @${pPrice}.0",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: 35.0, left: 0),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        minimumSize: WidgetStatePropertyAll(Size.zero),
                        padding: WidgetStatePropertyAll(
                          EdgeInsets.only(left: 10, right: 10),
                        ),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.all(
                              Radius.circular(3),
                            ),
                          ),
                        ),
                        side: WidgetStatePropertyAll(
                          BorderSide(
                            color: Color.fromARGB(255, 5, 89, 125),
                            width: 2,
                          ),
                        ),
                      ),
                      child: Text(
                        "-",
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                    Text("$value"),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        minimumSize: WidgetStatePropertyAll(Size.zero),
                        padding: WidgetStatePropertyAll(
                          EdgeInsets.only(left: 10, right: 10),
                        ),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.all(
                              Radius.circular(3),
                            ),
                          ),
                        ),
                        side: WidgetStatePropertyAll(
                          BorderSide(
                            color: Color.fromARGB(255, 5, 89, 125),
                            width: 2,
                          ),
                        ),
                      ),
                      child: Text(
                        "+",
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 2.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            minimumSize: WidgetStatePropertyAll(
                              Size(32, 32),
                            ),
                            padding: WidgetStatePropertyAll(
                              EdgeInsets.zero,
                            ),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.all(
                                  Radius.circular(3),
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Add",
                            style: TextStyle(
                              color: Color.fromARGB(255, 5, 89, 125),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
