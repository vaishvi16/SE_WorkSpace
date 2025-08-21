import 'package:flutter/material.dart';

class Task7 extends StatefulWidget {
  const Task7({super.key});

  @override
  State<Task7> createState() => _Task7State();
}

class _Task7State extends State<Task7> {
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
    "https://5.imimg.com/data5/SELLER/Default/2023/1/BY/ZL/WF/75993452/superior-guava-fruits.jpg",
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
    "Guava",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 7"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: GridView.builder(
        itemCount: fruitNames.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.7,
          crossAxisCount: 4,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            title: Column(
              children: [
                Image.network(fruitImage[index]),
                SizedBox(height: 5),
                Text(fruitNames[index]),
              ],
            ),
          );
        },
      ),
    );
  }
}
