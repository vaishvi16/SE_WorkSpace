import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 23"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(child: Text("Drawer Task", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),)),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Text("T"),
              ),
              accountName: Text("Test"),
              accountEmail: Text("test@gmail.com"),
            ),
            showMenuOptions("Profile", Icon(Icons.home_rounded), Task2_screenOne()),
            showMenuOptions("Home", Icon(Icons.person),Task2_screenTwo()),
            showMenuOptions("Settings", Icon(Icons.settings), Task2_screenThree()),

          ],
        ),
      ),
    );
  }
  showMenuOptions(String title, Icon icon, screen) {
    return ListTile(
      title: Text(title), leading: icon, iconColor: Colors.teal, onTap: ()
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) => screen,));
    },);
  }

}

class Task2_screenOne extends StatelessWidget {
  const Task2_screenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 2"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(
          "Profile Screen",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
        ),
      ),
    );
  }
}

class Task2_screenTwo extends StatelessWidget {
  const Task2_screenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 2"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(
          "Home Screen",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
        ),
      ),
    );
  }
}

class Task2_screenThree extends StatelessWidget {
  const Task2_screenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 2"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(
          "Settings Screen",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
        ),
      ),
    );
  }
}

