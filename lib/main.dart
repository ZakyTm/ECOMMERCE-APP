

import 'package:flutter/material.dart';
import 'package:ecommerce_app/pages/intro_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ecom App UI',
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
