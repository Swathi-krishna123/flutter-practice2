

import 'package:flutter/material.dart';
import 'package:flutter_tasks/alertbox.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toast extends StatefulWidget {
  const Toast({super.key});

  @override
  State<Toast> createState() => _ToastState();
}

class _ToastState extends State<Toast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "flutter toast",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(),
            color: Colors.amber.shade200,
          ),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "This is  Short Toast",
                    gravity: ToastGravity.TOP,
                    
                    
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.grey,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.purple.shade100)),
              child: const Text(
                "complete",
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AlertBox()));}),
    );
  }
}
