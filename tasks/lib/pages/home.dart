import 'package:flutter/material.dart';
import 'package:tasks/pages/methods.dart';
import 'package:tasks/widgets/category_selector.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> categories = ['Featured', 'Popular', 'Trending'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Locations',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 40.0,
                      ),
                    ),
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage('assets/images/kaneki2.jpg'),
                    ),
                  ],
                ),
              ),
              CategorySelector(),
              bigCardDesign('assets/images/wallpaper1.jpg'),
              textWithCard(
                'Ocean at Algarve',
                'Lorem Ipsum is sajdfj jlasj afsfjajs dad. ',
                '18',
                'Aug',
              ),
              bigCardDesign('assets/images/wallpaper2.jpg'),
              textWithCard(
                'Ocean at Algarve',
                'Lorem Ipsum is sajdfj jlasj afsfjajs dad. ',
                '18',
                'Aug',
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
