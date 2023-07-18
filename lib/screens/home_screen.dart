import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myntra_task1/screens/myntra_drawer.dart';
import 'package:myntra_task1/screens/all_time_favourite_card.dart';

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
      drawer: MyntraDrawer(),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 10),
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          ShoppingCategoriesIcon(text: 'categories'),
                          ShoppingCategoriesIcon(text: 'men'),
                          SizedBox(
                            width: 10,
                          ),
                          ShoppingCategoriesIcon(text: 'women'),
                          SizedBox(
                            width: 10,
                          ),
                          ShoppingCategoriesIcon(text: 'kids'),
                          SizedBox(
                            width: 10,
                          ),
                          ShoppingCategoriesIcon(text: 'accessory'),
                          SizedBox(
                            width: 10,
                          ),
                          ShoppingCategoriesIcon(text: 'footwear'),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(0),
                  height: 200,
                  width: double.infinity,
                  child: Column(
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          SliderImage(
                            imgPath: 'images/banner.webp',
                          ),

                          //2nd Image of Slider
                          SliderImage(
                            imgPath: 'images/banner.webp',
                          )
                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                          height: 180.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'ALL TIME FAVOURITES',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              AllTimeFavouritesCardWidget(
                dressNo: 1,
                dressText1: 'Lehenga',
                dressText2: 'Kurta',
              ),
              AllTimeFavouritesCardWidget(
                dressNo: 3,
                dressText1: 'Sherwani',
                dressText2: 'Suit',
              ),
              Text(
                'Highlights of the day',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              Row(
                children: [
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        HighlightsOfTheDayCard(
                          imgPath: 'images/high1.jpg',
                        ),
                        SizedBox(width: 20),
                        HighlightsOfTheDayCard(
                          imgPath: 'images/high2.jpg',
                        ),
                        SizedBox(width: 20),
                        HighlightsOfTheDayCard(
                          imgPath: 'images/high3.jpg',
                        ),
                        SizedBox(width: 20),
                        HighlightsOfTheDayCard(
                          imgPath: 'images/high4.jpg',
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class HighlightsOfTheDayCard extends StatelessWidget {
  HighlightsOfTheDayCard({this.imgPath});
  String? imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 140,
      child: Image(
        fit: BoxFit.fill,
        image: AssetImage('$imgPath'),
      ),
    );
  }
}

class SliderImage extends StatelessWidget {
  SliderImage({this.imgPath});
  String? imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage('$imgPath'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ShoppingCategoriesIcon extends StatelessWidget {
  ShoppingCategoriesIcon({this.text});
  String? text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/$text.png'),
          radius: 32,
        ),
        Text(
          '$text',
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}