import 'package:flutter/material.dart';
import 'package:flutter_tasks/gesturedetector.dart';

class Ink_well extends StatefulWidget {
  const Ink_well({super.key});

  @override
  State<Ink_well> createState() => _Ink_wellState();
}

class _Ink_wellState extends State<Ink_well> {
  double sidelength = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("inkwell"),
      ),
      body: Center(
        child: Container(
          height: sidelength,
          width: sidelength,
          child: InkWell(
            onTap: () {
              setState(() {
                sidelength==100?sidelength=300:sidelength=100;
              });
            },
            child: Container(
              color: Colors.pink,
              // child: InkWell(onTap: () {
              //   setState(() {
              //     print(sidelength);
              //     sidelength == 100 ? sidelength = 300 : sidelength = 100;
              //   });
              // }),
              child: Center(child: Text("hiiiii",style: TextStyle(fontSize: sidelength==100?20:50),)),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detector()));}),
    );
  }
}
