import 'package:flutter/material.dart';

class MyntraDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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