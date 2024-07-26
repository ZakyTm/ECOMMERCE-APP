import 'package:ecommerce_app/components/bottom_nav_bar.dart';

import 'package:flutter/material.dart';
import 'shop_page.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//
class _HomePageState extends State<HomePage> {
// this selectide index is to control the bottom nav bar
  int _selectedIndex = 0;

  //this method will update our selected index when we tap on the bottom nav bar
  void navegateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //page To display
  final List<Widget> _pages = <Widget>[
    //Shop page
    const ShopPage(),

    //Card Page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navegateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
