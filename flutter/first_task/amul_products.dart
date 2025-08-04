import 'package:flutter/material.dart';

class AmulProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amul Products"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Image.network(
                "https://www.shutterstock.com/image-photo/jaipur-india-21-october-2019-600nw-1548004160.jpg",
                height: 100,
                width: 200,
              ),
              Text("Amul Butter"),
              Text("Price - 90 Rs."),

              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShl2VICZnykZq4WX7qbKIxS2i0bj2Y8q6xfQ&s",
                height: 100,
                width: 200,
              ),
              Text("Amul Cheese"),
              Text("Price - 120 Rs."),

              Image.network(
                "https://barodadairy.in/img/products/milk/amul-gold.webp",
                height: 100,
                width: 200,
              ),
              Text("Amul Gold Milk"),
              Text("Price - 180 Rs."),

              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG9Sv97i67JkdHekzn8nRQWw9-ljxAhnDGuKDRI-6PKLx7xphuar_QV84&s",
                height: 100,
                width: 200,
              ),
              Text("Amul ButterMilk"),
              Text("Price - 110 Rs."),

              Image.network(
                "https://www.amuldairy.com/assets/img/product/9/tubroastedalmond.jpg",
                height: 100,
                width: 200,
              ),
              Text("Amul Ice Cream"),
              Text("Price - 240 Rs."),

              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNkY0vhvIk8Xz49KsEHZpoUcziRJ9Kcqs5uA&s",
                height: 100,
                width: 200,
              ),
              Text("Amul Flavoured Milk"),
              Text("Price - 40 Rs."),

              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMZ1vwHugwW2eTHSVxYh6ntTgZhla8zuEMLQ&s",
                height: 100,
                width: 200,
              ),
              Text("Amul Ice Cream"),
              Text("Price - 120 Rs."),

              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb_7Wk29zCm77cR5pZrSgWctbhLZSYX2311g&s",
                height: 100,
                width: 200,
              ),
              Text("Amul Ghee"),
              Text("Price - 320 Rs."),

              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS2v5UEPrl3HfKBusGvEEnuIKkUsH4nEMAZQ&s",
                height: 100,
                width: 200,
              ),
              Text("Amul Mithai"),
              Text("Price - 150 Rs."),

              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUH58hzOesVDnLMhEbE_7eY4yUk8MRLT9e1A&s",
                height: 100,
                width: 200,
              ),
              Text("Amul Cheese Spread"),
              Text("Price - 120 Rs."),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}