import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/tasks_list/cafe_task/login.dart';
import 'package:flutter_projects/tasks_list/cafe_task/network_error.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;

  @override
  initState() {
    super.initState();

    _connectivitySubscription = Connectivity().onConnectivityChanged.listen((
      List<ConnectivityResult> result,
    ) {
      if (result.contains(ConnectivityResult.mobile)) {
        Timer(
          Duration(seconds: 3),
          () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          ),
        );
      } else if (result.contains(ConnectivityResult.wifi)) {
        Timer(
          Duration(seconds: 3),
          () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          ),
        );
      } else if (result.contains(ConnectivityResult.none)) {
        Timer(
          Duration(seconds: 3),
          () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => NetworkError()),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Center(child: Lottie.asset("assets/order_food.json")),
      ),
    );
  }
}
