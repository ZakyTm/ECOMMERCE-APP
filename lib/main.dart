// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ecommerce_app/intro_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecom App UI',
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
