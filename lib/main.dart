import 'package:cheeseburger/homescreen.dart';
import 'package:cheeseburger/secondscreen.dart';
import 'package:flutter/material.dart';

import 'bottombar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Burger',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Bottombar(),
    );
  }
}
