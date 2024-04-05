import 'package:flutter/material.dart';
import 'package:flutter_tasks/listview_seperator.dart';

// ignore: camel_case_types
class Listview_builder extends StatelessWidget {
  Listview_builder({super.key});

  final List<String> list = List.generate(100, (index) => "Item $index");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListViewBuilder",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Container(
            height: 70,
            decoration:
                BoxDecoration(color: Colors.green[100], border: Border.all()),
            child: Center(child: Text(list[index])),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_circle_right_outlined),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) =>  ListView_seperator()));
          }),
    );
  }
}
