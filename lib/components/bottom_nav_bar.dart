import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class MyBottomNavigationBar extends StatelessWidget {
  // final int _slectedIndex = 1;
  void Function(int)? onTabChange;
  MyBottomNavigationBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: GNav(
          onTabChange: (value) => onTabChange!(value),
          mainAxisAlignment: MainAxisAlignment.center,
          selectedIndex: 1,
          color: Colors.grey[500],
          activeColor: Colors.grey[800],
          tabs: [
            GButton(icon: Icons.home, text: '商店'),
            GButton(icon: Icons.shopping_cart, text: '购物车',)
          ]
      ),
    );
  }
}
