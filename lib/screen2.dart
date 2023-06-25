import 'package:flutter/material.dart';

import 'navBar.dart';

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
      body: Row(
        children: [
          const Text('My page', style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 24.0,
          ),),

        ],
      )
    );
  }
}
