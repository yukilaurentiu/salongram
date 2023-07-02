import 'package:flutter/material.dart';
import 'package:salongram/screen1.dart';
import 'package:salongram/screen2.dart';
import 'package:salongram/test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
    initialRoute: '/screen1',
    routes: {
    '/screen1': (context) => FlexboxExample(),
      '/screen2': (context) => Screen2(),
      '/screen3': (context) => Screen1(),
    });
  }
}