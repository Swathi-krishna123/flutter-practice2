import 'package:flutter/material.dart';
import 'package:flutter_tasks/flex.dart';

// ignore: camel_case_types
class ListView_seperator extends StatelessWidget {
  ListView_seperator({super.key});
  final List<String> list = List.generate(100, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ListView Seperator",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.home_repair_service),
              tileColor: Colors.blue[200],
              title: Text(list[index]),
            );
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 40),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_circle_right_outlined),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Flexxible()));
          }),
    );
  }
}
