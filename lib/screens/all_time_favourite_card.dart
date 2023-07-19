import 'package:flutter/material.dart';

class AllTimeFavouritesCardWidget extends StatelessWidget {
  AllTimeFavouritesCardWidget({this.dressNo, this.dressText1, this.dressText2});
  int? dressNo;
  String? dressText1;
  String? dressText2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              width: 170,
              height: 100,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(
                  'images/dress${dressNo.toString()}.jpg',
                ),
              ),
            ),
            Text('$dressText1',
                style: TextStyle(fontSize: 14, color: Colors.black)),
          ],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              width: 170,
              height: 100,
              child: Image(
                fit: BoxFit.fill,
                image:
                    AssetImage('images/dress${(dressNo! + 1).toString()}.jpg'),
              ),
            ),
            Text('$dressText2',
                style: TextStyle(fontSize: 14, color: Colors.black)),
          ],
        ),
      ],
    );
  }
}
