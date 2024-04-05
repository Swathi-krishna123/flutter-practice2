import 'package:flutter/material.dart';
import 'package:flutter_tasks/list_tile.dart';

// ignore: camel_case_types
class List_view extends StatelessWidget {
  const List_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "LIST VIEW",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 70,
              color: Colors.amber[100],
              child: const Center(child: Text("list 1")),
            ),
            Container(
              height: 70,
              color: Colors.amber[200],
              child: const Center(child: Text("list 2")),
            ),
            Container(
              height: 70,
              color: Colors.amber[300],
              child: const Center(child: Text("list 3")),
            ),
            Container(
              height: 70,
              color: Colors.amber[400],
              child: const Center(child: Text("list 4")),
            ),
            
            Container(
              height: 70,
              color: Colors.amber[500],
              child: const Center(child: Text("list 5")),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_circle_right_outlined),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) =>const List_tile()));
          }),
    );
  }
}
