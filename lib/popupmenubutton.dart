

import 'package:flutter/material.dart';

class Pop_up extends StatefulWidget {
  const Pop_up({super.key});

  @override
  State<Pop_up> createState() => _Pop_upState();
}

class _Pop_upState extends State<Pop_up> {
  List listpage = ["item1", "item2", "item3", "item4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("popupmenubutton"), actions: [
        PopupMenuButton(
          onSelected: (index) {
            print(listpage[index]);
          },
          itemBuilder: (context) {
            return List.generate(
                listpage.length,
                (index) =>
                    PopupMenuItem(child: Text(listpage[index].toString())));
          },
        )
      ]),
    );
  }
}
