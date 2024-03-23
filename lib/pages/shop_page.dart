import 'package:coffee_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/coffee_title.dart';
import '../models/coffee.dart';



class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCard(Coffee coffee) {
  Provider.of<CoffeeShop>(context,listen: false).addItemToCart(coffee);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (BuildContext context, CoffeeShop value, Widget? child) => SafeArea(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Text('今日特饮料 敬请选购', style: TextStyle(fontSize: 20)),
                SizedBox(height: 25),
                Expanded(
                    child: ListView.builder(
                      itemCount: value.coffeeShop.length,
                        itemBuilder: (context, index) {
                          Coffee eachCoffee = value.coffeeShop[index];
                          return CoffeeTitle(coffee: eachCoffee, Icon: Icon(Icons.add),onPressed: () => addToCard(eachCoffee));
                        }
                    ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

