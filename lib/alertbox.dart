import 'package:flutter/material.dart';
import 'package:flutter_tasks/bottomnavigation.dart';

class AlertBox extends StatelessWidget {
  const AlertBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ALERT BOX"),
      ),
      body: Center(
        child: TextButton(
            onPressed: () => showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("alert!!"),
                    content: const Text("this is an alert box"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("cancel")),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("ok"))
                    ],
                  ),
                ),
            child: const Text("show alert")),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => BottomNavi()));
      }),
    );
  }
}
