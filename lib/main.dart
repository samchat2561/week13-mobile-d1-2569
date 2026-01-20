import 'package:flutter/material.dart';
import 'package:flutter_week14/view/listview_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      home: ListViewMenu(),
    );
  }
}
