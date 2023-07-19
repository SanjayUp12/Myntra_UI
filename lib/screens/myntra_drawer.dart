import 'package:flutter/material.dart';
import 'package:myntra_task1/screens/constants.dart';

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
              fit: BoxFit.fill,
            ),
          ),
          ExpandableDrawerItem(
            text: 'Men',
          ),
          ExpandableDrawerItem(
            text: 'Women',
          ),
          ExpandableDrawerItem(
            text: 'Kids',
          ),
          ExpandableDrawerItem(
            text: 'Home and Living',
          ),
          ExpandableDrawerItem(
            text: 'Beauty',
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          DrawerListItem(text: 'Myntra Studio'),
          DrawerListItem(text: 'Myntra Mall'),
          DrawerListItem(text: 'Myntra Insider'),
          DrawerListItem(text: 'Gift Cards'),
          DrawerListItem(text: 'Contact Us'),
          DrawerListItem(text: 'Legal'),
          DrawerListItem(text: 'FAQs'),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Image(
                    image: AssetImage('images/DrawerFooter.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          )
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
      title: Text('$text', style: kExpansionTileStyle),
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
      title: Text(
        '$text',
        style: kTileStyle,
      ),
    );
  }
}
