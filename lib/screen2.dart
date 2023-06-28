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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        print('Hello1');
                      },
                      child: Image.asset(
                        'images/hair1.jpg',
                        fit: BoxFit.cover,
                        width: 110.0,
                        height: 110.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        print('Hello2');
                      },
                      child: Image.asset(
                        'images/hair2.jpg',
                        fit: BoxFit.cover,
                        width: 110.0,
                        height: 110.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        print('Hello3');
                      },
                      child: Image.asset(
                        'images/hair3.jpg',
                        fit: BoxFit.cover, // Fixes border issues
                        width: 110.0,
                        height: 110.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {
                        print('Hello4');
                      },
                      child: Image.asset(
                        'images/hair4.jpg', fit: BoxFit.cover,// Fixes border issues
                        width: 110.0,
                        height: 110.0,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
