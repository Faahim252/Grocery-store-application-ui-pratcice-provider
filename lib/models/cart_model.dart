import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list items for sell
  final List _shopItems = [
    [
      'Avocado',
      '4.99',
      'lib/images/avocado.png',
      Colors.green,
    ],
    [
      'Banana',
      '1.75',
      'lib/images/banana.png',
      Colors.yellow,
    ],
    [
      'Chicken',
      '10.99',
      'lib/images/chicken.png',
      Colors.brown,
    ],
    [
      'Water',
      '1.25',
      'lib/images/water.png',
      Colors.blue,
    ],
  ];
  // list cart item
  List _cartItems = [];
  // get shoping items
  get shopitems => _shopItems;
  // get cart items
  get cartitems => _cartItems;

  // add items to the cart

  void AdditemTocart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove items from cart
  void removeitemFromcart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate item
  String CalculateTotal() {
    double totalprice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalprice += double.parse(_cartItems[i][1]);
    }
    return totalprice.toStringAsFixed(2);
  }
}
