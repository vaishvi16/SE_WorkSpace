import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

enum Payment { cash, online }

class _DashboardState extends State<Dashboard> {
  final _formKey = GlobalKey<FormState>();
  var dropDownValue;
  Payment _payment = Payment.cash;

  List<String> tblNo = [
    'Table no. 1',
    'Table no. 2',
    'Table no. 3',
    'Table no. 4',
    'Table no. 5',
    'Table no. 6',
    'Table no. 7',
    'Table no. 8',
    'Table no. 9',
    'Table no. 10',
  ];

  static var amount = 0;

  bool coffee = false;
  bool tea = false;
  bool coke = false;
  bool grill_sandwich = false;
  bool veg_sandwich = false;
  bool burger = false;
  bool vadapau = false;
  bool cheese_balls = false;
  bool chocolate_browine = false;
  bool vanilla_ice_cream = false;
  bool manchurian = false;
  bool american_corn = false;
  bool dhosa = false;
  bool pani_puri = false;
  bool french_fries = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.teal,
        title: Text(
          "Welcome Admin",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Text(
                  "Menu ",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 32),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 50),
                  CheckboxListTile(
                    title: Text("Coffee"),
                    subtitle: Text("Rs. 100"),
                    value: coffee,
                    onChanged: (value) {
                      setState(() {
                        coffee = value!;
                        if (coffee) {
                          amount += 100;
                        } else {
                          amount -= 100;
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text("Tea"),
                    subtitle: Text("Rs. 80"),
                    value: tea,
                    onChanged: (value) {
                      setState(() {
                        tea = value!;
                        if (tea) {
                          amount += 80;
                        } else {
                          amount -= 80;
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text("Coke"),
                    subtitle: Text("Rs. 50"),
                    value: coke,
                    onChanged: (value) {
                      setState(() {
                        coke = value!;
                        if (coke) {
                          amount += 50;
                        } else {
                          amount -= 50;
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    subtitle: Text("Rs. 120"),
                    title: Text("Grill Sandwich"),
                    value: grill_sandwich,
                    onChanged: (value) {
                      setState(() {
                        grill_sandwich = value!;
                        if (grill_sandwich) {
                          amount += 120;
                        } else {
                          amount -= 120;
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    subtitle: Text("Rs. 100"),
                    title: Text("Veg Sandwich"),
                    value: veg_sandwich,
                    onChanged: (value) {
                      setState(() {
                        veg_sandwich = value!;
                        if (veg_sandwich) {
                          amount += 100;
                        } else {
                          amount -= 100;
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    subtitle: Text("Rs. 90"),
                    title: Text("Burger"),
                    value: burger,
                    onChanged: (value) {
                      setState(() {
                        burger = value!;
                        if (burger) {
                          amount += 90;
                        } else {
                          amount -= 90;
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    subtitle: Text("Rs. 50"),
                    title: Text("Vada Pav"),
                    value: vadapau,
                    onChanged: (value) {
                      setState(() {
                        vadapau = value!;
                        if (vadapau) {
                          amount += 50;
                        } else {
                          amount -= 50;
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    subtitle: Text("Rs. 180"),
                    title: Text("Cheese Balls"),
                    value: cheese_balls,
                    onChanged: (value) {
                      setState(() {
                        cheese_balls = value!;
                        if (cheese_balls) {
                          amount += 180;
                        } else {
                          amount -= 180;
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    subtitle: Text("Rs. 120"),
                    title: Text("Chocolate Brownie"),
                    value: chocolate_browine,
                    onChanged: (value) {
                      setState(() {
                        chocolate_browine = value!;
                        if (chocolate_browine) {
                          amount += 120;
                        } else {
                          amount -= 120;
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text("Vanilla Ice Cream"),
                    subtitle: Text("Rs. 50"),
                    value: vanilla_ice_cream,
                    onChanged: (value) {
                      setState(() {
                        vanilla_ice_cream = value!;
                        if (vanilla_ice_cream) {
                          amount += 50;
                        } else {
                          amount -= 50;
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text("Manchurian"),
                    subtitle: Text("Rs. 170"),
                    value: manchurian,
                    onChanged: (value) {
                      setState(() {
                        manchurian = value!;
                        if (manchurian) {
                          amount += 170;
                        } else {
                          amount -= 170;
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text("American Corn"),
                    subtitle: Text("Rs. 60"),
                    value: american_corn,
                    onChanged: (value) {
                      setState(() {
                        american_corn = value!;
                        if (american_corn) {
                          amount += 60;
                        } else {
                          amount -= 60;
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text("Dhosa"),
                    subtitle: Text("Rs. 200"),
                    value: dhosa,
                    onChanged: (value) {
                      setState(() {
                        dhosa = value!;
                        if (dhosa) {
                          amount += 200;
                        } else {
                          amount -= 200;
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text("Pani Puri"),
                    subtitle: Text("Rs. 50"),
                    value: pani_puri,
                    onChanged: (value) {
                      setState(() {
                        pani_puri = value!;
                        if (pani_puri) {
                          amount += 50;
                        } else {
                          amount -= 50;
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text("Peri Peri French Fries"),
                    subtitle: Text("Rs. 180"),
                    value: french_fries,
                    onChanged: (value) {
                      setState(() {
                        french_fries = value!;
                        if (french_fries) {
                          amount += 180;
                        } else {
                          amount -= 180;
                        }
                      });
                    },
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 12, top: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Text(
                      "Select your table No.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: DropdownButtonFormField(
                      items: tblNo.map((String tableNo) {
                        return DropdownMenuItem(
                          value: tableNo,
                          child: Text(tableNo),
                        );
                      }).toList(),
                      validator: (val) {
                        if (val == null) {
                          return "Please select your Table No.";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          dropDownValue = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: dropDownValue ?? "Table No.",
                        labelText: "Table No.",
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      borderRadius: BorderRadius.circular(12),
                      focusColor: Colors.teal,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.teal),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.all(
                              Radius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate() &&
                            (coffee ||
                                tea ||
                                coke ||
                                grill_sandwich ||
                                veg_sandwich ||
                                burger ||
                                vadapau ||
                                cheese_balls ||
                                chocolate_browine ||
                                vanilla_ice_cream ||
                                manchurian ||
                                american_corn ||
                                dhosa ||
                                pani_puri ||
                                french_fries)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Order Place successfully!"),
                            ),
                          );
                          await alertDialog();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Something went wrong!")),
                          );
                        }
                      },
                      child: Text(
                        "Place Order",
                        style: TextStyle(color: Colors.white),
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
  Future<void> alertDialog() async {
    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Text(
              "Order History",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  dropDownValue,
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 15),

                if (coffee == true) Text("Coffee   Rs.100"),
                if (tea == true) Text("Tea   Rs.80"),
                if (coke == true) Text("Coke   Rs.50"),
                if (grill_sandwich == true) Text("Grill Sandwich   Rs.120"),
                if (veg_sandwich == true) Text("Veg Sandwich   Rs.100"),
                if (burger == true) Text("Burger   Rs.90"),
                if (vadapau == true) Text("Grill Sandwich   Rs.50"),
                if (cheese_balls == true) Text("Cheese Balls   Rs.180"),
                if (chocolate_browine == true)
                  Text("Chocolate Brownie   Rs.120"),
                if (vanilla_ice_cream == true)
                  Text("Vanilla Ice Cream   Rs.50"),
                if (manchurian == true) Text("Manchurian   Rs.170"),
                if (american_corn == true) Text("American Corn   Rs.60"),
                if (dhosa == true) Text("Dhosa   Rs.200"),
                if (pani_puri == true) Text("Pani Puri   Rs.50"),
                if (french_fries == true)
                  Text("Peri Peri French Fries   Rs.180"),

                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "Total bill : $amount",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
                  ),
                ),

                Text(
                  "Confirm your Payment Method",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                RadioListTile(
                  title: Text("Cash", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
          visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                  dense: true,
                  value: Payment.cash,
                  groupValue: _payment,
                  onChanged: (value) {
                    setState(() {
                      _payment = value!;
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Online", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                  visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                  dense: true,
                  value: Payment.online,
                  groupValue: _payment,
                  onChanged: (value) {
                    setState(() {
                      _payment = value!;
                    });
                  },
                ),
              ],
            ),
            actions: [
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text("Okay")),
            ],
            actionsPadding: EdgeInsets.only(right: 8.0, bottom: 8.0),
          );
        },
      ),
    );
  }
}
