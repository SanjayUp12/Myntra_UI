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
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(0),
                child: Image(
                  image: AssetImage('images/DrawerHeader.webp'),
                ),
              ),
              ExpandableDrawerItem(
                text: 'Men',
              ),
              ExpansionTile(
                title: Text('Women'),
                children: [
                  ListTile(
                    leading: Text('Topwear'),
                  )
                ],
              ),
              ExpansionTile(
                title: Text('Kids'),
                children: [
                  ListTile(
                    leading: Text('Topwear'),
                  )
                ],
              ),
              ExpansionTile(
                title: Text('Home and Living'),
                children: [
                  ListTile(
                    leading: Text('Topwear'),
                  )
                ],
              ),
              ExpansionTile(
                title: Text('Beauty'),
                children: [
                  ListTile(
                    leading: Text('Topwear'),
                  )
                ],
              ),
              DrawerListItem(text: 'Myntra Studio'),
              DrawerListItem(text: 'Myntra Mall'),
              DrawerListItem(text: 'Myntra Insider'),
              DrawerListItem(text: 'Gift Cards'),
              DrawerListItem(text: 'Contact Us'),
              DrawerListItem(text: 'Legal'),
              DrawerListItem(text: 'FAQs'),
            ],
          ),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 10),
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/kids.png'),
                    radius: 32,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/men.png'),
                    radius: 32,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/women.png'),
                    radius: 32,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/accessory.png'),
                    radius: 32,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/categories.png'),
                    radius: 32,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/footwear.png'),
                    radius: 32,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class DrawerListItem extends StatelessWidget {
  DrawerListItem({this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('$text'),
    );
  }
}

class ExpandableDrawerItem extends StatelessWidget {
  ExpandableDrawerItem({this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('$text'),
      children: [
        ListTile(
          leading: Text('Topwear'),
        )
      ],
    );
  }
}