import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        child: GNav(
          gap: 15,
          activeColor: Colors.white,
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          duration: const Duration(milliseconds: 800),
          tabBackgroundColor: Colors.grey,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 15,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shop,
              text: 'Cart',
            ),
          ],
          selectedIndex: 0,
          onTabChange: (value) => onTabChange!(
              value), // this means the value of the selected index is passed to the onTabChange function
        ),
      ),
    );
  }
}
