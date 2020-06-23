import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: PageView.builder(
        itemCount: 3,
        controller: PageController(viewportFraction: 1),
        onPageChanged: (int index) => setState(() => _index = index),
        itemBuilder: (_, i) {
          return Transform.scale(
            scale: i == _index ? 1 : 0.9,
            child: Card(
              // margin: EdgeInsets.only(bottom: 450),
              elevation: 6,
              child: Image.asset(
                'images/beach.jpg',
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
