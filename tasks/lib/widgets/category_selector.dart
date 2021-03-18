import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Featured', 'Popular', 'Trending'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Colors.white,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.only(
                  right: 10.0,
                  left: 20.0,
                  top: 20.0,
                ),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: index == selectedIndex ? Colors.black : Colors.grey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
