import 'package:ecommerce_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        builder: (context, child) => const MaterialApp(
              title: 'Ecom App UI',
              debugShowCheckedModeBanner: false,
              home: IntroPage(),
            ));
  }
}
