import 'package:flutter/material.dart';
import 'package:flutter_tasks/inkwell.dart';

class Bottomsheettt extends StatefulWidget {
  const Bottomsheettt({super.key});

  @override
  State<Bottomsheettt> createState() => _BottomsheetttState();
}

class _BottomsheetttState extends State<Bottomsheettt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomSheet"),
      ),
      body: Center(
        child: Builder(builder: (context) {
          return TextButton(
            onPressed: () {
              showBottomSheet(
                  context: context,
                  builder: (context) => Container(
                        height: 300, width: 400,
                        decoration: const BoxDecoration(color: Colors.amber),
                        // child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Text("close button"),
                        //     ElevatedButton(onPressed: (){}, child: Text("Close"))
                        //   ],
                        // )),

                        child: Center(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Close")),
                        ),
                      ));
            },
            child: const Text("bottomsheet"),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Ink_well()));
      }),
    );
  }
}
