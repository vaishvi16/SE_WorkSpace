import 'package:flutter/material.dart';

class Task10 extends StatefulWidget {
  const Task10({super.key});

  @override
  State<Task10> createState() => _Task10State();
}

class _Task10State extends State<Task10> {
  static var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
        backgroundColor: Colors.teal,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              child: Row(
                children: [Icon(Icons.shopping_cart_rounded), Text("$count")],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://www.shutterstock.com/image-photo/jaipur-india-21-october-2019-600nw-1548004160.jpg",
                  height: 100,
                  width: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amul Butter",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Rs. 90",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUH58hzOesVDnLMhEbE_7eY4yUk8MRLT9e1A&s",
                  height: 100,
                  width: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cheese Spread",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Rs. 120",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS2v5UEPrl3HfKBusGvEEnuIKkUsH4nEMAZQ&s",
                  height: 100,
                  width: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amul Mithai",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Rs. 150",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb_7Wk29zCm77cR5pZrSgWctbhLZSYX2311g&s",
                  height: 100,
                  width: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amul Ghee",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Rs. 320",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMZ1vwHugwW2eTHSVxYh6ntTgZhla8zuEMLQ&s",
                  height: 100,
                  width: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ice Cream",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Rs. 120",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNkY0vhvIk8Xz49KsEHZpoUcziRJ9Kcqs5uA&s",
                  height: 100,
                  width: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Flavoured Milk",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Rs. 40",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://www.amuldairy.com/assets/img/product/9/tubroastedalmond.jpg",
                  height: 100,
                  width: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amul Ice Cream",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Rs. 240",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG9Sv97i67JkdHekzn8nRQWw9-ljxAhnDGuKDRI-6PKLx7xphuar_QV84&s",
                  height: 100,
                  width: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ButterMilk",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Rs. 110",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://barodadairy.in/img/products/milk/amul-gold.webp",
                  height: 100,
                  width: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amul Gold Milk",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Rs. 180",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShl2VICZnykZq4WX7qbKIxS2i0bj2Y8q6xfQ&s",
                  height: 100,
                  width: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amul Cheese",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Rs. 120",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
