import 'package:flutter/material.dart';

class Task8 extends StatefulWidget {
  const Task8({super.key});

  @override
  State<Task8> createState() => _Task8State();
}

class _Task8State extends State<Task8> {
  List fruitImage = [
    "https://www.exotic-fruit.com/img/products/totapuri_1.jpg",
    "https://media.post.rvohealth.io/wp-content/uploads/2021/05/apples-1200x628-facebook.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ66ubNfMxRuPH4cP2X5XvaF_lU3aKILmR9VQ&s",
    "https://cdn.zeptonow.com/production/tr:w-640,ar-3000-3000,pr-true,f-auto,q-80/cms/product_variant/f35152f8-31b1-4450-ae76-fe0f8893005a.jpeg",
    "https://www.sakraworldhospital.com/assets/spl_splimgs/benefits-kiwi-of-fruit.webp",
    "https://images.everydayhealth.com/images/2025/fruits-with-protein-help-boost-intake-pomegranate-1440x810.jpg?w=720",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQrJiC7CG773KUYyknjdRoANyT0vGMMMkqKw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIbW2SyS9qdpwyOdntZ6yS-Qi-K1JVbMSDlQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmZ-sl1xh81mwYX4MfH2ckk9-3RaykI6YwMg&s",
    "https://www.shutterstock.com/image-photo/red-grape-leaves-isolated-on-600nw-1932009899.jpg",
  ];

  List fruitNames = [
    "Mangoes",
    "Apples",
    "Pineapple",
    "Bananas",
    "Kiwi",
    "Pomegranate",
    "Strawberry",
    "Musk Melon",
    "Lichi",
    "Grapes",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 8"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: fruitImage.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              fruitNames[index],
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 23),
              textAlign: TextAlign.center,
            ),
            subtitle: Column(children: [Image.network(fruitImage[index])]),
            onTap: () {
              print(fruitNames);
            },
          );
        },
      ),
    );
  }
}
