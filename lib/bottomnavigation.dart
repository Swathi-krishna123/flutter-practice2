import 'package:flutter/material.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({super.key});

  @override
  State<BottomNavi> createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("bottom navigation bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            selectedindex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              tooltip: "home", label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              tooltip: "notification",
              label: "Notification",
              icon: Icon(Icons.notifications)),
          BottomNavigationBarItem(
              tooltip: "message", label: "Message", icon: Icon(Icons.message))
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.blue,
      ),
      body: [
        const Center(
          child: Text("Home Page"),
        ),
        const Center(
          child: Text("Notification Page"),
        ),
        const Center(
          child: Text("Messages"),
        ),
      ][selectedindex],
    );
  }
}
