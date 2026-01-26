import 'package:flutter/material.dart';
import 'package:flutter_week14/view/mycard.dart';
import 'package:flutter_week14/view/row_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("Flutter Development"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Mr.Mark Zuckerberg"),
              accountEmail: Text("mark@gmail.com"),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.android)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                debugPrint("Home menu");
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("Row Widget"),
              onTap: () {
                debugPrint("Row Widget");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RowPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("Column Widget"),
              onTap: () {
                debugPrint("TEST Column");
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ColumnPage()),
                // );
                Navigator.pushNamed(context, '/column');
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("ListView Menu"),
              onTap: () {
                debugPrint("TEST ListView");
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ListViewMenu()),
                // );
                Navigator.pushNamed(context, '/menu');
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_score_rounded),
              title: Text("Card and Inkwell"),
              onTap: () {
                debugPrint("TEST Card");
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => CardPage()),
                // );
                Navigator.pushNamed(context, '/card');
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text("Card and Inkwell"),
              onTap: () {
                debugPrint("TEST Card2");
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MyCard()),
                // );
                Navigator.pushNamed(context, '/my-card');
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text("MyApp")),
    );
  }
}
