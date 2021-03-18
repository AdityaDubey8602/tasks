import 'package:flutter/material.dart';

textWithCard(String t1, String t2, String t3, String t4) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t1,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                t2,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Card(
            elevation: 5.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8.0,
              ),
              child: Column(
                children: [
                  Text(
                    t3,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    t4,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

bigCardDesign(String url) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      child: Card(
        elevation: 10.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7.0),
          child: Image(
            image: AssetImage(url),
          ),
        ),
      ),
    ),
  );
}
