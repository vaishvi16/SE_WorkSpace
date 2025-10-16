import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Calling", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _fetchData(),
        builder: (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          if (!snapshot.hasData) {
            return const Center(child: Text("No data found"));
          }

          final data = snapshot.data!;
          final current = data['current_weather'];

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Card(
                child: ListTile(
                  title: const Text("Latitude"),
                  trailing: Text(data['latitude'].toString()),
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text("Longitude"),
                  trailing: Text(data['longitude'].toString()),
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text("Temperature"),
                  trailing: Text("${current['temperature']} °C"),
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text("Wind Speed"),
                  trailing: Text("${current['windspeed']} km/h"),
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text("Wind Direction"),
                  trailing: Text("${current['winddirection']} °"),
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text("Timezone"),
                  trailing: Text(data['timezone'].toString()),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<Map<String, dynamic>> _fetchData() async {
    final url = Uri.parse(
      "https://api.open-meteo.com/v1/forecast"
          "?latitude=52.52"
          "&longitude=13.41"
          "&current_weather=true"
          "&hourly=temperature_2m,relativehumidity_2m,windspeed_10m",
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      print("API Call Success");
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed to load weather data");
    }
  }
}
