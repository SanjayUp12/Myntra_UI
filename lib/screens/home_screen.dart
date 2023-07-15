import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            ImageIcon(
              AssetImage('images/logo.webp'),
              size: 20,
              color: Colors.red,
            ),
            SizedBox(
              width: 220,
            ),
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            Icon(Icons.favorite_outline, color: Colors.black),
            Icon(Icons.shopping_bag_outlined, color: Colors.black),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.all(0),
              child: Image(
                image: AssetImage('images/DrawerHeader.webp'),
              ),
            ),
            ListView(
              children: [
                ExpansionTile(
                  title: Text('Men'),
                  children: [
                    ListTile(
                      leading: Text('Topwear'),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}