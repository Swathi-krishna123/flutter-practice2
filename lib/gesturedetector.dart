import 'package:flutter/material.dart';
import 'package:flutter_tasks/popupmenubutton.dart';

class Detector extends StatefulWidget {
  const Detector({super.key});

  @override
  State<Detector> createState() => _DetectorState();
}

class _DetectorState extends State<Detector> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("gesture"),),
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Pop_up()));}),
    );
  }
}