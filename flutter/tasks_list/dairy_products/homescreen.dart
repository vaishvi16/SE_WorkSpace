import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}
enum City { Rajkot, Jamnagar }

class _HomescreenState extends State<Homescreen> {
  City _city = City.Rajkot;

  @override
  void initState() {
    // TODO: implement initState
   // super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showPopUp();
    });

  }

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
        iconTheme: IconThemeData(size: 28, color: Colors.white),
        backgroundColor: Color.fromARGB(255, 5, 89, 125),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.filter_alt_outlined,
              color: Colors.white,
              size: 28,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
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
              child: ListTile(
                title: Text(
                  pName[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                titleAlignment: ListTileTitleAlignment.center,
                subtitle: Column(
                  children: [
                    Image.network(pImage[index], height: 100),
                    Text(
                      "RS. ${pPrice[index]}",
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
                        "Subscribe @${pPrice[index]}.0",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 35.0,left: 0),
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                minimumSize: WidgetStatePropertyAll(
                                  Size.zero,
                                ),
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
                                minimumSize: WidgetStatePropertyAll(
                                  Size.zero,
                                ),
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
                                    minimumSize: WidgetStatePropertyAll(Size(32,32)),
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
                                  child: Text("Add",style: TextStyle(color: Color.fromARGB(255, 5, 89, 125),),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 5, 89, 125)),
              accountName: Text("Vaishvi Gandhi"),
              accountEmail: Text("vaishvigandhi@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(
                  "V",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Color.fromARGB(255, 5, 89, 125),
                  ),
                ),
              ),
            ),
            showMenuOptions(Icon(Icons.home_rounded), "Home"),
            showMenuOptions(Icon(Icons.account_circle_rounded), "My Profile"),
            showMenuOptions(Icon(Icons.shopping_cart_rounded), "My Cart"),
            showMenuOptions(
              Icon(Icons.monetization_on_rounded),
              "My Transaction",
            ),
            showMenuOptions(
              Icon(Icons.currency_exchange_rounded),
              "My Subscription",
            ),
            showMenuOptions(Icon(Icons.interpreter_mode_rounded), "About Us"),
            showMenuOptions(Icon(Icons.contact_mail_rounded), "Contact Us"),
            showMenuOptions(
              Icon(Icons.date_range_rounded),
              "Terms & Condition",
            ),
            showMenuOptions(Icon(Icons.privacy_tip_rounded), "Privacy Policy"),
            showMenuOptions(Icon(Icons.location_city_rounded), "Change City"),
          ],
        ),
      ),
    );
  }

  showMenuOptions(Icon icon, String title) {
    return ListTile(
      leading: icon,
      iconColor: Colors.black87,
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }

  showPopUp() {
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              contentPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              titlePadding: EdgeInsets.zero,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 5, 89, 125),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        topLeft: Radius.circular(12),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            " City",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " Select City : ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  RadioListTile(
                    activeColor: Color.fromARGB(255, 5,89,125),
                    fillColor: MaterialStateProperty.all(Color.fromARGB(255, 5,89,125)),
                    title: Text(
                      "Rajkot",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                    dense: true,
                    value: City.Rajkot,
                    groupValue: _city,
                    onChanged: (value) {
                      setState(() {
                        _city = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    activeColor: Color.fromARGB(255, 5,89,125),
                    fillColor: MaterialStateProperty.all(Color.fromARGB(255, 5,89,125)),
                    title: Text(
                      "Jamnagar",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                    dense: true,
                    value: City.Jamnagar,
                    groupValue: _city,
                    onChanged: (value) {
                      setState(() {
                        _city = value!;
                      });
                    },
                  ),
                ],
              ),
              actions: [
                ElevatedButton(
                    style: ButtonStyle(shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                      backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 5, 89, 125),
                      ),),
                    onPressed: ()
                    {
                      Navigator.pop(context);
                     // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen(),));
                    }, child: Text("Save",style: TextStyle(color: Colors.white),)),

              ],
            );
          },
        );
      },
    );
  }
}
