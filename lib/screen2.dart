import 'package:flutter/material.dart';
import 'navBar.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List images = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: navBar(context),
        backgroundColor: Colors.red,
        body: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Image(
                  image: AssetImage(
                    'images/hair1.jpg',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Image(
                  image: AssetImage(
                    'images/hair2.jpg',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Image(
                  image: AssetImage(
                    'images/hair3.jpg',
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
