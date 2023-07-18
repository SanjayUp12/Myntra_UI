import 'package:flutter/material.dart';

class MyntraAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}