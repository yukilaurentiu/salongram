import 'dart:math';

import 'package:flutter/material.dart';
import 'nav_bar.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(context),
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Wrap(
            children: card(context),
          ),
        ],
      ),
    );
  }
}

List<Widget> card(context) {
  List hairImg = [
    'images/hair1.jpg',
    'images/hair2.jpg',
    'images/hair3.jpg',
    'images/hair4.jpg'
  ];

  const double picPadding = 5.0;
  final double picSize =
      (MediaQuery.of(context).size.width / 3) - 2 * picPadding;

  List<Widget> result = [];
  for (var imgPath in hairImg) {
    result.add(
      GestureDetector(
        onTap: (){},
        child: Container(
          padding: const EdgeInsets.fromLTRB(picPadding, picPadding, picPadding, 0),
          child: Image.asset(
            imgPath,
            fit: BoxFit.cover,
            width: picSize,
            height: picSize,
          ),
        ),
      ),
    );
  }
  return result;
}
