import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsApi extends StatefulWidget {
  const NewsApi({super.key});

  @override
  State<NewsApi> createState() => _NewsApiState();
}

class _NewsApiState extends State<NewsApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Api Calling", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      body: FutureBuilder(
        future: _fetchData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData) {
            return const Center(child: Text("No data found"));
          }
          final data = snapshot.data!;
          final result = data['results'];

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: result.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Column(
                    children: [
                      Image.network(
                        result[index]["image_url"],
                        height: 150,
                        width: 200,
                      ),
                      Text("Headline ${result[index]["title"]}"),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Future<dynamic> _fetchData() async {
    var url = Uri.parse(
      "https://newsdata.io/api/1/latest?apikey=pub_40b11696dbdc41ce82f89819d2dadd43&q=news",
    );

    var response = await http.get(url);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed to load news data");
    }
  }
}
