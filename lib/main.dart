import 'package:flutter/material.dart';
import 'package:flutter_week14/view/card_page.dart';
import 'package:flutter_week14/view/column_page.dart';
import 'package:flutter_week14/view/home.dart';
import 'package:flutter_week14/view/listview_menu.dart';
import 'package:flutter_week14/view/mycard.dart';
import 'package:flutter_week14/view/row_page.dart';

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
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/row':(context) => RowPage(),
        '/column':(context) => ColumnPage(),
        '/menu':(context) => ListViewMenu(),
        '/card':(context) => CardPage(),
        '/my-card':(context) => MyCard(),
      },
    );
  }
}
