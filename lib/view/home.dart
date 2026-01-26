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
              currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.android)
                // backgroundImage: NetworkImage('https://f.ptcdn.info/642/022/000/1408782649-photo-o.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () async {
                debugPrint("Home menu");
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("Row Widget"),
              onTap: () async {
                debugPrint("Row Widget");
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RowPage(text: "Row Widget")),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("Column Widget"),
              onTap: () async {
                debugPrint("TEST Column");
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ColumnPage()),
                // );
                await Navigator.pushNamed(context, '/column');
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("ListView Menu"),
              onTap: () async {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ListViewMenu()),
                // );
                final result =  await Navigator.pushNamed(context, '/menu');
                debugPrint("ListView Menu: $result");
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_score_rounded),
              title: Text("Card and Inkwell"),
              onTap: () async {
                debugPrint("TEST Card");
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => CardPage()),
                // );
                await Navigator.pushNamed(context, '/card');
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text("My Card"),
              onTap: () async {
                debugPrint("TEST My card");
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MyCard()),
                // );
                // Navigator.pushNamed(context, '/my-card');
                await Navigator.pushNamed(context, MyCard.id);
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text("MyApp")),
    );
  }
}
