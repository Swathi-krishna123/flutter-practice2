import 'package:flutter/material.dart';
import 'package:flutter_tasks/list_view.dart';


void main()
{
  
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "flutter demo",
    home:Homepage(),);
  }
}
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const List_view();
  }
}