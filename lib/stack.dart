import 'package:flutter/material.dart';
import 'package:flutter_tasks/flutter_toast.dart';

class Stackk extends StatelessWidget {
  const Stackk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "STACK",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 300,
              width: 300,
              color: Colors.blue[300],
            ),
          ),
          Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.pink[300],
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow[300],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_circle_right_outlined),
          onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Toast()));}),
    );
  }
}

