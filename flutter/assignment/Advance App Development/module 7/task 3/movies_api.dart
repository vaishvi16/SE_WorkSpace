import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesApi extends StatefulWidget {
  const MoviesApi({super.key});

  @override
  State<MoviesApi> createState() => _MoviesApiState();
}

class _MoviesApiState extends State<MoviesApi> {
  TextEditingController movieController = TextEditingController();
  Future<dynamic>? _futureData;

  @override
  Widget build(BuildContext context) {

    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies Api", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                height: 60,
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Search for movies";
                    }
                    return null;
                  },
                  controller: movieController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black87),
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Movie",
                    hintText: "Search for your movie",
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
              if (_formKey.currentState!.validate()) {
                setState(() {
                  print("Fetching Data");
                  _futureData = _fetchData(movieController.text);
                });
              } else {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Failed")));
              }
            }, child: Text("Search")),
            if (_futureData != null)
              Expanded(child: _showData()),
          ],
        ),
      ),
    );
  }

  Widget _showData(){
  return FutureBuilder(
    future: _futureData,
    builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CircularProgressIndicator());
      }
      if (snapshot.hasError) {
        return Center(child: Text("Error: ${snapshot.error}"));
      } else if (!snapshot.hasData) {
        return const Center(child: Text("No data found"));
      }
      var data = snapshot.data!;
      final result = data["description"];
      print("Showing data");

      return ListView.builder(
        itemCount: result.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Column(
                children: [
                  Image.network(
                    result[index]["#IMG_POSTER"] ?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7Ds9-v5s9JNTS7Bp9D8QEQq8mKvj5qLjhQw&s",
                    height: 150,
                    width: 200,
                  ),
                  Text("${result[index]["#TITLE"] ?? "No Title available"}"),
                ],
              ),
            ),
          );
        },
      );
    },
  );
  }

  Future<dynamic> _fetchData(movieName) async {
    var url = Uri.parse(
      "https://imdb.iamidiotareyoutoo.com/search?q=$movieName",
    );

    var response = await http.get(url);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed to load data");
    }
  }
}
