import 'package:flutter/material.dart';
import 'package:salongram/nav_bar.dart';

class FlexboxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final double picSize = (MediaQuery.of(context).size.width/3);

    return Scaffold(
      appBar: navBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Wrap(
            children: [
              Container(
                width: picSize,
                height: picSize,
                color: Colors.red,
                child: Text('Square 1'),
              ),
              Container(
                width: picSize,
                height: picSize,
                color: Colors.green,
                child: Text('Square 2'),
              ),
              Container(
                width: picSize,
                height: picSize,
                color: Colors.blue,
                child: Text('Square 3'),
              ),
              Container(
                width: picSize,
                height: picSize,
                color: Colors.purple,
                child: Text('Square 4'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}