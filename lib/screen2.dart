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
    List hairimg = [
      'images/hair1.jpg',
      'images/hair2.jpg',
      'images/hair3.jpg',
      'images/hair4.jpg'
    ];

    const double picPadding = 5.0;
    final double picSize =
        (MediaQuery.of(context).size.width / 3) - 2 * picPadding;

    return Scaffold(
      appBar: navBar(context),
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Wrap(
            children: [
              SizedBox(),
              Container(
                padding: EdgeInsets.fromLTRB(0, picPadding, picPadding, 0),
                child: Image.asset(
                  'images/hair1.jpg',
                  fit: BoxFit.cover,
                  width: picSize,
                  height: picSize,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, picPadding, picPadding, 0),
                child: Image.asset(
                  'images/hair2.jpg',
                  fit: BoxFit.cover,
                  width: picSize,
                  height: picSize,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, picPadding, picPadding, 0),
                child: Image.asset(
                  'images/hair3.jpg',
                  fit: BoxFit.cover,
                  width: picSize,
                  height: picSize,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, picPadding, picPadding, 0),
                child: Image.asset(
                  'images/hair4.jpg',
                  fit: BoxFit.cover,
                  width: picSize,
                  height: picSize,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
