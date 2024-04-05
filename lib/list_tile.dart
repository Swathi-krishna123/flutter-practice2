import 'package:flutter/material.dart';
import 'package:flutter_tasks/listview_builder.dart';

// ignore: camel_case_types
class List_tile extends StatelessWidget {
  const List_tile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "LIST TILE",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.purple,
        ),
        body: ListView(children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("list 1"),
            tileColor: Colors.pink[100],
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("list 2"),
            tileColor: Colors.pink[200],
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("list 3"),
            tileColor: Colors.pink[300],
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("list 4"),
            tileColor: Colors.pink[400],
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("list 5"),
            tileColor: Colors.pink[500],
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("list 6"),
            tileColor: Colors.pink[600],
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("list 7"),
            tileColor: Colors.pink[700],
            onTap: () {},
          )
        ]),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.arrow_circle_right_outlined),
            onPressed: () {
              // Navigator.of(context).push(
              //     MaterialPageRoute(builder: (context) => Listview_builder()));

              Navigator.push(context, MaterialPageRoute(builder: (context)=>Listview_builder()));
            }));
  }
}
