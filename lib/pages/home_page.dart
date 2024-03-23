import 'package:flutter/material.dart';
import 'package:coffee_shop/variableFiles/const.dart'; // 引入变量
import 'package:coffee_shop/components/bottom_nav_bar.dart'; // 引入底部导航栏
import 'package:coffee_shop/pages/cart_page.dart'; // 引入结算页面
import 'package:coffee_shop/pages/shop_page.dart';// 引入商店页面


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;
  void onTabChange(index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    // 商店
    ShopPage(),
    // 购物车
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundHomeColor,
      bottomNavigationBar: MyBottomNavigationBar(
          onTabChange: (index) => onTabChange(index),
      ),
      body: _pages[_selectedindex],
    );
  }
}

