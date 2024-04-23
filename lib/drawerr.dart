import 'package:flutter/material.dart';
import 'package:flutter_tasks/bottomsheett.dart';

class Drawerrr extends StatefulWidget {
  const Drawerrr({super.key});

  @override
  State<Drawerrr> createState() => _DrawerrrState();
}

class _DrawerrrState extends State<Drawerrr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Drawer"),
        leading:  IconButton(onPressed: (){}, icon:const Icon(Icons.home))
      ),
      body: Center(
        child: Builder(builder: (context) {
          return TextButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Text("click"));
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.pink.shade200,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: CircleAvatar(
                  radius: 27,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Bottomsheettt()));
      }),
    );
  }
}
