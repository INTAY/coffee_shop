import 'package:flutter/material.dart';
import 'package:coffee_shop/models/coffee.dart';


class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _list = [
    Coffee(name: '长岛黑咖啡', price: '24.5', imagePath: 'assets/images/black.png'),
    Coffee(name: '奶茶', price: '18', imagePath: 'assets/images/milk_tea.png'),
    Coffee(name: '卡布奇诺', price: '35', imagePath: 'assets/images/espresso.png'),
    Coffee(name: '冰咖啡', price: '30', imagePath: 'assets/images/iced_coffee.png'),
    Coffee(name: '拿铁', price: '28', imagePath: 'assets/images/latte.png'),
  ];

  List<Coffee> _userCart = [];
  List<Coffee> get coffeeShop => _list;
  List<Coffee> get userCart => _userCart;

  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemToCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}